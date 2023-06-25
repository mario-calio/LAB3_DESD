# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "c_clkfreq" -parent ${Page_0}
  #Adding Group
  set SPI_parameters [ipgui::add_group $IPINST -name "SPI parameters" -parent ${Page_0}]
  set c_sclkfreq [ipgui::add_param $IPINST -name "c_sclkfreq" -parent ${SPI_parameters}]
  set_property tooltip {Desired SCLK frequency (must be less or equal than aclk_freq/8)} ${c_sclkfreq}
  ipgui::add_param $IPINST -name "c_cpol" -parent ${SPI_parameters}
  ipgui::add_param $IPINST -name "c_cpha" -parent ${SPI_parameters}



}

proc update_PARAM_VALUE.c_clkfreq { PARAM_VALUE.c_clkfreq } {
	# Procedure called to update c_clkfreq when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.c_clkfreq { PARAM_VALUE.c_clkfreq } {
	# Procedure called to validate c_clkfreq
	return true
}

proc update_PARAM_VALUE.c_cpha { PARAM_VALUE.c_cpha } {
	# Procedure called to update c_cpha when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.c_cpha { PARAM_VALUE.c_cpha } {
	# Procedure called to validate c_cpha
	return true
}

proc update_PARAM_VALUE.c_cpol { PARAM_VALUE.c_cpol } {
	# Procedure called to update c_cpol when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.c_cpol { PARAM_VALUE.c_cpol } {
	# Procedure called to validate c_cpol
	return true
}

proc update_PARAM_VALUE.c_sclkfreq { PARAM_VALUE.c_sclkfreq } {
	# Procedure called to update c_sclkfreq when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.c_sclkfreq { PARAM_VALUE.c_sclkfreq } {
	# Procedure called to validate c_sclkfreq
	return true
}


proc update_MODELPARAM_VALUE.c_clkfreq { MODELPARAM_VALUE.c_clkfreq PARAM_VALUE.c_clkfreq } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.c_clkfreq}] ${MODELPARAM_VALUE.c_clkfreq}
}

proc update_MODELPARAM_VALUE.c_sclkfreq { MODELPARAM_VALUE.c_sclkfreq PARAM_VALUE.c_sclkfreq } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.c_sclkfreq}] ${MODELPARAM_VALUE.c_sclkfreq}
}

proc update_MODELPARAM_VALUE.c_cpol { MODELPARAM_VALUE.c_cpol PARAM_VALUE.c_cpol } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.c_cpol}] ${MODELPARAM_VALUE.c_cpol}
}

proc update_MODELPARAM_VALUE.c_cpha { MODELPARAM_VALUE.c_cpha PARAM_VALUE.c_cpha } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.c_cpha}] ${MODELPARAM_VALUE.c_cpha}
}

