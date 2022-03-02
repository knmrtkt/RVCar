/********************************************************************************************/
/* RVCar (RISC-V motor car) v2022-02-21               since  2018-08-07  ArchLab. TokyoTech */
/********************************************************************************************/
// 7seg led
`define DELAY7SEG  200000 // 200000 for 100MHz, 100000 for 50MHz
/********************************************************************************************/
`default_nettype none

/********************************************************************************************/
module nexys4ddr(
    input  wire        w_clk,

    output reg  [15:0] r_led = 0,
    output reg   [6:0] r_sg = 0,
    output reg   [7:0] r_an = 0,

    input  wire        w_rxd,
    output wire        w_txd,

    inout  wire        SDA,       // SSD1306 I2C SDA
    inout  wire        SCL,       // SSD1306 I2C SCL
    input  wire [15:0] SW,

    output wire        r_motor_f, l_motor_f,
    
    input  wire        sd_cd,
    output wire        sd_rst,
    output wire        sd_clk,
    inout  wire        sd_cmd,
    inout  wire [ 3:0] sd_dat,

    inout  wire        CAM_SDA,
    inout  wire        CAM_SCL,

    output wire        st7789_SCL,
    inout  wire        st7789_SDA,
    output wire        st7789_DC,
    output wire        st7789_RES,

    input  wire        pclk,          // OV7670 camera PCLK
    input  wire        camera_v_sync, // OV7670 camera VSYNC
    input  wire        camera_h_ref,  // OV7670 camera HREF
    input  wire [ 7:0] din,           // OV7670 camera D0 to D7
    output wire        sioc,          // OV7670 camera SIO_C
    output wire        siod,          // OV7670 camera SIO_D
    output wire        reset,        // OV7670 camera RESET#
    output wire        power_down,    // OV7670 camera PWDN
    output wire        xclk          // OV7670 camera XCLK

);
/****************************************************************************************/
// CLK gen
    wire LCD_CLK;
    wire CLK;
    wire clk_cam_i2c;
    wire clk_sd;
    wire clk_cam_pix;
    wire locked;
    wire RST = !locked;
    clk_wiz_0 clk_wiz(
        .clk_in1(w_clk),
        .locked(locked),
        .reset(1'b0),
        .clk_out1(CLK),
        .clk_out2(LCD_CLK),
        .clk_out3(clk_cam_i2c),
        .clk_out4(clk_sd),
        .clk_out5(clk_cam_pix)
    );

/****************************************************************************************/
// uart ch559 keyboard
    wire [ 7:0] w_key_data;
    wire        w_key_en;
    m_UartRx_Key uart_rx (CLK, w_rxd, w_key_data, w_key_en);
/****************************************************************************************/
// ssd 1306 lcd
    wire [9:0] V_ADDR;
    wire       V_WE;
    wire [7:0] V_WDATA;
    wire [7:0] V_RDATA;
    m_lcd_top lcd(CLK, LCD_CLK, RST, SDA, SCL, V_ADDR, {8{V_WE}}, V_WDATA, V_RDATA);
/****************************************************************************************/
// SDCRAM (SDCARD)
    wire [40:0] sdcram_addr;
    wire        sdcram_ren;
    wire [ 3:0] sdcram_wen;
    wire [31:0] sdcram_wdata;
    wire [31:0] sdcram_rdata;
    wire        sdcram_busy;
    wire [ 2:0] sdcram_state;
    wire [ 2:0] sdi_state;
    wire [ 4:0] sdc_state;

    sdcram#(
        .CACHE_DEPTH(2),
        .BLOCK_NUM(4),
        .POLLING_CYCLES(1024)
    )sdcram_0(
        .i_sys_clk(CLK),
        .i_sys_rst(RST),
        .i_sd_clk(clk_sd),
        .i_sd_rst(RST),

        // for user interface
        .i_sdcram_addr(sdcram_addr),
        .i_sdcram_ren(sdcram_ren),
        .i_sdcram_wen(sdcram_wen),
        .i_sdcram_wdata(sdcram_wdata),
        .o_sdcram_rdata(sdcram_rdata),
        .o_sdcram_busy(sdcram_busy),

        // for debug
        .sdcram_state(sdcram_state),
        .sdi_state(sdi_state),
        .sdc_state(sdc_state),

        // for sd
        .sd_cd(sd_cd),
        .sd_rst(sd_rst),
        .sd_clk(sd_clk),
        .sd_cmd(sd_cmd),
    	.sd_dat(sd_dat)
    );

    wire [40:0] w_sdcram_addr  ;//= sdcram_addr;
    wire [31:0] w_sdcram_rdata ;//= sdcram_rdata;
    wire [31:0] w_sdcram_wdata ;//= sdcram_wdata;
    wire        w_sdcram_ren   ;//= sdcram_ren;
    wire [ 3:0] w_sdcram_wen   ;//= sdcram_wen;
    wire        w_sdcram_busy  ;//= sdcram_busy;
    sdcram_controller sdcram_controller_0(
        .i_clk(CLK),
        .i_rst_x(!RST),
        .i_addr(w_sdcram_addr),
        .o_rdata(w_sdcram_rdata),
        .i_wdata(w_sdcram_wdata),
        .i_ren(w_sdcram_ren),
        .i_wen(w_sdcram_wen),
        .o_busy(w_sdcram_busy),

        .sdcram_addr(sdcram_addr),
        .sdcram_ren(sdcram_ren),
        .sdcram_wen(sdcram_wen),
        .sdcram_wdata(sdcram_wdata),
        .sdcram_rdata(sdcram_rdata),
        .sdcram_busy(sdcram_busy)
    );
/****************************************************************************************/
// NN and ssd1306 and OV7670 wrapper with otsu
    wire [31:0] nn_0_data;
    wire [31:0] nn_0_arg;
    wire        nn_0_en;

    nn_wrap nn_wrap_0(
        CLK,
        RST,       // lcd reset
        CAM_SDA,       // SSD1306 I2C SDA
        CAM_SCL,       // SSD1306 I2C SCL
        st7789_SCL,
        st7789_SDA,
        st7789_DC,
        st7789_RES,
        clk_cam_i2c,       // 25MHz
        clk_cam_pix,   // 48MHz
        pclk,          // OV7670 camera PCLK
        camera_v_sync, // OV7670 camera VSYNC
        camera_h_ref,  // OV7670 camera HREF
        din,           // OV7670 camera D0 to D7
        sioc,          // OV7670 camera SIO_C
        siod,          // OV7670 camera SIO_D
        reset,        // OV7670 camera RESET#
        power_down,    // OV7670 camera PWDN
        xclk,          // OV7670 camera XCLK
        
        nn_0_data,
        nn_0_arg,
        nn_0_en,

        SW[ 7: 0]
    );
/****************************************************************************************/
// PWM
    wire [31:0] pwm_data;
    m_pwm#(0, 20) pwm_r_f(CLK, pwm_data[ 7: 0], r_motor_f);
    m_pwm#(0, 20) pwm_l_f(CLK, pwm_data[15: 8], l_motor_f);
/****************************************************************************************/
// main SoC
    wire [31:0] p_dout;
    wire [31:0] mc_dout;
    wire [31:0] seg_data;
    soc #(
        .BOOTLOADER_FILE("./bootloader.hex"),
        .START_PC(32'h00080000),
        .MAINMEM_FILE(""),
        .MAINMEM_SIZE(128*1024)
    )m(
        .CLK(CLK), 
        .RST(RST),

        .w_txd(w_txd), 
        .p_dout(p_dout), 

        .w_key_data(w_key_data), 
        .w_key_en(w_key_en),

        .w_nn_0_data(nn_0_data), 
        .w_nn_0_arg(nn_0_arg),
        .w_nn_0_en(nn_0_en),
        
        .w_pwm_data(pwm_data),
        .w_seg_data(seg_data),

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

/****************************************************************************************/
// 7 seg and LED
    wire [ 6:0] w_sg;
    wire [ 7:0] w_an;
    wire [31:0] w_7seg_din = seg_data;
    m_sseg_led m_sseg_led_0(CLK, w_sg, w_an, w_7seg_din);
    always @(posedge CLK) begin
        {r_sg, r_an} <= {w_sg, w_an};
    end
/****************************************************************************************/
endmodule


/***** PWM (Pulse Width Modulation) module                                                                  *****/
/****************************************************************************************************************/
module m_pwm#(parameter MOTOR_ON=0,parameter PWM_BIT=20)(w_clk, w_ratio, r_out);
    input wire       w_clk;              // 100MHz clock signal
    input wire [7:0] w_ratio;            //
    output reg       r_out = ~MOTOR_ON; //

    reg [PWM_BIT:0] r_timer = 0;
    always @(posedge w_clk) r_timer <= r_timer + 1;

    always @(posedge w_clk) r_out <= (w_ratio==255) ? MOTOR_ON : (w_ratio==0) ? ~MOTOR_ON : 
                                     (w_ratio > r_timer[PWM_BIT:PWM_BIT-7]) ? MOTOR_ON : ~MOTOR_ON;
endmodule

/******************************************************************************************/
module m_UartRx_Key(w_clk, w_rxd, r_data, r_en);
    input  wire      w_clk, w_rxd;
    output reg [7:0] r_data;
    output reg       r_en;
    initial begin r_data = 0; r_en = 0; end

    reg [5:0] r_detect = 0;
    always @(posedge w_clk) r_detect <= (w_rxd) ? 0 : r_detect + 1;

    reg       r_recv = 0;
    reg [6:0] r_wait = 0;
    reg [3:0] r_cnt  = 0;
    always@(posedge w_clk) begin
        if (r_recv==0) begin
            if(r_detect>1) begin r_recv <= 1; r_data<= 0; end
            r_cnt  <= 8;
            r_wait <= 0;
            r_en   <= 0;
        end else begin
            if (r_wait >= (100-1)) begin // Note:
                r_cnt  <= r_cnt - 1;
                r_data <= (r_cnt==0) ? r_data : {w_rxd, r_data[7:1]};
                r_wait <= 0;
                if (r_cnt == 0) begin r_en <= 1; r_recv <= 0; end
            end else begin
                r_wait <= r_wait + 1;
            end
        end
    end
endmodule

/******************************************************************************************/
module m_sseg_led (w_clk, r_sg, r_an, w_in);
    input  wire w_clk;       // 100MHz clock signal
    input  wire [31:0] w_in; // 32-bit input data to diaplay 
    output reg [6:0] r_sg;   // cathode segments for seven segments LED
    output reg [7:0] r_an;   // common anode     for seven segments LED

    reg [31:0] r_cnt=1;
    always@(posedge w_clk) r_cnt <= (r_cnt>=200000) ? 1 : r_cnt + 1;

    reg [2:0] r_digit = 0;
    reg [3:0] r_data  = 0;
    always@(posedge w_clk) if (r_cnt==1) r_digit <= r_digit + 1;

    always@(posedge w_clk) r_data  <= (w_in >> {r_digit, 2'b0});
    
    wire [6:0] w_sg = (r_data==4'h0) ? 7'b1111110 :
                      (r_data==4'h1) ? 7'b0110000 :
                      (r_data==4'h2) ? 7'b1101101 :
                      (r_data==4'h3) ? 7'b1111001 :
                      (r_data==4'h4) ? 7'b0110011 :
                      (r_data==4'h5) ? 7'b1011011 :
                      (r_data==4'h6) ? 7'b1011111 :
                      (r_data==4'h7) ? 7'b1110000 :
                      (r_data==4'h8) ? 7'b1111111 :
                      (r_data==4'h9) ? 7'b1111011 : 
                      (r_data==4'ha) ? 7'b1110111 : 
                      (r_data==4'hb) ? 7'b0011111 : 
                      (r_data==4'hc) ? 7'b0001101 : 
                      (r_data==4'hd) ? 7'b0111101 : 
                      (r_data==4'he) ? 7'b1001111 : 7'b1000111;
     
    wire [7:0] w_an = (8'b0000_0001 << r_digit);

    always@(posedge w_clk) begin
        r_an <= ~w_an;
        r_sg <= ~w_sg; 
    end
endmodule
/******************************************************************************************/
