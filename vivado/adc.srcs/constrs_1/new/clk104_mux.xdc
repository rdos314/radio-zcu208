set_property PACKAGE_PIN B12 [get_ports {GPIO_0_tri_o[1]}]
set_property PACKAGE_PIN C11 [get_ports {GPIO_0_tri_o[0]}]
set_property PACKAGE_PIN B7 [get_ports pl_clk_n]
set_property PACKAGE_PIN B8 [get_ports pl_clk_p]
set_property PACKAGE_PIN B9 [get_ports pl_sysref_n]
set_property PACKAGE_PIN B10 [get_ports pl_sysref_p]

set_property IOSTANDARD LVCMOS12 [get_ports {GPIO_0_tri_o[1]}]
set_property IOSTANDARD LVCMOS12 [get_ports {GPIO_0_tri_o[0]}]
set_property IOSTANDARD LVDS_25 [get_ports pl_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports pl_clk_n]
set_property IOSTANDARD LVDS_25 [get_ports pl_sysref_p]
set_property IOSTANDARD LVDS_25 [get_ports pl_sysref_n]

set_property PACKAGE_PIN A9       [get_ports "rf_sel[0]"] ;# Bank  87 VCCO - VCC1V8   - IO_L12N_AD8N_87
set_property IOSTANDARD  LVCMOS18 [get_ports "rf_sel[0]"] ;# Bank  87 VCCO - VCC1V8   - IO_L12N_AD8N_87
set_property SLEW        SLOW     [get_ports "rf_sel[0]"]
set_property DRIVE       12       [get_ports "rf_sel[0]"]

set_property PACKAGE_PIN A10      [get_ports "rf_sel[1]"] ;# Bank  87 VCCO - VCC1V8   - IO_L12P_AD8P_87
set_property IOSTANDARD  LVCMOS18 [get_ports "rf_sel[1]"] ;# Bank  87 VCCO - VCC1V8   - IO_L12P_AD8P_87
set_property SLEW        SLOW     [get_ports "rf_sel[1]"]
set_property DRIVE       12       [get_ports "rf_sel[1]"]

set_property PACKAGE_PIN A6       [get_ports "rf_sel[2]"] ;# Bank  87 VCCO - VCC1V8   - IO_L11N_AD9N_87
set_property IOSTANDARD  LVCMOS18 [get_ports "rf_sel[2]"] ;# Bank  87 VCCO - VCC1V8   - IO_L11N_AD9N_87
set_property SLEW        SLOW     [get_ports "rf_sel[2]"]
set_property DRIVE       12       [get_ports "rf_sel[2]"]

set_property PACKAGE_PIN A7       [get_ports "rf_clk"] ;# Bank  87 VCCO - VCC1V8   - IO_L11P_AD9P_87
set_property IOSTANDARD  LVCMOS18 [get_ports "rf_clk"] ;# Bank  87 VCCO - VCC1V8   - IO_L11P_AD9P_87
set_property SLEW        SLOW     [get_ports "rf_clk"]
set_property DRIVE       12       [get_ports "rf_clk"]

set_property PACKAGE_PIN A5       [get_ports "rf_out"] ;# Bank  87 VCCO - VCC1V8   - IO_L10N_AD10N_87
set_property IOSTANDARD  LVCMOS18 [get_ports "rf_out"] ;# Bank  87 VCCO - VCC1V8   - IO_L10N_AD10N_87
set_property SLEW        SLOW     [get_ports "rf_out"]
set_property DRIVE       12       [get_ports "rf_out"]

//set_property PACKAGE_PIN B5       [get_ports "DACIO_05"] ;# Bank  87 VCCO - VCC1V8   - IO_L10P_AD10P_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_05"] ;# Bank  87 VCCO - VCC1V8   - IO_L10P_AD10P_87
//set_property SLEW        SLOW     [get_ports "DACIO_05"]
//set_property DRIVE       12       [get_ports "DACIO_05"]

//set_property PACKAGE_PIN C5       [get_ports "DACIO_06"] ;# Bank  87 VCCO - VCC1V8   - IO_L9N_AD11N_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_06"] ;# Bank  87 VCCO - VCC1V8   - IO_L9N_AD11N_87
//set_property SLEW        SLOW     [get_ports "DACIO_06"]
//set_property DRIVE       12       [get_ports "DACIO_06"]

//set_property PACKAGE_PIN C6       [get_ports "DACIO_07"] ;# Bank  87 VCCO - VCC1V8   - IO_L9P_AD11P_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_07"] ;# Bank  87 VCCO - VCC1V8   - IO_L9P_AD11P_87
//set_property SLEW        SLOW     [get_ports "DACIO_07"]
//set_property DRIVE       12       [get_ports "DACIO_07"]

set_property PACKAGE_PIN C10      [get_ports "rf_in"] ;# Bank  87 VCCO - VCC1V8   - IO_L4N_AD12N_87
set_property IOSTANDARD  LVCMOS18 [get_ports "rf_in"] ;# Bank  87 VCCO - VCC1V8   - IO_L4N_AD12N_87
set_property PULLDOWN    TRUE     [get_ports "rf_in"]

//set_property PACKAGE_PIN D10      [get_ports "DACIO_09"] ;# Bank  87 VCCO - VCC1V8   - IO_L4P_AD12P_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_09"] ;# Bank  87 VCCO - VCC1V8   - IO_L4P_AD12P_87
//set_property SLEW        SLOW     [get_ports "DACIO_09"]
//set_property DRIVE       12       [get_ports "DACIO_09"]

//set_property PACKAGE_PIN D6       [get_ports "DACIO_10"] ;# Bank  87 VCCO - VCC1V8   - IO_L3N_AD13N_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_10"] ;# Bank  87 VCCO - VCC1V8   - IO_L3N_AD13N_87
//set_property SLEW        SLOW     [get_ports "DACIO_10"]
//set_property DRIVE       12       [get_ports "DACIO_10"]

//set_property PACKAGE_PIN E7       [get_ports "DACIO_11"] ;# Bank  87 VCCO - VCC1V8   - IO_L3P_AD13P_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_11"] ;# Bank  87 VCCO - VCC1V8   - IO_L3P_AD13P_87
//set_property SLEW        SLOW     [get_ports "DACIO_11"]
//set_property DRIVE       12       [get_ports "DACIO_11"]

//set_property PACKAGE_PIN E8       [get_ports "DACIO_12"] ;# Bank  87 VCCO - VCC1V8   - IO_L2N_AD14N_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_12"] ;# Bank  87 VCCO - VCC1V8   - IO_L2N_AD14N_87
//set_property SLEW        SLOW     [get_ports "DACIO_12"]
//set_property DRIVE       12       [get_ports "DACIO_12"]

//set_property PACKAGE_PIN E9       [get_ports "DACIO_13"] ;# Bank  87 VCCO - VCC1V8   - IO_L2P_AD14P_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_13"] ;# Bank  87 VCCO - VCC1V8   - IO_L2P_AD14P_87
//set_property SLEW        SLOW     [get_ports "DACIO_13"]
//set_property DRIVE       12       [get_ports "DACIO_13"]

//set_property PACKAGE_PIN E6       [get_ports "DACIO_14"] ;# Bank  87 VCCO - VCC1V8   - IO_L1N_AD15N_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_14"] ;# Bank  87 VCCO - VCC1V8   - IO_L1N_AD15N_87
//set_property SLEW        SLOW     [get_ports "DACIO_14"]
//set_property DRIVE       12       [get_ports "DACIO_14"]

//set_property PACKAGE_PIN F6       [get_ports "DACIO_15"] ;# Bank  87 VCCO - VCC1V8   - IO_L1P_AD15P_87
//set_property IOSTANDARD  LVCMOS18 [get_ports "DACIO_15"] ;# Bank  87 VCCO - VCC1V8   - IO_L1P_AD15P_87
//set_property SLEW        SLOW     [get_ports "DACIO_15"]
//set_property DRIVE       12       [get_ports "DACIO_15"]


create_clock -period 8.0 -name pl_clk [get_ports pl_clk_p]
create_generated_clock -name deci_clk [get_pins ps_i/mts_0/inst/buf_deci_clk_0/O]
create_generated_clock -name ana0_clk [get_pins ps_i/mts_0/inst/buf_ana_clk_0/O]
create_generated_clock -name ana1_clk [get_pins ps_i/mts_0/inst/buf_ana_clk_1/O]
create_generated_clock -name freq0_clk [get_pins ps_i/mts_0/inst/buf_freq_clk_0/O]
create_generated_clock -name freq1_clk [get_pins ps_i/mts_0/inst/buf_freq_clk_1/O]
create_generated_clock -name comp0_clk [get_pins ps_i/mts_0/inst/buf_comp_clk_0/O]
create_generated_clock -name comp1_clk [get_pins ps_i/mts_0/inst/buf_comp_clk_1/O]
create_generated_clock -name comp_ana0_clk [get_pins ps_i/mts_0/inst/buf_comp_ana_clk_0/O]
create_generated_clock -name comp_ana1_clk [get_pins ps_i/mts_0/inst/buf_comp_ana_clk_1/O]
create_generated_clock -name stat_low0_clk [get_pins ps_i/comp_ana_low/inst/stat_clk_0_i/O]
create_generated_clock -name stat_low1_clk [get_pins ps_i/comp_ana_low/inst/stat_clk_1_i/O]
create_generated_clock -name stat_low2_clk [get_pins ps_i/comp_ana_low/inst/stat_clk_2_i/O]
create_generated_clock -name stat_low3_clk [get_pins ps_i/comp_ana_low/inst/stat_clk_3_i/O]
create_generated_clock -name stat_low4_clk [get_pins ps_i/comp_ana_low/inst/stat_clk_4_i/O]
create_generated_clock -name stat_low5_clk [get_pins ps_i/comp_ana_low/inst/stat_clk_5_i/O]
create_generated_clock -name stat_low6_clk [get_pins ps_i/comp_ana_low/inst/stat_clk_6_i/O]
create_generated_clock -name stat_high0_clk [get_pins ps_i/comp_ana_high/inst/stat_clk_0_i/O]
create_generated_clock -name stat_high1_clk [get_pins ps_i/comp_ana_high/inst/stat_clk_1_i/O]
create_generated_clock -name stat_high2_clk [get_pins ps_i/comp_ana_high/inst/stat_clk_2_i/O]
create_generated_clock -name stat_high3_clk [get_pins ps_i/comp_ana_high/inst/stat_clk_3_i/O]
create_generated_clock -name stat_high4_clk [get_pins ps_i/comp_ana_high/inst/stat_clk_4_i/O]
create_generated_clock -name stat_high5_clk [get_pins ps_i/comp_ana_high/inst/stat_clk_5_i/O]
create_generated_clock -name stat_high6_clk [get_pins ps_i/comp_ana_high/inst/stat_clk_6_i/O]

set_false_path -from [get_pins ps_i/mts_0/inst/clk_wiz_deci_i/inst/plle4_adv_inst/CLKOUT0] -to [get_pins ps_i/mts_0/inst/buf_deci_clk_0/I]
set_false_path -from [get_pins ps_i/mts_0/inst/clk_wiz_ana_i/inst/plle4_adv_inst/CLKOUT0] -to [get_pins ps_i/mts_0/inst/buf_ana_clk_0/I]
set_false_path -from [get_pins ps_i/mts_0/inst/clk_wiz_ana_i/inst/plle4_adv_inst/CLKOUT0B] -to [get_pins ps_i/mts_0/inst/buf_ana_clk_1/I]
set_false_path -from [get_pins ps_i/mts_0/inst/clk_wiz_freq_i/inst/plle4_adv_inst/CLKOUT0] -to [get_pins ps_i/mts_0/inst/buf_freq_clk_0/I]
set_false_path -from [get_pins ps_i/mts_0/inst/clk_wiz_freq_i/inst/plle4_adv_inst/CLKOUT0B] -to [get_pins ps_i/mts_0/inst/buf_freq_clk_1/I]
set_false_path -from [get_pins ps_i/mts_0/inst/clk_wiz_comp_i/inst/plle4_adv_inst/CLKOUT0] -to [get_pins ps_i/mts_0/inst/buf_comp_clk_0/I]
set_false_path -from [get_pins ps_i/mts_0/inst/clk_wiz_comp_i/inst/plle4_adv_inst/CLKOUT0B] -to [get_pins ps_i/mts_0/inst/buf_comp_clk_1/I]
set_false_path -from [get_pins ps_i/mts_0/inst/clk_wiz_comp_ana_i/inst/plle4_adv_inst/CLKOUT0] -to [get_pins ps_i/mts_0/inst/buf_comp_ana_clk_0/I]
set_false_path -from [get_pins ps_i/mts_0/inst/clk_wiz_comp_ana_i/inst/plle4_adv_inst/CLKOUT0B] -to [get_pins ps_i/mts_0/inst/buf_comp_ana_clk_1/I]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT0] -to [get_pins ps_i/comp_ana_low/inst/stat_clk_0_i/I]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT1] -to [get_pins ps_i/comp_ana_low/inst/stat_clk_1_i/I]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT2] -to [get_pins ps_i/comp_ana_low/inst/stat_clk_2_i/I]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT3] -to [get_pins ps_i/comp_ana_low/inst/stat_clk_3_i/I]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT4] -to [get_pins ps_i/comp_ana_low/inst/stat_clk_4_i/I]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT5] -to [get_pins ps_i/comp_ana_low/inst/stat_clk_5_i/I]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT6] -to [get_pins ps_i/comp_ana_low/inst/stat_clk_6_i/I]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT0] -to [get_pins ps_i/comp_ana_high/inst/stat_clk_0_i/I]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT1] -to [get_pins ps_i/comp_ana_high/inst/stat_clk_1_i/I]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT2] -to [get_pins ps_i/comp_ana_high/inst/stat_clk_2_i/I]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT3] -to [get_pins ps_i/comp_ana_high/inst/stat_clk_3_i/I]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT4] -to [get_pins ps_i/comp_ana_high/inst/stat_clk_4_i/I]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT5] -to [get_pins ps_i/comp_ana_high/inst/stat_clk_5_i/I]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/clk_wiz_stat_i/inst/mmcme4_adv_inst/CLKOUT6] -to [get_pins ps_i/comp_ana_high/inst/stat_clk_6_i/I]

set_input_delay -clock [get_clocks pl_clk] -min -add_delay 7.931 [get_ports pl_sysref_p]
set_input_delay -clock [get_clocks pl_clk] -max -add_delay 7.985 [get_ports pl_sysref_p]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/pl_clk_util_ds_buf/U0/USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I/O]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/mts_0/inst/pl_clk_buf]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_low/inst/stat_clk_0_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_low/inst/stat_clk_1_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_low/inst/stat_clk_2_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_low/inst/stat_clk_3_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_low/inst/stat_clk_4_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_low/inst/stat_clk_5_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_low/inst/stat_clk_6_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_high/inst/stat_clk_0_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_high/inst/stat_clk_1_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_high/inst/stat_clk_2_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_high/inst/stat_clk_3_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_high/inst/stat_clk_4_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_high/inst/stat_clk_5_raw]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/comp_ana_high/inst/stat_clk_6_raw]

set_property CLOCK_REGION X4Y2 [get_cells ps_i/mts_0/inst/buf_deci_clk_i]
set_property CLOCK_REGION X4Y3 [get_cells ps_i/mts_0/inst/buf_ana_clk_i]
set_property CLOCK_REGION X4Y4 [get_cells ps_i/mts_0/inst/buf_freq_clk_i]
set_property CLOCK_REGION X4Y6 [get_cells ps_i/mts_0/inst/buf_comp_clk_i]
set_property CLOCK_REGION X4Y0 [get_cells ps_i/mts_0/inst/buf_comp_ana_clk_i]

set_property CLOCK_REGION X4Y0 [get_cells ps_i/comp_ana_low/inst/stat_clk_0_i]
set_property CLOCK_REGION X4Y0 [get_cells ps_i/comp_ana_high/inst/stat_clk_0_i]

set_false_path -from [get_ports pl_sysref_p] -to [get_pins ps_i/mts_0/inst/mts.sysref_r_reg/D]
 
set_false_path -from [get_pins ps_i/rst_ps8_0_99M/U0/FDRE_inst/C] -to [get_pins {ps_i/mts_0/inst/mts.deci_release_cnt_reg[*]/CLR}]
set_false_path -from [get_pins ps_i/rst_ps8_0_99M/U0/FDRE_inst/C] -to [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/PRE]

set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.ana0_reset_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.ana1_reset_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.freq0_reset_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.freq1_reset_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.comp0_reset_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.comp1_reset_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.comp_ana0_reset_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.comp_ana1_reset_1_reg/D]

set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_0_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_1_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_2_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_3_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_4_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_5_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_6_reset_1_reg/D]

set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_idle_sync_0_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_0_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_idle_sync_1_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_1_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_idle_sync_2_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_2_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_idle_sync_3_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_3_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_idle_sync_4_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_4_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_idle_sync_5_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_5_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_idle_sync_6_reg/C] -to [get_pins ps_i/comp_ana_low/inst/comp_ana.stat_6_idle_1_reg/D]

set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_0_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_1_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_2_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_3_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_4_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_5_reset_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.reset_int_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_6_reset_1_reg/D]

set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_idle_sync_0_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_0_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_idle_sync_1_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_1_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_idle_sync_2_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_2_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_idle_sync_3_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_3_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_idle_sync_4_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_4_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_idle_sync_5_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_5_idle_1_reg/D]
set_false_path -from [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_idle_sync_6_reg/C] -to [get_pins ps_i/comp_ana_high/inst/comp_ana.stat_6_idle_1_reg/D]

set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.axi_reset_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins ps_i/mts_0/inst/mts.mig_reset_1_reg/D]

#set_false_path -from [get_pins ps_i/mts_0/inst/mts.axi_reset_reg/C] -to [get_pins {ps_i/mts_0/inst/mts.deci_release_cnt_reg[*]/CE}]
#set_false_path -from [get_pins ps_i/mts_0/inst/mts.axi_reset_reg/C] -to [get_pins {ps_i/mts_0/inst/mts.deci_release_cnt_reg[*]/D}]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/C] -to [get_pins {ps_i/mts_0/inst/mts.deci_release_cnt_reg[*]/CE}]

#set_false_path -from [get_pins ps_i/mts_0/inst/mts.axi_reset_reg/C] -to [get_pins ps_i/mts_0/inst/mts.deci_reset_async_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.adc_axi_start_reg/C] -to [get_pins ps_i/mts_0/inst/mts.deci_adc_start_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.adc_axi_stop_reg/C] -to [get_pins ps_i/mts_0/inst/mts.deci_adc_stop_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.sim_axi_start_reg/C] -to [get_pins ps_i/mts_0/inst/mts.deci_sim_start_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.adc_active_reg/C] -to [get_pins ps_i/mts_0/inst/mts.axi_adc_active_1_reg/D]
set_false_path -from [get_pins ps_i/mts_0/inst/mts.sim_active_reg/C] -to [get_pins ps_i/mts_0/inst/mts.axi_sim_active_1_reg/D]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
