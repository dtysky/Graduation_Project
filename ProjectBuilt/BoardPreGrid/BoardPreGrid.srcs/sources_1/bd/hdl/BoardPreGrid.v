//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Fri Apr 10 16:55:52 2015
//Host        : Dtysky running 64-bit major release  (build 9200)
//Command     : generate_target BoardPreGrid.bd
//Design      : BoardPreGrid
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BoardPreGrid
   (I2C_SCLK,
    I2C_SDAT,
    clk_in1,
    d,
    href,
    pclk,
    rst_n,
    sel,
    vga_blue,
    vga_green,
    vga_hsync,
    vga_red,
    vga_vsync,
    vsync,
    xclk);
  output I2C_SCLK;
  inout I2C_SDAT;
  input clk_in1;
  input [7:0]d;
  input href;
  input pclk;
  input rst_n;
  input sel;
  output [4:0]vga_blue;
  output [5:0]vga_green;
  output vga_hsync;
  output [4:0]vga_red;
  output vga_vsync;
  input vsync;
  output xclk;

  wire [7:0]Bram8x320x240_0_doutb;
  wire [7:0]Bram8x320x240_1_doutb;
  wire [7:0]Bram8x320x240_2_doutb;
  wire [23:0]Color16to24_0_rgb24;
  wire [23:0]ColorGray2Rgb_0_rgb24;
  wire [15:0]ColorRgb2Vga_0_vga;
  wire [7:0]Frame_0_out_data;
  wire Frame_0_out_enable;
  wire [16:0]Frame_0_ram_addr;
  wire [7:0]Frame_1_out_data;
  wire Frame_1_out_enable;
  wire [16:0]Frame_1_ram_addr;
  wire IICctrl_0_I2C_SCLK;
  wire [7:0]Mux2_0_o;
  wire Net;
  wire [7:0]RGB2GRAY_0_out_data;
  wire [16:0]camCap_0_addr;
  wire [15:0]camCap_0_dout;
  wire camCap_0_wclk;
  wire camCap_0_we;
  wire clk_in1_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire [7:0]d_1;
  wire href_1;
  wire pclk_1;
  wire rst_n_1;
  wire sel_1;
  wire [16:0]vga_readBRAM_0_frame_addr;
  wire [4:0]vga_readBRAM_0_vga_blue;
  wire [5:0]vga_readBRAM_0_vga_green;
  wire vga_readBRAM_0_vga_hsync;
  wire [4:0]vga_readBRAM_0_vga_red;
  wire vga_readBRAM_0_vga_vsync;
  wire vsync_1;

  assign I2C_SCLK = IICctrl_0_I2C_SCLK;
  assign clk_in1_1 = clk_in1;
  assign d_1 = d[7:0];
  assign href_1 = href;
  assign pclk_1 = pclk;
  assign rst_n_1 = rst_n;
  assign sel_1 = sel;
  assign vga_blue[4:0] = vga_readBRAM_0_vga_blue;
  assign vga_green[5:0] = vga_readBRAM_0_vga_green;
  assign vga_hsync = vga_readBRAM_0_vga_hsync;
  assign vga_red[4:0] = vga_readBRAM_0_vga_red;
  assign vga_vsync = vga_readBRAM_0_vga_vsync;
  assign vsync_1 = vsync;
  assign xclk = clk_wiz_0_clk_out2;
BoardPreGrid_Bram8x320x240_0_1 Bram8x320x240_0
       (.addra(camCap_0_addr),
        .addrb(Frame_0_ram_addr),
        .clka(camCap_0_wclk),
        .clkb(clk_wiz_0_clk_out1),
        .dina(RGB2GRAY_0_out_data),
        .doutb(Bram8x320x240_0_doutb),
        .wea(camCap_0_we));
BoardPreGrid_Bram8x320x240_0_2 Bram8x320x240_1
       (.addra(Frame_1_ram_addr),
        .addrb(vga_readBRAM_0_frame_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out2),
        .dina(Frame_1_out_data),
        .doutb(Bram8x320x240_1_doutb),
        .wea(Frame_1_out_enable));
BoardPreGrid_Bram8x320x240_2_0 Bram8x320x240_2
       (.addra(camCap_0_addr),
        .addrb(vga_readBRAM_0_frame_addr),
        .clka(camCap_0_wclk),
        .clkb(clk_wiz_0_clk_out2),
        .dina(RGB2GRAY_0_out_data),
        .doutb(Bram8x320x240_2_doutb),
        .wea(camCap_0_we));
BoardPreGrid_Color16to24_0_1 Color16to24_0
       (.rgb16(camCap_0_dout),
        .rgb24(Color16to24_0_rgb24));
BoardPreGrid_ColorGray2Rgb_0_1 ColorGray2Rgb_0
       (.gray(Mux2_0_o),
        .rgb24(ColorGray2Rgb_0_rgb24));
BoardPreGrid_ColorRgb2Vga_0_1 ColorRgb2Vga_0
       (.rgb24(ColorGray2Rgb_0_rgb24),
        .vga(ColorRgb2Vga_0_vga));
BoardPreGrid_Frame_0_1 Frame_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Bram8x320x240_0_doutb),
        .in_enable(rst_n_1),
        .out_data(Frame_0_out_data),
        .out_enable(Frame_0_out_enable),
        .ram_addr(Frame_0_ram_addr),
        .rst_n(rst_n_1));
BoardPreGrid_Frame_1_1 Frame_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Frame_0_out_data),
        .in_enable(Frame_0_out_enable),
        .out_data(Frame_1_out_data),
        .out_enable(Frame_1_out_enable),
        .ram_addr(Frame_1_ram_addr),
        .rst_n(rst_n_1));
BoardPreGrid_IICctrl_0_0 IICctrl_0
       (.I2C_SCLK(IICctrl_0_I2C_SCLK),
        .I2C_SDAT(I2C_SDAT),
        .iCLK(clk_wiz_0_clk_out2),
        .iRST_N(rst_n_1));
BoardPreGrid_Mux2_0_0 Mux2_0
       (.i0(Bram8x320x240_2_doutb),
        .i1(Bram8x320x240_1_doutb),
        .o(Mux2_0_o),
        .sel(sel_1));
BoardPreGrid_RGB2GRAY_0_1 RGB2GRAY_0
       (.in_data(Color16to24_0_rgb24),
        .in_enable(rst_n_1),
        .out_data(RGB2GRAY_0_out_data));
BoardPreGrid_camCap_0_1 camCap_0
       (.addr(camCap_0_addr),
        .d(d_1),
        .dout(camCap_0_dout),
        .href(href_1),
        .pclk(pclk_1),
        .vsync(vsync_1),
        .wclk(camCap_0_wclk),
        .we(camCap_0_we));
BoardPreGrid_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2));
BoardPreGrid_vga_readBRAM_0_1 vga_readBRAM_0
       (.clk25(clk_wiz_0_clk_out2),
        .frame_addr(vga_readBRAM_0_frame_addr),
        .vga_blue(vga_readBRAM_0_vga_blue),
        .vga_green(vga_readBRAM_0_vga_green),
        .vga_hsync(vga_readBRAM_0_vga_hsync),
        .vga_in(ColorRgb2Vga_0_vga),
        .vga_red(vga_readBRAM_0_vga_red),
        .vga_vsync(vga_readBRAM_0_vga_vsync));
endmodule
