transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ila_7  -L xil_defaultlib -L xilinx_vip -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_7 xil_defaultlib.glbl

do {ila_7.udo}

run 1000ns

endsim

quit -force
