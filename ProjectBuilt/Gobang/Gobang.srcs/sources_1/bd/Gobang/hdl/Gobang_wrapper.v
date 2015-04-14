//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Tue Apr 14 21:55:20 2015
//Host        : Dtysky running 64-bit major release  (build 9200)
//Command     : generate_target Gobang_wrapper.bd
//Design      : Gobang_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Gobang_wrapper
   (I2C_SCLK,
    I2C_SDAT,
    clk_in1,
    d,
    href,
    pclk,
    rst_n,
    sel_act,
    sel_view,
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
  input sel_act;
  input [1:0]sel_view;
  output [4:0]vga_blue;
  output [5:0]vga_green;
  output vga_hsync;
  output [4:0]vga_red;
  output vga_vsync;
  input vsync;
  output xclk;

  wire I2C_SCLK;
  wire I2C_SDAT;
  wire clk_in1;
  wire [7:0]d;
  wire href;
  wire pclk;
  wire rst_n;
  wire sel_act;
  wire [1:0]sel_view;
  wire [4:0]vga_blue;
  wire [5:0]vga_green;
  wire vga_hsync;
  wire [4:0]vga_red;
  wire vga_vsync;
  wire vsync;
  wire xclk;

Gobang Gobang_i
       (.I2C_SCLK(I2C_SCLK),
        .I2C_SDAT(I2C_SDAT),
        .clk_in1(clk_in1),
        .d(d),
        .href(href),
        .pclk(pclk),
        .rst_n(rst_n),
        .sel_act(sel_act),
        .sel_view(sel_view),
        .vga_blue(vga_blue),
        .vga_green(vga_green),
        .vga_hsync(vga_hsync),
        .vga_red(vga_red),
        .vga_vsync(vga_vsync),
        .vsync(vsync),
        .xclk(xclk));
endmodule
