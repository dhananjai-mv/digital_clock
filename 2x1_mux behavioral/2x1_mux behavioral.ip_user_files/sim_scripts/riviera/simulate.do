transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+tb_full_adder  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tb_full_adder xil_defaultlib.glbl

do {tb_full_adder.udo}

run 1000ns

endsim

quit -force
