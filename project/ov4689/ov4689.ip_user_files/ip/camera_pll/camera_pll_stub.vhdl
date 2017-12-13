-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Wed Dec 13 15:39:36 2017
-- Host        : Alga running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.srcs/sources_1/ip/camera_pll_1/camera_pll_stub.vhdl
-- Design      : camera_pll
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity camera_pll is
  Port ( 
    camera_pixel_clock : out STD_LOGIC;
    camera_mclk : out STD_LOGIC;
    i2c_clkin : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );

end camera_pll;

architecture stub of camera_pll is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "camera_pixel_clock,camera_mclk,i2c_clkin,sysclk";
begin
end;
