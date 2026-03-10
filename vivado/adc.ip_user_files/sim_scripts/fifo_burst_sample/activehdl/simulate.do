transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fifo_burst_sample  -L xil_defaultlib -L xilinx_vip -L xpm -L fifo_generator_v13_2_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_burst_sample xil_defaultlib.glbl

do {fifo_burst_sample.udo}

run 1000ns

endsim

quit -force
