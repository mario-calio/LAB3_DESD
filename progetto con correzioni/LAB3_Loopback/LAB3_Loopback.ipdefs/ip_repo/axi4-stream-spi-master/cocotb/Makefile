export PYTHON_BIN=python3

PWD				:= $(shell pwd)

SIM				?= ghdl
SIM_ARGS		?= --wave=$(PWD)/build/waveform.ghw -gc_clkfreq=100000000 -gc_sclkfreq=10000000
GHDL_ARGS		?= -fsynopsys

TOPLEVEL_LANG	= vhdl

SIM_BUILD		= $(PWD)/build
MODULE			= tester_axis_lw_spi_master
TOPLEVEL		= axis_lw_spi_master

HDL_DIR			= $(PWD)/../hdl
VHDL_SOURCES	= \
	$(HDL_DIR)/spi_master_lightweight/rtl/lw_spi_master.vhd \
	$(HDL_DIR)/axis_lw_spi_master.vhd

include $(shell cocotb-config --makefiles)/Makefile.sim
