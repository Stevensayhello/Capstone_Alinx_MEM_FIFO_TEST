-makelib xcelium_lib/xil_defaultlib -sv \
  "E:/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../DDR_TEST.srcs/sources_1/ip/ila_3/sim/ila_3.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

