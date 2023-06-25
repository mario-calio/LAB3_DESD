-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 20:28:33 2023
-- Host        : Pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mario/Desktop/Group_11A_assignement3.xpr/LAB3_Loopback/LAB3_Loopback.gen/sources_1/bd/design_1/ip/design_1_dual_moving_average_0_0/design_1_dual_moving_average_0_0_stub.vhdl
-- Design      : design_1_dual_moving_average_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_dual_moving_average_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    filter_enable : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tready : in STD_LOGIC
  );

end design_1_dual_moving_average_0_0;

architecture stub of design_1_dual_moving_average_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,filter_enable,s_axis_tvalid,s_axis_tlast,s_axis_tdata[23:0],s_axis_tready,m_axis_tvalid,m_axis_tlast,m_axis_tdata[23:0],m_axis_tready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dual_moving_average,Vivado 2020.2";
begin
end;
