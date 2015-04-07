//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Wed Apr 08 02:08:53 2015
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
    vsync);
  output I2C_SCLK;
  inout I2C_SDAT;
  input clk_in1;
  input [7:0]d;
  input href;
  input pclk;
  input rst_n;
  input sel;
  output [3:0]vga_blue;
  output [3:0]vga_green;
  output vga_hsync;
  output [3:0]vga_red;
  output vga_vsync;
  input vsync;

  wire [8:0]BoardPreGridInit_0_dilation0;
  wire [24:0]BoardPreGridInit_0_erosion0;
  wire [8:0]BoardPreGridInit_0_erosion1;
  wire [8:0]BoardPreGridInit_0_erosion2;
  wire [8:0]BoardPreGridInit_0_erosion3;
  wire [8:0]BoardPreGridInit_0_erosion4;
  wire [7:0]BoardPreGridInit_0_harris_th;
  wire [8:0]BoardPreGridInit_0_match0;
  wire BoardPreGridInit_0_mode_dilation;
  wire BoardPreGridInit_0_mode_erosion;
  wire BoardPreGridInit_0_rst_all_n;
  wire Bram1x320x240_0_doutb;
  wire Bram1x320x240_1_doutb;
  wire Bram1x320x240_2_doutb;
  wire [7:0]Bram8x320x240_0_doutb;
  wire [23:0]Color16to24_0_rgb24;
  wire [23:0]ColorBin2Rgb_0_rgb24;
  wire [11:0]ColorRgb2Vga_0_vga;
  wire [7:0]DataDelay_0_out_data;
  wire ErosionDilationBin_0_out_data;
  wire ErosionDilationBin_0_out_enable;
  wire ErosionDilationBin_1_out_data;
  wire ErosionDilationBin_1_out_enable;
  wire ErosionDilationBin_2_out_data;
  wire ErosionDilationBin_2_out_enable;
  wire ErosionDilationBin_3_out_data;
  wire ErosionDilationBin_4_out_data;
  wire ErosionDilationBin_5_out_data;
  wire [7:0]Frame_0_out_data;
  wire Frame_0_out_enable;
  wire [16:0]Frame_0_ram_addr;
  wire [0:0]Frame_1_out_data;
  wire Frame_1_out_enable;
  wire [16:0]Frame_1_ram_addr;
  wire [0:0]Frame_2_out_data;
  wire Frame_2_out_enable;
  wire [16:0]Frame_2_ram_addr;
  wire [0:0]Frame_3_out_data;
  wire Frame_3_out_enable;
  wire [16:0]Frame_3_ram_addr;
  wire [0:0]Frame_4_out_data;
  wire Frame_4_out_enable;
  wire [16:0]Frame_4_ram_addr;
  wire [0:0]Frame_5_out_data;
  wire Frame_5_out_enable;
  wire [16:0]Frame_5_ram_addr;
  wire Harris_0_out_data;
  wire Harris_0_out_enable;
  wire IICctrl_0_I2C_SCLK;
  wire MatchTemplateBin_0_out_data;
  wire [7:0]MeanFitter_0_out_data;
  wire MeanFitter_0_out_enable;
  wire [0:0]Mux2_0_o;
  wire [0:0]Mux2_1_o;
  wire [16:0]Mux2_2_o;
  wire Net;
  wire Or8_0_o;
  wire [7:0]RGB2GRAY_0_out_data;
  wire [2:0]Rows1x512_0_out_data;
  wire Rows1x512_0_out_enable;
  wire [4:0]Rows1x512_1_out_data;
  wire Rows1x512_1_out_enable;
  wire [2:0]Rows1x512_2_out_data;
  wire Rows1x512_2_out_enable;
  wire [23:0]Rows8x512_0_out_data;
  wire Rows8x512_0_out_enable;
  wire [23:0]Rows8x512_1_out_data;
  wire Rows8x512_1_out_enable;
  wire [71:0]Window_0_out_data;
  wire Window_0_out_enable;
  wire [71:0]Window_1_out_data;
  wire Window_1_out_enable;
  wire [8:0]Window_2_out_data;
  wire Window_2_out_enable;
  wire [24:0]Window_3_out_data;
  wire Window_3_out_enable;
  wire [8:0]Window_4_out_data;
  wire Window_4_out_enable;
  wire [16:0]camCap_0_addr;
  wire [15:0]camCap_0_dout;
  wire camCap_0_wclk;
  wire camCap_0_we;
  wire clk_in1_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_locked;
  wire [7:0]d_1;
  wire href_1;
  wire pclk_1;
  wire rst_n_1;
  wire sel_1;
  wire [16:0]vga_readBRAM_0_frame_addr;
  wire [3:0]vga_readBRAM_0_vga_blue;
  wire [3:0]vga_readBRAM_0_vga_green;
  wire vga_readBRAM_0_vga_hsync;
  wire [3:0]vga_readBRAM_0_vga_red;
  wire vga_readBRAM_0_vga_vsync;
  wire vsync_1;
  wire [0:0]xlconstant_3_dout;

  assign I2C_SCLK = IICctrl_0_I2C_SCLK;
  assign clk_in1_1 = clk_in1;
  assign d_1 = d[7:0];
  assign href_1 = href;
  assign pclk_1 = pclk;
  assign rst_n_1 = rst_n;
  assign sel_1 = sel;
  assign vga_blue[3:0] = vga_readBRAM_0_vga_blue;
  assign vga_green[3:0] = vga_readBRAM_0_vga_green;
  assign vga_hsync = vga_readBRAM_0_vga_hsync;
  assign vga_red[3:0] = vga_readBRAM_0_vga_red;
  assign vga_vsync = vga_readBRAM_0_vga_vsync;
  assign vsync_1 = vsync;
BoardPreGrid_BoardPreGridInit_0_0 BoardPreGridInit_0
       (.clk(clk_wiz_0_clk_out1),
        .dilation0(BoardPreGridInit_0_dilation0),
        .erosion0(BoardPreGridInit_0_erosion0),
        .erosion1(BoardPreGridInit_0_erosion1),
        .erosion2(BoardPreGridInit_0_erosion2),
        .erosion3(BoardPreGridInit_0_erosion3),
        .erosion4(BoardPreGridInit_0_erosion4),
        .harris_th(BoardPreGridInit_0_harris_th),
        .match0(BoardPreGridInit_0_match0),
        .mode_dilation(BoardPreGridInit_0_mode_dilation),
        .mode_erosion(BoardPreGridInit_0_mode_erosion),
        .pll_locked(clk_wiz_0_locked),
        .rst_all_n(BoardPreGridInit_0_rst_all_n),
        .rst_n(rst_n_1));
BoardPreGrid_Bram1x320x240_0_0 Bram1x320x240_0
       (.addra(Frame_1_ram_addr),
        .addrb(Frame_2_ram_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out1),
        .dina(Frame_1_out_data),
        .doutb(Bram1x320x240_0_doutb),
        .wea(Frame_1_out_enable));
BoardPreGrid_Bram1x320x240_1_0 Bram1x320x240_1
       (.addra(Mux2_2_o),
        .addrb(Frame_5_ram_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out1),
        .dina(Mux2_1_o),
        .doutb(Bram1x320x240_1_doutb),
        .wea(Mux2_0_o));
BoardPreGrid_Bram1x320x240_2_0 Bram1x320x240_2
       (.addra(Mux2_2_o),
        .addrb(vga_readBRAM_0_frame_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out1),
        .dina(Mux2_1_o),
        .doutb(Bram1x320x240_2_doutb),
        .wea(Mux2_0_o));
BoardPreGrid_Bram8x320x240_0_0 Bram8x320x240_0
       (.addra(camCap_0_addr),
        .addrb(Frame_0_ram_addr),
        .clka(camCap_0_wclk),
        .clkb(clk_wiz_0_clk_out1),
        .dina(RGB2GRAY_0_out_data),
        .doutb(Bram8x320x240_0_doutb),
        .wea(camCap_0_we));
BoardPreGrid_Color16to24_0_0 Color16to24_0
       (.rgb16(camCap_0_dout),
        .rgb24(Color16to24_0_rgb24));
BoardPreGrid_ColorBin2Rgb_0_0 ColorBin2Rgb_0
       (.b(Bram1x320x240_2_doutb),
        .rgb24(ColorBin2Rgb_0_rgb24));
BoardPreGrid_ColorRgb2Vga_0_0 ColorRgb2Vga_0
       (.rgb24(ColorBin2Rgb_0_rgb24),
        .vga(ColorRgb2Vga_0_vga));
BoardPreGrid_DataDelay_0_0 DataDelay_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data({MatchTemplateBin_0_out_data,MatchTemplateBin_0_out_data,MatchTemplateBin_0_out_data,MatchTemplateBin_0_out_data,MatchTemplateBin_0_out_data,MatchTemplateBin_0_out_data,MatchTemplateBin_0_out_data,MatchTemplateBin_0_out_data}),
        .out_data(DataDelay_0_out_data));
BoardPreGrid_ErosionDilationBin_0_0 ErosionDilationBin_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_2_out_data),
        .in_enable(Window_2_out_enable),
        .mode(BoardPreGridInit_0_mode_dilation),
        .out_data(ErosionDilationBin_0_out_data),
        .out_enable(ErosionDilationBin_0_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n),
        .template(BoardPreGridInit_0_dilation0));
BoardPreGrid_ErosionDilationBin_1_0 ErosionDilationBin_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_3_out_data[8:0]),
        .in_enable(Window_3_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_1_out_data),
        .out_enable(ErosionDilationBin_1_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n),
        .template(BoardPreGridInit_0_erosion0[8:0]));
BoardPreGrid_ErosionDilationBin_2_0 ErosionDilationBin_2
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_2_out_data),
        .out_enable(ErosionDilationBin_2_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n),
        .template(BoardPreGridInit_0_erosion1));
BoardPreGrid_ErosionDilationBin_3_0 ErosionDilationBin_3
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_3_out_data),
        .rst_n(BoardPreGridInit_0_rst_all_n),
        .template(BoardPreGridInit_0_erosion2));
BoardPreGrid_ErosionDilationBin_4_0 ErosionDilationBin_4
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_4_out_data),
        .rst_n(BoardPreGridInit_0_rst_all_n),
        .template(BoardPreGridInit_0_erosion3));
BoardPreGrid_ErosionDilationBin_5_0 ErosionDilationBin_5
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_5_out_data),
        .rst_n(BoardPreGridInit_0_rst_all_n),
        .template(BoardPreGridInit_0_erosion4));
BoardPreGrid_Frame_0_0 Frame_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Bram8x320x240_0_doutb),
        .in_enable(BoardPreGridInit_0_rst_all_n),
        .out_data(Frame_0_out_data),
        .out_enable(Frame_0_out_enable),
        .ram_addr(Frame_0_ram_addr),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Frame_1_0 Frame_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Harris_0_out_data),
        .in_enable(Harris_0_out_enable),
        .out_data(Frame_1_out_data),
        .out_enable(Frame_1_out_enable),
        .ram_addr(Frame_1_ram_addr),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Frame_2_0 Frame_2
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Bram1x320x240_0_doutb),
        .in_enable(BoardPreGridInit_0_rst_all_n),
        .out_data(Frame_2_out_data),
        .out_enable(Frame_2_out_enable),
        .ram_addr(Frame_2_ram_addr),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Frame_3_0 Frame_3
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Or8_0_o),
        .in_enable(ErosionDilationBin_2_out_enable),
        .out_data(Frame_3_out_data),
        .out_enable(Frame_3_out_enable),
        .ram_addr(Frame_3_ram_addr),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Frame_4_0 Frame_4
       (.clk(clk_wiz_0_clk_out1),
        .in_data(ErosionDilationBin_1_out_data),
        .in_enable(ErosionDilationBin_1_out_enable),
        .out_data(Frame_4_out_data),
        .out_enable(Frame_4_out_enable),
        .ram_addr(Frame_4_ram_addr),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Frame_5_0 Frame_5
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Bram1x320x240_1_doutb),
        .in_enable(BoardPreGridInit_0_rst_all_n),
        .out_data(Frame_5_out_data),
        .out_enable(Frame_5_out_enable),
        .ram_addr(Frame_5_ram_addr),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Harris_0_0 Harris_0
       (.diff_th(BoardPreGridInit_0_harris_th),
        .in_data(Window_1_out_data),
        .in_enable(Window_1_out_enable),
        .out_data(Harris_0_out_data),
        .out_enable(Harris_0_out_enable));
BoardPreGrid_IICctrl_0_0 IICctrl_0
       (.I2C_SCLK(IICctrl_0_I2C_SCLK),
        .I2C_SDAT(I2C_SDAT),
        .iCLK(clk_wiz_0_clk_out2));
BoardPreGrid_MatchTemplateBin_0_0 MatchTemplateBin_0
       (.in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .out_data(MatchTemplateBin_0_out_data),
        .template(BoardPreGridInit_0_match0));
BoardPreGrid_MeanFitter_0_0 MeanFitter_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_0_out_data),
        .in_enable(Window_0_out_enable),
        .out_data(MeanFitter_0_out_data),
        .out_enable(MeanFitter_0_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Mux2_0_0 Mux2_0
       (.i0(Frame_4_out_enable),
        .i1(Frame_3_out_enable),
        .o(Mux2_0_o),
        .sel(sel_1));
BoardPreGrid_Mux2_1_0 Mux2_1
       (.i0(Frame_4_out_data),
        .i1(Frame_3_out_data),
        .o(Mux2_1_o),
        .sel(sel_1));
BoardPreGrid_Mux2_2_0 Mux2_2
       (.i0(Frame_4_ram_addr),
        .i1(Frame_3_ram_addr),
        .o(Mux2_2_o),
        .sel(sel_1));
BoardPreGrid_Or8_0_0 Or8_0
       (.i0(ErosionDilationBin_2_out_data),
        .i1(ErosionDilationBin_3_out_data),
        .i2(DataDelay_0_out_data[0]),
        .i3(ErosionDilationBin_4_out_data),
        .i4(ErosionDilationBin_5_out_data),
        .i5(xlconstant_3_dout),
        .i6(xlconstant_3_dout),
        .i7(xlconstant_3_dout),
        .o(Or8_0_o));
BoardPreGrid_RGB2GRAY_0_0 RGB2GRAY_0
       (.in_data(Color16to24_0_rgb24),
        .in_enable(BoardPreGridInit_0_rst_all_n),
        .out_data(RGB2GRAY_0_out_data));
BoardPreGrid_Rows1x512_0_0 Rows1x512_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Frame_2_out_data),
        .in_enable(Frame_2_out_enable),
        .out_data(Rows1x512_0_out_data),
        .out_enable(Rows1x512_0_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Rows1x512_1_0 Rows1x512_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(ErosionDilationBin_0_out_data),
        .in_enable(ErosionDilationBin_0_out_enable),
        .out_data(Rows1x512_1_out_data),
        .out_enable(Rows1x512_1_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Rows1x512_2_0 Rows1x512_2
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Frame_5_out_data),
        .in_enable(Frame_5_out_enable),
        .out_data(Rows1x512_2_out_data),
        .out_enable(Rows1x512_2_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Rows8x512_0_0 Rows8x512_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Frame_0_out_data),
        .in_enable(Frame_0_out_enable),
        .out_data(Rows8x512_0_out_data),
        .out_enable(Rows8x512_0_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Rows8x512_1_0 Rows8x512_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(MeanFitter_0_out_data),
        .in_enable(MeanFitter_0_out_enable),
        .out_data(Rows8x512_1_out_data),
        .out_enable(Rows8x512_1_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Window_0_0 Window_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows8x512_0_out_data),
        .in_enable(Rows8x512_0_out_enable),
        .out_data(Window_0_out_data),
        .out_enable(Window_0_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Window_1_0 Window_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows8x512_1_out_data),
        .in_enable(Rows8x512_1_out_enable),
        .out_data(Window_1_out_data),
        .out_enable(Window_1_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Window_2_0 Window_2
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows1x512_0_out_data),
        .in_enable(Rows1x512_0_out_enable),
        .out_data(Window_2_out_data),
        .out_enable(Window_2_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Window_3_0 Window_3
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows1x512_1_out_data),
        .in_enable(Rows1x512_1_out_enable),
        .out_data(Window_3_out_data),
        .out_enable(Window_3_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_Window_4_0 Window_4
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows1x512_2_out_data),
        .in_enable(Rows1x512_2_out_enable),
        .out_data(Window_4_out_data),
        .out_enable(Window_4_out_enable),
        .rst_n(BoardPreGridInit_0_rst_all_n));
BoardPreGrid_camCap_0_0 camCap_0
       (.addr(camCap_0_addr),
        .d(d_1),
        .dout(camCap_0_dout),
        .href(href_1),
        .pclk(pclk_1),
        .vsync(vsync_1),
        .wclk(camCap_0_wclk),
        .we(camCap_0_we));
BoardPreGrid_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked));
BoardPreGrid_vga_readBRAM_0_0 vga_readBRAM_0
       (.clk25(clk_wiz_0_clk_out2),
        .frame_addr(vga_readBRAM_0_frame_addr),
        .vga_blue(vga_readBRAM_0_vga_blue),
        .vga_green(vga_readBRAM_0_vga_green),
        .vga_hsync(vga_readBRAM_0_vga_hsync),
        .vga_in(ColorRgb2Vga_0_vga),
        .vga_red(vga_readBRAM_0_vga_red),
        .vga_vsync(vga_readBRAM_0_vga_vsync));
BoardPreGrid_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule
