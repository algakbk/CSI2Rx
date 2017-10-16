-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sun Oct  1 17:36:12 2017
-- Host        : alga-satellite running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/alga/workspace/github/CSI2Rx/project/IPcore/system_clk/system_clk_stub.vhdl
-- Design      : system_clk
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_clk is
  Port ( 
    sys_clock : out STD_LOGIC;
    clock_p : in STD_LOGIC
  );

end system_clk;

architecture stub of system_clk is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clock,clock_p";
begin
end;
