# aclk {FREQ_HZ 333250000 CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk PHASE 0.00} aclk1 {FREQ_HZ 99999001 CLK_DOMAIN rfdc_ex_zynq_ps_0_pl_clk0 PHASE 0.0}
# Clock Domain: rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk
create_clock -name aclk -period 3.001 [get_ports aclk]
# Clock Domain: rfdc_ex_zynq_ps_0_pl_clk0
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Generated clocks
