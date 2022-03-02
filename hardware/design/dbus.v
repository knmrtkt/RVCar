module dbus_switch(
    input  wire CLK,
    input  wire RST,

    // from core dmem port
    input  wire [31:0] ADDR,
    input  wire [31:0] WDATA,
    input  wire [ 3:0] WE,
    output reg  [31:0] RDATA,
    input  wire        RE,
    output wire        BUSY,

    // to dmem
    output wire [31:0] DMEM_ADDR,
    output wire [31:0] DMEM_WDATA,
    output wire [ 3:0] DMEM_WE,
    input  wire [31:0] DMEM_RDATA,

    // to MMIO
    output wire [31:0] MMIO_ADDR,
    output wire [31:0] MMIO_WDATA,
    output wire [ 3:0] MMIO_WE,
    input  wire [31:0] MMIO_RDATA,

    // to PLIC
    output wire [31:0] PLIC_ADDR,
    output wire [31:0] PLIC_WDATA,
    output wire [ 3:0] PLIC_WE,
    input  wire [31:0] PLIC_RDATA,

    // to SDCRAM
    output wire [40:0] SDCRAM_ADDR,
    output wire        SDCRAM_RE,
    output wire [ 3:0] SDCRAM_WE,
    output wire [31:0] SDCRAM_WDATA,
    input  wire [31:0] SDCRAM_RDATA,
    input  wire        SDCRAM_BUSY
);
    // write
    wire w_use_DMEM    = ADDR[31:28] == 4'h0;
    wire w_use_MMIO    = ADDR[31:28] == 4'h4;
    wire w_use_PLIC    = ADDR[31:28] == 4'h5;
    wire w_use_SDCRAM  = ADDR[31:28] >= 4'h8;
    
    // read
    reg  r_use_DMEM;
    reg  r_use_MMIO;
    reg  r_use_PLIC;
    reg  r_use_SDCRAM = 0;
    always @(posedge CLK) begin
        r_use_DMEM <= w_use_DMEM;
        r_use_MMIO <= w_use_MMIO;
        r_use_PLIC <= w_use_PLIC;
        if(r_use_SDCRAM) begin
            if(!SDCRAM_BUSY) r_use_SDCRAM <= 0;
        end
        else begin
            if(SDCRAM_RE & !SDCRAM_BUSY) r_use_SDCRAM <= 1;
        end
    end

    always@(*) begin
        if(r_use_SDCRAM) RDATA = SDCRAM_RDATA;
        else if(r_use_DMEM) RDATA = DMEM_RDATA;
        else if(r_use_MMIO) RDATA = MMIO_RDATA;
        else if(r_use_PLIC) RDATA = PLIC_RDATA;
        else                RDATA = 0;
    end

    // write
    assign DMEM_ADDR  = ADDR;
    assign DMEM_WDATA = WDATA;
    assign DMEM_WE    = WE & {4{w_use_DMEM}};

    assign MMIO_ADDR  = ADDR;
    assign MMIO_WDATA = WDATA;
    assign MMIO_WE    = WE & {4{w_use_MMIO}};

    assign PLIC_ADDR  = ADDR;
    assign PLIC_WDATA = WDATA;
    assign PLIC_WE    = WE & {4{w_use_PLIC}};

    assign SDCRAM_ADDR = {10'b0, ADDR[30: 0]};
    assign SDCRAM_WDATA= WDATA;
    assign SDCRAM_WE   = w_use_SDCRAM ? WE : 0;
    assign SDCRAM_RE   = w_use_SDCRAM ? RE : 0;

    assign BUSY = r_use_SDCRAM ? SDCRAM_BUSY : 0;

endmodule

// 0x40000000 - user interface
module MMIO_con(
    input  wire        CLK,
    input  wire        RST,
    input  wire [31:0] ADDR,
    input  wire [31:0] WDATA,
    input  wire [ 3:0] WE,
    output reg  [31:0] RDATA,

    // tohost uart
    output wire        TOHOST_TXD,
    output reg         poweroff,

    // MMIO source
    // Interrupt source 0x40000000
    input  wire [ 7:0] KEY_DATA,
    input  wire [31:0] NN_0_DATA,
    output reg  [31:0] NN_0_ARG,

    
    // Read source 0x40001000

    // Write source 0x40002000
    output reg  [31:0] PWM_DATA = 0,
    output reg  [31:0] SEG_DATA = 0,

    // Read and write source 0x40003000

    // SSD1306 0x40004000
    output wire [ 9:0] V_ADDR,
    output wire        V_WE,
    output wire [ 7:0] V_WDATA,
    input  wire [ 7:0] V_RDATA

);

    reg  [31:0] r_ADDR = 0;
    reg  [31:0] r_IDATA= 0;
    reg  [ 3:0] r_WE   = 0;

    reg  [ 7:0] tohost_data = 0;
    reg         tohost_en   = 0;

    always @(posedge CLK) begin
        // interrupt
        case({ADDR[31:28], ADDR[15:0]})
        {4'h4, 16'h0004} : begin
            RDATA <= {24'h0, KEY_DATA};
            //$write("read key\n");
        end
        {4'h4, 16'h0008} : begin
            RDATA <= NN_0_DATA;
        end
        // read
        default  : begin
            RDATA    <= 0;
        end
        endcase
    end

    always @(posedge CLK) begin
        // write with one extra cycle
        r_ADDR <= ADDR;
        r_IDATA<= WDATA;
        r_WE   <= WE;
        
        case ({r_ADDR[31:28], r_ADDR[15:0]})
        {4'h4, 16'h0008} : begin
            NN_0_ARG <= r_IDATA & {{8{r_WE[3]}}, {8{r_WE[2]}}, {8{r_WE[1]}}, {8{r_WE[0]}}};
        end
        {4'h4, 16'h2004} : begin
            PWM_DATA <= r_IDATA & {{8{r_WE[3]}}, {8{r_WE[2]}}, {8{r_WE[1]}}, {8{r_WE[0]}}};
        end
        {4'h4, 16'h2008} : begin
            SEG_DATA <= r_IDATA & {{8{r_WE[3]}}, {8{r_WE[2]}}, {8{r_WE[1]}}, {8{r_WE[0]}}};
        end
        {4'h4, 16'h8000} : begin
            tohost_data <= (r_WE[0]) ? r_IDATA[ 7:0] : 0;
            tohost_en   <= (r_WE[0] & r_IDATA[17:16]==1) ? 1 : 0;
        end
        default: begin
            tohost_data <= 0;
            tohost_en   <= 0;
        end
        endcase
        poweroff <= (r_WE[0] & r_ADDR[31:28]==4'h4 & r_ADDR[15:12]==4'h8 & r_IDATA[17:16]==2) ? 1 : poweroff;
    end

    wire w_use_lcd = {ADDR[31:28], 12'h0, ADDR[15:0]} == 32'h40004000;
    // vram write
    // upper 16 bits have address, lower 16 bits have data
    assign V_ADDR  = WDATA[25:16];
    assign V_WDATA = WDATA[7:0];
    assign V_WE    = w_use_lcd && WE != 0;

    


    UartTxwithQ tq(CLK, !RST, tohost_data, tohost_en, TOHOST_TXD);
endmodule


// 0x50000000 - PLIC interface
// only support hart 0
// not support interrupt priorities, the biggest interrupt id is the highest priority
// support N <= 32
module PLIC_con#(
    // the number of interrupt sources
    parameter N = 32
)(
    input  wire        CLK,
    input  wire        RST,

    input  wire [31:0] ADDR,
    input  wire [31:0] WDATA,
    input  wire [ 3:0] WE,
    output reg  [31:0] RDATA,

    // issued interrupt
    output reg         EX_INT=0,
    
    // IRQ source
    input  wire [N-1:0] interrupts

);
    
    localparam IDLE = 0;
    localparam EXEC = 1;
    reg state = IDLE;

    reg  [N-1:0] pending_interrupts = 0;
    wire [N-1:0] most_high_prio_intr = pending_interrupts & (~pending_interrupts+1);
    wire [$clog2(N+1)-1:0] current_irq;
    one_hot_enc#(N) one_hot_enc_0(most_high_prio_intr, current_irq);

    reg  [$clog2(N+1)-1:0] irq = 0;
    wire [N-1:0] execed_interrput;
    one_hot_dec#(N) one_hot_dec_0(irq, execed_interrput);

    reg  [N-1:0] enabled_interrupts = 0;
    wire [N-1:0] masked_interrupts = interrupts & enabled_interrupts;

    always @(posedge CLK) begin
        pending_interrupts <= (pending_interrupts | masked_interrupts) & ~execed_interrput;
        case(state)
        IDLE: begin
            if(current_irq != 0) begin
                EX_INT <= 1;
                irq    <= current_irq;
                state  <= EXEC;
            end
        end
        EXEC: begin
            if(ADDR==32'h50200004 & |WE) begin
                EX_INT <= 0;
                irq    <= 0;
                state  <= IDLE;
            end
        end
        endcase
        // read
        case(ADDR[23:0])
        24'h002000 : RDATA <= enabled_interrupts;
        24'h200004 : RDATA <= irq;
        default    : RDATA <= 0;
        endcase

        //write
        if(|WE) begin
            case(ADDR[23:0])
            24'h002000 : enabled_interrupts <= WDATA;
            endcase
        end
        
        
    end
endmodule

(* keep_hierarchy = "yes" *)
module one_hot_enc#(   
    parameter N = 4
)(
    input  wire [N-1          :0] in,
    output reg  [$clog2(N+1)-1:0] out
);
    integer i;
    always @(*) begin
        out = 0;
        for (i = 1; i <= N; i=i+1) begin
            if (in[i-1]) out = out | i[$clog2(N+1):0];
        end
    end
endmodule

(* keep_hierarchy = "yes" *)
module one_hot_dec#(
    parameter N = 4
)(
    input  wire [$clog2(N+1)-1:0] in,
    output wire [N-1          :0] out     
);
    wire [N:0] tmp = 1 << in;
    assign out = tmp[N:1];
endmodule