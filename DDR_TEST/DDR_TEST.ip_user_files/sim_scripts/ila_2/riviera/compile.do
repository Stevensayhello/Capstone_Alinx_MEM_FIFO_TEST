vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DDR_TEST.srcs/sources_1/ip/ila_2/hdl/verilog" \
"E:/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DDR_TEST.srcs/sources_1/ip/ila_2/hdl/verilog" \
"../../../../DDR_TEST.srcs/sources_1/ip/ila_2/sim/ila_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

