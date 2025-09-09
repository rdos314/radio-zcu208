#set_property IOSTANDARD LVDCI_18 [get_ports pl_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports pl_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports pl_clk_n]
#set_property IOSTANDARD LVDCI_18 [get_ports pl_sysref_p]
set_property IOSTANDARD LVDS_25 [get_ports pl_sysref_p]
set_property IOSTANDARD LVDS_25 [get_ports pl_sysref_n]

set_property PACKAGE_PIN B8 [get_ports pl_clk_p]

set_property PACKAGE_PIN B10 [get_ports pl_sysref_p]



set_input_delay -clock [get_clocks pl_clk] -min -add_delay 8.068 [get_ports pl_sysref_p]
set_input_delay -clock [get_clocks pl_clk] -max -add_delay 8.123 [get_ports pl_sysref_p]


set_property CLOCK_DELAY_GROUP adc_clocks [get_nets -of [get_pins rfip_ex_i/clocking_block/bufgmux_adc*/inst/BUFGMUX_inst/O]]
#create_pblock bufgmuxes
#resize_pblock bufgmuxes -add CLOCKREGION_X4Y1:CLOCKREGION_X4Y1
#add_cells_to_pblock bufgmuxes [get_cells [list rfip_ex_i/clocking_block/bufgmux_adc0/inst/BUFGMUX_inst rfip_ex_i/clocking_block/bufgmux_adc1/inst/BUFGMUX_inst rfip_ex_i/clocking_block/bufgmux_adc2/inst/BUFGMUX_inst rfip_ex_i/clocking_block/bufgmux_adc3/inst/BUFGMUX_inst]]

set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets pl_clk_BUFG]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rfip_ex_i/clocking_block/clk_wiz_adc1/inst/CLK_CORE_DRP_I/clk_inst/clk_out1]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rfip_ex_i/clocking_block/clk_wiz_adc3/inst/CLK_CORE_DRP_I/clk_inst/clk_out1]
#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets pl_clk_BUFG]
set_clock_groups -physically_exclusive -group [get_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -group [get_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc1/inst/CLK_CORE_DRP_I/clk_inst/*/CLKOUT0]]
set_clock_groups -physically_exclusive -group [get_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -group [get_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc2/inst/CLK_CORE_DRP_I/clk_inst/plle4_adv_inst/CLKOUT0]]
set_clock_groups -physically_exclusive -group [get_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -group [get_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc3/inst/CLK_CORE_DRP_I/clk_inst/plle4_adv_inst/CLKOUT0]]

set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1]] -group [get_clocks -include_generated_clocks pl_clk]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc1/inst/CLK_CORE_DRP_I/clk_inst/*/CLKIN]] -group [get_clocks -include_generated_clocks pl_clk]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc2/inst/CLK_CORE_DRP_I/clk_inst/plle4_adv_inst/CLKIN]] -group [get_clocks -include_generated_clocks pl_clk]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_adc3/inst/CLK_CORE_DRP_I/clk_inst/plle4_adv_inst/CLKIN]] -group [get_clocks -include_generated_clocks pl_clk]

set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_dac0/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1]] -group [get_clocks -include_generated_clocks pl_clk]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_dac1/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1]] -group [get_clocks -include_generated_clocks pl_clk]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_dac2/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1]] -group [get_clocks -include_generated_clocks pl_clk]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks -of [get_pins rfip_ex_i/clocking_block/clk_wiz_dac3/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKIN1]] -group [get_clocks -include_generated_clocks pl_clk]

set_false_path -to [get_pins rfip_ex_i/clocking_block/bufgmux_adc*/inst/BUFGMUX_inst/CE0]
set_false_path -to [get_pins rfip_ex_i/clocking_block/bufgmux_adc*/inst/BUFGMUX_inst/CE1]


