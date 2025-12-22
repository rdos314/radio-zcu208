transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mul_doa  -L xil_defaultlib -L xilinx_vip -L xpm -L xbip_utils_v3_0_14 -L mult_gen_v12_0_23 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mul_doa xil_defaultlib.glbl

do {mul_doa.udo}

run 1000ns

endsim

quit -force
