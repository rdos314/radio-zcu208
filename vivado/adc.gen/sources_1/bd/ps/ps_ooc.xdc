################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name pl_clk_p -period 8 [get_ports pl_clk_p]
create_clock -name pl_clk_n -period 8 [get_ports pl_clk_n]
create_clock -name pl_sysref_p -period 100 [get_ports pl_sysref_p]
create_clock -name pl_sysref_n -period 100 [get_ports pl_sysref_n]
create_clock -name adc1_clk_clk_p -period 2 [get_ports adc1_clk_clk_p]
create_clock -name adc0_clk_clk_p -period 0.250 [get_ports adc0_clk_clk_p]
create_clock -name adc2_clk_clk_p -period 0.250 [get_ports adc2_clk_clk_p]
create_clock -name adc3_clk_clk_p -period 0.250 [get_ports adc3_clk_clk_p]

################################################################################