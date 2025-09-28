transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+C:/Xilinx/2025.1/Vivado/data/rsb/busdef" -l xil_defaultlib \
"../../../2x1_mux behavioral.srcs/sources_1/new/full_adder.v" \
"../../../2x1_mux behavioral.srcs/sources_1/new/half_adder.v" \
"../../../2x1_mux behavioral.srcs/sim_1/new/tb_full_adder.v" \


vlog -work xil_defaultlib \
"glbl.v"

