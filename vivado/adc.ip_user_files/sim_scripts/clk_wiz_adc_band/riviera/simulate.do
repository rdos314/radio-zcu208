transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+clk_wiz_adc_band  -L xil_defaultlib -L xilinx_vip -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clk_wiz_adc_band xil_defaultlib.glbl

do {clk_wiz_adc_band.udo}

run 1000ns

endsim

quit -force
