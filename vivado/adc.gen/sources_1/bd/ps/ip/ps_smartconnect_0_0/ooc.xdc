# aclk {FREQ_HZ 333250000 CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk PHASE 0.00} aclk1 {FREQ_HZ 99999001 CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0 PHASE 0.0}
# Clock Domain: ps_ddr4_0_0_c0_ddr4_ui_clk
create_clock -name aclk -period 3.001 [get_ports aclk]
# Clock Domain: ps_zynq_ultra_ps_e_0_0_pl_clk0
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Generated clocks
