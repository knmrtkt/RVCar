
/********************************************************************************************/
`include "config.vh"
/********************************************************************************************/
`default_nettype none
/********************************************************************************************/

module soc#(
    parameter BOOTLOADER_FILE = "",
    parameter START_PC = 32'h00080000,
    parameter MAINMEM_FILE = "",
    parameter MAINMEM_SIZE = 128*1024
)(
    input  wire        CLK,
    input  wire        RST,
    output wire        w_txd,
    output wire [31:0] p_dout,

    input  wire [ 7:0] w_key_data,
    input  wire        w_key_en,

    input  wire [31:0] w_nn_0_data,
    output wire [31:0] w_nn_0_arg,
    input  wire        w_nn_0_en,
    
    output wire [31:0] w_pwm_data,
    output wire [31:0] w_seg_data,

    output wire [40:0] w_sdcram_addr,
    output wire        w_sdcram_ren,
    output wire [ 3:0] w_sdcram_wen,
    output wire [31:0] w_sdcram_wdata,
    input  wire [31:0] w_sdcram_rdata,
    input  wire        w_sdcram_busy,

    output wire [ 9:0] V_ADDR,
    output wire        V_WE,
    output wire [ 7:0] V_WDATA,
    input  wire [ 7:0] V_RDATA
);
    /****************************************************************************************/
    wire [31:0] CORE_ADDR;
    wire [31:0] CORE_WDATA, CORE_RDATA;
    wire [ 3:0] CORE_WE;
    wire        CORE_RE;
    wire        CORE_STALL;

    wire [31:0] DMEM_ADDR;
    wire [31:0] DMEM_WDATA, DMEM_RDATA;
    wire [ 3:0] DMEM_WE;

    wire [31:0] MMIO_ADDR;
    wire [31:0] MMIO_WDATA, MMIO_RDATA;
    wire [ 3:0] MMIO_WE;

    wire [31:0] PLIC_ADDR;
    wire [31:0] PLIC_WDATA, PLIC_RDATA;
    wire [ 3:0] PLIC_WE;

    dbus_switch dbus_switch_0(
        CLK, RST,
        CORE_ADDR, CORE_WDATA, CORE_WE, CORE_RDATA, CORE_RE, CORE_STALL,
        DMEM_ADDR, DMEM_WDATA, DMEM_WE, DMEM_RDATA,
        MMIO_ADDR, MMIO_WDATA, MMIO_WE, MMIO_RDATA, 
        PLIC_ADDR, PLIC_WDATA, PLIC_WE, PLIC_RDATA,
        w_sdcram_addr, w_sdcram_ren, w_sdcram_wen, w_sdcram_wdata, w_sdcram_rdata, w_sdcram_busy
    );

    wire poweroff;
    wire sim_poweroff = poweroff;
    MMIO_con MMIO_con_0(
        CLK, RST,
        MMIO_ADDR, MMIO_WDATA, MMIO_WE, MMIO_RDATA,
        w_txd, poweroff,
        w_key_data, 
        w_nn_0_data, w_nn_0_arg,
        w_pwm_data, w_seg_data,
        V_ADDR, V_WE, V_WDATA, V_RDATA
    );

    wire [31:0] interrupts  = {w_nn_0_en, w_key_en};
    PLIC_con#(2)PLIC_con_0(
        CLK, RST,
        PLIC_ADDR, PLIC_WDATA, PLIC_WE, PLIC_RDATA,
        EX_INT, interrupts
    );

    /****************************************************************************************/
    // 4MB memory space
    wire        w_halt;
    wire [31:0] w_rout, IMEM_DATA, IMEM_ADDR;
    wire        EX_INT;

    RVCore#(.PC_W(22), .START_PC(START_PC))
    p(CLK, !RST, w_rout, w_halt, IMEM_ADDR, CORE_ADDR, IMEM_DATA, CORE_RDATA, CORE_WDATA, CORE_WE, CORE_RE, CORE_STALL, EX_INT);

    // upper 256KB is user space, lower is bootloader
    wire w_use_boot_I = IMEM_ADDR[19];
    wire w_use_boot_D = DMEM_ADDR[19];
    reg r_use_boot_I, r_use_boot_D;
    always@(posedge CLK) begin
        r_use_boot_I <= w_use_boot_I;
        r_use_boot_D <= w_use_boot_D;
    end

    wire [31:0] boot_I_RDATA, main_I_RDATA;
    assign IMEM_DATA = r_use_boot_I ? boot_I_RDATA : main_I_RDATA;

    wire [31:0] boot_D_RDATA, main_D_RDATA;
    assign DMEM_RDATA = r_use_boot_D ? boot_D_RDATA : main_D_RDATA;

    wire [ 3:0] boot_D_WE = w_use_boot_D ? DMEM_WE : 0;
    wire [ 3:0] main_D_WE =!w_use_boot_D ? DMEM_WE : 0;

    xilinx_true_dual_port_read_first_byte_write_2_clock_ram #(
        .NB_COL(4),                           // Specify number of columns (number of bytes)
        .COL_WIDTH(8),                        // Specify column width (byte width, typically 8 or 9)
        .RAM_DEPTH(2048),                     // Specify RAM depth (number of entries)
        .RAM_PERFORMANCE("LOW_LATENCY"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY"
        .INIT_FILE(BOOTLOADER_FILE)                        // Specify name/location of RAM init file if using one (leave blank if not)
    ) boot_mem (
        .addra(IMEM_ADDR[31:2]),   // Port A address bus, width determined from RAM_DEPTH
        .addrb(DMEM_ADDR[31:2]),   // Port B address bus, width determined from RAM_DEPTH
        .dina(0),     // Port A RAM input data, width determined from NB_COL*COL_WIDTH
        .dinb(DMEM_WDATA),     // Port B RAM input data, width determined from NB_COL*COL_WIDTH
        .clka(CLK),     // Port A clock
        .clkb(CLK),     // Port B clock
        .wea(0),       // Port A write enable, width determined from NB_COL
        .web(boot_D_WE),       // Port B write enable, width determined from NB_COL
        .ena(1),       // Port A RAM Enable, for additional power savings, disable port when not in use
        .enb(1),       // Port B RAM Enable, for additional power savings, disable port when not in use
        .rsta(RST),     // Port A output reset (does not affect memory contents)
        .rstb(RST),     // Port B output reset (does not affect memory contents)
        .regcea(0), // Port A output register enable
        .regceb(0), // Port B output register enable
        .douta(boot_I_RDATA),   // Port A RAM output data, width determined from NB_COL*COL_WIDTH
        .doutb(boot_D_RDATA)    // Port B RAM output data, width determined from NB_COL*COL_WIDTH
    );

    // variable_size_bram #(
    //     .NB_COL(4),                           // Specify number of columns (number of bytes)
    //     .COL_WIDTH(8),                        // Specify column width (byte width, typically 8 or 9)
    //     .RAM_DEPTH(`MEM_SIZE/4)                     // Specify RAM depth (number of entries)
    // ) main_mem (
    //     .addra(IMEM_ADDR[$clog2(`MEM_SIZE)-1:2]),   // Port A address bus, width determined from RAM_DEPTH
    //     .addrb(DMEM_ADDR[$clog2(`MEM_SIZE)-1:2]),   // Port B address bus, width determined from RAM_DEPTH
    //     .dina(0),     // Port A RAM input data, width determined from NB_COL*COL_WIDTH
    //     .dinb(DMEM_WDATA),     // Port B RAM input data, width determined from NB_COL*COL_WIDTH
    //     .clka(CLK),     // Port A clock
    //     .clkb(CLK),     // Port B clock
    //     .wea(0),       // Port A write enable, width determined from NB_COL
    //     .web(main_D_WE),       // Port B write enable, width determined from NB_COL
    //     .ena(1),       // Port A RAM Enable, for additional power savings, disable port when not in use
    //     .enb(1),       // Port B RAM Enable, for additional power savings, disable port when not in use
    //     .rsta(RST),     // Port A output reset (does not affect memory contents)
    //     .rstb(RST),     // Port B output reset (does not affect memory contents)
    //     .douta(main_I_RDATA),   // Port A RAM output data, width determined from NB_COL*COL_WIDTH
    //     .doutb(main_D_RDATA)    // Port B RAM output data, width determined from NB_COL*COL_WIDTH
    // );

    xilinx_true_dual_port_read_first_byte_write_2_clock_ram #(
        .NB_COL(4),                           // Specify number of columns (number of bytes)
        .COL_WIDTH(8),                        // Specify column width (byte width, typically 8 or 9)
        .RAM_DEPTH(MAINMEM_SIZE/4),                     // Specify RAM depth (number of entries)
        .RAM_PERFORMANCE("LOW_LATENCY"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY"
        .INIT_FILE(MAINMEM_FILE)                        // Specify name/location of RAM init file if using one (leave blank if not)
    ) main_mem (
        .addra(IMEM_ADDR[$clog2(MAINMEM_SIZE)-1:2]),   // Port A address bus, width determined from RAM_DEPTH
        .addrb(DMEM_ADDR[$clog2(MAINMEM_SIZE)-1:2]),   // Port B address bus, width determined from RAM_DEPTH
        .dina(0),     // Port A RAM input data, width determined from NB_COL*COL_WIDTH
        .dinb(DMEM_WDATA),     // Port B RAM input data, width determined from NB_COL*COL_WIDTH
        .clka(CLK),     // Port A clock
        .clkb(CLK),     // Port B clock
        .wea(0),       // Port A write enable, width determined from NB_COL
        .web(main_D_WE),       // Port B write enable, width determined from NB_COL
        .ena(1),       // Port A RAM Enable, for additional power savings, disable port when not in use
        .enb(1),       // Port B RAM Enable, for additional power savings, disable port when not in use
        .rsta(RST),     // Port A output reset (does not affect memory contents)
        .rstb(RST),     // Port B output reset (does not affect memory contents)
        .regcea(0), // Port A output register enable
        .regceb(0), // Port B output register enable
        .douta(main_I_RDATA),   // Port A RAM output data, width determined from NB_COL*COL_WIDTH
        .doutb(main_D_RDATA)    // Port B RAM output data, width determined from NB_COL*COL_WIDTH
    );

    /********************************************************************************************/
    reg        r_halt = 0;
    reg [31:0] r_rout = 0;
    reg [31:0] r_cnt = 0;
    always @(posedge CLK) begin
        r_halt <= w_halt;
        r_rout <= w_rout;
        r_cnt <= (RST) ? 0 : (~r_halt & ~poweroff) ? r_cnt+1 : r_cnt;
    end
    assign p_dout = r_rout;

endmodule

/********************************************************************************************/

