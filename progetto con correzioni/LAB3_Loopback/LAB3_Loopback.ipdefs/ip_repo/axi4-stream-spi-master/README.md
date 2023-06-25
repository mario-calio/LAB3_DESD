# AXI4-Stream SPI Master

This module implements an SPI Master.

This module is based on the "SPI Master Lightweight" module on OpenCores, freely
downloadable from [here](https://opencores.org/projects/spi_master_lightweight),
with minimal modifications to add AXI4-Stream interfaces and reset signal.

The cs signal is automatically asserted half clock cycle (SCLK) before the first
rising edge of SCLK (with CPOL=0 and CPHA=0) and deasserted half clock cycle
(SCLK) after the last falling edge of SCLK (with CPOL=0 and CPHA=0).

## Generics
 * c_clkfreq: aclk frequency (in Hz)
 * c_sclkfreq: desired sclk frequency (in Hz); must be <= c_clkfreq/8
 * c_cpol: SPI CPOL
 * c_cpha: SPI CPHA

## Slave AXI4-Stream

Data passed to this module through this interface are serialized and send
through the MOSI port, MSbit first.

The CS signal will go low at the beginning of the transfer and will stay low
until this module has data to send. In other words, keep s_axis_tvalid high and
keep sending data if you want an uninterrupted transfer with CS always low.

## Master AXI4-Stream

Data received by this module will be sent through this interface. Note that this
interface lacks a tready signal.

For how the SPI protocol works, data can be received only when data is
transmitted by the master so, if you want to receive N bytes, you have to send
N bytes (by writing on the Slave AXI4-Stream interface).
