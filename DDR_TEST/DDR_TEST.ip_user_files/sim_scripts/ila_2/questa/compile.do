vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../DDR_TEST.srcs/sources_1/ip/ila_2/hdl/verilog" \
"E:/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"E:/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../DDR_TEST.srcs/sources_1/ip/ila_2/hdl/verilog" \
"../../../../DDR_TEST.srcs/sources_1/ip/ila_2/sim/ila_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

