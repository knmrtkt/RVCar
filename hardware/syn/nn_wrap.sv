module nn_wrap(
    input  wire        CLK,
    input  wire        RST,       // lcd reset

    inout  wire        SDA,       // SSD1306 I2C SDA
    inout  wire        SCL,       // SSD1306 I2C SCL

    output wire        st7789_SCL,
    inout  wire        st7789_SDA,
    output wire        st7789_DC,
    output wire        st7789_RES,

    input  wire        clk_cam_i2c,       // 25MHz
    input  wire        clk_cam_pix,   // 48Mhz
    input  wire        pclk,          // OV7670 camera PCLK
    input  wire        camera_v_sync, // OV7670 camera VSYNC
    input  wire        camera_h_ref,  // OV7670 camera HREF
    input  wire [ 7:0] din,           // OV7670 camera D0 to D7
    output wire        sioc,          // OV7670 camera SIO_C
    output wire        siod,          // OV7670 camera SIO_D
    output wire        reset,        // OV7670 camera RESET#
    output wire        power_down,    // OV7670 camera PWDN
    output wire        xclk,          // OV7670 camera XCLK

    output reg  [31:0] nn_0_data,
    input  wire [31:0] nn_0_arg,
    output reg         nn_0_en,

    input  wire [ 7:0] cam_gain
    );

    // this data is sent in sync with CLK, not clk_cam_pix
    wire [15:0] w_cap_dout;
    wire [ 9:0] w_cap_addr_x;
    wire [ 9:0] w_cap_addr_y;
    wire        w_cap_en;
    ov7725 ov7725_0(
        CLK,
        RST,
        
        w_cap_dout,
        w_cap_addr_x,
        w_cap_addr_y,
        w_cap_en,
        cam_gain,

        clk_cam_i2c,
        clk_cam_pix,
        pclk,        
        camera_v_sync,
        camera_h_ref,
        din,          
        sioc,         
        siod,         
        reset,        
        power_down,
        xclk     
    );

    /****************************************************************************************/
    // resize
    wire [ 5:0] w_vaddr_x_t, w_vaddr_y_t;
    XtoNbit#(320, 6) div320to64 (w_cap_addr_x[8:0], w_vaddr_x_t);
    XtoNbit#(240, 6) div240to64 (w_cap_addr_y[7:0], w_vaddr_y_t);

    /****************************************************************************************/
    // gray scale
    wire [11:0] w_cap_addr = {w_vaddr_x_t, ~w_vaddr_y_t};
    wire [ 7:0] w_cap_red   = {w_cap_dout[15:11], w_cap_dout[15:13]};
    wire [ 7:0] w_cap_green = {w_cap_dout[10: 5], w_cap_dout[10: 9]};
    wire [ 7:0] w_cap_blue  = {w_cap_dout[ 4: 0], w_cap_dout[ 4: 3]};

    wire [ 7:0] w_cap_gray = w_cap_red[7:2] + w_cap_red[7:5] + 
                             w_cap_green[7:1] + w_cap_green[7:4] +
                             w_cap_blue[7:4] + w_cap_blue[7:5];
    /****************************************************************************************/
    // gauss filter
    localparam integer gauss_filter_mul[3*3-1:0] = 
        { 1, 2, 1,
          2, 4, 2,
          1, 2, 1};
    localparam integer gauss_filter_div[3*3-1:0] = 
         {16,16,16,
          16,16,16,
          16,16,16};
    // localparam integer gauss_filter_mul[5*5-1:0] = 
    //     { 1, 4, 6, 4, 1,
    //       4,16,24,16, 4,
    //      16,24,36,24,16,
    //       4,16,24,16, 4,
    //       1, 4, 6, 4, 1};
    // localparam integer gauss_filter_div[5*5-1:0] = 
    //      {256,256,256,256,256,
    //       256,256,256,256,256,
    //       256,256,256,256,256,
    //       256,256,256,256,256,
    //       256,256,256,256,256};

    wire [11:0] w_filtered_addr;
    wire [ 5:0] w_filtered_addr_x = w_filtered_addr[ 5:0];
    wire [ 5:0] w_filtered_addr_y = w_filtered_addr[11:6];
    wire [ 7:0] w_filtered_data;
    wire        w_filtered_en;

    conv_filter#(8, 64, 3, gauss_filter_mul, gauss_filter_div) 
    gauss_filter(CLK, RST, w_cap_gray, w_cap_addr, w_cap_en, w_filtered_data, w_filtered_addr, w_filtered_en);

    /****************************************************************************************/
    // ST 7789 output
    wire [15:0] w_color_mem_data = {w_filtered_data[7:3], w_filtered_data[7:2], w_filtered_data[7:3]};

    reg  [15:0] color_mem [0:2**12-1];
    wire [15:0] w_st7789_data, w_st7789_addr;
    reg  [15:0] r_st7789_data, r_st7789_addr;
    always @(posedge CLK) begin
        if(w_cap_en) color_mem[w_filtered_addr] <= w_color_mem_data;
        r_st7789_addr <= w_st7789_addr;
        r_st7789_data <= color_mem[{r_st7789_addr[15:10], r_st7789_addr[7:2]}];
    end

    assign w_st7789_data = r_st7789_data;

    m_st7789_disp stdisp0 (CLK, st7789_SDA, st7789_SCL, st7789_DC, st7789_RES, w_st7789_addr, w_st7789_data, 2'b00);

    /****************************************************************************************/
    // binarize 
    wire [ 7:0] thresh;
    otsu#(8,5) otus_0(CLK, w_filtered_data, {w_filtered_addr_y[5:1], w_filtered_addr_x[5:1]}, w_filtered_en, thresh);
    wire w_filtered_bin = w_filtered_data > thresh;

    /****************************************************************************************/
    // trim & resize
    localparam L = 48;
    wire [ 5:0] w_center_x, w_center_y;

    wire [ 1:0] debug;
    center_point#(6,1) center_point_0(CLK, RST, w_filtered_addr_x, w_filtered_addr_y, !w_filtered_bin, w_filtered_en, w_center_x, w_center_y, debug);

    wire [ 5:0] w_vaddr_x_new = w_filtered_addr_x - w_center_x + L/2;
    wire [ 5:0] w_vaddr_y_new = w_filtered_addr_y - w_center_y + L/2;

    wire w_vaddr_new_en = w_filtered_en & (w_vaddr_x_new < L) & (w_vaddr_y_new < L);

    wire [ 4:0] w_vaddr_x_resized, w_vaddr_y_resized;
    XtoNbit#(L, 5) divLxto32 (w_vaddr_x_new, w_vaddr_x_resized);
    XtoNbit#(L, 5) divLyto32 (w_vaddr_y_new, w_vaddr_y_resized);

    /****************************************************************************************/
    // display SSD1306
    wire [11:0] w_vaddr_r = w_filtered_addr;
    wire        w_ven_r   = w_filtered_en;
    wire        w_idata_r = w_filtered_bin;

    wire [11:0] w_vaddr_l = {1'b0, w_vaddr_y_resized, 1'b0, w_vaddr_x_resized};
    wire        w_ven_l   = w_vaddr_new_en;
    wire        w_idata_l = w_filtered_bin;

    m_ssd1306_disp_separate ssddisp0 (CLK, CLK, SDA, SCL, w_vaddr_r, w_idata_r, w_ven_r, w_vaddr_l, w_idata_l, w_ven_l);
    
    /****************************************************************************************/
    // write CNN arg ram
    reg         r_nn_0_resized_sw = 0;
    reg         r_nn_0_bin_sw = 0;
    reg  [ 7:0] nn_0_bram [0:1023];
    wire [ 7:0] w_nn_0_bram_data = r_nn_0_bin_sw     ? {8{w_filtered_bin}} : w_filtered_data;
    wire [ 9:0] w_nn_0_bram_addr = r_nn_0_resized_sw ? {w_vaddr_y_resized, w_vaddr_x_resized} : {w_filtered_addr_y[5:1], w_filtered_addr_x[5:1]};
    wire        w_nn_0_bram_en   = r_nn_0_resized_sw ?  w_vaddr_new_en : w_filtered_en;
    always @(posedge CLK) begin
        if(w_nn_0_bram_en) nn_0_bram[w_nn_0_bram_addr] <= w_nn_0_bram_data;
    end
    /****************************************************************************************/
    // arg[0] = WE, arg[1] = start, arg[2] = resize sw, arg[3] = binarized
    reg         r_nn_0_start = 0;
    reg  [ 7:0] r_nn_0_idata = 0;

    wire        w_nn_0_idle;
    wire [ 9:0] w_nn_0_raddr;
    wire [ 7:0] w_nn_0_idata = r_nn_0_idata;
    wire [31:0] w_nn_0_odata;
    wire        w_nn_0_en;

    always @(posedge CLK) begin
        if(nn_0_arg[0]) begin
            r_nn_0_start      <= w_nn_0_idle & nn_0_arg[1] ? 1 : 0;
            r_nn_0_resized_sw <= nn_0_arg[2] ? 1 : 0;
            r_nn_0_bin_sw     <= nn_0_arg[3] ? 1 : 0;
        end
        r_nn_0_idata <= nn_0_bram[w_nn_0_raddr];
        nn_0_en <= w_nn_0_en;
        nn_0_data <= w_nn_0_en ? w_nn_0_odata : nn_0_data;
    end

    QuantCNN nn_0 (
        .ap_clk(CLK), 
        .ap_rst(RST),  
        .ap_start(r_nn_0_start),
        .ap_done(), 
        .ap_idle(w_nn_0_idle), 
        .ap_ready(),
        .t_in_img_V_address0(w_nn_0_raddr), 
        .t_in_img_V_ce0(), 
        .t_in_img_V_q0(w_nn_0_idata),
        .predict_num(w_nn_0_odata), 
        .predict_num_ap_vld(w_nn_0_en)
    );

endmodule

module XtoNbit#(parameter X=320,parameter N=6)(in, out);
    input  wire [$clog2(X)-1:0] in;
    output reg  [N-1        :0] out;

    integer i;
    always @(*) begin
        out = {N{1'b1}};
        for(i=0; i<X; i=i+1) begin
        if(in==i) out = (i << N) / X;
        end
    end
endmodule

module gamma_convert#(parameter W = 8, parameter G = 1.5)(in, out);
    input  wire [W-1:0] in;
    output reg  [W-1:0] out;

    integer i;
    always @(*) begin
        out = {W{1'b0}};
        for(i=0; i<2**W; i=i+1) begin
        if(in==i) out = $floor($pow(($itor(i)/(2**W-1)), 1/G) * (2**W-1));
        end
    end

endmodule
