# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "axi_addr_top" -parent ${Page_0}
  ipgui::add_param $IPINST -name "mem_size" -parent ${Page_0}
  ipgui::add_param $IPINST -name "use_div2_clk_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "use_div2_clk_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "use_div2_clk_2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "use_div2_clk_3" -parent ${Page_0}


}

proc update_PARAM_VALUE.axi_addr_top { PARAM_VALUE.axi_addr_top } {
	# Procedure called to update axi_addr_top when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.axi_addr_top { PARAM_VALUE.axi_addr_top } {
	# Procedure called to validate axi_addr_top
	return true
}

proc update_PARAM_VALUE.mem_size { PARAM_VALUE.mem_size } {
	# Procedure called to update mem_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.mem_size { PARAM_VALUE.mem_size } {
	# Procedure called to validate mem_size
	return true
}

proc update_PARAM_VALUE.use_div2_clk_0 { PARAM_VALUE.use_div2_clk_0 } {
	# Procedure called to update use_div2_clk_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.use_div2_clk_0 { PARAM_VALUE.use_div2_clk_0 } {
	# Procedure called to validate use_div2_clk_0
	return true
}

proc update_PARAM_VALUE.use_div2_clk_1 { PARAM_VALUE.use_div2_clk_1 } {
	# Procedure called to update use_div2_clk_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.use_div2_clk_1 { PARAM_VALUE.use_div2_clk_1 } {
	# Procedure called to validate use_div2_clk_1
	return true
}

proc update_PARAM_VALUE.use_div2_clk_2 { PARAM_VALUE.use_div2_clk_2 } {
	# Procedure called to update use_div2_clk_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.use_div2_clk_2 { PARAM_VALUE.use_div2_clk_2 } {
	# Procedure called to validate use_div2_clk_2
	return true
}

proc update_PARAM_VALUE.use_div2_clk_3 { PARAM_VALUE.use_div2_clk_3 } {
	# Procedure called to update use_div2_clk_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.use_div2_clk_3 { PARAM_VALUE.use_div2_clk_3 } {
	# Procedure called to validate use_div2_clk_3
	return true
}


proc update_MODELPARAM_VALUE.mem_size { MODELPARAM_VALUE.mem_size PARAM_VALUE.mem_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.mem_size}] ${MODELPARAM_VALUE.mem_size}
}

proc update_MODELPARAM_VALUE.axi_addr_top { MODELPARAM_VALUE.axi_addr_top PARAM_VALUE.axi_addr_top } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.axi_addr_top}] ${MODELPARAM_VALUE.axi_addr_top}
}

proc update_MODELPARAM_VALUE.use_div2_clk_0 { MODELPARAM_VALUE.use_div2_clk_0 PARAM_VALUE.use_div2_clk_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.use_div2_clk_0}] ${MODELPARAM_VALUE.use_div2_clk_0}
}

proc update_MODELPARAM_VALUE.use_div2_clk_1 { MODELPARAM_VALUE.use_div2_clk_1 PARAM_VALUE.use_div2_clk_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.use_div2_clk_1}] ${MODELPARAM_VALUE.use_div2_clk_1}
}

proc update_MODELPARAM_VALUE.use_div2_clk_2 { MODELPARAM_VALUE.use_div2_clk_2 PARAM_VALUE.use_div2_clk_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.use_div2_clk_2}] ${MODELPARAM_VALUE.use_div2_clk_2}
}

proc update_MODELPARAM_VALUE.use_div2_clk_3 { MODELPARAM_VALUE.use_div2_clk_3 PARAM_VALUE.use_div2_clk_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.use_div2_clk_3}] ${MODELPARAM_VALUE.use_div2_clk_3}
}

