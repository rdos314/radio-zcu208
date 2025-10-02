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

create_clock -period 8.0 [get_ports pl_clk_n]
create_clock -period 8.0 [get_ports pl_clk_p]
create_clock -period 8.0 [get_ports clk_pl_0]

set_false_path -from [get_ports pl_sysref_n]
set_false_path -from [get_ports pl_sysref_p]

set_false_path -from [get_ports pl_clk_n] -to [get_nets ps_i/clk_wiz_0/clk_out1]
set_false_path -from [get_ports pl_clk_p] -to [get_nets ps_i/clk_wiz_0/clk_out1]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/pl_clk_util_ds_buf/U0/USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I/O]
 
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]

connect_debug_port dbg_hub/clk [get_nets clk]


#set_false_path -from [get_pins ps_i/ps_mts_0/pl_sysref/C] -to [get_pins adc.up_reset_1_reg/D]
