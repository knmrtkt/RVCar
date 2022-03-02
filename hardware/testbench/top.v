/********************************************************************************************/
/* RVCore (RISC-V Core Processor) vXXXX-XX-XXx        since  2018-08-07  ArchLab. TokyoTech */
/********************************************************************************************/
`include "config.vh"
/********************************************************************************************/
`ifndef VERILATOR
module top();
    reg CLK = 0;
    initial forever #50 CLK = ~CLK;
    reg w_rst = 1;
    initial         #250 w_rst = 0;
`else
module top(CLK, w_rst);
    input reg CLK, w_rst;
`endif

    wire        w_rxd;
    wire        w_txd;
    wire [31:0] p_dout;
    wire [31:0] mc_dout;
    wire        soc_rst;
    reg  [ 7:0] r_key_data = 0;
    reg         r_key_en   = 0;
    // 1s = (10^-8) * 10^8 = 2^20 * 10^2 = 2^27
    reg  [22:0] r_key_cnt  = 1;

    always @(posedge CLK) begin
        r_key_cnt  <= (w_rst) ? 1 : r_key_cnt + 1;
        r_key_data <= (w_rst) ? 0 : 8'h41;
        r_key_en   <= (w_rst) ? 0 : (r_key_cnt==0) ? 1     : 0;
    end
    
    wire [40:0] w_sdcram_addr;
    wire        w_sdcram_ren;
    wire [ 3:0] w_sdcram_wen;
    wire [31:0] w_sdcram_wdata;
    wire [31:0] w_sdcram_rdata;
    wire        w_sdcram_busy;
    
    sim_sdcram sim_sdcram_0(
        .i_sys_clk(CLK),
        .i_sys_rst(w_rst),
        .i_sdcram_addr(w_sdcram_addr),
        .i_sdcram_ren(w_sdcram_ren),
        .i_sdcram_wen(w_sdcram_wen),
        .i_sdcram_wdata(w_sdcram_wdata),
        .o_sdcram_rdata(w_sdcram_rdata),
        .o_sdcram_busy(w_sdcram_busy)
    );

    wire [9:0] V_ADDR;
    wire       V_WE;
    wire [7:0] V_WDATA;
    wire [7:0] V_RDATA;
    wire [31:0] pwm_data;

    wire [31:0] w_nn_0_arg, w_nn_0_data;
    wire        w_nn_0_en;
    soc #(
        .BOOTLOADER_FILE(`BOOTLOADER_FILE),
        .START_PC(`START_PC),
        .MAINMEM_FILE(`MAINMEM_FILE),
        .MAINMEM_SIZE(`MEM_SIZE)
    )m(
        .CLK(CLK), 
        .RST(w_rst), 
        .w_txd(w_txd), 
        .p_dout(p_dout),

        .w_key_data(r_key_data), 
        .w_key_en(r_key_en), 

        .w_nn_0_data(w_nn_0_data), 
        .w_nn_0_arg(w_nn_0_arg),
        .w_nn_0_en(w_nn_0_en), 

        .w_pwm_data(pwm_data),
        .w_seg_data(),

        .w_sdcram_addr(w_sdcram_addr),
        .w_sdcram_ren(w_sdcram_ren),
        .w_sdcram_wen(w_sdcram_wen),
        .w_sdcram_wdata(w_sdcram_wdata),
        .w_sdcram_rdata(w_sdcram_rdata),
        .w_sdcram_busy(w_sdcram_busy),
        
        .V_ADDR(V_ADDR), 
        .V_WE(V_WE), 
        .V_WDATA(V_WDATA), 
        .V_RDATA(V_RDATA)
    );

    reg [31:0] r_tc = 1;
    always @(posedge CLK) if(m.p.RST_X && m.p.MaWb_v) r_tc <= r_tc + 1;


`ifndef PIPELINE
    `ifndef DEBUG
    wire [7:0] uartdata;
    wire       uartwe;
    serialc serc (CLK, !w_rst, w_txd, uartdata, uartwe);

    always@(posedge CLK) begin
        if(uartwe) $write("%c", uartdata);
        if(m.MMIO_con_0.tq.queue_num == `QUEUE_SIZE-1) begin
            $write("\nqueue num error\n");
            $finish();
        end
    end
    
    `else
    always@(posedge CLK) begin
        if(m.debug_we) $write("%08x %08x\n", m.r_cnt, m.r_rout);
    end
    `endif
`else
    wire [31:0] w_r_pc    = m.p.r_pc;
    wire [31:0] w_IfId_pc = m.p.IfId_pc;
    wire [31:0] w_IdEx_pc = m.p.IdEx_pc;
    wire [31:0] w_ExMa_pc = m.p.ExMa_pc;
    wire [31:0] w_MaWb_pc = m.p.MaWb_pc;
        `ifdef RTOS
    wire [31:0] w_WbCo_pc = m.p.WbCo_pc;
        `endif
    always @(negedge CLK) begin
        if(m.p.RST_X & !m.sim_poweroff) begin
        `ifndef RTOS
            $write("%x: %08d: ", m.p.RST_X, r_tc);
        `else
            //$write("%x: %08d: ", m.p.RST_X, m.p.mtime[31:0]);
            $write("%x: %08d: ", m.p.RST_X, r_ICNT);
        `endif
            $write("%08x ", w_r_pc);
            if(m.p.IfId_v) $write("%08x ", w_IfId_pc); else $write("-------- ");
            if(m.p.IdEx_v) $write("%08x ", w_IdEx_pc); else $write("-------- ");
            if(m.p.ExMa_v) $write("%08x ", w_ExMa_pc); else $write("-------- ");
            if(m.p.MaWb_v) $write("%08x ", w_MaWb_pc); else $write("-------- ");
        `ifdef RTOS
            if(m.p.WbCo_v) $write("%08x ", w_WbCo_pc); else $write("-------- ");
            $write(" %x %x %x %x ", m.p.w_excep, m.p.w_bmis, m.p.IdEx_luse_x, m.p.w_btkn);
        `endif
            $write("\n");
        end
    end

`endif

`ifdef VERIFY
    integer fd;
    initial begin
        fd = $fopen("verify.txt", "w");
    end

    `ifndef RTOS
    wire [31:0] w_MaWb_pc = m.p.MaWb_pc;
    `else
    wire [31:0] w_WbCo_pc = m.p.WbCo_pc;
    `endif
    integer i, j;
    always @(posedge CLK) begin
    `ifndef RTOS
        if(`TR_BEGIN <= r_tc && r_tc <= `TR_END) begin
            if(m.p.RST_X && m.p.MaWb_v) begin
                $fwrite(fd, "%08d %08x %08x\n", r_tc, w_MaWb_pc, m.p.MaWb_ir);
    `else
        if(`TR_BEGIN <= m.p.mtime[31:0] && m.p.mtime[31:0] <= `TR_END) begin
            if(m.p.RST_X && m.p.WbCo_v) begin
                $fwrite(fd, "%08d %08x %08x %08d\n", m.p.mtime[31:0], w_WbCo_pc, m.p.WbCo_ir, m.p.mtimecmp[31:0]);
    `endif
                for (i = 0; i < 4; i = i + 1) begin
                    for (j = 0; j < 8; j = j + 1) begin
    `ifndef RTOS
                        $fwrite(fd, "%08x", ((i*8+j == m.p.MaWb_rd) && (i*8+j != 0)) ? 
                               m.p.MaWb_rslt : m.p.regs0.mem[i * 8 + j]);
    `else
                        $fwrite(fd, "%08x", m.p.regs0.mem[i * 8 + j]);
    `endif
                        $fwrite(fd, "%s", (j != 7 ? " " : "\n"));
                    end
                end
    `ifdef RTOS
                $fwrite(fd, "%08x %08x %08x %08x %08x %08x %08x %08x \n", m.p.mstatus, m.p.mtvec, m.p.mscratch, m.p.mepc, m.p.mcause, m.p.mtval, m.p.mhartid, m.p.misa);
                $fwrite(fd, "%08x %08x %08x %08x %08x %08x %08x %08x \n", m.p.mie, m.p.mip, m.p.medeleg, m.p.mideleg, m.p.mcounteren, m.p.pending_exception, m.p.pending_tval, {30'h0,m.p.priv});
    `endif
            end
        end
    `ifndef RTOS
        if(`TR_FIN <= r_tc) begin
    `else
        if(`TR_FIN <= m.p.mtime[31:0]) begin
    `endif
            $write("finish by FIN\n");
            $fclose(fd);
            $finish();
        end
    end

    always@(negedge CLK) begin
        if(m.sim_poweroff) begin
            $write("finish by POWEROFF\n");
            $fclose(fd);
            $finish();
        end
    end
`endif

    always@(posedge CLK) begin
        if (m.r_halt) begin $write("HALT detect!\n"); $finish(); end
    end

`ifndef VERILATOR
    `ifdef TIMEOUT
    initial begin
        #`TIMEOUT   $write("Simulation Time out...\n");
        $finish();
    end
    `endif
`endif

endmodule
/********************************************************************************************/

module sim_sdcram(
    input  wire        i_sys_clk,
    input  wire        i_sys_rst,

    // for user interface
    input  wire [40:0] i_sdcram_addr,
    input  wire        i_sdcram_ren,
    input  wire [ 3:0] i_sdcram_wen,
    input  wire [31:0] i_sdcram_wdata,
    output wire [31:0] o_sdcram_rdata,
    output wire        o_sdcram_busy
    );
    parameter SD_ISO_FILE = "bin/sd.iso.hex";
    wire CLK = i_sys_clk;
    wire RST = i_sys_rst;

    reg [31:0] sd_mem[0:(128*1024)-1];
    integer i;
    initial begin
        $readmemh(SD_ISO_FILE, sd_mem);
    end

    reg         r_busy = 0;
    reg  [38:0] r_addr = 0;
    reg  [31:0] r_dout = 0;
    reg  [31:0] r_din  = 0;
    reg  [ 3:0] r_wen  = 0;
    reg         r_ren  = 0;
    
    always @(posedge CLK) begin
        if(!r_busy) begin
            r_addr <= i_sdcram_addr[40: 2];
            r_wen  <= i_sdcram_wen;
            r_ren  <= i_sdcram_ren;
            r_din  <= i_sdcram_wdata;
            if(i_sdcram_ren | |i_sdcram_wen) begin
                r_busy <= 1;
            end
        end
        else begin
            r_busy <= 0;
            if(r_ren) r_dout <= sd_mem[r_addr];
            if(r_wen[0]) sd_mem[r_addr][ 7: 0] <= r_din[ 7: 0];
            if(r_wen[1]) sd_mem[r_addr][15: 8] <= r_din[15: 8];
            if(r_wen[2]) sd_mem[r_addr][23:16] <= r_din[23:16];
            if(r_wen[3]) sd_mem[r_addr][31:24] <= r_din[31:24];
        end
    end

    assign o_sdcram_busy = r_busy;
    assign o_sdcram_rdata= r_dout;
endmodule