vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" \
"../../../2x1_mux behavioral.srcs/sources_1/new/full_adder.v" \
"../../../2x1_mux behavioral.srcs/sources_1/new/half_adder.v" \
"../../../2x1_mux behavioral.srcs/sim_1/new/tb_full_adder.v" \


vlog -work xil_defaultlib \
"glbl.v"

