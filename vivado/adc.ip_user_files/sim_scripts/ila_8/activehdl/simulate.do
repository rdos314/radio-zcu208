transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ila_8  -L xil_defaultlib -L xilinx_vip -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_8 xil_defaultlib.glbl

do {ila_8.udo}

run 1000ns

endsim

quit -force
