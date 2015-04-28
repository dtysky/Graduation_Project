//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Thu Apr 16 15:40:27 2015
//Host        : Dtysky running 64-bit major release  (build 9200)
//Command     : generate_target Gobang.bd
//Design      : Gobang
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Gobang
   (I2C_SCLK,
    I2C_SDAT,
    clk_in1,
    d,
    href,
    pclk,
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
  output [4:0]vga_blue;
  output [5:0]vga_green;
  output vga_hsync;
  output [4:0]vga_red;
  output vga_vsync;
  input vsync;
  output xclk;

  wire [7:0]BoardInit_AXI_0_black_th;
  wire [8:0]BoardInit_AXI_0_bottom;
  wire [24:0]BoardInit_AXI_0_dilation0;
  wire [8:0]BoardInit_AXI_0_erosion0;
  wire [24:0]BoardInit_AXI_0_erosion1;
  wire [8:0]BoardInit_AXI_0_erosion2;
  wire [8:0]BoardInit_AXI_0_erosion3;
  wire [8:0]BoardInit_AXI_0_erosion4;
  wire [8:0]BoardInit_AXI_0_erosion5;
  wire [7:0]BoardInit_AXI_0_harris_th;
  wire [8:0]BoardInit_AXI_0_left;
  wire [8:0]BoardInit_AXI_0_match0;
  wire BoardInit_AXI_0_mode_dilation;
  wire [8:0]BoardInit_AXI_0_right;
  wire BoardInit_AXI_0_rst_all_n;
  wire [31:0]BoardInit_AXI_0_sels;
  wire [8:0]BoardInit_AXI_0_top;
  wire [7:0]BoardInit_AXI_0_white_th;
  wire BoardPreGridInit_0_mode_erosion;
  wire Bram1x320x240_0_doutb;
  wire Bram1x320x240_1_doutb;
  wire Bram1x320x240_2_doutb;
  wire Bram1x320x240_3_doutb;
  wire Bram1x320x240_4_doutb;
  wire [7:0]Bram8x320x240_0_doutb;
  wire [7:0]Bram8x320x240_1_doutb;
  wire [23:0]Color16to24_0_rgb24;
  wire [23:0]ColorBin2Rgb_0_rgb24;
  wire [23:0]ColorBin2Rgb_1_rgb24;
  wire [23:0]ColorBin2Rgb_2_rgb24;
  wire [23:0]ColorGray2Rgb_0_rgb24;
  wire [15:0]ColorRgb2Vga_0_vga;
  wire [7:0]Crop_0_out_data;
  wire Crop_0_out_enable;
  wire [1:0]DataCombin2_0_o;
  wire [0:0]DataDelay_0_out_data;
  wire [0:0]DataSplit4_0_o2;
  wire [0:0]DataSplit4_0_o3;
  wire [3:0]DataWidthConvert_0_o;
  wire ErosionDilationBin_0_out_data;
  wire ErosionDilationBin_0_out_enable;
  wire ErosionDilationBin_1_out_data;
  wire ErosionDilationBin_1_out_enable;
  wire ErosionDilationBin_2_out_data;
  wire ErosionDilationBin_2_out_enable;
  wire ErosionDilationBin_3_out_data;
  wire ErosionDilationBin_4_out_data;
  wire ErosionDilationBin_5_out_data;
  wire ErosionDilationBin_6_out_data;
  wire ErosionDilationBin_6_out_enable;
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
  wire [7:0]Frame_6_out_data;
  wire Frame_6_out_enable;
  wire [16:0]Frame_6_ram_addr;
  wire [7:0]Frame_7_out_data;
  wire Frame_7_out_enable;
  wire [16:0]Frame_7_ram_addr;
  wire [7:0]Frame_8_out_data;
  wire Frame_8_out_enable;
  wire [16:0]Frame_8_ram_addr;
  wire GND_1;
  wire GRAY2BIN_0_out_data;
  wire GRAY2BIN_0_out_enable;
  wire GRAY2BIN_1_out_data;
  wire GRAY2BIN_1_out_enable;
  wire Harris_0_out_data;
  wire Harris_0_out_enable;
  wire IICctrl_0_I2C_SCLK;
  wire MatchTemplateBin_0_out_data;
  wire [7:0]MeanFitter_0_out_data;
  wire MeanFitter_0_out_enable;
  wire [0:0]Mux2_0_o;
  wire [0:0]Mux2_1_o;
  wire [16:0]Mux2_2_o;
  wire [0:0]Mux2_3_o;
  wire [7:0]Mux2_4_o;
  wire [16:0]Mux2_5_o;
  wire [23:0]Mux4_0_o;
  wire Net;
  wire Or8_0_o;
  wire [7:0]RGB2GRAY_0_out_data;
  wire [2:0]Rows1x512_0_out_data;
  wire Rows1x512_0_out_enable;
  wire [4:0]Rows1x512_1_out_data;
  wire Rows1x512_1_out_enable;
  wire [2:0]Rows1x512_2_out_data;
  wire Rows1x512_2_out_enable;
  wire [4:0]Rows1x512_3_out_data;
  wire Rows1x512_3_out_enable;
  wire [39:0]Rows8x512_0_out_data;
  wire Rows8x512_0_out_enable;
  wire [23:0]Rows8x512_1_out_data;
  wire Rows8x512_1_out_enable;
  wire VCC_1;
  wire [199:0]Window_0_out_data;
  wire Window_0_out_enable;
  wire [71:0]Window_1_out_data;
  wire Window_1_out_enable;
  wire [8:0]Window_2_out_data;
  wire Window_2_out_enable;
  wire [24:0]Window_3_out_data;
  wire Window_3_out_enable;
  wire [8:0]Window_4_out_data;
  wire Window_4_out_enable;
  wire [24:0]Window_5_out_data;
  wire Window_5_out_enable;
  wire [6:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [6:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [16:0]camCap_0_addr;
  wire [15:0]camCap_0_dout;
  wire camCap_0_wclk;
  wire camCap_0_we;
  wire clk_in1_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_clk_out3;
  wire clk_wiz_0_locked;
  wire [7:0]d_1;
  wire href_1;
  wire out_enable;
  wire pclk_1;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire processing_system7_0_FCLK_RESET0_N;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [0:0]sel_1;
  wire [0:0]sel_2;
  wire [16:0]vga_readBRAM_0_frame_addr;
  wire [4:0]vga_readBRAM_0_vga_blue;
  wire [5:0]vga_readBRAM_0_vga_green;
  wire vga_readBRAM_0_vga_hsync;
  wire [4:0]vga_readBRAM_0_vga_red;
  wire vga_readBRAM_0_vga_vsync;
  wire vsync_1;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_3_dout;

  assign I2C_SCLK = IICctrl_0_I2C_SCLK;
  assign clk_in1_1 = clk_in1;
  assign d_1 = d[7:0];
  assign href_1 = href;
  assign pclk_1 = pclk;
  assign vga_blue[4:0] = vga_readBRAM_0_vga_blue;
  assign vga_green[5:0] = vga_readBRAM_0_vga_green;
  assign vga_hsync = vga_readBRAM_0_vga_hsync;
  assign vga_red[4:0] = vga_readBRAM_0_vga_red;
  assign vga_vsync = vga_readBRAM_0_vga_vsync;
  assign vsync_1 = vsync;
  assign xclk = clk_wiz_0_clk_out2;
Gobang_BoardInit_AXI_0_0 BoardInit_AXI_0
       (.black_th(BoardInit_AXI_0_black_th),
        .bottom(BoardInit_AXI_0_bottom),
        .dilation0(BoardInit_AXI_0_dilation0),
        .erosion0(BoardInit_AXI_0_erosion0),
        .erosion1(BoardInit_AXI_0_erosion1),
        .erosion2(BoardInit_AXI_0_erosion2),
        .erosion3(BoardInit_AXI_0_erosion3),
        .erosion4(BoardInit_AXI_0_erosion4),
        .erosion5(BoardInit_AXI_0_erosion5),
        .harris_th(BoardInit_AXI_0_harris_th),
        .left(BoardInit_AXI_0_left),
        .match0(BoardInit_AXI_0_match0),
        .mode_dilation(BoardInit_AXI_0_mode_dilation),
        .mode_erosion(BoardPreGridInit_0_mode_erosion),
        .pll_locked(clk_wiz_0_locked),
        .right(BoardInit_AXI_0_right),
        .rst_all_n(BoardInit_AXI_0_rst_all_n),
        .rst_n(xlconstant_0_dout),
        .s00_axi_aclk(clk_wiz_0_clk_out3),
        .s00_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .s00_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .s00_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s00_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s00_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .s00_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .s00_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s00_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s00_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s00_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s00_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s00_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s00_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s00_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s00_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s00_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s00_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s00_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s00_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .sels(BoardInit_AXI_0_sels),
        .top(BoardInit_AXI_0_top),
        .white_th(BoardInit_AXI_0_white_th));
Gobang_Bram1x320x240_0_0 Bram1x320x240_0
       (.addra(Frame_1_ram_addr),
        .addrb(Frame_2_ram_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out1),
        .dina(Frame_1_out_data),
        .doutb(Bram1x320x240_0_doutb),
        .wea(Frame_1_out_enable));
Gobang_Bram1x320x240_1_0 Bram1x320x240_1
       (.addra(Mux2_2_o),
        .addrb(Frame_5_ram_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out1),
        .dina(Mux2_1_o),
        .doutb(Bram1x320x240_1_doutb),
        .wea(Mux2_0_o));
Gobang_Bram1x320x240_2_0 Bram1x320x240_2
       (.addra(Mux2_2_o),
        .addrb(vga_readBRAM_0_frame_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out2),
        .dina(Mux2_1_o),
        .doutb(Bram1x320x240_2_doutb),
        .wea(Mux2_0_o));
Gobang_Bram1x320x240_3_0 Bram1x320x240_3
       (.addra(Frame_1_ram_addr),
        .addrb(vga_readBRAM_0_frame_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out2),
        .dina(Frame_1_out_data),
        .doutb(Bram1x320x240_3_doutb),
        .wea(Frame_1_out_enable));
Gobang_Bram1x320x240_4_1 Bram1x320x240_4
       (.addra(Mux2_5_o),
        .addrb(vga_readBRAM_0_frame_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out2),
        .dina(Mux2_4_o[0]),
        .doutb(Bram1x320x240_4_doutb),
        .wea(Mux2_3_o));
Gobang_Bram8x320x240_0_0 Bram8x320x240_0
       (.addra(camCap_0_addr),
        .addrb(Frame_0_ram_addr),
        .clka(camCap_0_wclk),
        .clkb(clk_wiz_0_clk_out1),
        .dina(RGB2GRAY_0_out_data),
        .doutb(Bram8x320x240_0_doutb),
        .wea(camCap_0_we));
Gobang_Bram8x320x240_1_0 Bram8x320x240_1
       (.addra(Frame_6_ram_addr),
        .addrb(vga_readBRAM_0_frame_addr),
        .clka(clk_wiz_0_clk_out1),
        .clkb(clk_wiz_0_clk_out2),
        .dina(Frame_6_out_data),
        .doutb(Bram8x320x240_1_doutb),
        .wea(Frame_6_out_enable));
Gobang_Color16to24_0_0 Color16to24_0
       (.rgb16(camCap_0_dout),
        .rgb24(Color16to24_0_rgb24));
Gobang_ColorBin2Rgb_0_0 ColorBin2Rgb_0
       (.b(Bram1x320x240_2_doutb),
        .rgb24(ColorBin2Rgb_0_rgb24));
Gobang_ColorBin2Rgb_1_0 ColorBin2Rgb_1
       (.b(Bram1x320x240_3_doutb),
        .rgb24(ColorBin2Rgb_1_rgb24));
Gobang_ColorBin2Rgb_2_0 ColorBin2Rgb_2
       (.b(Bram1x320x240_4_doutb),
        .rgb24(ColorBin2Rgb_2_rgb24));
Gobang_ColorGray2Rgb_0_0 ColorGray2Rgb_0
       (.gray(Bram8x320x240_1_doutb),
        .rgb24(ColorGray2Rgb_0_rgb24));
Gobang_ColorRgb2Vga_0_0 ColorRgb2Vga_0
       (.rgb24(Mux4_0_o),
        .vga(ColorRgb2Vga_0_vga));
Gobang_Crop_0_1 Crop_0
       (.bottom(BoardInit_AXI_0_bottom),
        .clk(clk_wiz_0_clk_out1),
        .in_data(MeanFitter_0_out_data),
        .in_enable(MeanFitter_0_out_enable),
        .left(BoardInit_AXI_0_left),
        .out_data(Crop_0_out_data),
        .out_enable(Crop_0_out_enable),
        .right(BoardInit_AXI_0_right),
        .rst_n(BoardInit_AXI_0_rst_all_n),
        .top(BoardInit_AXI_0_top));
Gobang_DataCombin2_0_0 DataCombin2_0
       (.i0(DataSplit4_0_o2),
        .i1(DataSplit4_0_o3),
        .o(DataCombin2_0_o));
Gobang_DataDelay_0_0 DataDelay_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(MatchTemplateBin_0_out_data),
        .out_data(DataDelay_0_out_data));
Gobang_DataSplit4_0_0 DataSplit4_0
       (.i(DataWidthConvert_0_o),
        .o0(sel_2),
        .o1(sel_1),
        .o2(DataSplit4_0_o2),
        .o3(DataSplit4_0_o3));
Gobang_DataWidthConvert_0_0 DataWidthConvert_0
       (.i(BoardInit_AXI_0_sels),
        .o(DataWidthConvert_0_o));
Gobang_ErosionDilationBin_0_0 ErosionDilationBin_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_5_out_data),
        .in_enable(Window_5_out_enable),
        .mode(BoardInit_AXI_0_mode_dilation),
        .out_data(ErosionDilationBin_0_out_data),
        .out_enable(ErosionDilationBin_0_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n),
        .template(BoardInit_AXI_0_dilation0));
Gobang_ErosionDilationBin_1_0 ErosionDilationBin_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_3_out_data),
        .in_enable(Window_3_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_1_out_data),
        .out_enable(ErosionDilationBin_1_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n),
        .template(BoardInit_AXI_0_erosion1));
Gobang_ErosionDilationBin_2_0 ErosionDilationBin_2
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_2_out_data),
        .out_enable(ErosionDilationBin_2_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n),
        .template(BoardInit_AXI_0_erosion5));
Gobang_ErosionDilationBin_3_0 ErosionDilationBin_3
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_3_out_data),
        .out_enable(out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n),
        .template(BoardInit_AXI_0_erosion2));
Gobang_ErosionDilationBin_4_0 ErosionDilationBin_4
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_4_out_data),
        .rst_n(BoardInit_AXI_0_rst_all_n),
        .template(BoardInit_AXI_0_erosion3));
Gobang_ErosionDilationBin_5_0 ErosionDilationBin_5
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_5_out_data),
        .rst_n(BoardInit_AXI_0_rst_all_n),
        .template(BoardInit_AXI_0_erosion4));
Gobang_ErosionDilationBin_6_0 ErosionDilationBin_6
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_2_out_data),
        .in_enable(Window_2_out_enable),
        .mode(BoardPreGridInit_0_mode_erosion),
        .out_data(ErosionDilationBin_6_out_data),
        .out_enable(ErosionDilationBin_6_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n),
        .template(BoardInit_AXI_0_erosion0));
Gobang_Frame_0_0 Frame_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Bram8x320x240_0_doutb),
        .in_enable(BoardInit_AXI_0_rst_all_n),
        .out_data(Frame_0_out_data),
        .out_enable(Frame_0_out_enable),
        .ram_addr(Frame_0_ram_addr),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Frame_1_0 Frame_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Harris_0_out_data),
        .in_enable(Harris_0_out_enable),
        .out_data(Frame_1_out_data),
        .out_enable(Frame_1_out_enable),
        .ram_addr(Frame_1_ram_addr),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Frame_2_0 Frame_2
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Bram1x320x240_0_doutb),
        .in_enable(BoardInit_AXI_0_rst_all_n),
        .out_data(Frame_2_out_data),
        .out_enable(Frame_2_out_enable),
        .ram_addr(Frame_2_ram_addr),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Frame_3_0 Frame_3
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Or8_0_o),
        .in_enable(ErosionDilationBin_2_out_enable),
        .out_data(Frame_3_out_data),
        .out_enable(Frame_3_out_enable),
        .ram_addr(Frame_3_ram_addr),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Frame_4_0 Frame_4
       (.clk(clk_wiz_0_clk_out1),
        .in_data(ErosionDilationBin_1_out_data),
        .in_enable(ErosionDilationBin_1_out_enable),
        .out_data(Frame_4_out_data),
        .out_enable(Frame_4_out_enable),
        .ram_addr(Frame_4_ram_addr),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Frame_5_0 Frame_5
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Bram1x320x240_1_doutb),
        .in_enable(BoardInit_AXI_0_rst_all_n),
        .out_data(Frame_5_out_data),
        .out_enable(Frame_5_out_enable),
        .ram_addr(Frame_5_ram_addr),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Frame_6_0 Frame_6
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Crop_0_out_data),
        .in_enable(Crop_0_out_enable),
        .out_data(Frame_6_out_data),
        .out_enable(Frame_6_out_enable),
        .ram_addr(Frame_6_ram_addr),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Frame_7_1 Frame_7
       (.clk(clk_wiz_0_clk_out1),
        .in_data({GRAY2BIN_0_out_data,GRAY2BIN_0_out_data,GRAY2BIN_0_out_data,GRAY2BIN_0_out_data,GRAY2BIN_0_out_data,GRAY2BIN_0_out_data,GRAY2BIN_0_out_data,GRAY2BIN_0_out_data}),
        .in_enable(GRAY2BIN_0_out_enable),
        .out_data(Frame_7_out_data),
        .out_enable(Frame_7_out_enable),
        .ram_addr(Frame_7_ram_addr),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Frame_8_1 Frame_8
       (.clk(clk_wiz_0_clk_out1),
        .in_data({GRAY2BIN_1_out_data,GRAY2BIN_1_out_data,GRAY2BIN_1_out_data,GRAY2BIN_1_out_data,GRAY2BIN_1_out_data,GRAY2BIN_1_out_data,GRAY2BIN_1_out_data,GRAY2BIN_1_out_data}),
        .in_enable(GRAY2BIN_1_out_enable),
        .out_data(Frame_8_out_data),
        .out_enable(Frame_8_out_enable),
        .ram_addr(Frame_8_ram_addr),
        .rst_n(BoardInit_AXI_0_rst_all_n));
GND GND
       (.G(GND_1));
Gobang_GRAY2BIN_0_0 GRAY2BIN_0
       (.in_data(MeanFitter_0_out_data),
        .in_enable(MeanFitter_0_out_enable),
        .out_data(GRAY2BIN_0_out_data),
        .out_enable(GRAY2BIN_0_out_enable),
        .th(BoardInit_AXI_0_black_th));
Gobang_GRAY2BIN_1_0 GRAY2BIN_1
       (.in_data(MeanFitter_0_out_data),
        .in_enable(MeanFitter_0_out_enable),
        .out_data(GRAY2BIN_1_out_data),
        .out_enable(GRAY2BIN_1_out_enable),
        .th(BoardInit_AXI_0_white_th));
Gobang_Harris_0_0 Harris_0
       (.diff_th(BoardInit_AXI_0_harris_th),
        .in_data(Window_1_out_data),
        .in_enable(Window_1_out_enable),
        .out_data(Harris_0_out_data),
        .out_enable(Harris_0_out_enable));
Gobang_IICctrl_0_0 IICctrl_0
       (.I2C_SCLK(IICctrl_0_I2C_SCLK),
        .I2C_SDAT(I2C_SDAT),
        .iCLK(clk_wiz_0_clk_out2),
        .iRST_N(BoardInit_AXI_0_rst_all_n));
Gobang_MatchTemplateBin_0_0 MatchTemplateBin_0
       (.in_data(Window_4_out_data),
        .in_enable(Window_4_out_enable),
        .out_data(MatchTemplateBin_0_out_data),
        .template(BoardInit_AXI_0_match0));
Gobang_MeanFitter_0_0 MeanFitter_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Window_0_out_data),
        .in_enable(Window_0_out_enable),
        .out_data(MeanFitter_0_out_data),
        .out_enable(MeanFitter_0_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Mux2_0_0 Mux2_0
       (.i0(Frame_4_out_enable),
        .i1(Frame_3_out_enable),
        .o(Mux2_0_o),
        .sel(sel_1));
Gobang_Mux2_1_0 Mux2_1
       (.i0(Frame_4_out_data),
        .i1(Frame_3_out_data),
        .o(Mux2_1_o),
        .sel(sel_1));
Gobang_Mux2_2_0 Mux2_2
       (.i0(Frame_4_ram_addr),
        .i1(Frame_3_ram_addr),
        .o(Mux2_2_o),
        .sel(sel_1));
Gobang_Mux2_3_0 Mux2_3
       (.i0(Frame_7_out_enable),
        .i1(Frame_8_out_enable),
        .o(Mux2_3_o),
        .sel(sel_2));
Gobang_Mux2_4_0 Mux2_4
       (.i0(Frame_7_out_data),
        .i1(Frame_8_out_data),
        .o(Mux2_4_o),
        .sel(sel_2));
Gobang_Mux2_5_0 Mux2_5
       (.i0(Frame_7_ram_addr),
        .i1(Frame_8_ram_addr),
        .o(Mux2_5_o),
        .sel(sel_2));
Gobang_Mux4_0_0 Mux4_0
       (.i0(ColorGray2Rgb_0_rgb24),
        .i1(ColorBin2Rgb_1_rgb24),
        .i2(ColorBin2Rgb_0_rgb24),
        .i3(ColorBin2Rgb_2_rgb24),
        .o(Mux4_0_o),
        .sel(DataCombin2_0_o));
Gobang_Or8_0_0 Or8_0
       (.i0(ErosionDilationBin_2_out_data),
        .i1(ErosionDilationBin_3_out_data),
        .i2(DataDelay_0_out_data),
        .i3(ErosionDilationBin_4_out_data),
        .i4(ErosionDilationBin_5_out_data),
        .i5(xlconstant_3_dout),
        .i6(xlconstant_3_dout),
        .i7(xlconstant_3_dout),
        .o(Or8_0_o));
Gobang_RGB2GRAY_0_0 RGB2GRAY_0
       (.in_data(Color16to24_0_rgb24),
        .in_enable(BoardInit_AXI_0_rst_all_n),
        .out_data(RGB2GRAY_0_out_data));
Gobang_Rows1x512_0_0 Rows1x512_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Frame_2_out_data),
        .in_enable(Frame_2_out_enable),
        .out_data(Rows1x512_0_out_data),
        .out_enable(Rows1x512_0_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Rows1x512_1_0 Rows1x512_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(ErosionDilationBin_0_out_data),
        .in_enable(ErosionDilationBin_0_out_enable),
        .out_data(Rows1x512_1_out_data),
        .out_enable(Rows1x512_1_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Rows1x512_2_0 Rows1x512_2
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Frame_5_out_data),
        .in_enable(Frame_5_out_enable),
        .out_data(Rows1x512_2_out_data),
        .out_enable(Rows1x512_2_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Rows1x512_3_0 Rows1x512_3
       (.clk(clk_wiz_0_clk_out1),
        .in_data(ErosionDilationBin_6_out_data),
        .in_enable(ErosionDilationBin_6_out_enable),
        .out_data(Rows1x512_3_out_data),
        .out_enable(Rows1x512_3_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Rows8x512_0_0 Rows8x512_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Frame_0_out_data),
        .in_enable(Frame_0_out_enable),
        .out_data(Rows8x512_0_out_data),
        .out_enable(Rows8x512_0_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Rows8x512_1_0 Rows8x512_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Crop_0_out_data),
        .in_enable(Crop_0_out_enable),
        .out_data(Rows8x512_1_out_data),
        .out_enable(Rows8x512_1_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
VCC VCC
       (.P(VCC_1));
Gobang_Window_0_0 Window_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows8x512_0_out_data),
        .in_enable(Rows8x512_0_out_enable),
        .out_data(Window_0_out_data),
        .out_enable(Window_0_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Window_1_0 Window_1
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows8x512_1_out_data),
        .in_enable(Rows8x512_1_out_enable),
        .out_data(Window_1_out_data),
        .out_enable(Window_1_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Window_2_0 Window_2
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows1x512_0_out_data),
        .in_enable(Rows1x512_0_out_enable),
        .out_data(Window_2_out_data),
        .out_enable(Window_2_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Window_3_0 Window_3
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows1x512_1_out_data),
        .in_enable(Rows1x512_1_out_enable),
        .out_data(Window_3_out_data),
        .out_enable(Window_3_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Window_4_0 Window_4
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows1x512_2_out_data),
        .in_enable(Rows1x512_2_out_enable),
        .out_data(Window_4_out_data),
        .out_enable(Window_4_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_Window_5_0 Window_5
       (.clk(clk_wiz_0_clk_out1),
        .in_data(Rows1x512_3_out_data),
        .in_enable(Rows1x512_3_out_enable),
        .out_data(Window_5_out_data),
        .out_enable(Window_5_out_enable),
        .rst_n(BoardInit_AXI_0_rst_all_n));
Gobang_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(clk_wiz_0_clk_out3),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out3),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out3),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
Gobang_camCap_0_0 camCap_0
       (.addr(camCap_0_addr),
        .d(d_1),
        .dout(camCap_0_dout),
        .href(href_1),
        .pclk(pclk_1),
        .vsync(vsync_1),
        .wclk(camCap_0_wclk),
        .we(camCap_0_we));
Gobang_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .clk_out3(clk_wiz_0_clk_out3),
        .locked(clk_wiz_0_locked));
Gobang_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(VCC_1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(GND_1),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out3));
Gobang_processing_system7_0_0 processing_system7_0
       (.FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .M_AXI_GP0_ACLK(clk_wiz_0_clk_out3),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID));
Gobang_vga_readBRAM_0_0 vga_readBRAM_0
       (.clk25(clk_wiz_0_clk_out2),
        .frame_addr(vga_readBRAM_0_frame_addr),
        .vga_blue(vga_readBRAM_0_vga_blue),
        .vga_green(vga_readBRAM_0_vga_green),
        .vga_hsync(vga_readBRAM_0_vga_hsync),
        .vga_in(ColorRgb2Vga_0_vga),
        .vga_red(vga_readBRAM_0_vga_red),
        .vga_vsync(vga_readBRAM_0_vga_vsync));
Gobang_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
Gobang_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule

module Gobang_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [6:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [6:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire [0:0]axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_0_to_s00_couplers_WID;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [6:0]s00_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARPROT;
  wire s00_couplers_to_axi_interconnect_0_ARREADY;
  wire s00_couplers_to_axi_interconnect_0_ARVALID;
  wire [6:0]s00_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWPROT;
  wire s00_couplers_to_axi_interconnect_0_AWREADY;
  wire s00_couplers_to_axi_interconnect_0_AWVALID;
  wire s00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_BRESP;
  wire s00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_RDATA;
  wire s00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_RRESP;
  wire s00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_WDATA;
  wire s00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_0_WSTRB;
  wire s00_couplers_to_axi_interconnect_0_WVALID;

  assign M00_AXI_araddr[6:0] = s00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[6:0] = s00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = M00_ACLK;
  assign axi_interconnect_0_ARESETN_net = M00_ARESETN[0];
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
s00_couplers_imp_1XGRQXD s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_0_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_1XGRQXD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [6:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[6:0] = auto_pc_to_s00_couplers_ARADDR[6:0];
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_pc_to_s00_couplers_AWADDR[6:0];
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
Gobang_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
