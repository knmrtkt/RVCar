module conv_filter#(
    parameter W = 8,
    parameter N = 64, // N*N
    parameter K = 3,
    parameter integer kernel_mul[K*K-1:0],
    parameter integer kernel_div[K*K-1:0]
)(
    input  wire CLK,
    input  wire RST,

    input  wire [W-1:0] i_data,
    input  wire [2*$clog2(N)-1:0] i_addr,
    input  wire i_en,
    
    output reg  [W-1:0] o_data,
    output reg  [2*$clog2(N)-1:0] o_addr,
    output reg  o_en

);
    // push to input buffer
    reg [W-1:0] inbuf [0:N*N-1];
    always@(posedge CLK) if(i_en) inbuf[i_addr] <= i_data;

    // pop from input buffer
    reg [2*$clog2(N)-1:0] r_pop_addr = 0;
    reg [2*$clog2(N)-1:0] r_buf_addr = 0;
    reg [W-1:0] r_pop_data;
    always @(posedge CLK) begin
        r_pop_data <= inbuf[r_buf_addr];
        r_buf_addr <= r_buf_addr + 1;
        r_pop_addr <= r_buf_addr;
    end

    // Shift Register Width
    localparam SRW = ((K-1)*N+K);
    reg [W-1:0] SR_data [0:SRW-1];
    reg [2*$clog2(N)-1:0] SR_addr [0:SRW-1];

    // shift SR
    generate
    for(genvar i=0; i<SRW-1; i=i+1) begin
        always @(posedge CLK) begin
            SR_data[i] <= SR_data[i+1];
            SR_addr[i] <= SR_addr[i+1];
            SR_data[SRW-1]   <= r_pop_data;
            SR_addr[SRW-1]   <= r_pop_addr;
        end
    end
    endgenerate

    // fetch from SR and mul kernel
    wire [W-1:0] w_conv_data [0:K*K-1];
    reg  [W-1:0] r_conv_data [0:K*K-1];
    reg  [2*$clog2(N)-1:0] r_conv_addr;
    generate
    for(genvar k=0; k<K*K; k=k+1) begin
        mul_and_div#(W,kernel_mul[k], kernel_div[k]) mul_and_div (SR_data[(k/K)*N + k%K], w_conv_data[k]);
        always @(posedge CLK) begin
            r_conv_addr <= SR_addr[SRW/2];
            r_conv_data[k] <= w_conv_data[k];
        end
    end
    endgenerate

    // sum
    wire [W-1:0] w_sum_data;
    add_tree_2#(W, K*K) tree (r_conv_data, w_sum_data);
    always @(posedge CLK) begin
        o_data <= w_sum_data;
        o_addr <= r_conv_addr;
        o_en   <= 1;
    end

endmodule

module add_tree_2#(
    parameter W=8,
    parameter N=8
)(
    input  wire [W-1:0] in[N-1:0],
    output wire [W-1:0] out
);

    generate
    if(N==1) begin
        assign out = in[0];
    end
    else if(N%2==1) begin
        wire [W-1:0] tmp [0:1];
        add_tree_2#(W, N/2) sub_tree_0(in[N/2-1:0], tmp[0]);
        add_tree_2#(W, N/2+1) sub_tree_1(in[N-1:N/2], tmp[1]);
        assign out = tmp[0] + tmp[1];
    end
    else begin
        wire [W-1:0] tmp [0:1];
        add_tree_2#(W, N/2) sub_tree_0(in[N/2-1:0], tmp[0]);
        add_tree_2#(W, N/2) sub_tree_1(in[N-1:N/2], tmp[1]);
        assign out = tmp[0] + tmp[1];
    end
    endgenerate

endmodule

(* keep_hierarchy = "yes" *)
// out = in * a / b;
module mul_and_div#(parameter W=8,parameter integer a=4, parameter integer b=16)(in, out);
    input  wire [W-1:0] in;
    output reg  [W-1:0] out;

    integer i;
    always @(*) begin
        out = {W{1'b0}};
        for(i=0; i<2**W; i=i+1) begin
        if(in==i) out = (i * a) / b;
        end
    end
endmodule

module center_point#(
    parameter N = 6,
    parameter W = 1
)
(
    input  wire         CLK,
    input  wire         RST,
    input  wire [N-1:0] addr_x,
    input  wire [N-1:0] addr_y,
    input  wire [W-1:0] p_data,
    input  wire         en,

    output reg  [N-1:0] center_x=0,
    output reg  [N-1:0] center_y=0,
    output wire [  1:0] debug
);
    reg  [W-1:0] ram[0:2**(2*N)-1];
    always @(posedge CLK) begin
        if(en) ram[{addr_y, addr_x}] <= p_data;
    end
    
    localparam INIT = 0, COUNT = 1, DIV = 2, FIN = 3;
    reg  [ 1:0] state = INIT;

    assign debug = state;
    reg         r_div_x_init=0, r_div_y_init=0;
    reg  [31:0] r_div_x_upper=0, r_div_y_upper=0;
    reg  [31:0] r_div_x_lower=0, r_div_y_lower=0;
    wire [63:0] w_div_x_rslt, w_div_y_rslt;
    wire        w_div_x_busy, w_div_y_busy;

    m_div_unit_core div_x(CLK, 1'b1, r_div_x_init, r_div_x_upper, r_div_x_lower, w_div_x_rslt, w_div_x_busy);
    m_div_unit_core div_y(CLK, 1'b1, r_div_y_init, r_div_y_upper, r_div_y_lower, w_div_y_rslt, w_div_y_busy);

    reg  [(2*N)-1:0] r_addr = 0;
    wire [W-1:0] w_p_data = ram[r_addr];

    localparam S = 3*N + W;
    reg  [S-1:0] sum_x, sum_y, sum_m;
    
    always @(posedge CLK) begin
        case(state)
        INIT: begin
            r_addr <= 0;
            sum_x  <= 0;
            sum_y  <= 0;
            sum_m  <= 0;
            if(!RST) state  <= COUNT;
        end
        COUNT: begin
            r_addr <= r_addr + 1;
            sum_x <= sum_x + w_p_data * r_addr[  N-1:0];
            sum_y <= sum_y + w_p_data * r_addr[2*N-1:N];
            sum_m <= sum_m + w_p_data;
            if(r_addr=={2*N{1'b1}}) state <= DIV;
        end
        DIV: begin
            r_div_x_init <= 1;
            r_div_x_upper<= sum_x;
            r_div_x_lower<= sum_m;
            r_div_y_init <= 1;
            r_div_y_upper<= sum_y;
            r_div_y_lower<= sum_m;
            state <= FIN;
        end
        FIN: begin
            r_div_x_init <= 0;
            r_div_y_init <= 0;
            if(!w_div_x_busy & !w_div_y_busy) begin
                center_x <= w_div_x_rslt[N-1:0];
                center_y <= w_div_y_rslt[N-1:0];
                state <= INIT;
            end
        end
        endcase
    end

endmodule


module otsu#(
    parameter L=8,
    parameter N=6 // image width is 2 ** N
)(
    input  wire        CLK,
    input  wire [L-1:0] din,
    input  wire [2*N-1:0] addr,
    input  wire        wen,

    output reg  [L-1:0] thread = 0
);
    localparam W = 2**N;
    reg  [L-1:0] gray_bram[0:W*W-1];
    always @(posedge CLK) if(wen) gray_bram[addr] <= din;

    localparam RESET = 0;
    localparam COUNT = 1;
    localparam MUE = 2;
    localparam SHIGMA= 3;
    localparam FIN   = 4;

    reg  [ 2:0] state = RESET;

    reg  [L-1:0] hist_addr = 0;
    reg  [2*N-1:0] hist_aram[0:2**L-1];
    wire [2*N-1:0] hist_dout = hist_aram[hist_addr];

    reg  [2*N-1:0] ram_addr = 0;
    reg  [L-1:0] ram_dout = 0;
    always @(posedge CLK) ram_dout <= gray_bram[ram_addr];

    reg  [2*N+L-1:0] mue_L = 0; // 32 -> 19

    reg  [L:0] shigma_cnt = 0; // 9
    reg  [31:0] shigma_pow = 0; 
    reg  [31:0] pending_max = 0;
    reg  [L-1:0] pending_th = 0; // 8
    reg  [2*N+2*L-1:0] mue_k = 0; // 32 -> 26
    reg  [2*N+L-1:0] omega_k = 0; // 32 -> 18
    reg  [ 2:0] shigma_state = 0;
    reg  [2*N+2*L-1:0] shigma_upper = 0; // 32 -> 26
    reg  [4*N-2-1:0] shigma_lower = 0; // 32 -> 18
    //reg  [31:0] shigma_upper = 0, shigma_lower = 0;

    wire [4*N+2*L-1:0] shigma_upper_front = mue_L*omega_k;

    // reg  [31:0] mue_L = 0;

    // reg  [ 8:0] shigma_cnt = 0;
    // reg  [31:0] shigma_pow = 0;
    // reg  [31:0] pending_max = 0;
    // reg  [ 7:0] pending_th = 0;
    // reg  [31:0] mue_k = 0;
    // reg  [31:0] omega_k = 0;
    // reg  [ 1:0] shigma_state = 0;
    // reg  [31:0] shigma_upper = 0, shigma_lower = 0;

    reg         r_div_init  = 0;
    reg  [31:0] r_div_upper = 0;
    reg  [31:0] r_div_lower = 0;
    wire [63:0] w_div_rslt;
    wire        w_div_busy;
    wire [31:0] w_div_upper;
    power #(32) power_0(shigma_upper, w_div_upper);

    m_div_unit_core div(CLK, 1, r_div_init, r_div_upper, r_div_lower, w_div_rslt, w_div_busy);

    always @(posedge CLK) begin
        case(state)
        RESET: begin
            if(hist_addr==2**L-1) begin // 2^L cycle
                state <= COUNT;
                hist_addr <= 0;
                ram_addr <= 0;
            end
            else begin
                hist_addr <= hist_addr + 1;   
            end
            hist_aram[hist_addr] <= 0;
        end
        COUNT: begin // W^2 cycle
            if(ram_addr==W*W-1) begin
                state <= MUE;
                hist_addr <= 0;
                mue_L <= 0;
            end
            else begin
                ram_addr <= ram_addr+1;
            end
            hist_aram[ram_dout] <= hist_aram[ram_dout] + 1;
        end
        MUE: begin // 2^L cycle
            if(hist_addr==2**L-1) begin
                hist_addr <= 0;
                state <= SHIGMA;
                shigma_cnt <= 0;
            end
            else begin
                hist_addr <= hist_addr + 1;
            end
            mue_L <= mue_L + hist_addr * hist_dout;
        end
        SHIGMA: begin // 32768 cycle
            if(shigma_cnt==2**L) begin
                state <= FIN;
                shigma_cnt <= 0;
                pending_max <= 0;
                shigma_pow <= 0;
            end
            else begin
                if(hist_addr==shigma_cnt)begin
                    if(shigma_state==0) begin
                        shigma_state <= 1;
                        //shigma_upper <= ((mue_L*omega_k >> 2*N) - mue_k); // / 64*64
                        shigma_upper <= shigma_upper_front[4*N+2*L-1:2*N];// - mue_k; // / 64*64
                        shigma_lower <= (omega_k*(W*W-omega_k)); // to avoid dividing by zero
                    end
                    else if(shigma_state==1) begin
                        shigma_state <= 2;
                        shigma_upper <= shigma_upper - mue_k;
                    end
                    else if(shigma_state==2) begin
                        shigma_state <= 3;
                        r_div_init  <= 1;
                        r_div_upper <= w_div_upper;//shigma_upper * shigma_upper;
                        r_div_lower <= (shigma_lower==0)? ~0 : shigma_lower;
                    end
                    else if(shigma_state==3) begin
                        shigma_state <= 4;
                        r_div_init <= 0;
                    end
                    else if(shigma_state==4 && !w_div_busy) begin
                        shigma_state <= 0;
                        shigma_cnt <= shigma_cnt + 1;
                        hist_addr <= 0;
                        omega_k <= 0;
                        mue_k <= 0;
                        shigma_pow <= w_div_rslt[31:0];
                    end 
                end
                else begin
                    hist_addr <= hist_addr + 1;
                    omega_k <= omega_k + hist_dout;
                    mue_k <= mue_k + hist_dout * hist_addr;
                end
                if(shigma_pow > pending_max) begin
                    pending_th <= shigma_cnt;
                    pending_max<= shigma_pow;
                end
            end
        end
        FIN: begin
            thread <= pending_th;
            state <= RESET;
        end
        endcase
    end
endmodule

(* keep_hierarchy = "yes" *)
module power#(parameter W=32)(in, out);
    input  wire [W-1:0] in;
    output wire [W-1:0] out;

    wire [2*W-1:0] tmp = in ** 2;
    assign out = tmp[W-1:0];

    // integer i;
    // always @(*) begin
    //     out = 0;
    //     for(i=0; i<2**W; i=i+1) begin
    //     if(in==i) out = i**2;
    //     end
    // end
endmodule

module m_div_unit_core(CLK, RST_X, w_init, w_dividend, w_divisor, r_rslt, w_busy);
    input  wire        CLK, RST_X;
    input  wire        w_init;
    input  wire [31:0] w_dividend, w_divisor;
    output reg  [63:0] r_rslt;
    output wire        w_busy;

    reg  [31:0] r_divisor=0;
    reg  [ 5:0] r_count=0;
    
    wire [32:0] w_differ;

    assign w_busy   = (r_count < 32);
    assign w_differ = r_rslt[63:31] - {1'b0, r_divisor};

    always @(posedge CLK) begin
        if(!RST_X) begin
            r_divisor   <= 0;
            r_rslt      <= 0;
            r_count     <= 0;
        end else if(w_init) begin
            r_divisor   <= w_divisor;
            r_rslt      <= {32'h0, w_dividend};
            r_count     <= 0;
        end else if(w_busy) begin
            r_divisor   <= r_divisor;
            r_rslt      <= (w_differ[32]) ? {r_rslt[62:0], 1'h0} :
                                            {w_differ[31:0], r_rslt[30:0], 1'h1};
            r_count     <= r_count + 1;
        end
    end
endmodule