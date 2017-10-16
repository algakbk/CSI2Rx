// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sun Oct  1 16:36:09 2017
// Host        : alga-satellite running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top dvi_pll -prefix
//               dvi_pll_ dvi_pll_stub.v
// Design      : dvi_pll
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module dvi_pll(pixel_clock, dvi_bit_clock, sysclk)
/* synthesis syn_black_box black_box_pad_pin="pixel_clock,dvi_bit_clock,sysclk" */;
  output pixel_clock;
  output dvi_bit_clock;
  input sysclk;
endmodule
