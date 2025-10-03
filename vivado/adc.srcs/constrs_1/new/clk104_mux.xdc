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
create_generated_clock -name doa0_clk -source [get_ports pl_clk_p] -multiply_by 4 [get_pins ps_i/mts_0/inst/doa0_clk]
create_generated_clock -name doa1_clk -source [get_ports pl_clk_p] -multiply_by 4 [get_pins ps_i/mts_0/inst/doa1_clk]

set_clock_groups -name async_groups -asynchronous -group [get_clocks pl_clk] -group [get_clocks clk_out1_clk_wiz_0] -group [get_clocks doa0_clk] -group [get_clocks doa1_clk]

set_input_delay -clock [get_clocks pl_clk] -min -add_delay 7.931 [get_ports pl_sysref_p]
set_input_delay -clock [get_clocks pl_clk] -max -add_delay 7.985 [get_ports pl_sysref_p]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/pl_clk_util_ds_buf/U0/USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I/O]
 
set_false_path -from [get_pins ps_i/mts_0/inst/mts.master_reset_reg/C] -to [get_pins ps_i/mts_0/inst/mts.doa0_reset_1_reg/D]
set_false_path -from [get_pins ps_i/rst_ps8_0_99M/U0/FDRE_inst/C] -to [get_pins {ps_i/mts_0/inst/mts.release_cnt_reg[*]/CLR}]
set_false_path -from [get_pins ps_i/rst_ps8_0_99M/U0/FDRE_inst/C] -to [get_pins ps_i/mts_0/inst/mts.master_reset_async_reg/PRE]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]

connect_debug_port dbg_hub/clk [get_nets clk]
