#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/media/baktiiar/downloads/Xilinx/SDK/2017.2/bin:/media/baktiiar/downloads/Xilinx/Vivado/2017.2/ids_lite/ISE/bin/lin64:/media/baktiiar/downloads/Xilinx/Vivado/2017.2/bin
else
  PATH=/media/baktiiar/downloads/Xilinx/SDK/2017.2/bin:/media/baktiiar/downloads/Xilinx/Vivado/2017.2/ids_lite/ISE/bin/lin64:/media/baktiiar/downloads/Xilinx/Vivado/2017.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/media/baktiiar/downloads/Xilinx/Vivado/2017.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/media/baktiiar/downloads/Xilinx/Vivado/2017.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.runs/impl_1'
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

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log ov13850_demo.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source ov13850_demo.tcl -notrace


