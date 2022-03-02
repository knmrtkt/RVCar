/***** display controller for OLED_SSD1306 (64x128 pixel 1.3inch mini display                               *****/
/****************************************************************************************************************/
module m_ssd1306_disp_separate (w_clk_in, w_clk_w, SDA, SCL, addr_r, data_r, we_r, addr_l, data_l, we_l);
    input  wire w_clk_in; // main clock signal (100MHz)
    input  wire w_clk_w;  // clock signal for the write port
    output wire SCL;
    inout  wire SDA;
    input  wire [11:0] addr_r;  // write address
    input  wire        data_r;  // write data
    input  wire        we_r;    // write enable
    input  wire [11:0] addr_l;  // write address
    input  wire        data_l;  // write data
    input  wire        we_l;    // write enable
    
    localparam QLED_FREQ = 25; // 10 for 5MHz, 25 for 2MHz, 50 for 1MHz

    reg [31:0] r_ccnt=1;
    always @(posedge w_clk_in) r_ccnt <= (r_ccnt==QLED_FREQ) ? 1 : r_ccnt+1;
    reg r_clk=0;
    always @(posedge w_clk_in) if(r_ccnt==1) r_clk <= ~r_clk; 
    wire w_clk = r_clk; // around 4MHz clock signal defined using QLED_FREQ

    wire busy; 
    reg r_en = 0;
    reg init_done = 0;
    reg [4:0] r_state = 0;
    always @(posedge w_clk) r_en <= (!busy); // && r_state<(13+128*4)) ? 1 : 0;
    always @(posedge w_clk) if(r_en && !init_done) r_state <= r_state + 1;

    reg [15:0] r_init = 0;
    always @(posedge w_clk) begin
        case (r_state) ///// E3 is NOP command for padding
            0:  r_init<=16'h00_AE; // set display off
            1:  r_init<=16'h00_A8; // set mux ratio
            2:  r_init<=16'h00_3F; // set mux ratio
            3:  r_init<=16'h00_40; // set display start line
            4:  r_init<=16'h00_A0; // set segment re-map
            5:  r_init<=16'h00_C0; // set COM output scan direction
            6:  r_init<=16'h00_DA; // set COM pins hardware
            7:  r_init<=16'h00_12; // set COM pins hardware
            8:  r_init<=16'h00_81; // set contrast control
            9:  r_init<=16'h00_7F; // set contrast control
            10: r_init<=16'h00_A4; // disable entire display on
            11: r_init<=16'h00_A6; // set normal display
            12: r_init<=16'h00_D5; // set display clock ratio
            13: r_init<=16'h00_80; // set display clock ratio
            14: r_init<=16'h00_20; // horizontal/vertical addressing mode
            15: r_init<=16'h00_01; // 1 for vertical / 0 for horizontal addressing mode
            16: r_init<=16'h00_21; // Set Column Address 
            17: r_init<=16'h00_00; // Set Column Address 
            18: r_init<=16'h00_7F; // Set Column Address 
            19: r_init<=16'h00_22; // Set Page Address
            20: r_init<=16'h00_00; // Set Page Address
            21: r_init<=16'h00_3F; // Set Page Address
            22: r_init<=16'h00_8D; // enable charge pump regulator
            23: r_init<=16'h00_14; // enable charge pump regulator
            24: r_init<=16'h00_AF; // set display on
            25: init_done <= 1;
        endcase
    end

    reg [12:0] r_radr = 0;    // read address, count up from 0 to 8192 (64 x 128)
    
    // right side
    reg [0:0] vram_r [0:4095]; // 64 x 128 = 8192 bit, video memory (VRAM) for OLED
  
    reg [11:0] r_waddr_r = 0;
    reg        r_we_r    = 0;
    reg        r_wdata_r = 0;

    always @(posedge w_clk_w) r_waddr_r <= addr_r;
    always @(posedge w_clk_w) r_we_r    <= we_r;
    always @(posedge w_clk_w) r_wdata_r <= data_r;
    
    always @(posedge w_clk_w) if(r_we_r) vram_r[r_waddr_r] <= r_wdata_r; // VRAM write, use w_clk_w
    reg [11:0] r_a_r = 0;

    always @(posedge w_clk_w) r_a_r <= {r_radr[5:0], r_radr[11:6]};
    wire w_ddd_r = vram_r[r_a_r];          // VRAM read port, Note!!!
    
    // left side
    reg [0:0] vram_l [0:4095]; // 64 x 128 = 8192 bit, video memory (VRAM) for OLED

    reg [11:0] r_waddr_l = 0;
    reg        r_we_l    = 0;
    reg        r_wdata_l = 0;

    always @(posedge w_clk_w) r_waddr_l <= addr_l;
    always @(posedge w_clk_w) r_we_l    <= we_l;
    always @(posedge w_clk_w) r_wdata_l <= data_l;
    
    always @(posedge w_clk_w) if(r_we_l) vram_l[r_waddr_l] <= r_wdata_l; // VRAM write, use w_clk_w
    reg [11:0] r_a_l = 0;

    always @(posedge w_clk_w) r_a_l <= {r_radr[5:0], r_radr[11:6]};
    wire w_ddd_l = vram_l[r_a_l];          // VRAM read port, Note!!!

    
      
    reg [4:0] r_bits = 0;
    reg [7:0] r_data = 0;

    always @(posedge w_clk) if (init_done) begin
        if(r_en) r_bits <= 0;
        else if(r_bits!=8) begin
            r_bits <= r_bits + 1;
            r_radr <= r_radr + 1;
            r_data <= (r_radr[12]) ? {w_ddd_l, r_data[7:1]} : {w_ddd_r, r_data[7:1]};
        end
    end

    wire [15:0] w_data = (!init_done) ? r_init : {8'h40, r_data};
    m_i2c i2c (w_clk, r_en, w_data, SDA, SCL, busy);
endmodule

module m_ssd1306_disp (w_clk_in, w_clk_w, SDA, SCL, addr, data, we);
    input  wire w_clk_in; // main clock signal (100MHz)
    input  wire w_clk_w;  // clock signal for the write port
    output wire SCL;
    inout  wire SDA;
    input  wire [12:0] addr;  // write address
    input  wire        data;  // write data
    input  wire        we;    // write enable
    
    localparam QLED_FREQ = 25; // 10 for 5MHz, 25 for 2MHz, 50 for 1MHz

    reg [31:0] r_ccnt=1;
    always @(posedge w_clk_in) r_ccnt <= (r_ccnt==QLED_FREQ) ? 1 : r_ccnt+1;
    reg r_clk=0;
    always @(posedge w_clk_in) if(r_ccnt==1) r_clk <= ~r_clk; 
    wire w_clk = r_clk; // around 4MHz clock signal defined using QLED_FREQ

    wire busy; 
    reg r_en = 0;
    reg init_done = 0;
    reg [4:0] r_state = 0;
    always @(posedge w_clk) r_en <= (!busy); // && r_state<(13+128*4)) ? 1 : 0;
    always @(posedge w_clk) if(r_en && !init_done) r_state <= r_state + 1;

    reg [15:0] r_init = 0;
    always @(posedge w_clk) begin
        case (r_state) ///// E3 is NOP command for padding
            0:  r_init<=16'h00_AE; // set display off
            1:  r_init<=16'h00_A8; // set mux ratio
            2:  r_init<=16'h00_3F; // set mux ratio
            3:  r_init<=16'h00_40; // set display start line
            4:  r_init<=16'h00_A0; // set segment re-map
            5:  r_init<=16'h00_C0; // set COM output scan direction
            6:  r_init<=16'h00_DA; // set COM pins hardware
            7:  r_init<=16'h00_12; // set COM pins hardware
            8:  r_init<=16'h00_81; // set contrast control
            9:  r_init<=16'h00_7F; // set contrast control
            10: r_init<=16'h00_A4; // disable entire display on
            11: r_init<=16'h00_A6; // set normal display
            12: r_init<=16'h00_D5; // set display clock ratio
            13: r_init<=16'h00_80; // set display clock ratio
            14: r_init<=16'h00_20; // horizontal/vertical addressing mode
            15: r_init<=16'h00_01; // 1 for vertical / 0 for horizontal addressing mode
            16: r_init<=16'h00_21; // Set Column Address 
            17: r_init<=16'h00_00; // Set Column Address 
            18: r_init<=16'h00_7F; // Set Column Address 
            19: r_init<=16'h00_22; // Set Page Address
            20: r_init<=16'h00_00; // Set Page Address
            21: r_init<=16'h00_3F; // Set Page Address
            22: r_init<=16'h00_8D; // enable charge pump regulator
            23: r_init<=16'h00_14; // enable charge pump regulator
            24: r_init<=16'h00_AF; // set display on
            25: init_done <= 1;
        endcase
    end

    reg [0:0] vram [0:8191]; // 64 x 128 = 8192 bit, video memory (VRAM) for OLED
    reg [12:0] r_radr = 0;    // read address, count up from 0 to 8192 (64 x 128)

    reg [12:0] r_waddr = 0;
    reg        r_we    = 0;
    reg        r_wdata = 0;

    always @(posedge w_clk_w) r_waddr <= addr;
    always @(posedge w_clk_w) r_we    <= we;
    always @(posedge w_clk_w) r_wdata <= data;
    
    always @(posedge w_clk_w) if(r_we) vram[r_waddr] <= r_wdata; // VRAM write, use w_clk_w
    reg [12:0] r_a = 0;

    always @(posedge w_clk_w) r_a <= {r_radr[5:0], r_radr[12:6]};
    wire w_ddd = vram[r_a];          // VRAM read port, Note!!!
      
    reg [4:0] r_bits = 0;
    reg [7:0] r_data = 0;

    always @(posedge w_clk) if (init_done) begin
        if(r_en) r_bits <= 0;
        else if(r_bits!=8) begin
            r_bits <= r_bits + 1;
            r_radr <= r_radr + 1;
            r_data <= {w_ddd, r_data[7:1]};
        end
    end

    wire [15:0] w_data = (!init_done) ? r_init : {8'h40, r_data};
    m_i2c i2c (w_clk, r_en, w_data, SDA, SCL, busy);
endmodule
/****************************************************************************************************************/
module m_i2c (w_clk, en, d_in, SDA, SCL, busy);
    input  wire w_clk;       // 100KHz input clock !!
    input  wire en;          // enable
    inout  wire SDA;         // I2C data
    output wire SCL;         // I2C clock
    input  wire [15:0] d_in; // 16bit input data
    output wire busy;        // busy
    
    reg [5:0] r_state=0;
    reg [1:0] r_cnt=0; // 0, 1, 2, 3, 0, 1, ...
    reg r_SCL = 1;
    reg r_SDA = 1;
    reg [27:0] r_data = 0; // 24 + 1 + 1 + 2 = 28bit

    reg r_ack = 0;
    always @(posedge w_clk) begin
        if(r_cnt==3) begin
            r_ack <= (r_state==9 || r_state==18 || r_state==27) ? 1 : 0;
        end
    end
    
    always @(posedge w_clk) begin
        if(en && r_state==0) begin
            r_state <= 1;
            r_data  <= {7'h3c, 2'b0, d_in[15:8], 1'b0, d_in[7:0], 2'b0};
            r_SDA   <= 0;
            r_cnt   <= 0;
        end
        else begin
          r_cnt <= (r_state==0) ? 0 : r_cnt + 1;
          if(r_state!=0 && r_cnt==3) begin
            r_state <= (r_state==29) ? 0 : r_state + 1;
            r_SDA   <= r_data[27];
            r_data  <= {r_data[26:0], 1'b1};
          end
        end
    end

    always @(posedge w_clk) begin
        if(r_state==0) r_SCL <= 1;
        else if(r_state==1) begin   ///// start condition
            if (r_cnt==2) r_SCL <= 0;
        end
        else if(r_state==29) begin ///// stop condition
            if (r_cnt==0) r_SCL <= 1;
        end
        else begin ///// r_state between 2 and 28
            if(r_cnt==0) r_SCL <= 1;
            if(r_cnt==2) r_SCL <= 0;
        end
    end

    assign SDA = (r_ack) ? 1'bz : r_SDA;
    assign SCL = r_SCL;
    assign busy = (r_state!=0 || en);
endmodule


// bit access
module ssd1306(
  input  wire        w_clk,     // processor clock input
  input  wire        w_com_clk_base, // 40MHz clock input
  input  wire        i_rst,       // lcd reset
  inout  wire        SDA,       // SSD1306 I2C SDA
  inout  wire        SCL,       // SSD1306 I2C SCL
  input  wire [12:0] w_vaddr,   // vram address
  input  wire        w_ven,     // vram write enable
  input  wire        w_idata,   // vram write data
  output wire        w_odata    // vram read data
);

  wire [7:0] w_ven_8   = {7'h0, w_ven}   << w_vaddr[9:7];
  wire [7:0] w_idata_8 = {7'h0, w_idata} << w_vaddr[9:7];
  wire [7:0] w_odata_8;
  wire [9:0] w_vaddr_A = {w_vaddr[12:10], w_vaddr[6:0]};
  reg  [2:0] r_vaddr_3 = 0;
  always @(posedge w_clk) begin
    r_vaddr_3 <= w_vaddr[9:7];
  end
  assign w_odata = w_odata_8[r_vaddr_3];

  m_lcd_top lcd(w_clk, w_com_clk_base, i_rst, SDA, SCL, w_vaddr_A, w_ven_8, w_idata_8, w_odata_8);
endmodule

// byte access
module m_lcd_top(
  input  wire       w_clk,     // processor clock input
  input  wire       w_com_clk_base, // 40MHz clock input
  input  wire       i_rst,       // lcd reset
  inout  wire       SDA,       // SSD1306 I2C SDA
  inout  wire       SCL,       // SSD1306 I2C SCL
  input  wire [9:0] w_vaddr,   // vram address
  input  wire [7:0] w_ven,     // vram write enable
  input  wire [7:0] w_idata,   // vram write data
  output wire [7:0] w_odata    // vram read data
);  
    // clock gen
    wire w_com_clk; // 1.6MHz Clock (400KHz * 4)
    m_lcd_clk_div #(.DIVISOR(25)) cdiv(w_clk, w_com_clk);

    // reset control (assert rst at least 1024 cycles)
    reg rst = 0;
    reg [9:0] r_reset_cnt = 0;
    always @(posedge w_com_clk) begin
      if (i_rst) begin
        rst <= 1;
        r_reset_cnt <= 1023;
      end
      else if (r_reset_cnt > 0) r_reset_cnt <= r_reset_cnt - 1;
      else rst <= 0;
    end

    // write enable controll (send data continuously)
    wire busy;     // lcd busy
    reg  r_en = 0; // lcd write enable
    always @(posedge w_com_clk) begin
      if (rst) r_en <= 0;
      else if (!init_done && !r_en && !busy) r_en <= 1;
      else if (r_en == 1) r_en <= 0;
    end

    // init command loader
    wire [2:0]  init_size;
    wire [23:0] init_data;
    wire        init_done;
    m_lcd_init_mem init(w_com_clk, rst, r_en, init_size, init_data, init_done);
    
    // vram
    wire [9:0] w_vram_addr;
    wire [7:0] w_vram_data;
    wire       V_INITWE;
    wire [9:0] V_INITADDR;
    wire [7:0] V_INITDATA;
    m_lcd_vram vram(
      .CLK1(w_com_clk), .EN1({8{V_INITWE}}), .ADDR1((V_INITWE) ? V_INITADDR : w_vram_addr), .IDATA1(V_INITDATA), .ODATA1(w_vram_data),
      .CLK2(w_clk), .EN2(w_ven), .ADDR2(w_vaddr), .IDATA2(w_idata), .ODATA2(w_odata)
    );
    m_vraminit vraminit(w_com_clk, rst, V_INITWE, V_INITADDR, V_INITDATA);

    // communication
    wire [23:0] w_data = (!init_done) ? init_data : 0;
    wire [2:0]  w_size = (!init_done) ? init_size : 0;
    m_lcd_ssd1306_com com(w_com_clk, rst, r_en, {w_data, 8'h0}, w_size, w_vram_addr, w_vram_data, SDA, SCL, busy);
endmodule

// send data to i2c bus by byte
module m_lcd_i2c_com(
  input  wire        w_clk,       // 1MHz Clock
  input  wire        i_rst,       // reset
  input  wire [7:0]  w_data,      // data to send
  input  wire        w_en,        // w_data is valid
  output wire        w_empty,     // need data
  inout  wire        SDA,         // SDA
  inout  wire        SCL,         // SCL
  output wire        busy         // is not idle
);
    localparam STATE_IDLE    = 3'd0;
    localparam STATE_START   = 3'd1;
    localparam STATE_SEND    = 3'd2;
    localparam STATE_ACK     = 3'd3;
    localparam STATE_STOP    = 3'd4;
    
    reg [2:0] r_state = STATE_IDLE;
    reg [1:0] r_cnt = 0; // 0, 1, 2, 3, 0, 1, ..
    reg [7:0] r_data = 0;
    reg       r_read_state = 0;
    reg       r_write_state = 1;
    reg [3:0] r_sent = 0;
    reg [7:0] r_bits = 0;
    reg r_SCL = 1;
    reg r_SDA = 1;
    
    wire is_ack = r_state == STATE_ACK;
    
    assign w_empty = r_read_state != r_write_state;

    // reset controll (safe i2c disconnecting)
    reg [1:0] r_reset_state = 0; // 0: none, 1: reset queued, 2: resetting, 3: reset completed
    wire      rst = r_reset_state == 2;
    always @(posedge w_clk) begin
      if (rst && r_reset_state == 0) r_reset_state <= 1;
      else if (r_reset_state == 1 && r_state == STATE_IDLE) r_reset_state <= 2;
      else if (r_reset_state == 2) r_reset_state <= 3;
      else if (r_reset_state == 3 && !rst) r_reset_state <= 0;
    end
    
    // data fetch
    always @(posedge w_clk) begin
      if (rst) begin
        r_data <= 0;
        r_write_state <= 1;
      end
      else if (w_en && w_empty) begin
        r_data <= w_data;
        r_write_state <= ~r_write_state;
      end
    end
    
    // state machine
    always @(posedge w_clk) begin
      if (rst) begin
        {r_state, r_read_state, r_sent, r_bits} <= 0;
        r_SDA <= 1;
      end
      else case (r_state)
        STATE_IDLE: begin
          if (w_en || !w_empty) begin
            r_state <= STATE_START;
            r_SDA <= 0;
          end
        end
        STATE_START: begin
          if (r_cnt == 2) begin
            r_state <= STATE_SEND;
            // load data ( data must be there )
            r_bits <= r_data;
            r_sent <= 0;
            r_read_state <= ~r_read_state;
          end
        end
        STATE_SEND: begin
          if (r_cnt == 3) begin
            if (r_sent < 8) begin
              r_SDA <= r_bits[7];
              r_sent <= r_sent + 1;
              r_bits <= { r_bits[6:0], 1'b1 };
            end
            else begin
              r_state <= STATE_ACK;
            end
          end
        end
        STATE_ACK: begin
          if (r_cnt == 2 && SDA == 0) begin
            // load data ( if exists )
            if (r_reset_state != 1 && !w_empty) begin
              r_state <= STATE_SEND;
              r_bits <= r_data;
              r_sent <= 0;
              r_read_state <= ~r_read_state;
            end
            else begin
              r_state <= STATE_STOP;
              r_SDA <= 0;
            end
          end
        end
        STATE_STOP: begin
          if (r_cnt == 2) begin
            r_state <= STATE_IDLE;
            r_SDA <= 1;
          end
        end
      endcase
    end
    
    // SCL
    always @(posedge w_clk) begin
      if (rst) begin
        r_cnt <= 0;
        r_SCL <= 1;
      end
      else case (r_state)
        STATE_START, STATE_SEND, STATE_ACK: begin
	        if (r_SCL == SCL) begin // forward only if clock is not stretched
            r_cnt <= r_cnt + 1;
            if (r_cnt == 0) r_SCL <= 1;
            if (r_cnt == 2) r_SCL <= 0;
          end
        end
        STATE_STOP: begin
          r_cnt <= r_cnt + 1;
          if (r_cnt == 0) r_SCL <= 1;
        end
        STATE_IDLE: begin
          r_cnt <= 0;
          r_SCL <= 1;
        end
      endcase
    end
    
    assign SDA = (is_ack) ? 1'bz : r_SDA;
    assign SCL = (r_SCL) ? 1'bz : r_SCL;
    assign busy = r_state != STATE_IDLE || w_en;
endmodule

`default_nettype none 



module m_lcd_init_mem(
  input  wire       w_clk,
  input  wire       rst,
  input  wire       w_next,
  output reg [2:0]  r_size = 0,
  output reg [23:0] r_data = 0,
  output reg        init_done = 0
);
  reg [4:0] r_index = 0;

  // index forward
  always @(posedge w_clk) begin
    if (rst) r_index <= 0;
    else if (w_next) r_index <= r_index + 1;
  end

  // command load
  always @(posedge w_clk) begin
    if (rst) {r_size, r_data, init_done} <= 0;
    else case (r_index) ///// E3 is NOP command for padding
      0:  {r_size, r_data[23-:8]}  <= 11'h1_AE;       // set display off
      1:  {r_size, r_data[23-:16]} <= 19'h2_A8_3F;    // set mux ratio
      2:  {r_size, r_data[23-:8]}  <= 11'h1_40;       // set display start line
      3:  {r_size, r_data[23-:8]}  <= 11'h1_A0;       // set segment re-map
      4:  {r_size, r_data[23-:8]}  <= 11'h1_C0;       // set COM output scan direction
      5:  {r_size, r_data[23-:16]} <= 19'h2_DA_12;    // set COM pins hardware
      6:  {r_size, r_data[23-:16]} <= 19'h2_81_7F;    // set contrast control
      7:  {r_size, r_data[23-:8]}  <= 11'h1_A4;       // disable entire display on
      8:  {r_size, r_data[23-:8]}  <= 11'h1_A6;       // set normal display
      9:  {r_size, r_data[23-:16]} <= 19'h2_D5_80;    // set display clock ratio
      10: {r_size, r_data[23-:16]} <= 19'h2_20_00;    // horizontal addressing mode
      11: {r_size, r_data[23-:24]} <= 27'h3_21_00_7F; // column address set
      12: {r_size, r_data[23-:24]} <= 27'h3_22_00_07; // page address set
      // comment out the next 2 lines if you want to rotate 180 degrees
      //13: {r_size, r_data[23-:8]}  <= 11'h1_A1;       // segment remap
      //14: {r_size, r_data[23-:8]}  <= 11'h1_C8;       // COM remap
      13: {r_size, r_data[23-:16]} <= 19'h2_8D_14;    // enable charge pump regulator
      14: {r_size, r_data[23-:8]}  <= 11'h1_AF;       // set display on
      15: init_done <= 1;
    endcase
  end
endmodule



module m_lcd_clk_div #(
  parameter DIVISOR = 100
)(
  input  wire i_clk,
  output wire o_clk
);
  reg [31:0] r_cnt = 0;
  reg r_clk = 0;
  
  always @(posedge i_clk) r_cnt <= (r_cnt == (DIVISOR / 2)) ? 0 : r_cnt + 1;
  always @(posedge i_clk) if (r_cnt == 0) r_clk <= ~r_clk;
  
  assign o_clk = r_clk; 
endmodule

module m_lcd_ssd1306_com #(
  parameter DATA_SIZE_WIDTH = 3,
  parameter I2C_SLAVE_ADDR = 7'h3c
) (
  input  wire                      w_clk,       // 1.6MHz Clock
  input  wire                      rst,
  input  wire                      w_cmd_en,    // command write enable
  input  wire [DATA_UPPER:0]       w_cmd,       // command (max 4bytes, msb aligned)
  input  wire [DATA_SIZE_UPPER:0]  w_cmd_size,  // command size
  output wire [9:0]                w_data_addr, // vram address
  input  wire [7:0]                w_data,      // vram data
  inout  wire                      SDA,
  inout  wire                      SCL,
  output wire                      busy
);
    localparam DATA_SIZE_UPPER = DATA_SIZE_WIDTH - 1;
    localparam DATA_UPPER      = (2**DATA_SIZE_UPPER * 8) - 1;
    localparam PACKET_UPPER    = DATA_UPPER + 16;

    // state management
    localparam STATE_IDLE = 2'h0;
    localparam STATE_CMD  = 2'h1;
    localparam STATE_DATA = 2'h2;
    reg [1:0] r_state = STATE_IDLE;

    // command send
    reg [DATA_UPPER:0]       r_cmd = 0;
    reg [DATA_SIZE_UPPER:0]  r_cmd_size = 0;
    reg                      r_preamble_sent = 0;
    reg [PACKET_UPPER:0]     r_packet;
    reg [DATA_SIZE_UPPER:0]  r_remain = 0;

    // data send
    reg  [9:0]               r_addr = 0;
    reg  [1:0]               r_data_state = 3;
    wire [7:0]               w_real_data;
    assign w_data_addr = r_addr;
    
    // i2c management
    reg                      r_en = 0;
    wire [7:0]               w_i2c_data;
    wire                     w_empty;
    wire                     i2c_busy;

    // data fetch
    assign busy = w_cmd_en || r_cmd_size > 0;
    always @(posedge w_clk) begin
      if (rst) {r_cmd, r_cmd_size} <= 0;
      else if (r_state == STATE_CMD && !r_en && w_empty && r_remain == 0) begin
        r_cmd_size <= 0;
      end
      else if (w_cmd_en) begin
        r_cmd <= w_cmd;
        r_cmd_size <= w_cmd_size;
      end
    end

    always @(posedge w_clk) begin
      if (rst) begin
        {r_en, r_remain, r_packet, r_preamble_sent, r_state, r_addr} <= 0;
        r_data_state <= 3;
      end
      else case (r_state)
        STATE_IDLE: begin
          if (r_cmd_size > 0) begin
            r_state <= STATE_CMD;
          end
        end
        STATE_CMD: begin
          if (!r_en && w_empty) begin
            // command sending
            if (r_remain > 0) begin
              r_en <= 1;
              r_remain <= r_remain - 1;
              r_packet <= {r_packet[(PACKET_UPPER-8):0], 8'h00};
            end
            // command send finished but has new command
            else if (r_cmd_size > 0) begin
              r_packet <= (!r_preamble_sent) ? {
                I2C_SLAVE_ADDR, 1'b0 /* R/W# */,
                1'b0 /* Co */, 1'b0 /* D/C# */, 6'b0,
                r_cmd
              } : { r_cmd, 16'h0 };
              r_remain <= r_cmd_size + ((!r_preamble_sent) ? 2 : 0) - 1; // preamble is 2 byte
              r_preamble_sent <= 1;
              r_en <= 1;
            end
            // no command to send: wait for i2c stop condition
            else if (!i2c_busy) begin
              r_state <= STATE_DATA;
              r_preamble_sent <= 0;
            end
          end
          else if (r_en) begin
            r_en <= 0;
          end
        end
        STATE_DATA: begin
          if (r_en) r_en <= 0;
          // finished writing entire frame and has command
          else if (r_addr == 0 && r_cmd_size > 0) begin
            // wait for i2c stop condition
            if (!i2c_busy) begin
              r_state <= STATE_CMD;
              r_data_state <= 3;
            end
          end
          else if (w_empty) begin
            // normal operation
            r_en <= 1;
            if (r_data_state > 0) begin
              r_data_state <= r_data_state - 1;
            end
            if (r_data_state < 2) begin
              r_addr <= (r_addr < 1023) ? r_addr + 1 : 0;
            end
          end
        end
      endcase
    end

    // data preamble
    assign w_real_data = (r_data_state == 2) ? 8'h78 : (r_data_state == 1) ? 8'h40 : w_data;

    assign w_i2c_data = (r_state == STATE_CMD) ? r_packet[PACKET_UPPER -: 8] : w_real_data;
    m_lcd_i2c_com i2c(w_clk, rst, w_i2c_data, r_en, w_empty, SDA, SCL, i2c_busy);
endmodule

module m_lcd_vram(
  input  wire       CLK1,
  input  wire [7:0] EN1,
  input  wire [9:0] ADDR1,
  input  wire [7:0] IDATA1,
  output reg  [7:0] ODATA1,
  input  wire       CLK2,
  input  wire [7:0] EN2,
  input  wire [9:0] ADDR2,
  input  wire [7:0] IDATA2,
  output reg  [7:0] ODATA2
);
    (* ram_style = "block" *) reg [7:0] cm_ram[0:1023];

    integer i;
    initial for(i = 0; i < 1024; i = i + 1) begin
      cm_ram[i] = 0;
    end
    generate
    genvar j;
    for(j=0; j<8; j=j+1) begin
    always @(posedge CLK1) begin
      //if (EN1) cm_ram[ADDR1] <= IDATA1;
      if (EN1[j]) cm_ram[ADDR1][j] <= IDATA1[j];
      ODATA1 <= cm_ram[ADDR1];
    end

    always @(posedge CLK2) begin
      //if (EN2) cm_ram[ADDR2] <= IDATA2;
      if (EN2[j]) cm_ram[ADDR2][j] <= IDATA2[j];
      ODATA2 <= cm_ram[ADDR2];
    end

    end
    endgenerate

    //Data
    initial begin
      cm_ram[  0]=8'h7f;cm_ram[  1]=8'h7f;cm_ram[  2]=8'h06;cm_ram[  3]=8'h0c;cm_ram[  4]=8'h18;cm_ram[  5]=8'h7f;cm_ram[  6]=8'h7f;cm_ram[  7]=8'h00;
      cm_ram[  8]=8'h38;cm_ram[  9]=8'h7c;cm_ram[ 10]=8'h44;cm_ram[ 11]=8'h44;cm_ram[ 12]=8'h7c;cm_ram[ 13]=8'h38;cm_ram[ 14]=8'h00;cm_ram[ 15]=8'h00;
      cm_ram[ 16]=8'h00;cm_ram[ 17]=8'h00;cm_ram[ 18]=8'h00;cm_ram[ 19]=8'h00;cm_ram[ 20]=8'h00;cm_ram[ 21]=8'h00;cm_ram[ 22]=8'h00;cm_ram[ 23]=8'h00;
      cm_ram[ 24]=8'h41;cm_ram[ 25]=8'h7f;cm_ram[ 26]=8'h7f;cm_ram[ 27]=8'h49;cm_ram[ 28]=8'h09;cm_ram[ 29]=8'h0f;cm_ram[ 30]=8'h06;cm_ram[ 31]=8'h00;
      cm_ram[ 32]=8'h44;cm_ram[ 33]=8'h7c;cm_ram[ 34]=8'h78;cm_ram[ 35]=8'h4c;cm_ram[ 36]=8'h04;cm_ram[ 37]=8'h1c;cm_ram[ 38]=8'h18;cm_ram[ 39]=8'h00;
      cm_ram[ 40]=8'h38;cm_ram[ 41]=8'h7c;cm_ram[ 42]=8'h44;cm_ram[ 43]=8'h44;cm_ram[ 44]=8'h7c;cm_ram[ 45]=8'h38;cm_ram[ 46]=8'h00;cm_ram[ 47]=8'h00;
      cm_ram[ 48]=8'h98;cm_ram[ 49]=8'hbc;cm_ram[ 50]=8'ha4;cm_ram[ 51]=8'ha4;cm_ram[ 52]=8'hf8;cm_ram[ 53]=8'h7c;cm_ram[ 54]=8'h04;cm_ram[ 55]=8'h00;
      cm_ram[ 56]=8'h44;cm_ram[ 57]=8'h7c;cm_ram[ 58]=8'h78;cm_ram[ 59]=8'h4c;cm_ram[ 60]=8'h04;cm_ram[ 61]=8'h1c;cm_ram[ 62]=8'h18;cm_ram[ 63]=8'h00;
      cm_ram[ 64]=8'h20;cm_ram[ 65]=8'h74;cm_ram[ 66]=8'h54;cm_ram[ 67]=8'h54;cm_ram[ 68]=8'h3c;cm_ram[ 69]=8'h78;cm_ram[ 70]=8'h40;cm_ram[ 71]=8'h00;
      cm_ram[ 72]=8'h7c;cm_ram[ 73]=8'h7c;cm_ram[ 74]=8'h18;cm_ram[ 75]=8'h38;cm_ram[ 76]=8'h1c;cm_ram[ 77]=8'h7c;cm_ram[ 78]=8'h78;cm_ram[ 79]=8'h00;
      cm_ram[ 80]=8'h00;cm_ram[ 81]=8'h00;cm_ram[ 82]=8'h00;cm_ram[ 83]=8'h00;cm_ram[ 84]=8'h00;cm_ram[ 85]=8'h00;cm_ram[ 86]=8'h00;cm_ram[ 87]=8'h00;
      cm_ram[ 88]=8'h00;cm_ram[ 89]=8'h00;cm_ram[ 90]=8'h00;cm_ram[ 91]=8'h00;cm_ram[ 92]=8'h00;cm_ram[ 93]=8'h00;cm_ram[ 94]=8'h00;cm_ram[ 95]=8'h00;
      cm_ram[ 96]=8'h00;cm_ram[ 97]=8'h00;cm_ram[ 98]=8'h00;cm_ram[ 99]=8'h00;cm_ram[100]=8'h00;cm_ram[101]=8'h00;cm_ram[102]=8'h00;cm_ram[103]=8'h00;
      cm_ram[104]=8'h00;cm_ram[105]=8'h00;cm_ram[106]=8'h00;cm_ram[107]=8'h00;cm_ram[108]=8'h00;cm_ram[109]=8'h00;cm_ram[110]=8'h00;cm_ram[111]=8'h00;
      cm_ram[112]=8'h00;cm_ram[113]=8'h00;cm_ram[114]=8'h00;cm_ram[115]=8'h00;cm_ram[116]=8'h00;cm_ram[117]=8'h00;cm_ram[118]=8'h00;cm_ram[119]=8'h00;
      cm_ram[120]=8'h00;cm_ram[121]=8'h00;cm_ram[122]=8'h00;cm_ram[123]=8'h00;cm_ram[124]=8'h00;cm_ram[125]=8'h00;cm_ram[126]=8'h00;cm_ram[127]=8'h00;
    end
endmodule

// show "No Program"
module m_vraminit(
  input  wire       CLK,
  input  wire       EN,
  output reg        V_INITWE = 0,
  output reg  [9:0] V_INITADDR = 0,
  output wire [7:0] V_INITDATA 
);
  reg [9:0] r_addr = 0;
  (* ram_style = "block" *) reg [7:0] cm_ram[0:127];
  reg [7:0] r_data = 0;

  assign V_INITDATA = (V_INITADDR < 128) ? r_data : 8'b0;

  always @(posedge CLK) begin
    r_data <= cm_ram[r_addr[6:0]];
  end

  always @(posedge CLK) begin
    if (!EN) {V_INITWE, r_addr, V_INITADDR} <= 0;
    else begin
      V_INITWE <= EN;
      r_addr <= r_addr + 1;
      V_INITADDR <= r_addr;
    end
  end

  // Data
  initial begin
    cm_ram[  0]=8'h7f;cm_ram[  1]=8'h7f;cm_ram[  2]=8'h06;cm_ram[  3]=8'h0c;cm_ram[  4]=8'h18;cm_ram[  5]=8'h7f;cm_ram[  6]=8'h7f;cm_ram[  7]=8'h00;
    cm_ram[  8]=8'h38;cm_ram[  9]=8'h7c;cm_ram[ 10]=8'h44;cm_ram[ 11]=8'h44;cm_ram[ 12]=8'h7c;cm_ram[ 13]=8'h38;cm_ram[ 14]=8'h00;cm_ram[ 15]=8'h00;
    cm_ram[ 16]=8'h00;cm_ram[ 17]=8'h00;cm_ram[ 18]=8'h00;cm_ram[ 19]=8'h00;cm_ram[ 20]=8'h00;cm_ram[ 21]=8'h00;cm_ram[ 22]=8'h00;cm_ram[ 23]=8'h00;
    cm_ram[ 24]=8'h41;cm_ram[ 25]=8'h7f;cm_ram[ 26]=8'h7f;cm_ram[ 27]=8'h49;cm_ram[ 28]=8'h09;cm_ram[ 29]=8'h0f;cm_ram[ 30]=8'h06;cm_ram[ 31]=8'h00;
    cm_ram[ 32]=8'h44;cm_ram[ 33]=8'h7c;cm_ram[ 34]=8'h78;cm_ram[ 35]=8'h4c;cm_ram[ 36]=8'h04;cm_ram[ 37]=8'h1c;cm_ram[ 38]=8'h18;cm_ram[ 39]=8'h00;
    cm_ram[ 40]=8'h38;cm_ram[ 41]=8'h7c;cm_ram[ 42]=8'h44;cm_ram[ 43]=8'h44;cm_ram[ 44]=8'h7c;cm_ram[ 45]=8'h38;cm_ram[ 46]=8'h00;cm_ram[ 47]=8'h00;
    cm_ram[ 48]=8'h98;cm_ram[ 49]=8'hbc;cm_ram[ 50]=8'ha4;cm_ram[ 51]=8'ha4;cm_ram[ 52]=8'hf8;cm_ram[ 53]=8'h7c;cm_ram[ 54]=8'h04;cm_ram[ 55]=8'h00;
    cm_ram[ 56]=8'h44;cm_ram[ 57]=8'h7c;cm_ram[ 58]=8'h78;cm_ram[ 59]=8'h4c;cm_ram[ 60]=8'h04;cm_ram[ 61]=8'h1c;cm_ram[ 62]=8'h18;cm_ram[ 63]=8'h00;
    cm_ram[ 64]=8'h20;cm_ram[ 65]=8'h74;cm_ram[ 66]=8'h54;cm_ram[ 67]=8'h54;cm_ram[ 68]=8'h3c;cm_ram[ 69]=8'h78;cm_ram[ 70]=8'h40;cm_ram[ 71]=8'h00;
    cm_ram[ 72]=8'h7c;cm_ram[ 73]=8'h7c;cm_ram[ 74]=8'h18;cm_ram[ 75]=8'h38;cm_ram[ 76]=8'h1c;cm_ram[ 77]=8'h7c;cm_ram[ 78]=8'h78;cm_ram[ 79]=8'h00;
    cm_ram[ 80]=8'h00;cm_ram[ 81]=8'h00;cm_ram[ 82]=8'h00;cm_ram[ 83]=8'h00;cm_ram[ 84]=8'h00;cm_ram[ 85]=8'h00;cm_ram[ 86]=8'h00;cm_ram[ 87]=8'h00;
    cm_ram[ 88]=8'h00;cm_ram[ 89]=8'h00;cm_ram[ 90]=8'h00;cm_ram[ 91]=8'h00;cm_ram[ 92]=8'h00;cm_ram[ 93]=8'h00;cm_ram[ 94]=8'h00;cm_ram[ 95]=8'h00;
    cm_ram[ 96]=8'h00;cm_ram[ 97]=8'h00;cm_ram[ 98]=8'h00;cm_ram[ 99]=8'h00;cm_ram[100]=8'h00;cm_ram[101]=8'h00;cm_ram[102]=8'h00;cm_ram[103]=8'h00;
    cm_ram[104]=8'h00;cm_ram[105]=8'h00;cm_ram[106]=8'h00;cm_ram[107]=8'h00;cm_ram[108]=8'h00;cm_ram[109]=8'h00;cm_ram[110]=8'h00;cm_ram[111]=8'h00;
    cm_ram[112]=8'h00;cm_ram[113]=8'h00;cm_ram[114]=8'h00;cm_ram[115]=8'h00;cm_ram[116]=8'h00;cm_ram[117]=8'h00;cm_ram[118]=8'h00;cm_ram[119]=8'h00;
    cm_ram[120]=8'h00;cm_ram[121]=8'h00;cm_ram[122]=8'h00;cm_ram[123]=8'h00;cm_ram[124]=8'h00;cm_ram[125]=8'h00;cm_ram[126]=8'h00;cm_ram[127]=8'h00;
  end
endmodule


