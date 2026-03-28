transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mult_16_16  -L xil_defaultlib -L xilinx_vip -L xpm -L xbip_utils_v3_0_14 -L mult_gen_v12_0_23 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mult_16_16 xil_defaultlib.glbl

do {mult_16_16.udo}

run 1000ns

endsim

quit -force
