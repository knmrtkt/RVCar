/******************************************************************************************************/
`include "config.vh"

module variable_size_bram #(
    parameter NB_COL = 4,                           // Specify number of columns (number of bytes)
    parameter COL_WIDTH = 9,                        // Specify column width (byte width, typically 8 or 9)
    parameter RAM_DEPTH = 1024                     // Specify RAM depth (number of entries)
) (
    input [clogb2(RAM_DEPTH-1)-1:0] addra,   // Port A address bus, width determined from RAM_DEPTH
    input [clogb2(RAM_DEPTH-1)-1:0] addrb,   // Port B address bus, width determined from RAM_DEPTH
    input [(NB_COL*COL_WIDTH)-1:0] dina,   // Port A RAM input data
    input [(NB_COL*COL_WIDTH)-1:0] dinb,   // Port B RAM input data
    input clka,                            // Port A clock
    input clkb,                            // Port B clock
    input [NB_COL-1:0] wea,                // Port A write enable
    input [NB_COL-1:0] web,                // Port B write enable
    input ena,                             // Port A RAM Enable, for additional power savings, disable port when not in use
    input enb,                             // Port B RAM Enable, for additional power savings, disable port when not in use
    input rsta,                            // Port A output reset (does not affect memory contents)
    input rstb,                            // Port B output reset (does not affect memory contents)
    output [(NB_COL*COL_WIDTH)-1:0] douta, // Port A RAM output data
    output [(NB_COL*COL_WIDTH)-1:0] doutb  // Port B RAM output data
);
    generate
        localparam REAF_DEPTH = 2**($clog2(RAM_DEPTH+1)-1);
        localparam NODE_DEPTH = RAM_DEPTH - REAF_DEPTH;
        if(NODE_DEPTH > 0) begin
            initial $write("RAM(%d) is separated to REAF(%d) and NODE(%d).\n", RAM_DEPTH, REAF_DEPTH, NODE_DEPTH);
            wire reaf_ena = (addra < REAF_DEPTH) & ena;
            wire reaf_enb = (addrb < REAF_DEPTH) & enb;
            wire [(NB_COL*COL_WIDTH)-1:0]  reaf_douta, reaf_doutb;

            xilinx_true_dual_port_read_first_byte_write_2_clock_ram #(
                .NB_COL(NB_COL),                           // Specify number of columns (number of bytes)
                .COL_WIDTH(COL_WIDTH),                        // Specify column width (byte width, typically 8 or 9)
                .RAM_DEPTH(REAF_DEPTH),                     // Specify RAM depth (number of entries)
                .RAM_PERFORMANCE("LOW_LATENCY"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY"
                .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
            ) reaf_ram (
                .addra(addra[clogb2(REAF_DEPTH-1)-1:0]),   // Port A address bus, width determined from RAM_DEPTH
                .addrb(addrb[clogb2(REAF_DEPTH-1)-1:0]),   // Port B address bus, width determined from RAM_DEPTH
                .dina(dina),     // Port A RAM input data, width determined from NB_COL*COL_WIDTH
                .dinb(dinb),     // Port B RAM input data, width determined from NB_COL*COL_WIDTH
                .clka(clka),     // Port A clock
                .clkb(clkb),     // Port B clock
                .wea(wea),       // Port A write enable, width determined from NB_COL
                .web(web),       // Port B write enable, width determined from NB_COL
                .ena(reaf_ena),       // Port A RAM Enable, for additional power savings, disable port when not in use
                .enb(reaf_enb),       // Port B RAM Enable, for additional power savings, disable port when not in use
                .rsta(rsta),     // Port A output reset (does not affect memory contents)
                .rstb(rstb),     // Port B output reset (does not affect memory contents)
                .regcea(0), // Port A output register enable
                .regceb(0), // Port B output register enable
                .douta(reaf_douta),   // Port A RAM output data, width determined from NB_COL*COL_WIDTH
                .doutb(reaf_doutb)    // Port B RAM output data, width determined from NB_COL*COL_WIDTH
            );
            
            wire node_ena = (addra >= REAF_DEPTH) & ena;
            wire node_enb = (addrb >= REAF_DEPTH) & enb;
            wire [(NB_COL*COL_WIDTH)-1:0]  node_douta, node_doutb;
            variable_size_bram #(
                .NB_COL(NB_COL),                           // Specify number of columns (number of bytes)
                .COL_WIDTH(COL_WIDTH),                        // Specify column width (byte width, typically 8 or 9)
                .RAM_DEPTH(NODE_DEPTH)                     // Specify RAM depth (number of entries)
            ) node_ram (
                .addra(addra[clogb2(REAF_DEPTH-1)-1:0]),   // Port A address bus, width determined from RAM_DEPTH
                .addrb(addrb[clogb2(REAF_DEPTH-1)-1:0]),   // Port B address bus, width determined from RAM_DEPTH
                .dina(dina),     // Port A RAM input data, width determined from NB_COL*COL_WIDTH
                .dinb(dinb),     // Port B RAM input data, width determined from NB_COL*COL_WIDTH
                .clka(clka),     // Port A clock
                .clkb(clkb),     // Port B clock
                .wea(wea),       // Port A write enable, width determined from NB_COL
                .web(web),       // Port B write enable, width determined from NB_COL
                .ena(node_ena),       // Port A RAM Enable, for additional power savings, disable port when not in use
                .enb(node_enb),       // Port B RAM Enable, for additional power savings, disable port when not in use
                .rsta(rsta),     // Port A output reset (does not affect memory contents)
                .rstb(rstb),     // Port B output reset (does not affect memory contents)
                .douta(node_douta),   // Port A RAM output data, width determined from NB_COL*COL_WIDTH
                .doutb(node_doutb)    // Port B RAM output data, width determined from NB_COL*COL_WIDTH
            );
            reg r_reaf_ena, r_reaf_enb;
            always @(posedge clka) r_reaf_ena <= reaf_ena;
            always @(posedge clkb) r_reaf_enb <= reaf_enb;

            assign douta = r_reaf_ena ? reaf_douta : node_douta;
            assign doutb = r_reaf_enb ? reaf_doutb : node_doutb;
        end
        else if(NODE_DEPTH == 0)begin
            initial $write("RAM(%d) is REAF(%d).\n", RAM_DEPTH, REAF_DEPTH);
            xilinx_true_dual_port_read_first_byte_write_2_clock_ram #(
                .NB_COL(NB_COL),                           // Specify number of columns (number of bytes)
                .COL_WIDTH(COL_WIDTH),                        // Specify column width (byte width, typically 8 or 9)
                .RAM_DEPTH(REAF_DEPTH),                     // Specify RAM depth (number of entries)
                .RAM_PERFORMANCE("LOW_LATENCY"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY"
                .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
            ) reaf_ram (
                .addra(addra[clogb2(REAF_DEPTH-1)-1:0]),   // Port A address bus, width determined from RAM_DEPTH
                .addrb(addrb[clogb2(REAF_DEPTH-1)-1:0]),   // Port B address bus, width determined from RAM_DEPTH
                .dina(dina),     // Port A RAM input data, width determined from NB_COL*COL_WIDTH
                .dinb(dinb),     // Port B RAM input data, width determined from NB_COL*COL_WIDTH
                .clka(clka),     // Port A clock
                .clkb(clkb),     // Port B clock
                .wea(wea),       // Port A write enable, width determined from NB_COL
                .web(web),       // Port B write enable, width determined from NB_COL
                .ena(ena),       // Port A RAM Enable, for additional power savings, disable port when not in use
                .enb(enb),       // Port B RAM Enable, for additional power savings, disable port when not in use
                .rsta(rsta),     // Port A output reset (does not affect memory contents)
                .rstb(rstb),     // Port B output reset (does not affect memory contents)
                .regcea(0), // Port A output register enable
                .regceb(0), // Port B output register enable
                .douta(douta),   // Port A RAM output data, width determined from NB_COL*COL_WIDTH
                .doutb(doutb)    // Port B RAM output data, width determined from NB_COL*COL_WIDTH
            );
        end
        else begin
            initial $write("RAM_DEPTH(%d) is invalid range!!\n", RAM_DEPTH);
        end
    endgenerate

    //  The following function calculates the address width based on specified RAM depth
    function integer clogb2;
        input integer depth;
        for (clogb2=0; depth>0; clogb2=clogb2+1)
            depth = depth >> 1;
    endfunction

endmodule

//  Xilinx True Dual Port RAM Byte Write Read First Dual Clock RAM
//  This code implements a parameterizable true dual port memory (both ports can read and write).
//  The behavior of this RAM is when data is written, the prior memory contents at the write
//  address are presented on the output port.

module xilinx_true_dual_port_read_first_byte_write_2_clock_ram #(
    parameter NB_COL = 4,                           // Specify number of columns (number of bytes)
    parameter COL_WIDTH = 9,                        // Specify column width (byte width, typically 8 or 9)
    parameter RAM_DEPTH = 1024,                     // Specify RAM depth (number of entries)
    parameter RAM_PERFORMANCE = "HIGH_PERFORMANCE", // Select "HIGH_PERFORMANCE" or "LOW_LATENCY"
    parameter INIT_FILE = ""                        // Specify name/location of RAM initialization file if using one (leave blank if not)
) (
    input [clogb2(RAM_DEPTH-1)-1:0] addra,   // Port A address bus, width determined from RAM_DEPTH
    input [clogb2(RAM_DEPTH-1)-1:0] addrb,   // Port B address bus, width determined from RAM_DEPTH
    input [(NB_COL*COL_WIDTH)-1:0] dina,   // Port A RAM input data
    input [(NB_COL*COL_WIDTH)-1:0] dinb,   // Port B RAM input data
    input clka,                            // Port A clock
    input clkb,                            // Port B clock
    input [NB_COL-1:0] wea,                // Port A write enable
    input [NB_COL-1:0] web,                // Port B write enable
    input ena,                             // Port A RAM Enable, for additional power savings, disable port when not in use
    input enb,                             // Port B RAM Enable, for additional power savings, disable port when not in use
    input rsta,                            // Port A output reset (does not affect memory contents)
    input rstb,                            // Port B output reset (does not affect memory contents)
    input regcea,                          // Port A output register enable
    input regceb,                          // Port B output register enable
    output [(NB_COL*COL_WIDTH)-1:0] douta, // Port A RAM output data
    output [(NB_COL*COL_WIDTH)-1:0] doutb  // Port B RAM output data
);
    
    reg [(NB_COL*COL_WIDTH)-1:0] BRAM [RAM_DEPTH-1:0];
    reg [(NB_COL*COL_WIDTH)-1:0] ram_data_a = {(NB_COL*COL_WIDTH){1'b0}};
    reg [(NB_COL*COL_WIDTH)-1:0] ram_data_b = {(NB_COL*COL_WIDTH){1'b0}};

    // The following code either initializes the memory values to a specified file or to all zeros to match hardware
    generate
        if (INIT_FILE != "") begin: use_init_file
        initial begin
            $readmemh(INIT_FILE, BRAM, 0, RAM_DEPTH-1);
        end end else begin: init_bram_to_zero
        integer ram_index;
        initial begin
            for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1)
            BRAM[ram_index] = {(NB_COL*COL_WIDTH){1'b0}};
        end end
    endgenerate

    always @(posedge clka)
        if (ena) begin
        ram_data_a <= BRAM[addra];
        end

    always @(posedge clkb)
        if (enb) begin
        ram_data_b <= BRAM[addrb];
        end

    generate
    genvar i;
        for (i = 0; i < NB_COL; i = i+1) begin: byte_write
        always @(posedge clka)
            if (ena)
            if (wea[i])
                BRAM[addra][(i+1)*COL_WIDTH-1:i*COL_WIDTH] <= dina[(i+1)*COL_WIDTH-1:i*COL_WIDTH];
        always @(posedge clkb)
            if (enb)
            if (web[i])
                BRAM[addrb][(i+1)*COL_WIDTH-1:i*COL_WIDTH] <= dinb[(i+1)*COL_WIDTH-1:i*COL_WIDTH];
        end
    endgenerate

    //  The following code generates HIGH_PERFORMANCE (use output register) or LOW_LATENCY (no output register)
    generate
        if (RAM_PERFORMANCE == "LOW_LATENCY") begin: no_output_register

        // The following is a 1 clock cycle read latency at the cost of a longer clock-to-out timing
        assign douta = ram_data_a;
        assign doutb = ram_data_b;

        end else begin: output_register

        // The following is a 2 clock cycle read latency with improve clock-to-out timing

        reg [(NB_COL*COL_WIDTH)-1:0] douta_reg = {(NB_COL*COL_WIDTH){1'b0}};
        reg [(NB_COL*COL_WIDTH)-1:0] doutb_reg = {(NB_COL*COL_WIDTH){1'b0}};

        always @(posedge clka)
            if (rsta)
            douta_reg <= {(NB_COL*COL_WIDTH){1'b0}};
            else if (regcea)
            douta_reg <= ram_data_a;

        always @(posedge clkb)
            if (rstb)
            doutb_reg <= {(NB_COL*COL_WIDTH){1'b0}};
            else if (regceb)
            doutb_reg <= ram_data_b;

        assign douta = douta_reg;
        assign doutb = doutb_reg;

        end
    endgenerate

    //  The following function calculates the address width based on specified RAM depth
    function integer clogb2;
        input integer depth;
        for (clogb2=0; depth>0; clogb2=clogb2+1)
            depth = depth >> 1;
    endfunction

endmodule

// The following is an instantiation template for xilinx_true_dual_port_read_first_byte_write_2_clock_ram
/*
//  Xilinx True Dual Port RAM Byte Write Read First Dual Clock RAM
xilinx_true_dual_port_read_first_byte_write_2_clock_ram #(
    .NB_COL(4),                           // Specify number of columns (number of bytes)
    .COL_WIDTH(9),                        // Specify column width (byte width, typically 8 or 9)
    .RAM_DEPTH(1024),                     // Specify RAM depth (number of entries)
    .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY"
    .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
) your_instance_name (
    .addra(addra),   // Port A address bus, width determined from RAM_DEPTH
    .addrb(addrb),   // Port B address bus, width determined from RAM_DEPTH
    .dina(dina),     // Port A RAM input data, width determined from NB_COL*COL_WIDTH
    .dinb(dinb),     // Port B RAM input data, width determined from NB_COL*COL_WIDTH
    .clka(clka),     // Port A clock
    .clkb(clkb),     // Port B clock
    .wea(wea),       // Port A write enable, width determined from NB_COL
    .web(web),       // Port B write enable, width determined from NB_COL
    .ena(ena),       // Port A RAM Enable, for additional power savings, disable port when not in use
    .enb(enb),       // Port B RAM Enable, for additional power savings, disable port when not in use
    .rsta(rsta),     // Port A output reset (does not affect memory contents)
    .rstb(rstb),     // Port B output reset (does not affect memory contents)
    .regcea(regcea), // Port A output register enable
    .regceb(regceb), // Port B output register enable
    .douta(douta),   // Port A RAM output data, width determined from NB_COL*COL_WIDTH
    .doutb(doutb)    // Port B RAM output data, width determined from NB_COL*COL_WIDTH
);
*/


/********************************************************************************************/
module m_IMEM#(parameter WIDTH=32, ENTRY=256)(CLK, WE, WADDR, RADDR, IDATA, ODATA);
    input  wire                     CLK, WE;
    input  wire [$clog2(ENTRY)-1:0] WADDR;
    input  wire [$clog2(ENTRY)-1:0] RADDR;
    input  wire [WIDTH-1:0]         IDATA;
    output wire [WIDTH-1:0]         ODATA;
    (* ram_style = "block" *) reg [WIDTH-1:0] mem[0:ENTRY-1];

    reg [$clog2(ENTRY)-1:0] r_addr=0;
    always @(posedge CLK) begin
        if (WE) mem[WADDR] <= IDATA;
        r_addr <= RADDR;
    end
    assign ODATA = mem[r_addr];
endmodule


/********************************************************************************************/
module m_DMEM#(parameter WIDTH=32, ENTRY=256)(CLK1, EN1, WE1, ADDR1, IDATA1, ODATA1, 
                                              CLK2, EN2, WE2, ADDR2, IDATA2, ODATA2);
    input  wire                     CLK1, EN1, EN2;
    input  wire [3:0]               WE1;
    input  wire [$clog2(ENTRY)-1:0] ADDR1;
    input  wire [WIDTH-1:0]         IDATA1;
    output wire [WIDTH-1:0]         ODATA1;
    input  wire                     CLK2;
    input  wire [3:0]               WE2;
    input  wire [$clog2(ENTRY)-1:0] ADDR2;
    input  wire [WIDTH-1:0]         IDATA2;
    output wire [WIDTH-1:0]         ODATA2;

    (* ram_style = "block" *) reg [WIDTH-1:0] mem[0:ENTRY-1];

    reg [$clog2(ENTRY)-1:0] r_addr1=0;
    reg [$clog2(ENTRY)-1:0] r_addr2=0;
    always @(posedge CLK1) begin
        if(EN1) begin
            if (WE1[0]) mem[ADDR1][ 7: 0] <= IDATA1[ 7: 0];
            if (WE1[1]) mem[ADDR1][15: 8] <= IDATA1[15: 8];
            if (WE1[2]) mem[ADDR1][23:16] <= IDATA1[23:16];
            if (WE1[3]) mem[ADDR1][31:24] <= IDATA1[31:24];
            r_addr1 <= ADDR1;
        end
    end
    assign ODATA1 = mem[r_addr1];
    always @(posedge CLK2) begin
        if(EN2) begin
            if (WE2[0]) mem[ADDR2][ 7: 0] <= IDATA2[ 7: 0];
            if (WE2[1]) mem[ADDR2][15: 8] <= IDATA2[15: 8];
            if (WE2[2]) mem[ADDR2][23:16] <= IDATA2[23:16];
            if (WE2[3]) mem[ADDR2][31:24] <= IDATA2[31:24];
            r_addr2 <= ADDR2;
        end
    end
    assign ODATA2 = mem[r_addr2];
endmodule
/******************************************************************************************************/
/* Program Loader: Initialize the main memory, copy memory image to the main memory                   */
/******************************************************************************************************/
module PLOADER (CLK, RST_X, RXD, ADDR, DATA, WE, DONE);
    input  wire        CLK, RST_X, RXD;
    output reg [31:0]  ADDR = 0;
    output reg [31:0]  DATA = 0;
    output reg         WE = 0;
    output reg         DONE = 0; // program load is done

    reg [31:0] waddr = 0; // memory write address

    wire SER_EN;
    wire [7:0] SER_DATA;
    serialc serc (CLK, RST_X, RXD, SER_DATA, SER_EN);

    always @(posedge CLK) begin
        if(!RST_X) begin
            {ADDR, DATA, WE, waddr, DONE} <= 0;
        end else begin
            if(DONE==0 && SER_EN) begin
                ADDR  <= waddr;
                DATA  <= {SER_DATA, DATA[31:8]};
                WE    <= (waddr[1:0]==3);
                waddr <= waddr + 1;
            end else begin
                WE <= 0;
                if(waddr>=`MEM_SIZE) DONE <= 1;
            end
        end
    end
endmodule

/******************************************************************************************************/
module UartTx(CLK, RST_X, DATA, WE, TXD, READY);
    input wire       CLK, RST_X, WE;
    input wire [7:0] DATA;
    output reg       TXD=1, READY=1;

    reg [8:0]   cmd = 9'h1ff;
    reg [11:0]  waitnum = 0;
    reg [3:0]   cnt = 0;

    always @(posedge CLK) begin
        if(!RST_X) begin
            TXD       <= 1'b1;
            READY     <= 1'b1;
            cmd       <= 9'h1ff;
            waitnum   <= 0;
            cnt       <= 0;
        end else if( READY ) begin
            TXD       <= 1'b1;
            waitnum   <= 0;
            if( WE )begin
                READY <= 1'b0;
                cmd   <= {DATA, 1'b0};
                cnt   <= 10;
            end
        end
        else if( waitnum >= `SERIAL_WCNT )
        begin
            TXD       <= cmd[0];
            READY     <= (cnt == 1);
            cmd       <= {1'b1, cmd[8:1]};
            waitnum   <= 1;
            cnt       <= cnt - 1;
        end
        else begin
            waitnum   <= waitnum + 1;
        end
    end
endmodule

/******************************************************************************************************/
/* RS232C serial controller (deserializer):                                                           */
/******************************************************************************************************/
`define SS_SER_WAIT  'd0         // RS232C deserializer, State WAIT
`define SS_SER_RCV0  'd1         // RS232C deserializer, State Receive 0th bit
                                 // States Receive 1st bit to 7th bit are not used
`define SS_SER_DONE  'd9         // RS232C deserializer, State DONE
/******************************************************************************************************/
module serialc(CLK, RST_X, RXD, DATA, EN);
    input  wire    CLK, RST_X, RXD; // clock, reset, RS232C input
    output [7:0]   DATA;            // 8bit output data
    output reg     EN = 0;              // 8bit output data enable

    reg    [7:0]   DATA = 0;
    reg    [3:0]   stage = `SS_SER_WAIT;
    reg    [12:0]  cnt = 1;             // counter to latch D0, D1, ..., D7
    reg    [11:0]  cnt_start = 0;       // counter to detect the Start Bit
    wire   [12:0]  waitcnt;

    assign waitcnt = `SERIAL_WCNT;

    always @(posedge CLK)
      if (!RST_X) cnt_start <= 0;
      else        cnt_start <= (RXD) ? 0 : cnt_start + 1;

    always @(posedge CLK)
      if(!RST_X) begin
          EN     <= 0;
          stage  <= `SS_SER_WAIT;
          cnt    <= 1;
          DATA   <= 0;
      end else if (stage == `SS_SER_WAIT) begin // detect the Start Bit
          EN <= 0;
          stage <= (cnt_start == (waitcnt >> 1)) ? `SS_SER_RCV0 : stage;
      end else begin
          if (cnt != waitcnt) begin
              cnt <= cnt + 1;
              EN <= 0;
          end else begin               // receive 1bit data
              stage  <= (stage == `SS_SER_DONE) ? `SS_SER_WAIT : stage + 1;
              EN     <= (stage == 8)  ? 1 : 0;
              DATA   <= {RXD, DATA[7:1]};
              cnt <= 1;
          end
      end
endmodule

/******************************************************************************************************/
module UartTxwithQ(CLK, RST_X, send_data, send_we, w_txd);
    input  wire CLK, RST_X;
    input  wire [ 7:0] send_data;
    input  wire        send_we;
    output wire w_txd;

    wire tx_ready;
    reg [7:0]  squeue[0:`QUEUE_SIZE-1];
    integer i;
    initial begin for(i=0; i<`QUEUE_SIZE; i=i+1) squeue[i]=8'h0; end

    reg  [$clog2(`QUEUE_SIZE)-1:0] queue_head = 0;
    reg  [$clog2(`QUEUE_SIZE)-1:0] queue_num  = 0;
    wire [$clog2(`QUEUE_SIZE)-1:0] queue_addr = queue_head+queue_num;
    //wire printchar = (tohost_cmd==1);
    always@(posedge CLK) begin
        if(send_we) squeue[queue_addr] <= send_data;
        queue_head <= (!send_we & tx_ready & (queue_num > 0) & !uartwe) ? queue_head + 1 : queue_head;
        queue_num <= (send_we) ? queue_num + 1 : (tx_ready & (queue_num > 0) & !uartwe) ? queue_num - 1 : queue_num;
    end

    reg [7:0] uartdata = 0;
    reg       uartwe   = 0;
    always@(posedge CLK) begin
        uartdata <= (!send_we & tx_ready & (queue_num > 0) & !uartwe) ? squeue[queue_head] : 0;
        uartwe   <= (!send_we & tx_ready & (queue_num > 0) & !uartwe) ? 1                  : 0;
    end

    UartTx UartTx0(CLK, RST_X, uartdata, uartwe, w_txd, tx_ready);

endmodule