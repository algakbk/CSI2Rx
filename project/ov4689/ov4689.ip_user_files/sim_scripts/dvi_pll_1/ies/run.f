-makelib ies/xil_defaultlib -sv \
  "/home/alga/workspace/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/alga/workspace/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "/home/alga/workspace/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../../IPcore/dvi_pll_1/dvi_pll_clk_wiz.v" \
  "../../../../../IPcore/dvi_pll_1/dvi_pll.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

