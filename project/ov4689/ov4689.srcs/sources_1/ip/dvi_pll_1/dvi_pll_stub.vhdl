-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Wed Dec 13 15:40:26 2017
-- Host        : Alga running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.srcs/sources_1/ip/dvi_pll_1/dvi_pll_stub.vhdl
-- Design      : dvi_pll
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dvi_pll is
  Port ( 
    pixel_clock : out STD_LOGIC;
    dvi_bit_clock : out STD_LOGIC;
    clk400 : out STD_LOGIC;
    ref_clock : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );

end dvi_pll;

architecture stub of dvi_pll is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_clock,dvi_bit_clock,clk400,ref_clock,sysclk";
begin
end;
