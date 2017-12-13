// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Dec 13 15:39:36 2017
// Host        : Alga running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.srcs/sources_1/ip/camera_pll_1/camera_pll_stub.v
// Design      : camera_pll
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module camera_pll(camera_pixel_clock, camera_mclk, i2c_clkin, 
  sysclk)
/* synthesis syn_black_box black_box_pad_pin="camera_pixel_clock,camera_mclk,i2c_clkin,sysclk" */;
  output camera_pixel_clock;
  output camera_mclk;
  output i2c_clkin;
  input sysclk;
endmodule
