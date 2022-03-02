/********************************************************************************************/
/* RVCoreP (RISC-V Core Pipelining) v2019-11-19a (t111) since 2018-08-07 ArchLab. TokyoTech */
/********************************************************************************************/
`include "config.vh"
`default_nettype none
/********************************************************************************************/

/** some definitions, do not change these values                                           **/
/********************************************************************************************/
`define OPCODE_HALT____ 7'h7F // unique for RVCore
`define ALU_CTRL_ADD___ 4'h0
`define ALU_CTRL_SLL___ 4'h1
`define ALU_CTRL_SLT___ 4'h2
`define ALU_CTRL_SLTU__ 4'h3
`define ALU_CTRL_XOR___ 4'h4
`define ALU_CTRL_SRL___ 4'h5
`define ALU_CTRL_OR____ 4'h6
`define ALU_CTRL_AND___ 4'h7
`define ALU_CTRL_SUB___ 4'h8
`define ALU_CTRL_LUI___ 4'h9
`define ALU_CTRL_AUIPC_ 4'hA
`define ALU_CTRL_JAL___ 4'hB
`define ALU_CTRL_JALR__ 4'hC
`define ALU_CTRL_SRA___ 4'hD
  
/********************************************************************************************/  
module regfile(CLK, rs1, rs2, rdata1, rdata2, WE, rd, wdata, stall);
    input  wire        CLK;
    input  wire [ 4:0] rs1, rs2;
    output wire [31:0] rdata1, rdata2;
    input  wire        WE;
    input  wire [ 4:0] rd;
    input  wire [31:0] wdata;
    input  wire        stall;

    reg [31:0] mem [0:31];
    integer i; initial begin for(i=0; i<32; i=i+1) mem[i]=0; end

    assign rdata1 = (rs1 == 0) ? 0 : (rs1==rd) ? wdata : mem[rs1];
    assign rdata2 = (rs2 == 0) ? 0 : (rs2==rd) ? wdata : mem[rs2];
    always @(posedge CLK) begin
        if(!stall) begin
            if(WE && (rd!=0)) mem[rd] <= wdata;
        end
    end
endmodule

/* Branch Target Buffer (BTB) : valid(1bit) + tag(PC_W-clog2(ENTRY)) + data(PC_W)  */
/********************************************************************************************/
module m_BTB#(
    parameter ENTRY = 512,
    parameter WIDTH = 16
)
(
    input  wire CLK,
    input  wire WE,
    input  wire [$clog2(ENTRY)-1:0]  WADDR, RADDR,
    input  wire [1+WIDTH-$clog2(ENTRY)+WIDTH-1:0] IDATA,
    output reg  [1+WIDTH-$clog2(ENTRY)+WIDTH-1:0] ODATA,
    input  wire stall
);
    
    (* ram_style = "block" *) reg [1+WIDTH-$clog2(ENTRY)+WIDTH-1:0] mem[0:ENTRY-1];
    integer i; initial begin 
        for(i=0; i<ENTRY; i=i+1) mem[i]=0; 
    end
    
    always @(posedge CLK) begin
        if(!stall) begin
            if (WE) mem[WADDR] <= IDATA;
            ODATA <= mem[RADDR];
        end
    end
endmodule


/********************************************************************************************/
module m_PHT(CLK, WE, IDATA, pPC, BHR, ODATA, stall);
    input  wire  CLK;
    input  wire  WE;
    input  wire  [12:0] pPC;
    input  wire  [12:0] BHR;
    input  wire  [14:0] IDATA;
    output wire  [14:0] ODATA;
    input  wire         stall;

    (* ram_style = "block" *) reg [1:0] mem[0:8191];
    integer i; initial for(i=0; i<8192; i=i+1) mem[i]=2; /* init by weakly-taken */
    
    reg  [12:0] PC    = 0;        // program counter
    reg  [12:0] IDX_u = 0;        // the used index
    reg  [ 1:0] TBC   = 0;        // two-bit saturating counter
    wire [12:0] index = PC ^ BHR; // index, compute using Ex-or for Gshare
    always @(posedge CLK) begin
        if(!stall) begin
            if (WE) mem[IDATA[14:2]] <= IDATA[1:0];
            TBC   <= mem[index];
            PC    <= pPC;
            IDX_u <= index;
        end
    end
    assign ODATA = {IDX_u, TBC};
endmodule
/********************************************************************************************/

module m_ALU (in1, in2, imm, s, result, bsel, out, w_rcsr);
    input  wire [31:0] in1, in2, imm;
    output wire [31:0] result; // output data of ALU
    input  wire  [6:0] bsel;   // select signal for BRU (Branch Resolution Unit)
    output wire  [6:0] out;    // output data of BRU
    input  wire [12:0] s;      // select signal for ALU
    input  wire [31:0] w_rcsr;

    
    wire signed [31:0] sin1 = in1;
    wire signed [31:0] sin2 = in2;
    wire signed [31:0] w_sra = (sin1 >>> in2[4:0]);
    wire        [31:0] w_srl = ( in1  >> in2[4:0]);
    
    wire        w_cmp = (s[0] & (in1 < in2)) ^ (s[1] & (sin1 < sin2));
    wire [31:0] w_add = (s[3]) ? in1 - in2 : (s[2]) ? in1 + in2 : 0;
    wire [31:0] w_log = (s[4]) ? in1 ^ in2 : (s[5]) ? in1 | in2 : (s[6]) ? in1 & in2 : imm;
    wire [31:0] w_sf1 = (s[7]) ? (in1 << in2[4:0]) : 0;
    wire [31:0] w_sf2 = (s[8]) ? w_srl : 0;
    wire [31:0] w_sf3 = (s[9]) ? w_sra : 0;
    wire [31:0] w_csr1 = (s[12]) ? (w_rcsr & (~in1)) : 0;
    wire [31:0] w_csr2 = (s[11]) ? (w_rcsr | in1)    : 0;
    assign result[0]    = w_cmp ^ (w_add[0]  ^ w_log[0]) ^ (w_sf1[0] ^ ((s[10]) & w_srl[0])) ^ (w_csr1[0] ^ w_csr2[0]);
    assign result[31:1] = w_add[31:1] ^ w_log[31:1] ^ (w_sf1[31:1] ^ w_sf2[31:1] ^ w_sf3[31:1]) ^ (w_csr1[31:1] ^ w_csr2[31:1]);
    wire w_op0 = (bsel[0]  & ( in1 ==  in2));
    wire w_op1 = (bsel[1]  & ( in1 !=  in2));
    wire w_op2 = (bsel[2]  & (sin1 <  sin2));
    wire w_op3 = (bsel[3]  & (sin1 >= sin2));
    wire w_op4 = (bsel[4]  & ( in1 <   in2));
    wire w_op5 = (bsel[5]  & ( in1 >=  in2));
    assign out = {bsel[6], w_op5, w_op4, w_op3, w_op2, w_op1, w_op0};
endmodule

/********************************************************************************************/
module RVCore#(
    parameter PC_W = 22, // 4n+2
    parameter START_PC = 0
    
)
(CLK, RST_X, r_rout, r_halt, I_ADDR, D_ADDR, I_IN, D_IN, D_OUT, D_WE, D_RE, D_STALL, EX_INT);
    input  wire        CLK, RST_X;
    output reg  [31:0] r_rout;
    output reg         r_halt;
    output wire [31:0] I_ADDR, D_ADDR;
    input  wire [31:0] I_IN, D_IN;
    output wire [31:0] D_OUT;
    output wire  [3:0] D_WE;
    output wire        D_RE;
    input  wire        D_STALL;
    input  wire        EX_INT; // External interrupt request

    /**************************** Architecture Register and Pipeline Register ***************/
    reg [PC_W-1:0] r_pc          = START_PC; // Program Counter
    
    reg        IfId_v        = 0; ///// IF/ID pipeline register
    reg [31:0] IfId_ir       = 0; // fetched instruction
    reg [PC_W-1:0] IfId_pc       = 0;
    reg [PC_W-1:0] IfId_pc_n     = 0;
    reg [ 6:0] IfId_op       = 0;
    reg [ 2:0] IfId_funct3   = 0;
    reg [ 4:0] IfId_rs1      = 0;
    reg [ 4:0] IfId_rs2      = 0;
    reg [ 4:0] IfId_rd       = 0;
    reg        IfId_mem_we   = 0;
    reg        IfId_reg_we   = 0;
    reg        IfId_op_ld    = 0;
    reg        IfId_op_im    = 0;
    reg        IfId_s1       = 0;
    reg        IfId_s2       = 0;
    reg [2:0]  IfId_im_s     = 0;

    reg        IdEx_v        = 0; ///// ID/EX pipeline register
    reg [PC_W-1:0] IdEx_pc       = 0;
    reg [PC_W-1:0] IdEx_pc_n     = 0;
    reg [ 6:0] IdEx_op       = 0;
    reg [ 2:0] IdEx_funct3   = 0;
    reg [ 4:0] IdEx_rd       = 0;
    reg [31:0] IdEx_imm      = 0;
    reg        IdEx_mem_we   = 0;
    reg        IdEx_reg_we   = 0;
    reg        IdEx_op_ld    = 0;
    reg [ 6:0] IdEx_bru_ctrl = 0;
    reg [31:0] IdEx_rrs1     = 0;
    reg [31:0] IdEx_rrs2     = 0;
    reg [31:0] IdEx_alu_imm  = 0; // additional value for ALU
    reg [31:0] IdEx_ir       = 0;
    reg [31:0] IdEx_s1       = 0;
    reg [31:0] IdEx_s2       = 0;
    reg [31:0] IdEx_u1       = 0;
    reg [31:0] IdEx_u2       = 0;
    reg        IdEx_luse     = 1; // Note
    reg        IdEx_JALR     = 0;
    reg [2:0]  IdEx_st_we    = 0;
    
    reg        ExMa_v        = 0; ///// EX/MA pipeline register
    reg [PC_W-1:0] ExMa_pc       = 0;
    reg [PC_W-1:0] ExMa_pc_n     = 0;
    reg [ 6:0] ExMa_op       = 0;
    reg [ 4:0] ExMa_rd       = 0;
    reg        ExMa_reg_we   = 0;
    reg        ExMa_op_ld    = 0;
    reg [31:0] ExMa_rslt     = 0;
    reg [ 6:0] ExMa_b_rslt   = 0;
    reg [PC_W-1:0] ExMa_tkn_pc   = 0;
    reg [ 1:0] ExMa_addr     = 0;
    reg        ExMa_b        = 0;
    reg [31:0] ExMa_wdata    = 0;
    reg [31:0] ExMa_ir       = 0;
    reg [PC_W-1:0] ExMa_npc      = 0;
    reg [PC_W-1:0] ExMa_ppc      = 0;
    reg        ExMa_b_rslt_t1= 0;
    reg        ExMa_b_rslt_t2= 0;
    reg [ 6:0] ExMa_bru_ctrl = 0;
//    (* max_fanout = 6 *) reg [ 4:0] ExMa_lds      = 0; /***** for load instructions *****/
    reg [ 4:0] ExMa_lds      = 0; /***** for load instructions *****/
    reg  [2:0] ExMa_funct3   = 0;
    
    reg        MaWb_v        = 0; ///// MA/WB pipeline register
    reg [ 4:0] MaWb_rd       = 0;
    reg [31:0] MaWb_rslt     = 0;
    reg [PC_W-1:0] MaWb_pc       = 0;
    reg [31:0] MaWb_wdata    = 0;
    reg [31:0] MaWb_ir       = 0; // just for verify

    reg [12:0] IdEx_alu_ctrl = 0;

    reg        IfId_op_cim   = 0;
    reg [31:0] IdEx_rcsr     = 0;
    reg        IdEx_csr_we   = 0;
    reg        IdEx_xRET     = 0;
    reg        ExMa_csr_we   = 0;
    reg [31:0] ExMa_cli_addr = 0;
    reg        ExMa_cli_we   = 0;
    reg        ExMa_xRET     = 0;
    reg        ExMa_cli_en   = 0;
    reg [63:0] ExMa_csr_mtime= 0;
    reg [63:0] MaWb_csr_mtcmp= 0;
    reg [31:0] MaWb_csr_data = 0;
    reg        MaWb_csr_we   = 0;
    reg        MaWb_cli_we   = 0;
    reg [PC_W-1:0] MaWb_npc      = 0;
    reg [31:0] MaWb_csr_mepc = 0;
    reg  [2:0] MaWb_csr_we3  = 0;
    reg        MaWb_mip_we   = 0;
    reg [31:0] MaWb_mip_data = 0;
    reg        MaWb_mst_we   = 0;
    reg [31:0] MaWb_mstatus  = 0;
    reg        WbCo_v        = 0;
    reg [PC_W-1:0] WbCo_pc       = 0;
    reg [31:0] WbCo_ir       = 0;

    reg [31:0] mstatus       = 0;            ///// CSRs
    reg [31:0] mtvec         = 0;            //
    reg [31:0] mscratch      = 0;            //
    reg [31:0] mepc          = 0;            //
    reg [31:0] mcause        = 0;            //
    reg [31:0] mtval         = 0;            //
    reg [31:0] mhartid       = 0;            //
    reg [31:0] misa          = 32'h00000100; // RV32i, Machine ISA register (MISA)
    reg [31:0] mie           = 0;            //
    reg [31:0] mip           = 0;            //
    reg [31:0] medeleg       = 0;            //
    reg [31:0] mideleg       = 0;            //
    reg [31:0] mcounteren    = 0;            //
    
    reg  [1:0] priv          = `PRIV_M;      // Mode
    reg [63:0] mtime         = 0;            // Mtime
    reg [63:0] mtimecmp      = 0;            // Mtime
    reg [31:0] pending_tval  = 0;            //
    reg [31:0] pending_exception = ~0;       //

    /****************************************************************************************/
    always @(posedge CLK) begin
`ifdef NOREAL_MTIME
        if(RST_X & MaWb_v) mtime <= mtime + 1;
`else
        if(RST_X)          mtime <= mtime + 1;
`endif
    end

    /****************************************************************************************/
    reg r_RST = 1;
    always @(posedge CLK) r_RST <= !RST_X | r_halt;

    /**************************** IF  *******************************************************/
    wire [31:0]  w_ir   = I_IN;
    wire w_stall = IdEx_luse;  // stall by load-use (luse) data dependency

    /***** compute the next cycle pc using branch prediction *****/
    wire w_bmis = ExMa_b & (ExMa_b_rslt ? ExMa_b_rslt_t1 : ExMa_b_rslt_t2);
    wire [PC_W-1:0] w_pc_true = {((ExMa_b_rslt) ? ExMa_tkn_pc[PC_W-1:2]: ExMa_npc[PC_W-1:2]), 2'b00};

    reg [1+PC_W-2-9+PC_W-2-1:0] r_btb=0;
    reg r_btkn_t=0; // BTB taken temporal, valid, and tag match, prev insn untkn
    wire w_btkn = (r_btkn_t & w_pht[1]); // BTB says tkn, when pred tkn and prev insn untkn

    wire [PC_W-1:0] excep_pc;
    wire w_excep;
    wire [PC_W-3:0] w_npc = (w_excep) ? excep_pc[PC_W-1:2] : (w_bmis) ? w_pc_true[PC_W-1:2] : (IdEx_luse_x & ~D_STALL & w_btkn) ? r_btb[PC_W-3:0] : r_pc[PC_W-1:2]+(IdEx_luse_x & ~D_STALL);
    
    always @(posedge CLK) r_pc <= {w_npc, 2'b00};

    wire w_pc_untkn = (w_bmis | w_stall | D_STALL | w_btkn | w_excep) ? 0 : 1; //prev insn untkn
    
    wire [1+ PC_W-2-9 + PC_W-2 -1:0] w_btbd = {1'b1, ExMa_ppc[PC_W-1:2+9], ExMa_tkn_pc[PC_W-1:2]};
    wire [1+ PC_W-2-9 + PC_W-2 -1:0] w_btb;
    wire w_btb_valid = w_btb[1+PC_W-2-9+PC_W-2-1];
    wire [PC_W-2-9-1:0] w_btb_tag = w_btb[1+PC_W-2-9+PC_W-2-2 : PC_W-2];
    m_BTB#(
        .ENTRY(512),
        .WIDTH(PC_W-2)
    )m_BTB(.CLK(CLK), .WE(ExMa_b), .WADDR(ExMa_ppc[10:2]), .IDATA(w_btbd), .RADDR(w_npc[8:0]), .ODATA(w_btb), .stall(D_STALL));

    always @(posedge CLK) begin
        if(!D_STALL) begin
            r_btkn_t <= (w_btb_valid & (w_btb_tag==r_pc[PC_W-1:2+9])) & w_pc_untkn;
            r_btb <= w_btb;
        end
    end

    /********** for gshare branch predictor *************************************************/
    wire Ma_tkn = (ExMa_b_rslt!=0);                 // taken by branch or jump
    wire Ma_bb  = (ExMa_b & ExMa_bru_ctrl[6]==0);   // valid branch insn
    wire If_vbb = ~(w_stall | D_STALL) & (w_ir[6:2]==5'b11000); // valid branch, not stall and branch

    reg  [12:0] r_bhr    = 0; /* branch history register (speculatively updated) */
    reg  [12:0] r_bhr_d  = 0; /* branch history register (decided, or fixed)     */
    reg  [14:0] r_pht_wd = 0; /* PHT write data   */
    reg         r_pht_we = 0; /* PHT write enable */
    
    wire [14:0] w_pht;
    m_PHT m_PHT(CLK, r_pht_we, r_pht_wd, w_npc[12:0], r_bhr, w_pht, D_STALL);

    wire [12:0] w_bhr_d = (Ma_bb) ? {r_bhr_d[11:0], Ma_tkn} : r_bhr_d;
    wire [12:0] w_pht_idx = ExMa_ppc[14:2] ^ r_bhr_d;
    always @(posedge CLK) begin
        if(!D_STALL) begin
            r_bhr    <= (w_bmis) ? w_bhr_d : (If_vbb) ? {r_bhr[11:0], w_btkn} : r_bhr;
            r_bhr_d  <= w_bhr_d;
            r_pht_wd <= {ExMa_bp[14:2], w_tbc}; // Note
            r_pht_we <= ExMa_b;  // update PHT by Jump and Branch
        end
    end

    wire [1:0] w_tbc_t = ExMa_bp[1:0];
    wire [1:0] w_tbc = ( Ma_tkn & w_tbc_t<3) ? w_tbc_t+1 :
                       (!Ma_tkn & w_tbc_t>0) ? w_tbc_t-1 : w_tbc_t;
  
    reg [14:0] IfId_bp = 0;
    reg [14:0] IdEx_bp = 0;
    reg [14:0] ExMa_bp = 0;
    always @(posedge CLK) begin
        if(!D_STALL) begin
            IfId_bp <= (w_stall) ? IfId_bp : w_pht;
            IdEx_bp <= IfId_bp;
            ExMa_bp <= (!RST_X) ? 0 : IdEx_bp;
        end
    end

    assign I_ADDR = {w_npc, 2'b00};

    /****************************************************************************************/
    wire [ 4:0]  If_rd;
    wire [ 4:0]  If_rs1;
    wire [ 4:0]  If_rs2;
    wire [31:0]  w_rrs1;
    wire [31:0]  w_rrs2;
    wire         w_mem_we;
    wire         w_reg_we;
    wire         w_op_ld;
    wire         w_op_im;

    wire         w_op_cim;
    decoder_if dec_if0(w_ir, If_rd, If_rs1, If_rs2, w_mem_we, w_reg_we, w_op_ld, w_op_im, w_op_cim);

    always @(posedge CLK) begin
        if(!D_STALL) begin
            IfId_v        <= (w_bmis | w_excep) ? 0 : (w_stall) ? IfId_v      : 1;
            IfId_mem_we   <= (w_bmis | w_excep) ? 0 : (w_stall) ? IfId_mem_we : w_mem_we;
            IfId_reg_we   <= (w_bmis | w_excep) ? 0 : (w_stall) ? IfId_reg_we : w_reg_we;
            IfId_s1       <= (w_bmis | w_stall | w_excep) ? 0 : ((If_rs1==IfId_rd) & IfId_reg_we);
            IfId_s2       <= (w_bmis | w_stall | w_excep) ? 0 : ((If_rs2==IfId_rd) & IfId_reg_we);
            IfId_rd       <= (w_bmis) ? 0 : (w_stall) ? IfId_rd     : If_rd;
            IfId_op_ld    <= (w_bmis) ? 0 : (w_stall) ? IfId_op_ld  : w_op_ld;
            if(!w_stall) begin
                IfId_rs1    <= If_rs1;
                IfId_rs2    <= If_rs2;
                IfId_op     <= w_ir[6:0];
                IfId_pc     <= r_pc;
                IfId_pc_n   <= {w_npc, 2'b00};
                IfId_ir     <= w_ir;
                IfId_funct3 <= w_ir[14:12];
                IfId_op_im  <= w_op_im;
                IfId_im_s   <= (w_ir[6:2]==5'b01101) ? 3'b001 :    // LUI
                            (w_ir[6:2]==5'b00101) ? 3'b010 :    // AUIPC
                            (w_ir[6:2]==5'b11001) ? 3'b100 :    // JALR
                            (w_ir[6:2]==5'b11011) ? 3'b100 : 0; // JAL
                IfId_op_cim <= w_op_cim;
            end
        end
    end

    /**************************** ID  *******************************************************/
    wire [9:0]  Id_alu_ctrl;
    wire [6:0]  Id_bru_ctrl;
    wire [31:0] Id_imm;

    wire [2:0]  Id_csr_ctrl;
    decoder_id dec_id0(IfId_ir, Id_alu_ctrl, Id_bru_ctrl, Id_imm, Id_csr_ctrl);
    regfile regs0(CLK, IfId_rs1, IfId_rs2, w_rrs1, w_rrs2, MaWb_v, MaWb_rd, MaWb_rslt, D_STALL);

    wire [11:0] w_csraddr   = (IfId_ir[14:12] != 3'h0)    ? IfId_ir[31:20] :
                              (IfId_ir[31:20] == 12'h302) ? `CSR_MEPC      : 0;  // mret
    wire [31:0] w_mstatus_t = (mstatus | 32'h6000);

    wire [31:0] w_rcsr;
    reg  [31:0] r_rcsr_t    = 0; 
    always@(*) begin /***** read CSR register, for OF stage  *****/
        case(w_csraddr)
            `CSR_MEDELEG    : r_rcsr_t = medeleg;
            `CSR_MIDELEG    : r_rcsr_t = mideleg;
            `CSR_MIE        : r_rcsr_t = mie;
            `CSR_MTVEC      : r_rcsr_t = mtvec;
            `CSR_MCOUNTEREN : r_rcsr_t = mcounteren;
            `CSR_MSCRATCH   : r_rcsr_t = mscratch;
            `CSR_MEPC       : r_rcsr_t = mepc;
            `CSR_MCAUSE     : r_rcsr_t = mcause;
            `CSR_MTVAL      : r_rcsr_t = mtval;
            `CSR_MIP        : r_rcsr_t = mip;
            `CSR_MISA       : r_rcsr_t = misa | 32'h40000000;

//            `CSR_MCYCLE     : r_rcsr_t = mtime[31:0];
//            `CSR_MINSTRET   : r_rcsr_t = mtime[31:0];
//            `CSR_MCYCLEH    : r_rcsr_t = mtime[63:32];
//            `CSR_MINSTRETH  : r_rcsr_t = mtime[63:32];

            `CSR_MSTATUS    : r_rcsr_t = (w_mstatus_t[31:13]==3 | w_mstatus_t[31:15]==3) ? (w_mstatus_t | 32'h80000000) : w_mstatus_t;
            `CSR_MHARTID    : r_rcsr_t = mhartid;
            default         : r_rcsr_t = 0;
        endcase
    end
    assign w_rcsr = r_rcsr_t;

    wire w_csr_we = (IfId_ir[6:2] == 5'b11100) & (IfId_ir[14:12] != 3'h0);
    
    /***** control signal for data forwarding *****/

    wire w_fwd_s1 = !w_excep & (IfId_rs1==ExMa_rd) & (ExMa_reg_we);
    wire w_fwd_s2 = !w_excep & (IfId_rs2==ExMa_rd) & (ExMa_reg_we);

    wire Id_s1 = !w_excep & (IfId_rs1==IdEx_rd) & (IdEx_reg_we);
    wire Id_s2 = !w_excep & (IfId_rs2==IdEx_rd) & (IdEx_reg_we);
         
    wire Id_luse = r_RST | !IdEx_luse &
         (IfId_op_ld) & ((w_ir[19:15]==IfId_rd) | (w_ir[24:20]==IfId_rd));
                   // Note: this condition of load-use may gererate false dependency
    reg IdEx_luse_x=0;
    always @(posedge CLK) begin
        if(!D_STALL) begin
            IdEx_v        <= (w_bmis | w_stall | w_excep) ? 0 : IfId_v;
            IdEx_reg_we   <= (w_bmis | w_stall | w_excep) ? 0 :IfId_reg_we;
            IdEx_mem_we   <= (w_bmis | w_stall | w_excep) ? 0 :IfId_mem_we;
            IdEx_st_we[0] <= ((w_bmis | w_stall | w_excep) ? 0 :IfId_mem_we) & (IfId_funct3[1:0]==0);
            IdEx_st_we[1] <= ((w_bmis | w_stall | w_excep) ? 0 :IfId_mem_we) & IfId_funct3[0];
            IdEx_st_we[2] <= ((w_bmis | w_stall | w_excep) ? 0 :IfId_mem_we) & IfId_funct3[1];
            IdEx_alu_ctrl <= {Id_csr_ctrl[2], (Id_csr_ctrl[1] | Id_csr_ctrl[0]), (Id_alu_ctrl[9] |Id_alu_ctrl[8]), Id_alu_ctrl};
            IdEx_op_ld    <= (w_bmis | w_stall) ? 0 : IfId_op_ld;
            IdEx_luse     <= Id_luse;
            IdEx_luse_x   <= !Id_luse;
            IdEx_op       <= IfId_op;
            IdEx_pc       <= IfId_pc;
            IdEx_pc_n     <= IfId_pc_n;
            IdEx_rd       <= IfId_rd;
            IdEx_ir       <= IfId_ir;
            IdEx_funct3   <= IfId_funct3;
            IdEx_imm      <= Id_imm;
            IdEx_bru_ctrl <= Id_bru_ctrl;
            IdEx_JALR     <= (IfId_op[6:2]==5'b11001);
            IdEx_s1       <= {32{Id_s1}};
            IdEx_s2       <= {32{Id_s2}};
            IdEx_u1       <= {32{!Id_s1 & w_fwd_s1}};
            IdEx_u2       <= {32{!Id_s2 & w_fwd_s2}};
            IdEx_alu_imm  <= (IfId_im_s[0]) ? {IfId_ir[31:12], 12'b0}           :   
                            (IfId_im_s[1]) ? IfId_pc + {IfId_ir[31:12], 12'b0} :   
                            (IfId_im_s[2]) ? IfId_pc + 4                       : 0;
            IdEx_rcsr     <= (Id_csr_ctrl[0]) ? 0 : w_rcsr;
            IdEx_csr_we   <= w_csr_we;
            IdEx_xRET     <= (IfId_op[6:2]==5'b11100) & (IfId_funct3==3'h0) & (IfId_rs2==5'b00010);
        end
    end

    always @(posedge CLK) begin
        if(!D_STALL) begin
            IdEx_rrs1     <= (Id_s1 | w_fwd_s1) ? 0 : (IfId_op_cim) ? Id_imm : w_rrs1;
            IdEx_rrs2     <= (Id_s2 | w_fwd_s2) ? 0 : (IfId_op_im) ? Id_imm : w_rrs2;
        end
    end
    /**************************** EX  *******************************************************/
    wire [31:0] Ex_rrs1 = ((IdEx_s1) & ExMa_rslt) ^ ((IdEx_u1) & MaWb_rslt) ^ IdEx_rrs1;
    wire [31:0] Ex_rrs2 = ((IdEx_s2) & ExMa_rslt) ^ ((IdEx_u2) & MaWb_rslt) ^ IdEx_rrs2;
    
    wire    [6:0]  w_b_rslt;  // BRU result
    wire    [31:0] w_a_rslt;  // ALU result
    wire    [PC_W-1:0] w_tkn_pc;  // Taken PC


    assign w_tkn_pc = (IdEx_JALR) ? Ex_rrs1+IdEx_imm : (IdEx_xRET) ? IdEx_rcsr : IdEx_pc+IdEx_imm; // using rrs1
    assign D_ADDR = Ex_rrs1 + IdEx_imm;                                  // using rrs1
    assign D_OUT  = (IdEx_funct3[0]) ? {2{Ex_rrs2[15:0]}} :              // using rrs2
                    (IdEx_funct3[1]) ? Ex_rrs2 : {4{Ex_rrs2[7:0]}};      // using rrs2
    

    m_ALU alu0(Ex_rrs1, Ex_rrs2, IdEx_alu_imm, IdEx_alu_ctrl, w_a_rslt, 
               IdEx_bru_ctrl, w_b_rslt, IdEx_rcsr);

    always @(posedge CLK) begin
        if(!D_STALL) begin
            ExMa_v        <= (w_bmis | w_excep) ? 0 : IdEx_v;
            ExMa_reg_we   <= (w_bmis | w_excep) ? 0 : IdEx_reg_we;
            ExMa_b        <= (!RST_X || w_bmis || IdEx_v==0 | w_excep) ? 0 : (IdEx_bru_ctrl!=0) || IdEx_xRET;
            ExMa_b_rslt   <= (IdEx_xRET) ? 7'h7f : w_b_rslt;
            ExMa_rslt     <= w_a_rslt;
            ExMa_ir       <= IdEx_ir;
            ExMa_pc       <= IdEx_pc;   // pc of this instruction
            ExMa_ppc      <= IdEx_pc-4;
            ExMa_npc      <= IdEx_pc+4; // next pc
            ExMa_pc_n     <= IdEx_pc_n; // predicted_next pc
            ExMa_tkn_pc   <= w_tkn_pc;  // taken pc
            ExMa_op       <= IdEx_op;
            ExMa_rd       <= IdEx_rd;
            ExMa_op_ld    <= IdEx_op_ld;
            ExMa_addr     <= D_ADDR[1:0];
            ExMa_wdata    <= D_OUT;
            ExMa_b_rslt_t1<= (w_tkn_pc   !=IdEx_pc_n); // to detect branch pred miss
            ExMa_b_rslt_t2<= ((IdEx_pc+4)!=IdEx_pc_n); // to detect branch pred miss
            ExMa_bru_ctrl <= IdEx_bru_ctrl;
            ExMa_funct3   <= IdEx_funct3;
            ExMa_csr_we   <= IdEx_csr_we;
            ExMa_cli_addr <= D_ADDR;
            ExMa_xRET     <= IdEx_xRET;
            ExMa_cli_en   <= (D_ADDR[31:28]==4'h6) & IdEx_op_ld;
        end
    end

    /***** for store instruction *****/
    wire [3:0] w_we_sb = (IdEx_st_we[0]) ? (4'b0001 << D_ADDR[1:0])       : 0;
    wire [3:0] w_we_sh = (IdEx_st_we[1]) ? (4'b0011 << {D_ADDR[1], 1'b0}) : 0;
    wire [3:0] w_we_sw = (IdEx_st_we[2]) ? 4'b1111                        : 0;

    assign D_WE = {4{!w_bmis}} & (w_we_sh ^ w_we_sw ^ w_we_sb);
    assign D_RE = (IdEx_op_ld) ? 1 : 0;
    wire cli_we = (D_ADDR[31:28]==4'h6) & IdEx_mem_we;
    
    wire        w_MaWb_v  = (w_excep) ? 0 : ExMa_v;
    wire [63:0] csr_mtime = (w_MaWb_v & MaWb_v) ? mtime + 3 : 
                            (w_MaWb_v ^ MaWb_v) ? mtime + 2 : mtime + 1;

    always @(posedge CLK) begin
        if(!D_STALL) begin
            ExMa_lds <= (!IdEx_op_ld) ? 0 :
                        (IdEx_funct3==3'b000) ? 5'b01001 :
                        (IdEx_funct3==3'b001) ? 5'b01010 :
                        (IdEx_funct3==3'b010) ? 5'b00100 :
                        (IdEx_funct3==3'b100) ? 5'b00001 :
                                                5'b00010 ;
            ExMa_cli_we <= cli_we;
            ExMa_csr_mtime <= csr_mtime;
        end
    end

    /**************************** MEM *******************************************************/
    wire [1:0]  w_adr  = ExMa_addr;
    wire [7:0]  w_lb_t = D_IN >> ({w_adr, 3'd0});
    wire [15:0] w_lh_t = (w_adr[1]) ? D_IN[31:16] : D_IN[15:0];

    wire [31:0] w_ld_lb  = (ExMa_lds[0]) ? {{24{w_lb_t[ 7] & ExMa_lds[3]}}, w_lb_t[ 7:0]} : 0;
    wire [31:0] w_ld_lh  = (ExMa_lds[1]) ? {{16{w_lh_t[15] & ExMa_lds[3]}}, w_lh_t[15:0]} : 0;
    wire [31:0] w_ld_lw  = (ExMa_lds[2]) ? D_IN                             : 0;
    wire [31:0] Ma_rslt = w_ld_lb ^ w_ld_lh ^ w_ld_lw ^ ExMa_rslt;

    // CLINT
    // BASEADDR 0x6000000
    reg  [31:0] cli_data = 0;
    always @(*) begin
        case (ExMa_cli_addr[15:0])
            16'hbff8 : cli_data = ExMa_csr_mtime[31: 0];
            16'hbffc : cli_data = ExMa_csr_mtime[63:32];
            16'h4000 : cli_data = mtimecmp[31: 0];
            16'h4004 : cli_data = mtimecmp[63:32];
            default  : cli_data = 0;
        endcase
    end

    wire mepc_we   = (ExMa_csr_we & ExMa_ir[31:20]==`CSR_MEPC);
    wire mtval_we  = (ExMa_csr_we & ExMa_ir[31:20]==`CSR_MTVAL);
    wire mcause_we = (ExMa_csr_we & ExMa_ir[31:20]==`CSR_MCAUSE);

    wire mip_csrw_we  = ExMa_csr_we & ExMa_ir[31:20]==`CSR_MIP;
    wire mip_cli_we   = ExMa_cli_we;
    wire mip_timer_we = MaWb_csr_mtcmp < ExMa_csr_mtime;
    wire mip_exint_we = EX_INT;

    

    wire [31:0] mip_csrw_data  = (mip & ~`WCSR_MASK4) | (ExMa_rslt & `WCSR_MASK4);
    wire [31:0] mip_cli_data   = (mip & ~`MIP_MTIP);
    wire [31:0] mip_timer_data = mip | `MIP_MTIP;
    wire [31:0] mip_exint_data = (EX_INT) ? mip | `MIP_MEIP : mip & ~`MIP_MEIP; // external interrupt

    wire [63:0] w_mtimecmp   = (MaWb_cli_we & MaWb_v) ? MaWb_csr_mtcmp : mtimecmp;
    reg  [63:0] cli_mtimecmp = 0;
    always @(*) begin
        if (ExMa_cli_we & ExMa_v) begin
            case (ExMa_cli_addr[15:0])
                16'h4000 : cli_mtimecmp = {w_mtimecmp[63:32], ExMa_wdata};
                16'h4004 : cli_mtimecmp = {ExMa_wdata, w_mtimecmp[31: 0]};
                default  : cli_mtimecmp = w_mtimecmp;
            endcase
        end else begin
            cli_mtimecmp = w_mtimecmp;
        end
    end

    wire mstatus_xret_we = ExMa_xRET & ExMa_ir[31:25]==7'h18;
    wire mstatus_csrw_we = ExMa_csr_we & ExMa_ir[31:20]==`CSR_MSTATUS;

    wire  [1:0] mpp               = mstatus[`MSTATUS_MPP_SHIFT+1:`MSTATUS_MPP_SHIFT];
    wire        mpie              = mstatus[`MSTATUS_MPIE_SHIFT];
    wire [31:0] mstatus_xret_data = (((mstatus & ~(1 << mpp)) | (mpie << mpp)) | `MSTATUS_MPIE) & ~`MSTATUS_MPP;
    wire [31:0] mstatus_csrw_data = (mstatus & ~`MASK_STATUS) | (ExMa_rslt & `MASK_STATUS);
    
    reg         MaWb_excp_v = 0;
    reg  [31:0] MaWb_excp_code = 0;
    always @(posedge CLK) begin
        if(!D_STALL) begin
            MaWb_v     <= w_MaWb_v;
            MaWb_rslt  <= (ExMa_cli_en) ? cli_data : Ma_rslt;
            MaWb_pc    <= ExMa_pc;
            MaWb_ir    <= ExMa_ir;
            MaWb_wdata <= ExMa_wdata;
            MaWb_rd    <= (ExMa_v) ? ExMa_rd : 0;

            MaWb_csr_data <= ExMa_rslt;
            MaWb_csr_we   <= ExMa_csr_we;
            MaWb_cli_we   <= ExMa_cli_we;
            MaWb_npc      <= w_pc_true;
            MaWb_csr_mepc <= ExMa_rslt & ~1;
            MaWb_csr_we3  <= {mepc_we, mtval_we, mcause_we};
            MaWb_mip_we   <= mip_csrw_we | mip_cli_we | mip_timer_we;
            MaWb_mip_data <= (mip_csrw_we) ? mip_csrw_data : (mip_cli_we) ? mip_cli_data : mip_timer_data;
            MaWb_csr_mtcmp<= cli_mtimecmp;
            MaWb_mst_we   <= mstatus_xret_we | mstatus_csrw_we;
            MaWb_mstatus  <= (mstatus_xret_we) ? mstatus_xret_data :
                            (mstatus_csrw_we) ? mstatus_csrw_data : 0;
            // ecall
            MaWb_excp_v   <= (ExMa_ir == 32'h00000073);
            MaWb_excp_code<= (ExMa_ir == 32'h00000073) ? 11 : 0;
        end
    end

    /**************************** WB ********************************************************/
    reg r_EX_INT = 0;
    wire [31:0] nxt_mip_t = (MaWb_v & MaWb_mip_we) ? MaWb_mip_data : mip;
    wire [31:0] nxt_mip   = {nxt_mip_t[31:12], r_EX_INT, nxt_mip_t[10:0]};

    always @(posedge CLK) begin
        if(!D_STALL) begin
            if(MaWb_csr_we & MaWb_v) begin
                case(MaWb_ir[31:20])
                    `CSR_MTVEC      : mtvec      <= MaWb_csr_data & ~3;
                    `CSR_MCOUNTEREN : mcounteren <= MaWb_csr_data & 5;
                    `CSR_MSCRATCH   : mscratch   <= MaWb_csr_data;
                    
                    `CSR_MEDELEG    : medeleg    <= (medeleg & ~`WCSR_MASK1) | (MaWb_csr_data & `WCSR_MASK1);
                    `CSR_MIDELEG    : mideleg    <= (mideleg & ~`WCSR_MASK2) | (MaWb_csr_data & `WCSR_MASK2);
                    `ifdef NO_EX_INT
                    `CSR_MIE        : mie        <= (mie & ~`WCSR_MASK3) | (MaWb_csr_data & `WCSR_MASK3);
                    `else
                    `CSR_MIE        : mie        <= (mie & ~`WCSR_MASK5) | (MaWb_csr_data & `WCSR_MASK5);
                    `endif
                    default         : ;
                endcase
            end
            r_EX_INT <= EX_INT;
            mip <= nxt_mip;
        end
    end

    wire [31:0] w_mstatus = (MaWb_v & MaWb_mst_we) ? MaWb_mstatus : mstatus;

    // interrupt
    wire [31:0] pending_interrupts = nxt_mip & mie;
    wire [31:0] enable_interrupts  = (w_mstatus & `MSTATUS_MIE) ? ~mideleg : 0;
    wire [31:0] w_interrupt_mask   = pending_interrupts & enable_interrupts;
    wire [31:0] w_irq_t            = w_interrupt_mask & (~w_interrupt_mask+1);

    wire [31:0] irq_num = (w_irq_t[3]) ? 3 : (w_irq_t[7]) ? 7 : (w_irq_t[11]) ? 11 : 32;
    wire [31:0] cause   = (w_interrupt_mask != 0) ? (`CAUSE_INTERRUPT | irq_num) : MaWb_excp_code;

    assign w_excep  = (w_interrupt_mask != 0) | (MaWb_excp_v & MaWb_v);
    assign excep_pc = mtvec;

    wire [31:0] w_mstatus_t1 = (w_mstatus & ~`MSTATUS_MPIE) | (w_mstatus[`PRIV_M] << `MSTATUS_MPIE_SHIFT);
    wire [31:0] w_mstatus_t2 = (w_mstatus_t1  & ~`MSTATUS_MPP) | (`PRIV_M << `MSTATUS_MPP_SHIFT);
    wire [31:0] w_mstatus_t3 = (w_mstatus_t2  & ~`MSTATUS_MIE);
    
    always @(posedge CLK) begin
        if(!D_STALL) begin
            if (w_excep) begin
                mcause  <= cause;
                mepc    <=  (w_interrupt_mask != 0) ? MaWb_npc : MaWb_pc;
                mtval   <= pending_tval;
                mstatus <= w_mstatus_t3;
            end else if (MaWb_v)begin
                mstatus <= w_mstatus;
                mepc    <= (MaWb_csr_we3[2]) ? MaWb_csr_mepc : mepc;
                mtval   <= (MaWb_csr_we3[1]) ? MaWb_csr_data : mtval;
                mcause  <= (MaWb_csr_we3[0]) ? MaWb_csr_data : mcause;
            end
            pending_exception <= (MaWb_v & w_excep) ? cause : ~0;
            mtimecmp          <= MaWb_csr_mtcmp;
        end
    end
    
    always @(posedge CLK) begin
        WbCo_v  <= (D_STALL) ? 0 : MaWb_v;
        WbCo_pc <= (D_STALL) ? 0 : MaWb_pc;
        WbCo_ir <= (D_STALL) ? 0 : MaWb_ir;
    end

    /**************************** others ****************************************************/
    initial r_halt = 0;
    always @(posedge CLK) begin
        if(!D_STALL) begin
            if (ExMa_op==`OPCODE_HALT____) r_halt <= 1; /// Note
        end
    end

    initial r_rout = 0;
    always @(posedge CLK) begin
        if(!D_STALL) begin
            r_rout <= (MaWb_v) ? MaWb_pc : r_rout; /// Note
        end
    end
endmodule

/***** Instraction decoder, see RV32I opcode map                                        *****/
/********************************************************************************************/
module decoder_id(ir, alu_ctrl, bru_ctrl, imm, csr_ctrl);
    input  wire [31:0] ir;
    output reg  [ 9:0] alu_ctrl;
    output reg  [ 6:0] bru_ctrl;
    output wire [31:0] imm;
    output reg  [ 2:0] csr_ctrl;
    
    wire [4:0] op     = ir[ 6: 2]; // use 5-bit, cause lower 2-bit are always 2'b11
    wire [2:0] funct3 = ir[14:12];
    wire [6:0] funct7 = ir[31:25];

    wire r_type = (op==5'b01100);
    wire s_type = (op[4:2]==3'b010); // (op==5'b01000);
    wire b_type = (op==5'b11000);
    wire j_type = (op==5'b11011);
    wire u_type = ({op[4], op[2:0]} ==4'b0101);
    wire i_type = (op==5'b11001 || op==5'b00000 || op==5'b00100);

    wire [31:0] imm_U = (u_type) ? {ir[31:12], 12'b0} : 0;
    wire [31:0] imm_I = (i_type) ? {{21{ir[31]}}, ir[30:20]} : 0;
    wire [31:0] imm_S = (s_type) ? {{21{ir[31]}}, ir[30:25], ir[11:7]} : 0;
    wire [31:0] imm_B = (b_type) ? {{20{ir[31]}}, ir[7], ir[30:25] ,ir[11:8], 1'b0} : 0;
    wire [31:0] imm_J = (j_type) ? {{12{ir[31]}}, ir[19:12], ir[20], ir[30:21], 1'b0} : 0;

    wire c_type = (op==5'b11100);
    wire [31:0] imm_C = (c_type) ? {27'b0, ir[19:15]} : 0;
    assign imm = imm_U ^ imm_I ^ imm_S ^ imm_B ^ imm_J ^ imm_C;

    reg [3:0] r_alu_ctrl;
    always @(*) begin
        case(op)
            5'b01100 : r_alu_ctrl = {funct7[5], funct3}; 
            5'b00100 : r_alu_ctrl = (funct3==3'h5) ? {funct7[5], funct3} : {1'b0, funct3};
            default  : r_alu_ctrl = 4'b1111;
        endcase
    end

    always @(*) begin /***** one-hot encoding *****/
        case(r_alu_ctrl)
            `ALU_CTRL_SLTU__ : alu_ctrl = 10'b0000000001;
            `ALU_CTRL_SLT___ : alu_ctrl = 10'b0000000010;
            `ALU_CTRL_ADD___ : alu_ctrl = 10'b0000000100;
            `ALU_CTRL_SUB___ : alu_ctrl = 10'b0000001000;
            `ALU_CTRL_XOR___ : alu_ctrl = 10'b0000010000;
            `ALU_CTRL_OR____ : alu_ctrl = 10'b0000100000;
            `ALU_CTRL_AND___ : alu_ctrl = 10'b0001000000;
            `ALU_CTRL_SLL___ : alu_ctrl = 10'b0010000000;
            `ALU_CTRL_SRL___ : alu_ctrl = 10'b0100000000;
            `ALU_CTRL_SRA___ : alu_ctrl = 10'b1000000000;
            default          : alu_ctrl = 10'b0000000000;
        endcase
    end

    wire [2:0] csr_funct3 = (c_type) ? funct3 : 0;
    always @(*) begin /***** one-hot encoding *****/
        case(csr_funct3[1:0])
            2'b01   : csr_ctrl = 3'b001;  // CSRRW
            2'b10   : csr_ctrl = 3'b010;  // CSRRS
            2'b11   : csr_ctrl = 3'b100;  // CSRRC
            default : csr_ctrl = 3'b000;
        endcase
    end
    
    always @(*) begin /***** one-hot encoding *****/
        case(op)
            5'b11011 : bru_ctrl =                    7'b1000000;     // JAL  -> taken
            5'b11001 : bru_ctrl =                    7'b1000000;     // JALR -> taken
            5'b11000 : bru_ctrl = (funct3==3'b000) ? 7'b0000001 :    // BEQ
                                  (funct3==3'b001) ? 7'b0000010 :    // BNE
                                  (funct3==3'b100) ? 7'b0000100 :    // BLT
                                  (funct3==3'b101) ? 7'b0001000 :    // BGE
                                  (funct3==3'b110) ? 7'b0010000 :    // BLTU
                                  (funct3==3'b111) ? 7'b0100000 : 0; // BGEU
            default : bru_ctrl = 0;
        endcase
    end
endmodule

/***** Instraction decoder, see RV32I opcode map                                        *****/
/********************************************************************************************/
module decoder_if(ir, rd, rs1, rs2, mem_we, reg_we, op_ld, op_imm, op_cim);
    input  wire [31:0] ir;
    output wire [ 4:0] rd, rs1, rs2;
    output wire        mem_we, reg_we, op_ld, op_imm;
    output wire        op_cim;
    
    wire [4:0] op     = ir[ 6: 2]; // use 5-bit, cause lower 2-bit are always 2'b11
    wire [2:0] funct3 = ir[14:12];
    wire [6:0] funct7 = ir[31:25];

    wire r_type = (op==5'b01100);
    wire s_type = (op[4:2]==3'b010); // (op==5'b01000);
    wire b_type = (op==5'b11000);
    wire j_type = (op==5'b11011);
    wire u_type = ({op[4], op[2:0]} ==4'b0101);
    wire i_type = (op==5'b11001 || op==5'b00000 || op==5'b00100);

    assign reg_we = (ir[11:7]!=0) & (op[3:0]!=4'b1000);  //!s_type && !b_type;
    assign mem_we = s_type;
    assign op_ld  = (op==5'b00000);
    assign op_imm = (op==5'b00100);
    assign rd     = (reg_we) ? ir[11:7] : 5'd0;
    assign rs2    = (!op_imm) ? ir[24:20] : 5'd0;

    assign rs1    = (!op_cim) ? ir[19:15] : 5'd0; // (!u_type && !j_type)       ? ir[19:15] : 5'd0;
    assign op_cim = (op==5'b11100) & ir[14];
endmodule
