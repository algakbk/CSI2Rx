#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/alga/workspace/Xilinx/SDK/2017.2/bin:/home/alga/workspace/Xilinx/Vivado/2017.2/ids_lite/ISE/bin/lin64:/home/alga/workspace/Xilinx/Vivado/2017.2/bin
else
  PATH=/home/alga/workspace/Xilinx/SDK/2017.2/bin:/home/alga/workspace/Xilinx/Vivado/2017.2/ids_lite/ISE/bin/lin64:/home/alga/workspace/Xilinx/Vivado/2017.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/alga/workspace/Xilinx/Vivado/2017.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/alga/workspace/Xilinx/Vivado/2017.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/alga/workspace/github/CSI2Rx/project/ov4689/ov4689.runs/ddr3_if_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log ddr3_if.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ddr3_if.tcl
