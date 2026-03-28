transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fifo_stat_meta  -L xil_defaultlib -L xilinx_vip -L xpm -L fifo_generator_v13_2_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_stat_meta xil_defaultlib.glbl

do {fifo_stat_meta.udo}

run 1000ns

endsim

quit -force
