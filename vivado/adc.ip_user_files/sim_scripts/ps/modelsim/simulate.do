onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_21 -L zynq_ultra_ps_e_vip_v1_0_21 -L axi_lite_ipif_v3_0_4 -L axi_timer_v2_0_37 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_37 -L xlconstant_v1_1_10 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_register_slice_v2_1_35 -L axi_bram_ctrl_v4_1_13 -L blk_mem_gen_v8_4_11 -L microblaze_v11_0_15 -L lmb_v10_v3_0_15 -L lmb_bram_if_cntlr_v4_0_26 -L iomodule_v3_1_12 -L axi_datamover_v5_1_37 -L axis_infrastructure_v1_1_1 -L axis_register_slice_v1_1_35 -L axis_dwidth_converter_v1_1_34 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.ps xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ps.udo}

run 1000ns

quit -force
