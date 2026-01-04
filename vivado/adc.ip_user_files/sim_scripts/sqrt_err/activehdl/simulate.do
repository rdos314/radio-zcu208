transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+sqrt_err  -L xil_defaultlib -L xilinx_vip -L xpm -L xbip_utils_v3_0_14 -L c_reg_fd_v12_0_10 -L xbip_dsp48_wrapper_v3_0_7 -L xbip_pipe_v3_0_10 -L c_addsub_v12_0_20 -L mult_gen_v12_0_23 -L axi_utils_v2_0_10 -L cordic_v6_0_24 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sqrt_err xil_defaultlib.glbl

do {sqrt_err.udo}

run 1000ns

endsim

quit -force
