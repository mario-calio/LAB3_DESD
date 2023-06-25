-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 20:26:20 2023
-- Host        : Pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mario/Desktop/Group_11A_assignement3.xpr/LAB3_Loopback/LAB3_Loopback.gen/sources_1/bd/design_1/ip/design_1_axis_dual_i2s_0_2/design_1_axis_dual_i2s_0_2_stub.vhdl
-- Design      : design_1_axis_dual_i2s_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axis_dual_i2s_0_2 is
  Port ( 
    i2s_clk : in STD_LOGIC;
    i2s_resetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    tx_mclk : out STD_LOGIC;
    tx_lrck : out STD_LOGIC;
    tx_sclk : out STD_LOGIC;
    tx_sdout : out STD_LOGIC;
    rx_mclk : out STD_LOGIC;
    rx_lrck : out STD_LOGIC;
    rx_sclk : out STD_LOGIC;
    rx_sdin : in STD_LOGIC
  );

end design_1_axis_dual_i2s_0_2;

architecture stub of design_1_axis_dual_i2s_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i2s_clk,i2s_resetn,aclk,aresetn,s_axis_tdata[23:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,m_axis_tdata[23:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,tx_mclk,tx_lrck,tx_sclk,tx_sdout,rx_mclk,rx_lrck,rx_sclk,rx_sdin";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_i2s_wrapper,Vivado 2020.2";
begin
end;
