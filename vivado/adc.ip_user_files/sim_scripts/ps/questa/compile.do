vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_21
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_21
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_timer_v2_0_37
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37
vlib questa_lib/msim/xlconstant_v1_1_10
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_35
vlib questa_lib/msim/axi_bram_ctrl_v4_1_13
vlib questa_lib/msim/blk_mem_gen_v8_4_11
vlib questa_lib/msim/microblaze_v11_0_15
vlib questa_lib/msim/lmb_v10_v3_0_15
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vlib questa_lib/msim/iomodule_v3_1_12
vlib questa_lib/msim/axi_datamover_v5_1_37
vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_register_slice_v1_1_35
vlib questa_lib/msim/axis_dwidth_converter_v1_1_34

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 questa_lib/msim/axi_vip_v1_1_21
vmap zynq_ultra_ps_e_vip_v1_0_21 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_21
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_timer_v2_0_37 questa_lib/msim/axi_timer_v2_0_37
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 questa_lib/msim/axi_register_slice_v2_1_35
vmap axi_bram_ctrl_v4_1_13 questa_lib/msim/axi_bram_ctrl_v4_1_13
vmap blk_mem_gen_v8_4_11 questa_lib/msim/blk_mem_gen_v8_4_11
vmap microblaze_v11_0_15 questa_lib/msim/microblaze_v11_0_15
vmap lmb_v10_v3_0_15 questa_lib/msim/lmb_v10_v3_0_15
vmap lmb_bram_if_cntlr_v4_0_26 questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vmap iomodule_v3_1_12 questa_lib/msim/iomodule_v3_1_12
vmap axi_datamover_v5_1_37 questa_lib/msim/axi_datamover_v5_1_37
vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_35 questa_lib/msim/axis_register_slice_v1_1_35
vmap axis_dwidth_converter_v1_1_34 questa_lib/msim/axis_dwidth_converter_v1_1_34

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"/media/ubuntu/large/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/media/ubuntu/large/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_21 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_zynq_ultra_ps_e_0_0/sim/ps_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_timer_v2_0_37 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/05e8/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_axi_timer_0_0/sim/ps_axi_timer_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_axi_gpio_0_0/sim/ps_axi_gpio_0_0.vhd" \

vlog -work xlconstant_v1_1_10 -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_0/sim/bd_af51_one_0.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_1/sim/bd_af51_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_2/sim/bd_af51_arsw_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_3/sim/bd_af51_rsw_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_4/sim/bd_af51_awsw_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_5/sim/bd_af51_wsw_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_6/sim/bd_af51_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_7/sim/bd_af51_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_8/sim/bd_af51_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_9/sim/bd_af51_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_10/sim/bd_af51_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_11/sim/bd_af51_sarn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_12/sim/bd_af51_srn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_13/sim/bd_af51_sawn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_14/sim/bd_af51_swn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_15/sim/bd_af51_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_16/sim/bd_af51_m00s2a_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_17/sim/bd_af51_m00arn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_18/sim/bd_af51_m00rn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_19/sim/bd_af51_m00awn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_20/sim/bd_af51_m00wn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_21/sim/bd_af51_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_22/sim/bd_af51_m00e_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_23/sim/bd_af51_m01s2a_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_24/sim/bd_af51_m01arn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_25/sim/bd_af51_m01rn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_26/sim/bd_af51_m01awn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_27/sim/bd_af51_m01wn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_28/sim/bd_af51_m01bn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_29/sim/bd_af51_m01e_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_30/sim/bd_af51_m02s2a_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_31/sim/bd_af51_m02arn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_32/sim/bd_af51_m02rn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_33/sim/bd_af51_m02awn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_34/sim/bd_af51_m02wn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_35/sim/bd_af51_m02bn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_36/sim/bd_af51_m02e_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_37/sim/bd_af51_m03s2a_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_38/sim/bd_af51_m03arn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_39/sim/bd_af51_m03rn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_40/sim/bd_af51_m03awn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_41/sim/bd_af51_m03wn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_42/sim/bd_af51_m03bn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_43/sim/bd_af51_m03e_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_44/sim/bd_af51_m04s2a_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_45/sim/bd_af51_m04arn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_46/sim/bd_af51_m04rn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_47/sim/bd_af51_m04awn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_48/sim/bd_af51_m04wn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_49/sim/bd_af51_m04bn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_50/sim/bd_af51_m04e_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_51/sim/bd_af51_m05s2a_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_52/sim/bd_af51_m05arn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_53/sim/bd_af51_m05rn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_54/sim/bd_af51_m05awn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_55/sim/bd_af51_m05wn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_56/sim/bd_af51_m05bn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/ip/ip_57/sim/bd_af51_m05e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/bd_0/sim/bd_af51.v" \

vlog -work axi_register_slice_v2_1_35 -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_0/sim/ps_axi_smc_0.sv" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_rst_ps8_0_99M_0/sim/ps_rst_ps8_0_99M_0.vhd" \
"../../../bd/ps/ip/ps_axi_gpio_0_4/sim/ps_axi_gpio_0_4.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_por_fsm.sv" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_tile_config.sv" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_constants_config.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_drp_arbiter.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_drp_arbiter_adc.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_register_decode.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_address_decoder.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_axi_lite_ipif.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_counter_f.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_pselect_f.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_slave_attachment.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_rf_wrapper.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_drp_control_top.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_drp_control.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_drp_access_ctrl.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_irq_req_ack.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_irq_sync.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0bufg_gt_ctrl.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_overvol_irq.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_powerup_state_irq.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_mt_sysref_count.sv" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_mt_mrk_count.sv" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_mt_data_align.sv" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_mt_fifo_ctrl.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_rst_cnt.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0_clk_detection.v" \
"../../../bd/ps/ip/ps_usp_rf_data_converter_0_0/synth/ps_usp_rf_data_converter_0_0.v" \
"../../../bd/ps/ip/ps_mts_0_0/sim/ps_mts_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/ps/ip/ps_util_ds_buf_0_0/sim/ps_util_ds_buf_0_0.vhd" \
"../../../bd/ps/ip/ps_util_ds_buf_0_1/sim/ps_util_ds_buf_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_deci_low_0_0/sim/ps_deci_low_0_0.v" \
"../../../bd/ps/ip/ps_deci_high_0_0/sim/ps_deci_high_0_0.v" \
"../../../bd/ps/ip/ps_adc_control_0_0/sim/ps_adc_control_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_13 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/2f03/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_axi_bram_ctrl_0_0/sim/ps_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_11 -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_bram_ctrl_0_bram_0/sim/ps_axi_bram_ctrl_0_bram_0.v" \
"../../../bd/ps/ip/ps_freq_low_46_0_0/sim/ps_freq_low_46_0_0.v" \
"../../../bd/ps/ip/ps_freq_high_189_0_0/sim/ps_freq_high_189_0_0.v" \
"../../../bd/ps/ip/ps_ana_0_0/sim/ps_ana_0_0.v" \
"../../../bd/ps/ip/ps_ana_0_1/sim/ps_ana_0_1.v" \
"../../../bd/ps/ip/ps_comp_low_0_0/sim/ps_comp_low_0_0.v" \
"../../../bd/ps/ip/ps_comp_high_0_0/sim/ps_comp_high_0_0.v" \
"../../../bd/ps/ip/ps_comp_ana_0_0/sim/ps_comp_ana_0_0.v" \
"../../../bd/ps/ip/ps_comp_ana_0_1/sim/ps_comp_ana_0_1.v" \

vcom -work microblaze_v11_0_15 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/75f6/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_0/sim/bd_5e41_microblaze_I_0.vhd" \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_1/sim/bd_5e41_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_15 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/b1c4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_2/sim/bd_5e41_ilmb_0.vhd" \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_3/sim/bd_5e41_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_26 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/0e64/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_4/sim/bd_5e41_dlmb_cntlr_0.vhd" \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_5/sim/bd_5e41_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_6/sim/bd_5e41_lmb_bram_I_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_7/sim/bd_5e41_second_dlmb_cntlr_0.vhd" \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_8/sim/bd_5e41_second_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_9/sim/bd_5e41_second_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_12 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/d8e9/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/ip/ip_10/sim/bd_5e41_iomodule_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_ddr4_0_0/bd_0/sim/bd_5e41.v" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_0/sim/ps_ddr4_0_0_microblaze_mcs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/phy/ps_ddr4_0_0_phy_ddr4.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy_behav.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob_byte.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/clocking/ddr4_phy_v2_2_pll.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_tristate_wrapper.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_riuor_wrapper.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_control_wrapper.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_byte_wrapper.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_bitslice_wrapper.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/ip_top/ps_ddr4_0_0_phy.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_wtr.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ref.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_rd_wr.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_periodic.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_group.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_merge_enc.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_gen.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_fi_xor.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_dec_fix.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_buf.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ctl.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_c.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_ap.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_p.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_mux_p.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_c.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_a.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_act_timer.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_act_rank.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/controller/ddr4_v2_2_mc.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_wr_data.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_rd_data.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_cmd.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/ui/ddr4_v2_2_ui.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_ar_channel.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_aw_channel.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_b_channel.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_arbiter.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_fsm.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_translator.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_fifo.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_incr_cmd.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_r_channel.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_w_channel.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_wr_cmd_fsm.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_wrap_cmd.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_a_upsizer.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_register_slice.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_upsizer.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_axic_register_slice.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_and.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_latch_and.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_latch_or.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_or.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_command_fifo.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator_sel.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator_sel_static.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_r_upsizer.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi/ddr4_v2_2_w_upsizer.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_addr_decode.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_read.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg_bank.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_top.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_write.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/clocking/ddr4_v2_2_infrastructure.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_xsdb_bram.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_write.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_wr_byte.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_wr_bit.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_sync.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_read.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_rd_en.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_pi.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_mc_odt.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_debug_microblaze.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_cplx_data.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_cplx.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_config_rom.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_addr_decode.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_top.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_xsdb_arbiter.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_cal.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_chipscope_xsdb_slave.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ddr4_v2_2_dp_AB9.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top/ps_ddr4_0_0_ddr4.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top/ps_ddr4_0_0_ddr4_mem_intfc.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal/ps_ddr4_0_0_ddr4_cal_riu.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top/ps_ddr4_0_0.sv" \
"../../../bd/ps/ip/ps_ddr4_0_0/tb/ps_ddr4_0_0_microblaze_mcs_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/sim/bd_811f.v" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_811f_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_811f_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_811f_arsw_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_811f_rsw_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_811f_awsw_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_811f_wsw_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_811f_bsw_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_811f_s00mmu_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_811f_s00tr_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_811f_s00sic_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_811f_s00a2s_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_811f_sarn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_811f_srn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_811f_sawn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_811f_swn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_811f_sbn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_811f_s01mmu_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_811f_s01tr_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_811f_s01sic_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_811f_s01a2s_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_811f_sawn_1.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_811f_swn_1.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_811f_sbn_1.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_811f_s02mmu_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_811f_s02tr_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_811f_s02sic_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_811f_s02a2s_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_811f_sarn_1.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_811f_srn_1.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_811f_m00s2a_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_811f_m00arn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_811f_m00rn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_811f_m00awn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_811f_m00wn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_811f_m00bn_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_811f_m00e_0.sv" \
"../../../bd/ps/ip/ps_smartconnect_0_0/sim/ps_smartconnect_0_0.sv" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_proc_sys_reset_0_0/sim/ps_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_int_0_0/sim/ps_axi_int_0_0.v" \

vcom -work axi_datamover_v5_1_37 -64 -93  \
"../../../../adc.gen/sources_1/bd/ps/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_axi_datamover_0_1/sim/ps_axi_datamover_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/sim/bd_c815.v" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_c815_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_c815_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_c815_s00mmu_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_c815_s00tr_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_c815_s00sic_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_c815_s00a2s_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_c815_sawn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_c815_swn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_c815_sbn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_c815_m00s2a_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_c815_m00e_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_1_0/sim/ps_axi_smc_1_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_dma_1_0/sim/ps_axi_dma_1_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_axi_gpio_0_6/sim/ps_axi_gpio_0_6.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/sim/bd_c8e5.v" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_0/sim/bd_c8e5_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_1/sim/bd_c8e5_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_2/sim/bd_c8e5_s00mmu_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_3/sim/bd_c8e5_s00tr_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_4/sim/bd_c8e5_s00sic_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_5/sim/bd_c8e5_s00a2s_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_6/sim/bd_c8e5_sarn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_7/sim/bd_c8e5_srn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_8/sim/bd_c8e5_sawn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_9/sim/bd_c8e5_swn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_10/sim/bd_c8e5_sbn_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_11/sim/bd_c8e5_m00s2a_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/bd_0/ip/ip_12/sim/bd_c8e5_m00e_0.sv" \
"../../../bd/ps/ip/ps_axi_smc_2_0/sim/ps_axi_smc_2_0.sv" \

vlog -work axis_infrastructure_v1_1_1 -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_35 -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/be12/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_34 -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/bd/ps/ipshared/80a6/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_axis_dwidth_converter_0_0/sim/ps_axis_dwidth_converter_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_rst_ps_333M_0/sim/ps_rst_ps_333M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/ip/ps_spi_gain_0_0/sim/ps_spi_gain_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ps/ip/ps_axi_gpio_0_7/sim/ps_axi_gpio_0_7.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/ec67/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/7711/hdl" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/f0b6/hdl/verilog" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/a8e4/hdl/verilog" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+../../../../adc.gen/sources_1/bd/ps/ipshared/434f/hdl" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/ip_top" "+incdir+../../../../adc.gen/sources_1/bd/ps/ip/ps_ddr4_0_0/rtl/cal" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/ps/sim/ps.v" \

vlog -work xil_defaultlib \
"glbl.v"

