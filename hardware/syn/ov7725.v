module ov7725(
    input  wire        CLK,
    input  wire        RST,
    output reg  [15:0] cap_dout,
    output reg  [ 9:0] cap_addr_x,
    output reg  [ 9:0] cap_addr_y,
    output reg         cap_en,
    input  wire [ 7:0] w_gain,
    input  wire        clk_cam_i2c,       // 25MHz
    input  wire        clk_cam_pix,   // 48Mhz
    input  wire        pclk,          // OV7725 camera PCLK
    input  wire        camera_v_sync, // OV7725 camera VSYNC
    input  wire        camera_h_ref,  // OV7725 camera HREF
    input  wire [ 7:0] din,           // OV7725 camera D0 to D7
    output wire        sioc,          // OV7725 camera SIO_C
    output wire        siod,          // OV7725 camera SIO_D
    output wire        reset,        // OV7725 camera RESET#
    output wire        power_down,    // OV7725 camera PWDN
    output wire        xclk          // OV7725 camera XCLK
);
    assign reset       = 1;       // Normal mode
    assign power_down  = 0;       // Normal mode
    assign xclk        = clk_cam_pix; //
    
    /***** reset the camera configuration when the gain parameter of camera is changed                      *****/
    /************************************************************************************************************/
    reg r_resend = 0; 
    reg [7:0] r_gain = 0;
    reg [31:0] r_c = 0;
    always @(posedge clk_cam_i2c) begin
        if(r_c[19:0]==0) r_gain <= w_gain;
        r_resend <= (r_c[19:0]==0 && r_gain!=w_gain);
        r_c <= r_c + 1;
    end
    /************************************************************************************************************/
    wire [15:0] command;
    wire        taken, done;
    m_camera_reg_ov7725 cregs0 (clk_cam_i2c, r_resend, taken, command, done, w_gain);
    m_i2c_camera i2ccamera0 (clk_cam_i2c, siod, sioc, taken, ~done, 8'h42, command);

    reg [15:0] r_cam_dout    = 0; // 16bit-color, RGB565
    reg        r_cam_we      = 0;
    reg [1:0]  r_write_state = 0;
    reg [15:0] r_cam_data    = 0;

    always @(posedge pclk) begin
        if(camera_v_sync == 1'b1) r_write_state <= 0;
        else begin
            r_cam_dout <= r_cam_data;
            r_write_state <= {r_write_state[0], (camera_h_ref & ~r_write_state[0])};
            r_cam_data <= {r_cam_data[7:0], din};
            r_cam_we <= r_write_state[1];
        end
    end
    
    /************************************************************************************************************/
    reg [9:0] r_x = 0;
    reg [9:0] r_y = 0;
    always @(posedge pclk) if(camera_v_sync) begin r_x<=0; r_y<=0; end
        else if(r_cam_we) begin
            r_x  <= (r_x==319) ? 0 : r_x + 1;
            r_y  <= (r_x!=319) ? r_y : (r_y==239) ? 0 : r_y + 1;
        end
    
    wire afifo_empty, afifo_full;
    wire [15:0] w_cap_dout;
    wire [ 9:0] w_cap_addr_x, w_cap_addr_y;
    wire        w_cap_en;
    AsyncFIFO #(
        .DATA_WIDTH(10+10+16),
        .ADDR_WIDTH(6))
    afifo(
         .wclk(pclk),
    	 .rclk(CLK),
         .i_wrst_x(!RST),
         .i_rrst_x(!RST),
    	 .i_wen(r_cam_we & !afifo_full),
    	 .i_data({r_y, r_x, r_cam_dout}),
         .i_ren(!afifo_empty),
    	 .o_data({w_cap_addr_y, w_cap_addr_x, w_cap_dout}),
    	 .o_empty(afifo_empty),
    	 .o_full(afifo_full)
    );
    assign w_cap_en = !afifo_empty;
    
    always @(posedge CLK) begin
        cap_dout   <= w_cap_dout;
        cap_addr_x <= w_cap_addr_x;
        cap_addr_y <= w_cap_addr_y;
        cap_en     <= w_cap_en;
    end
    

endmodule

///////////////////////////////////////////////////////////////////////////////
module AsyncFIFO #(
    parameter DATA_WIDTH  = 512,
	parameter ADDR_WIDTH  = 8) // FIFO_DEPTH = 2^ADDR_WIDTH
(
    input  wire                    wclk,
	input  wire                    rclk,
    input  wire                    i_wrst_x,
    input  wire                    i_rrst_x,
	input  wire                    i_wen,
	input  wire [DATA_WIDTH-1 : 0] i_data,
    input  wire                    i_ren,
	output wire [DATA_WIDTH-1 : 0] o_data,
	output wire                    o_empty,
	output wire                    o_full);

    reg  [DATA_WIDTH-1 : 0] afifo[(2**ADDR_WIDTH)-1 : 0];
    reg  [ADDR_WIDTH : 0]   waddr;
    reg  [ADDR_WIDTH : 0]   raddr;

    reg  [ADDR_WIDTH : 0]   raddr_gray1;
    reg  [ADDR_WIDTH : 0]   raddr_gray2;

    reg  [ADDR_WIDTH : 0]   waddr_gray1;
    reg  [ADDR_WIDTH : 0]   waddr_gray2;

    wire [DATA_WIDTH-1 : 0] data;

    wire [ADDR_WIDTH : 0]   raddr_gray;
    wire [ADDR_WIDTH : 0]   waddr_gray;

    wire [ADDR_WIDTH : 0]   raddr2;
    wire [ADDR_WIDTH : 0]   waddr2;

    genvar genvar_i;

    // output signals
    assign o_data  = data;
    assign o_empty = (raddr == waddr2);
    assign o_full  = (waddr[ADDR_WIDTH] != raddr2[ADDR_WIDTH]) &&
                     (waddr[ADDR_WIDTH-1 : 0] == raddr2[ADDR_WIDTH-1 : 0]);

    // binary code to gray code
    assign raddr_gray = raddr[ADDR_WIDTH : 0] ^ {1'b0, raddr[ADDR_WIDTH : 1]};
    assign waddr_gray = waddr[ADDR_WIDTH : 0] ^ {1'b0, waddr[ADDR_WIDTH : 1]};

    // gray code to binary code
    generate
	    for (genvar_i = 0; genvar_i <= ADDR_WIDTH; genvar_i = genvar_i + 1) begin
		    assign raddr2[genvar_i] = ^raddr_gray2[ADDR_WIDTH : genvar_i];
		    assign waddr2[genvar_i] = ^waddr_gray2[ADDR_WIDTH : genvar_i];
	    end
    endgenerate

    // double flopping read address before using it in write clock domain
    always @(posedge wclk) begin
	    if (!i_wrst_x) begin
		    raddr_gray1 <= 0;
		    raddr_gray2 <= 0;
	    end else begin
		    raddr_gray1 <= raddr_gray;
		    raddr_gray2 <= raddr_gray1;
	    end
    end

    // double flopping write address before using it in read clock domain
    always @(posedge rclk) begin
	    if (!i_rrst_x) begin
		    waddr_gray1 <= 0;
		    waddr_gray2 <= 0;
	    end else begin
		    waddr_gray1 <= waddr_gray;
		    waddr_gray2 <= waddr_gray1;
	    end
    end

    // read
    assign data = afifo[raddr[ADDR_WIDTH-1 : 0]];
    always @(posedge rclk) begin
	    if (!i_rrst_x) begin
		    raddr <= 0;
	    end else if (i_ren) begin
		    raddr <= raddr + 1;
	    end
    end

    // write
    always @(posedge wclk) begin
	    if (!i_wrst_x) begin
		    waddr <= 0;
	    end else if (i_wen) begin
		    afifo[waddr[ADDR_WIDTH-1 : 0]] <= i_data;
		    waddr <= waddr + 1;
	    end
    end

endmodule

module m_camera_reg_ov7725 (w_clk, resend, advance, send_reg, done, w_gain);
    input  wire        w_clk;
    input  wire        resend;
    input  wire        advance;
    output reg [15:0]  send_reg = 0;
    output reg         done = 0;
    input  wire [7:0]  w_gain;

    reg [7:0]  address;
    always @(posedge w_clk) address <= (resend) ? 0 : (advance) ? address + 1 : address;

    always @(posedge w_clk) begin
        case (address)
            16'h00 : send_reg <= 16'h1280;  // reset
            16'h03 : send_reg <= 16'h2a00; //QVGA : {0x2a,0x00} , QQVGA : {0x2a,0x00}
            16'h04 : send_reg <= 16'h1103; // do not use externl clock directly
            16'h05 : send_reg <= 16'h0DF1;
            16'h06 : send_reg <= 16'h1246; // QVGA
            16'h07 : send_reg <= 16'h173F; // QVGA
            16'h08 : send_reg <= 16'h1850; // QVGA
            16'h09 : send_reg <= 16'h1903; // QVGA
            16'h0a : send_reg <= 16'h1A78; // QVGA
            16'h0b : send_reg <= 16'h3280;
            16'h0c : send_reg <= 16'hACff; //auto scaling
            16'h0d : send_reg <= 16'h427f;
            16'h0e : send_reg <= 16'h4d00; /* 0x09 */
            16'h0f : send_reg <= 16'h63f0;
            16'h10 : send_reg <= 16'h641C; // uv 6 // ff
            16'h11 : send_reg <= 16'h6503; //0x20
            16'h12 : send_reg <= 16'h6610; //0x00
            16'h13 : send_reg <= 16'h6700;
            16'h14 : send_reg <= 16'h695C;
            16'h15 : send_reg <= 16'h1300;  //{0x13,0xff},
            16'h16 : send_reg <= 16'h0dc0; //  PLL 8x, do not use external clock directly
            16'h17 : send_reg <= 16'h0f00; //0xc5
            16'h18 : send_reg <= 16'h144A; //{0x14,0x11},
            16'h19 : send_reg <= 16'h22FF; // ff/7f/3f/1f for 60/30/15/7.5fps
            16'h1a : send_reg <= 16'h2301; // 01/03/07/0f for 60/30/15/7.5fps
            16'h1b : send_reg <= 16'h2434;
            16'h1c : send_reg <= 16'h253c;
            16'h1d : send_reg <= 16'h26a1;
            16'h1e : send_reg <= 16'h2b00;
            16'h1f : send_reg <= 16'h6baa;
            16'h20 : send_reg <= 16'h900a;
            16'h21 : send_reg <= 16'h9110; //{0x91,0x01}
            16'h22 : send_reg <= 16'h9201; //{0x92,0x01}
            16'h23 : send_reg <= 16'h9301;
            16'h24 : send_reg <= 16'h945f; //{0x94,0x5f}
            16'h25 : send_reg <= 16'h9553; //{0x95,0x53}
            16'h26 : send_reg <= 16'h9611; //{0x96,0x11}
            16'h27 : send_reg <= 16'h971a; //{0x97,0x1a}
            16'h28 : send_reg <= 16'h983d; //{0x98,0x3d}
            16'h29 : send_reg <= 16'h995a; //{0x99,0x5a}
            16'h2a : send_reg <= 16'h9a1e; //{0x9a,0x1e}
            16'h2b : send_reg <= 16'h9b00; /* set luma */
            16'h2c : send_reg <= 16'h9c40; /* set contrast */
            16'h2d : send_reg <= 16'ha740; /* set saturation {0xa7,0x65}*/
            16'h2e : send_reg <= 16'ha840; /* set saturation {0xa8,0x65}*/
            16'h2f : send_reg <= 16'ha980; /* set hue */
            16'h30 : send_reg <= 16'haa80; /* set hue */
            16'h31 : send_reg <= 16'h9e81;
            16'h32 : send_reg <= 16'ha600;
            16'h43 : send_reg <= 16'h3300;
            16'h44 : send_reg <= 16'h2299;
            16'h45 : send_reg <= 16'h2303;
            16'h46 : send_reg <= 16'h4a00;
            16'h47 : send_reg <= 16'h4950; //{0x49,0x13}
            16'h48 : send_reg <= 16'h4708; //{0x47,0x08}
            16'h49 : send_reg <= 16'h4b14; //{0x4b,0x14}
            16'h4a : send_reg <= 16'h4c17; //{0x4c,0x17}
            16'h4b : send_reg <= 16'h4600; //{0x46,0x05}
            16'h4c : send_reg <= 16'h0e01; //{0x0e,0xf5}1111,0101
            16'h4d : send_reg <= 16'h0c10; //bit6 : Horizontal Mirror, bit0 : test pattern enable
            16'h4e : send_reg <= 16'h2950;	// USE QVGA
            16'h4f : send_reg <= 16'h2c78;	// USE QVGA
            16'h50 : send_reg <= 16'hac00; //  disable all auto function
            16'h51 : send_reg <= 16'h0000;
            16'h52 : send_reg <= {8'h01, w_gain}; // red gain
            16'h53 : send_reg <= {8'h02, w_gain}; // blue gain
            16'h54 : send_reg <= {8'h03, w_gain}; // green gain            
            16'h55 : send_reg <= 16'h0801; // upper 8bit of exposure val
            16'h56 : send_reg <= 16'h1000; // lower 8bit of exposure val
            16'h57 : send_reg <= 16'h3ee0; // disable automatic black-level calibration
            default : send_reg <= 16'h_FFFF;
        endcase
    end
    always @(posedge w_clk) done <= (resend) ? 0 : (address==16'h7F) ? 1 : done;
endmodule


/***** i2c controller for video camera                                                                      *****/
/****************************************************************************************************************/
module m_i2c_camera (w_clk, SDA, SCL, taken, send, id, value);
    input  wire        w_clk;
    inout  wire        SDA;
    output reg         SCL;
    output reg         taken;
    input  wire        send;
    input  wire [7:0]  id;
    input  wire [15:0] value;

    wire [7:0] div_out;
    reg  [7:0] divider = 8'b_1111_1100;
    reg [31:0] busy_sr = 32'h0;
    reg [31:0] data_sr = 32'h_FFFF_FFFF;

    assign div_out = divider;
    assign SDA = (busy_sr[11:10]==2'b10 || busy_sr[20:19]==2'b10 || busy_sr[29:28]==2'b10) ? 1'bz : data_sr[31];

    always @(posedge w_clk) taken <= (busy_sr[31]==0 && divider==0 && send) ? 1 : 0;
    
    always @(posedge w_clk) begin
        if(busy_sr[31] == 0) begin
            SCL <= 1;
            if(send == 1) begin
                if(divider == 8'b_0000_0000) begin
                    data_sr <= {3'b100, id, 1'b0, value[15:8], 1'b0, value[7:0], 1'b0, 2'b01};
                    busy_sr <= 32'h_FFFF_FFFF;
                end else begin
                    divider <= divider + 1;
                end
            end
        end else begin
            case ( {busy_sr[31:29], busy_sr[2:0]} )
                6'b_111111 : SCL <= 1;                                   // start seq #1
                6'b_111110 : SCL <= 1;                                   // start seq #2
                6'b_111100 : SCL <= 0;                                   // start seq #3
                6'b_110000 : SCL <= (divider[7:6]==2'b00) ? 0 : 1;       // end seq #1
                6'b_100000 : SCL <= 1;                                   // end seq #2
                6'b_000000 : SCL <= 1;                                   // Idle
                default : SCL <= (divider[7:6]==2'b00 || divider[7:6]==2'b11) ? 0 : 1;
            endcase
            if(divider == 8'b_1111_1111) begin
                 busy_sr <= {busy_sr[30:0], 1'b0};
                 data_sr <= {data_sr[30:0], 1'b1};
            end
            divider <= divider + 1;
        end
    end
endmodule
