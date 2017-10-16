-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sun Oct  1 16:36:09 2017
-- Host        : alga-satellite running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top dvi_pll -prefix
--               dvi_pll_ dvi_pll_stub.vhdl
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
    sysclk : in STD_LOGIC
  );

end dvi_pll;

architecture stub of dvi_pll is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_clock,dvi_bit_clock,sysclk";
begin
end;
