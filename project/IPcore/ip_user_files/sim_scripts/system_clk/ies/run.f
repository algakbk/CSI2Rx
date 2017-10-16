-makelib ies/xil_defaultlib -sv \
  "/home/alga/workspace/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "/home/alga/workspace/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../system_clk/system_clk_clk_wiz.v" \
  "../../../../system_clk/system_clk.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

