create_clock -period 8.138 -name pl_clk [get_ports pl_clk_p]

#Overwritting MMCM output constraints to meet highest DAC Fs
create_clock -period 1.600 -name RFDAC0_CLK [get_pins -hier tx0_u_dac/INTERNAL_FBRC_MUX*]
create_clock -period 1.600 -name RFDAC1_CLK [get_pins -hier tx1_u_dac/INTERNAL_FBRC_MUX*]
create_clock -period 1.600 -name RFDAC2_CLK [get_pins -hier tx2_u_dac/INTERNAL_FBRC_MUX*]
create_clock -period 1.600 -name RFDAC3_CLK [get_pins -hier tx3_u_dac/INTERNAL_FBRC_MUX*]

create_generated_clock -name DAC0_clkin1 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_dac0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1] -divide_by 1 [get_pins rfip_ex_i/clocking_block/clk_wiz_dac0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]
create_generated_clock -name DAC1_clkin1 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_dac1/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1] -divide_by 1 [get_pins rfip_ex_i/clocking_block/clk_wiz_dac1/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]
create_generated_clock -name DAC2_clkin1 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_dac2/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1] -divide_by 1 [get_pins rfip_ex_i/clocking_block/clk_wiz_dac2/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]
create_generated_clock -name DAC3_clkin1 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_dac3/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1] -divide_by 1 [get_pins rfip_ex_i/clocking_block/clk_wiz_dac3/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]

create_generated_clock -name DAC0_clkin2 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_dac0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN2] -divide_by 1 -add -master_clock [get_clocks pl_clk] [get_pins rfip_ex_i/clocking_block/clk_wiz_dac0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]
create_generated_clock -name DAC1_clkin2 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_dac1/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN2] -divide_by 1 -add -master_clock [get_clocks pl_clk] [get_pins rfip_ex_i/clocking_block/clk_wiz_dac1/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]
create_generated_clock -name DAC2_clkin2 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_dac2/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN2] -divide_by 1 -add -master_clock [get_clocks pl_clk] [get_pins rfip_ex_i/clocking_block/clk_wiz_dac2/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]
create_generated_clock -name DAC3_clkin2 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_dac3/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN2] -divide_by 1 -add -master_clock [get_clocks pl_clk] [get_pins rfip_ex_i/clocking_block/clk_wiz_dac3/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]

create_clock -period 3.200 -name RFADC0_CLK [get_pins -hier rx0_u_adc/INTERNAL_FBRC_DIV1_MUX*]
create_clock -period 3.200 -name RFADC1_CLK [get_pins -hier rx1_u_adc/INTERNAL_FBRC_DIV1_MUX*]
create_clock -period 3.200 -name RFADC2_CLK [get_pins -hier rx2_u_adc/INTERNAL_FBRC_DIV1_MUX*]
create_clock -period 3.200 -name RFADC3_CLK [get_pins -hier rx3_u_adc/INTERNAL_FBRC_DIV1_MUX*]

create_generated_clock -name ADC0_clkin1 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1] -divide_by 3 -multiply_by 4 [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]
create_generated_clock -name ADC0_clkin2 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN2] -divide_by 1 -add -master_clock [get_clocks pl_clk] [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]

#DAC BUFG
#set_property LOC BUFGCE_X0Y78  [get_cells rfip_ex_i/clocking_block/clk_wiz_dac0/inst/CLK_CORE_DRP_I/clk_inst/clkf_buf]
#set_property LOC BUFGCE_X0Y80  [get_cells rfip_ex_i/clocking_block/clk_wiz_dac0/inst/CLK_CORE_DRP_I/clk_inst/clkout1_buf]
#set_property LOC BUFGCE_X0Y108 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac1/inst/CLK_CORE_DRP_I/clk_inst/clkf_buf]
#set_property LOC BUFGCE_X0Y114 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac1/inst/CLK_CORE_DRP_I/clk_inst/clkout1_buf]
#set_property LOC BUFGCE_X0Y144 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac2/inst/CLK_CORE_DRP_I/clk_inst/clkf_buf]
#set_property LOC BUFGCE_X0Y149 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac2/inst/CLK_CORE_DRP_I/clk_inst/clkout1_buf]
#set_property LOC BUFGCE_X0Y189 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac3/inst/CLK_CORE_DRP_I/clk_inst/clkf_buf]
#set_property LOC BUFGCE_X0Y181 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac3/inst/CLK_CORE_DRP_I/clk_inst/clkout1_buf]

#set_property LOC BUFGCE_X0Y6 [get_cells rfip_ex_i/clocking_block/bufg_adc_fb/U0/USE_BUFG.GEN_BUFG[0].BUFG_U]

set_property LOC MMCM_X0Y4 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst]
set_property LOC MMCM_X0Y3 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac1/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst]
set_property LOC MMCM_X0Y6 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac2/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst]
set_property LOC MMCM_X0Y7 [get_cells rfip_ex_i/clocking_block/clk_wiz_dac3/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst]

set_property LOC MMCM_X0Y1 [get_cells rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst]
#set_property LOC PLL_X0Y2  [get_cells rfip_ex_i/clocking_block/clk_wiz_adc1/inst/CLK_CORE_DRP_I/clk_inst/plle4_adv_inst]
#set_property LOC PLL_X0Y3  [get_cells rfip_ex_i/ADC_DDR_DMA/ddr4_adc/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr4_phy_pll/plle_loop[0].gen_plle4.PLLE4_BASE_INST_OTHER]
#set_property LOC PLL_X0Y4  [get_cells rfip_ex_i/clocking_block/clk_wiz_adc2/inst/CLK_CORE_DRP_I/clk_inst/plle4_adv_inst]
#set_property LOC PLL_X0Y5  [get_cells rfip_ex_i/ADC_DDR_DMA/ddr4_adc/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr4_phy_pll/plle_loop[1].gen_plle4.PLLE4_BASE_INST_OTHER]
#set_property LOC PLL_X0Y6  [get_cells rfip_ex_i/clocking_block/clk_wiz_adc3/inst/CLK_CORE_DRP_I/clk_inst/plle4_adv_inst]
#set_property LOC PLL_X0Y9  [get_cells rfip_ex_i/DAC_DDR_DMA/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr4_phy_pll/plle_loop[0].gen_plle4.PLLE4_BASE_INST_OTHER]
#set_property LOC PLL_X0Y11 [get_cells rfip_ex_i/DAC_DDR_DMA/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr4_phy_pll/plle_loop[1].gen_plle4.PLLE4_BASE_INST_OTHER]

#set_property LOC BUFGCE_X0Y146 [get_cells dbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.u_bufg_icon_tck]
#ddr bufg
#set_property LOC BUFGCE_X0Y142 [get_cells rfip_ex_i/DAC_DDR_DMA/ddr4_0/inst/u_ddr4_infrastructure/u_bufg_divClk]
#set_property LOC BUFGCE_X0Y126 [get_cells rfip_ex_i/DAC_DDR_DMA/ddr4_0/inst/u_ddr4_infrastructure/u_bufg_inst]
#set_property LOC BUFGCE_X0Y134 [get_cells rfip_ex_i/DAC_DDR_DMA/ddr4_0/inst/u_ddr4_infrastructure/u_bufg_riuClk]
#set_property LOC BUFGCE_X0Y55  [get_cells rfip_ex_i/ADC_DDR_DMA/ddr4_adc/inst/u_ddr4_infrastructure/u_bufg_dbg_clk]
#set_property LOC BUFGCE_X0Y66  [get_cells rfip_ex_i/ADC_DDR_DMA/ddr4_adc/inst/u_ddr4_infrastructure/u_bufg_divClk]
#set_property LOC BUFGCE_X0Y68  [get_cells rfip_ex_i/ADC_DDR_DMA/ddr4_adc/inst/u_ddr4_infrastructure/u_bufg_inst]
#set_property LOC BUFGCE_X0Y67  [get_cells rfip_ex_i/ADC_DDR_DMA/ddr4_adc/inst/u_ddr4_infrastructure/u_bufg_riuClk]

#set_property LOC BUFG_GT_X1Y9  [get_cells rfip_ex_i/ex_design/rfip/inst/i_rfdc_ex_rfip_0_bufg_gt_ctrl/adc0_bufg_gt]
#set_property LOC BUFG_GT_X1Y47 [get_cells rfip_ex_i/ex_design/rfip/inst/i_rfdc_ex_rfip_0_bufg_gt_ctrl/adc1_bufg_gt]
#set_property LOC BUFG_GT_X1Y51 [get_cells rfip_ex_i/ex_design/rfip/inst/i_rfdc_ex_rfip_0_bufg_gt_ctrl/adc2_bufg_gt]
#set_property LOC BUFG_GT_X1Y95 [get_cells rfip_ex_i/ex_design/rfip/inst/i_rfdc_ex_rfip_0_bufg_gt_ctrl/adc3_bufg_gt]
#set_property LOC BUFGCE_X0Y66  [get_cells rfip_ex_i/ADC_DDR_DMA/ddr4_adc/inst/u_ddr4_infrastructure/u_bufg_divClk]
#set_property LOC BUFGCTRL_X0Y48  [get_cells rfip_ex_i/clocking_block/bufgmux_adc0/inst/BUFGMUX_inst]
#set_property LOC BUFGCTRL_X0Y9   [get_cells rfip_ex_i/clocking_block/bufgmux_adc1/inst/BUFGMUX_inst]
#set_property LOC BUFGCTRL_X0Y23  [get_cells rfip_ex_i/clocking_block/bufgmux_adc2/inst/BUFGMUX_inst]
#set_property LOC BUFGCTRL_X0Y25  [get_cells rfip_ex_i/clocking_block/bufgmux_adc3/inst/BUFGMUX_inst]
#set_property LOC BUFG_PS_X0Y62 [get_cells rfip_ex_i/PS_Subsystem/zynq_ps/inst/buffer_pl_clk_0.PL_CLK_0_BUFG]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/clk_out1]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rfip_ex_i/clocking_block/clk_wiz_adc2/inst/CLK_CORE_DRP_I/clk_inst/clk_out1]
#create_pblock adc_bufgmux
#add_cells_to_pblock [get_pblocks adc_bufgmux] [get_cells -quiet [list rfip_ex_i/clocking_block/bufgmux_adc0/inst/BUFGMUX_inst rfip_ex_i/clocking_block/bufgmux_adc1/inst/BUFGMUX_inst rfip_ex_i/clocking_block/bufgmux_adc2/inst/BUFGMUX_inst rfip_ex_i/clocking_block/bufgmux_adc3/inst/BUFGMUX_inst]]
#resize_pblock [get_pblocks adc_bufgmux] -add {CLOCKREGION_X4Y0:CLOCKREGION_X4Y1}
create_pblock pblock_dac_source_i
resize_pblock pblock_dac_source_i -add CLOCKREGION_X4Y4:CLOCKREGION_X5Y7
add_cells_to_pblock pblock_dac_source_i [get_cells [list rfip_ex_i/ex_design/dac_source_i]]

