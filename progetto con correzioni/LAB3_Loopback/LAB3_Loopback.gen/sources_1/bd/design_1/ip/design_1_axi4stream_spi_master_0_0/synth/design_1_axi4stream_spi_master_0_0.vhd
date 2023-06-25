-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: DigiLAB:ip:axi4stream_spi_master:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_axi4stream_spi_master_0_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_tready : OUT STD_LOGIC;
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cs_i : IN STD_LOGIC;
    cs_o : OUT STD_LOGIC;
    cs_t : OUT STD_LOGIC;
    sclk_i : IN STD_LOGIC;
    sclk_o : OUT STD_LOGIC;
    sclk_t : OUT STD_LOGIC;
    mosi_i : IN STD_LOGIC;
    mosi_o : OUT STD_LOGIC;
    mosi_t : OUT STD_LOGIC;
    miso_i : IN STD_LOGIC;
    miso_o : OUT STD_LOGIC;
    miso_t : OUT STD_LOGIC
  );
END design_1_axi4stream_spi_master_0_0;

ARCHITECTURE design_1_axi4stream_spi_master_0_0_arch OF design_1_axi4stream_spi_master_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_axi4stream_spi_master_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ipi_axis_lw_spi_master IS
    GENERIC (
      c_clkfreq : INTEGER;
      c_sclkfreq : INTEGER;
      c_cpol : INTEGER;
      c_cpha : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_tready : OUT STD_LOGIC;
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cs_i : IN STD_LOGIC;
      cs_o : OUT STD_LOGIC;
      cs_t : OUT STD_LOGIC;
      sclk_i : IN STD_LOGIC;
      sclk_o : OUT STD_LOGIC;
      sclk_t : OUT STD_LOGIC;
      mosi_i : IN STD_LOGIC;
      mosi_o : OUT STD_LOGIC;
      mosi_t : OUT STD_LOGIC;
      miso_i : IN STD_LOGIC;
      miso_o : OUT STD_LOGIC;
      miso_t : OUT STD_LOGIC
    );
  END COMPONENT ipi_axis_lw_spi_master;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_axi4stream_spi_master_0_0_arch: ARCHITECTURE IS "ipi_axis_lw_spi_master,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_axi4stream_spi_master_0_0_arch : ARCHITECTURE IS "design_1_axi4stream_spi_master_0_0,ipi_axis_lw_spi_master,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_axi4stream_spi_master_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF miso_t: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M IO1_T";
  ATTRIBUTE X_INTERFACE_INFO OF miso_o: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M IO1_O";
  ATTRIBUTE X_INTERFACE_INFO OF miso_i: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M IO1_I";
  ATTRIBUTE X_INTERFACE_INFO OF mosi_t: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M IO0_T";
  ATTRIBUTE X_INTERFACE_INFO OF mosi_o: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M IO0_O";
  ATTRIBUTE X_INTERFACE_INFO OF mosi_i: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M IO0_I";
  ATTRIBUTE X_INTERFACE_INFO OF sclk_t: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M SCK_T";
  ATTRIBUTE X_INTERFACE_INFO OF sclk_o: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M SCK_O";
  ATTRIBUTE X_INTERFACE_INFO OF sclk_i: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M SCK_I";
  ATTRIBUTE X_INTERFACE_INFO OF cs_t: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M SS_T";
  ATTRIBUTE X_INTERFACE_INFO OF cs_o: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M SS_O";
  ATTRIBUTE X_INTERFACE_INFO OF cs_i: SIGNAL IS "xilinx.com:interface:spi:1.0 SPI_M SS_I";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXIS:M_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
BEGIN
  U0 : ipi_axis_lw_spi_master
    GENERIC MAP (
      c_clkfreq => 100000000,
      c_sclkfreq => 5000,
      c_cpol => 0,
      c_cpha => 0
    )
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tdata => s_axis_tdata,
      s_axis_tready => s_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tdata => m_axis_tdata,
      cs_i => cs_i,
      cs_o => cs_o,
      cs_t => cs_t,
      sclk_i => sclk_i,
      sclk_o => sclk_o,
      sclk_t => sclk_t,
      mosi_i => mosi_i,
      mosi_o => mosi_o,
      mosi_t => mosi_t,
      miso_i => miso_i,
      miso_o => miso_o,
      miso_t => miso_t
    );
END design_1_axi4stream_spi_master_0_0_arch;
