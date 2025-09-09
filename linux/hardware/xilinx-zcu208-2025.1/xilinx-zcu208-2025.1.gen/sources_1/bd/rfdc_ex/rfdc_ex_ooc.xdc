################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name adc2_clk_clk_p -period 4.069 [get_ports adc2_clk_clk_p]
create_clock -name dac0_clk_clk_p -period 4.069 [get_ports dac0_clk_clk_p]
create_clock -name C0_SYS_CLK_0_0_clk_p -period 3.334 [get_ports C0_SYS_CLK_0_0_clk_p]
create_clock -name C1_SYS_CLK_0_0_clk_p -period 3.334 [get_ports C1_SYS_CLK_0_0_clk_p]

################################################################################