set_property PACKAGE_PIN B12 [get_ports {GPIO_0_tri_o[1]}]
set_property PACKAGE_PIN C11 [get_ports {GPIO_0_tri_o[0]}]
set_property PACKAGE_PIN B7 [get_ports pl_clk_n]
set_property PACKAGE_PIN B8 [get_ports pl_clk_p]
set_property PACKAGE_PIN B9 [get_ports pl_sysref_n]
set_property PACKAGE_PIN B10 [get_ports pl_sysref_p]

set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_0_tri_o[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_0_tri_o[0]}]
set_property IOSTANDARD LVDS_25 [get_ports pl_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports pl_clk_n]
set_property IOSTANDARD LVDS_25 [get_ports pl_sysref_p]
set_property IOSTANDARD LVDS_25 [get_ports pl_sysref_n]

create_clock -period 8.0 -name pl_clk [get_ports pl_clk_p]
create_generated_clock -name m_clk -source [get_ports pl_clk_p] -multiply_by 4 [get_pins mmcm/CLKOUT1]

set_input_delay -clock [get_clocks pl_clk] -min -add_delay 7.931 [get_ports pl_sysref_p]
set_input_delay -clock [get_clocks pl_clk] -max -add_delay 7.985 [get_ports pl_sysref_p]

#create_generated_clock -name ADC0_clkin2 -source [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN2] -divide_by 1 -add -master_clock [get_clocks pl_clk] [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]

set_false_path -from [get_clocks pl_clk] -to [get_clocks m_clk]
 
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]

connect_debug_port dbg_hub/clk [get_nets clk]
