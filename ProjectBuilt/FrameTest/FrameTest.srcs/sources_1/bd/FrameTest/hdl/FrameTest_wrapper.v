//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Mon Apr 13 22:37:18 2015
//Host        : Dtysky running 64-bit major release  (build 9200)
//Command     : generate_target FrameTest_wrapper.bd
//Design      : FrameTest_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FrameTest_wrapper
   (clk_in1,
    rst_n);
  input clk_in1;
  input rst_n;

  wire clk_in1;
  wire rst_n;

FrameTest FrameTest_i
       (.clk_in1(clk_in1),
        .rst_n(rst_n));
endmodule
