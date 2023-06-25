-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 20:28:33 2023
-- Host        : Pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/mario/Desktop/Group_11A_assignement3.xpr/LAB3_Loopback/LAB3_Loopback.gen/sources_1/bd/design_1/ip/design_1_dual_moving_average_0_0/design_1_dual_moving_average_0_0_sim_netlist.vhdl
-- Design      : design_1_dual_moving_average_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dual_moving_average_0_0_dual_moving_average is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    filter_enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dual_moving_average_0_0_dual_moving_average : entity is "dual_moving_average";
end design_1_dual_moving_average_0_0_dual_moving_average;

architecture STRUCTURE of design_1_dual_moving_average_0_0_dual_moving_average is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal counter0 : STD_LOGIC;
  signal \counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_1\ : STD_LOGIC;
  signal \counter0_carry__4_n_2\ : STD_LOGIC;
  signal \counter0_carry__4_n_3\ : STD_LOGIC;
  signal \counter0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_n_1\ : STD_LOGIC;
  signal \counter0_carry__5_n_2\ : STD_LOGIC;
  signal \counter0_carry__5_n_3\ : STD_LOGIC;
  signal \counter0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__6_n_2\ : STD_LOGIC;
  signal \counter0_carry__6_n_3\ : STD_LOGIC;
  signal counter0_carry_i_1_n_0 : STD_LOGIC;
  signal counter0_carry_i_2_n_0 : STD_LOGIC;
  signal counter0_carry_i_3_n_0 : STD_LOGIC;
  signal counter0_carry_i_4_n_0 : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[2]_i_4_n_0\ : STD_LOGIC;
  signal \counter[2]_i_5_n_0\ : STD_LOGIC;
  signal \counter[2]_i_6_n_0\ : STD_LOGIC;
  signal \counter[2]_i_7_n_0\ : STD_LOGIC;
  signal \counter[2]_i_8_n_0\ : STD_LOGIC;
  signal \counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter_reg_n_0_[24]\ : STD_LOGIC;
  signal \counter_reg_n_0_[25]\ : STD_LOGIC;
  signal \counter_reg_n_0_[26]\ : STD_LOGIC;
  signal \counter_reg_n_0_[27]\ : STD_LOGIC;
  signal \counter_reg_n_0_[28]\ : STD_LOGIC;
  signal \counter_reg_n_0_[29]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[30]\ : STD_LOGIC;
  signal \counter_reg_n_0_[31]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal is_filtering : STD_LOGIC;
  signal is_filtering_i_1_n_0 : STD_LOGIC;
  signal m_axis_tdata_int_left : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m_axis_tdata_int_left0 : STD_LOGIC;
  signal \m_axis_tdata_int_left[23]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int_left[23]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[10]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[11]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[12]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[13]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[14]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[15]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[16]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[17]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[18]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[19]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[20]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[21]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[22]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[23]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[2]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[3]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[4]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[5]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[6]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[7]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[8]\ : STD_LOGIC;
  signal \m_axis_tdata_int_left_reg_n_0_[9]\ : STD_LOGIC;
  signal m_axis_tdata_int_right : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m_axis_tdata_int_right0 : STD_LOGIC;
  signal \m_axis_tdata_int_right[23]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int_right[23]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[10]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[11]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[12]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[13]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[14]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[15]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[16]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[17]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[18]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[19]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[20]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[21]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[22]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[23]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[2]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[3]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[4]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[5]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[6]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[7]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[8]\ : STD_LOGIC;
  signal \m_axis_tdata_int_right_reg_n_0_[9]\ : STD_LOGIC;
  signal \mem_dx_reg[0]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \mem_dx_reg[1][0]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][10]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][11]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][12]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][13]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][14]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][15]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][16]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][17]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][18]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][19]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][1]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][20]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][21]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][22]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][23]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][2]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][3]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][4]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][5]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][6]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][7]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][8]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[1][9]_srl31_n_0\ : STD_LOGIC;
  signal \mem_dx_reg[31]0\ : STD_LOGIC;
  signal \mem_sx_reg[0]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \mem_sx_reg[1][0]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][10]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][11]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][12]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][13]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][14]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][15]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][16]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][17]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][18]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][19]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][1]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][20]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][21]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][22]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][23]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][2]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][3]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][4]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][5]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][6]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][7]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][8]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[1][9]_srl31_n_0\ : STD_LOGIC;
  signal \mem_sx_reg[31]0\ : STD_LOGIC;
  signal output_temp : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \output_temp[29]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[29]_i_3_n_0\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[0]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[10]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[11]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[12]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[13]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[14]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[15]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[16]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[17]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[18]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[19]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[1]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[20]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[21]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[22]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[23]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[24]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[25]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[26]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[27]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[28]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[29]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[2]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[3]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[4]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[5]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[6]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[7]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[8]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 29 to 29 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sum_dx : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \sum_dx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__0_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__0_n_1\ : STD_LOGIC;
  signal \sum_dx0_carry__0_n_2\ : STD_LOGIC;
  signal \sum_dx0_carry__0_n_3\ : STD_LOGIC;
  signal \sum_dx0_carry__0_n_4\ : STD_LOGIC;
  signal \sum_dx0_carry__0_n_5\ : STD_LOGIC;
  signal \sum_dx0_carry__0_n_6\ : STD_LOGIC;
  signal \sum_dx0_carry__0_n_7\ : STD_LOGIC;
  signal \sum_dx0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__1_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__1_n_1\ : STD_LOGIC;
  signal \sum_dx0_carry__1_n_2\ : STD_LOGIC;
  signal \sum_dx0_carry__1_n_3\ : STD_LOGIC;
  signal \sum_dx0_carry__1_n_4\ : STD_LOGIC;
  signal \sum_dx0_carry__1_n_5\ : STD_LOGIC;
  signal \sum_dx0_carry__1_n_6\ : STD_LOGIC;
  signal \sum_dx0_carry__1_n_7\ : STD_LOGIC;
  signal \sum_dx0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__2_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__2_n_1\ : STD_LOGIC;
  signal \sum_dx0_carry__2_n_2\ : STD_LOGIC;
  signal \sum_dx0_carry__2_n_3\ : STD_LOGIC;
  signal \sum_dx0_carry__2_n_4\ : STD_LOGIC;
  signal \sum_dx0_carry__2_n_5\ : STD_LOGIC;
  signal \sum_dx0_carry__2_n_6\ : STD_LOGIC;
  signal \sum_dx0_carry__2_n_7\ : STD_LOGIC;
  signal \sum_dx0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__3_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__3_n_1\ : STD_LOGIC;
  signal \sum_dx0_carry__3_n_2\ : STD_LOGIC;
  signal \sum_dx0_carry__3_n_3\ : STD_LOGIC;
  signal \sum_dx0_carry__3_n_4\ : STD_LOGIC;
  signal \sum_dx0_carry__3_n_5\ : STD_LOGIC;
  signal \sum_dx0_carry__3_n_6\ : STD_LOGIC;
  signal \sum_dx0_carry__3_n_7\ : STD_LOGIC;
  signal \sum_dx0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__4_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__4_n_1\ : STD_LOGIC;
  signal \sum_dx0_carry__4_n_2\ : STD_LOGIC;
  signal \sum_dx0_carry__4_n_3\ : STD_LOGIC;
  signal \sum_dx0_carry__4_n_4\ : STD_LOGIC;
  signal \sum_dx0_carry__4_n_5\ : STD_LOGIC;
  signal \sum_dx0_carry__4_n_6\ : STD_LOGIC;
  signal \sum_dx0_carry__4_n_7\ : STD_LOGIC;
  signal \sum_dx0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__5_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__5_n_1\ : STD_LOGIC;
  signal \sum_dx0_carry__5_n_2\ : STD_LOGIC;
  signal \sum_dx0_carry__5_n_3\ : STD_LOGIC;
  signal \sum_dx0_carry__5_n_4\ : STD_LOGIC;
  signal \sum_dx0_carry__5_n_5\ : STD_LOGIC;
  signal \sum_dx0_carry__5_n_6\ : STD_LOGIC;
  signal \sum_dx0_carry__5_n_7\ : STD_LOGIC;
  signal \sum_dx0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \sum_dx0_carry__6_n_3\ : STD_LOGIC;
  signal \sum_dx0_carry__6_n_6\ : STD_LOGIC;
  signal \sum_dx0_carry__6_n_7\ : STD_LOGIC;
  signal sum_dx0_carry_i_1_n_0 : STD_LOGIC;
  signal sum_dx0_carry_i_2_n_0 : STD_LOGIC;
  signal sum_dx0_carry_i_3_n_0 : STD_LOGIC;
  signal sum_dx0_carry_i_4_n_0 : STD_LOGIC;
  signal sum_dx0_carry_i_5_n_0 : STD_LOGIC;
  signal sum_dx0_carry_i_6_n_0 : STD_LOGIC;
  signal sum_dx0_carry_i_7_n_0 : STD_LOGIC;
  signal sum_dx0_carry_i_8_n_0 : STD_LOGIC;
  signal sum_dx0_carry_n_0 : STD_LOGIC;
  signal sum_dx0_carry_n_1 : STD_LOGIC;
  signal sum_dx0_carry_n_2 : STD_LOGIC;
  signal sum_dx0_carry_n_3 : STD_LOGIC;
  signal sum_dx0_carry_n_4 : STD_LOGIC;
  signal sum_dx0_carry_n_5 : STD_LOGIC;
  signal sum_dx0_carry_n_6 : STD_LOGIC;
  signal sum_dx0_carry_n_7 : STD_LOGIC;
  signal sum_sx : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \sum_sx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__0_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__0_n_1\ : STD_LOGIC;
  signal \sum_sx0_carry__0_n_2\ : STD_LOGIC;
  signal \sum_sx0_carry__0_n_3\ : STD_LOGIC;
  signal \sum_sx0_carry__0_n_4\ : STD_LOGIC;
  signal \sum_sx0_carry__0_n_5\ : STD_LOGIC;
  signal \sum_sx0_carry__0_n_6\ : STD_LOGIC;
  signal \sum_sx0_carry__0_n_7\ : STD_LOGIC;
  signal \sum_sx0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__1_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__1_n_1\ : STD_LOGIC;
  signal \sum_sx0_carry__1_n_2\ : STD_LOGIC;
  signal \sum_sx0_carry__1_n_3\ : STD_LOGIC;
  signal \sum_sx0_carry__1_n_4\ : STD_LOGIC;
  signal \sum_sx0_carry__1_n_5\ : STD_LOGIC;
  signal \sum_sx0_carry__1_n_6\ : STD_LOGIC;
  signal \sum_sx0_carry__1_n_7\ : STD_LOGIC;
  signal \sum_sx0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__2_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__2_n_1\ : STD_LOGIC;
  signal \sum_sx0_carry__2_n_2\ : STD_LOGIC;
  signal \sum_sx0_carry__2_n_3\ : STD_LOGIC;
  signal \sum_sx0_carry__2_n_4\ : STD_LOGIC;
  signal \sum_sx0_carry__2_n_5\ : STD_LOGIC;
  signal \sum_sx0_carry__2_n_6\ : STD_LOGIC;
  signal \sum_sx0_carry__2_n_7\ : STD_LOGIC;
  signal \sum_sx0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__3_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__3_n_1\ : STD_LOGIC;
  signal \sum_sx0_carry__3_n_2\ : STD_LOGIC;
  signal \sum_sx0_carry__3_n_3\ : STD_LOGIC;
  signal \sum_sx0_carry__3_n_4\ : STD_LOGIC;
  signal \sum_sx0_carry__3_n_5\ : STD_LOGIC;
  signal \sum_sx0_carry__3_n_6\ : STD_LOGIC;
  signal \sum_sx0_carry__3_n_7\ : STD_LOGIC;
  signal \sum_sx0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__4_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__4_n_1\ : STD_LOGIC;
  signal \sum_sx0_carry__4_n_2\ : STD_LOGIC;
  signal \sum_sx0_carry__4_n_3\ : STD_LOGIC;
  signal \sum_sx0_carry__4_n_4\ : STD_LOGIC;
  signal \sum_sx0_carry__4_n_5\ : STD_LOGIC;
  signal \sum_sx0_carry__4_n_6\ : STD_LOGIC;
  signal \sum_sx0_carry__4_n_7\ : STD_LOGIC;
  signal \sum_sx0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__5_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__5_n_1\ : STD_LOGIC;
  signal \sum_sx0_carry__5_n_2\ : STD_LOGIC;
  signal \sum_sx0_carry__5_n_3\ : STD_LOGIC;
  signal \sum_sx0_carry__5_n_4\ : STD_LOGIC;
  signal \sum_sx0_carry__5_n_5\ : STD_LOGIC;
  signal \sum_sx0_carry__5_n_6\ : STD_LOGIC;
  signal \sum_sx0_carry__5_n_7\ : STD_LOGIC;
  signal \sum_sx0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \sum_sx0_carry__6_n_3\ : STD_LOGIC;
  signal \sum_sx0_carry__6_n_6\ : STD_LOGIC;
  signal \sum_sx0_carry__6_n_7\ : STD_LOGIC;
  signal sum_sx0_carry_i_1_n_0 : STD_LOGIC;
  signal sum_sx0_carry_i_2_n_0 : STD_LOGIC;
  signal sum_sx0_carry_i_3_n_0 : STD_LOGIC;
  signal sum_sx0_carry_i_4_n_0 : STD_LOGIC;
  signal sum_sx0_carry_i_5_n_0 : STD_LOGIC;
  signal sum_sx0_carry_i_6_n_0 : STD_LOGIC;
  signal sum_sx0_carry_i_7_n_0 : STD_LOGIC;
  signal sum_sx0_carry_i_8_n_0 : STD_LOGIC;
  signal sum_sx0_carry_n_0 : STD_LOGIC;
  signal sum_sx0_carry_n_1 : STD_LOGIC;
  signal sum_sx0_carry_n_2 : STD_LOGIC;
  signal sum_sx0_carry_n_3 : STD_LOGIC;
  signal sum_sx0_carry_n_4 : STD_LOGIC;
  signal sum_sx0_carry_n_5 : STD_LOGIC;
  signal sum_sx0_carry_n_6 : STD_LOGIC;
  signal sum_sx0_carry_n_7 : STD_LOGIC;
  signal \NLW_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mem_dx_reg[1][0]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][10]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][11]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][12]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][13]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][14]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][15]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][16]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][17]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][18]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][19]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][1]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][20]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][21]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][22]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][23]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][2]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][3]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][4]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][5]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][6]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][7]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][8]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_dx_reg[1][9]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][0]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][10]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][11]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][12]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][13]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][14]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][15]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][16]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][17]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][18]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][19]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][1]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][20]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][21]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][22]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][23]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][2]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][3]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][4]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][5]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][6]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][7]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][8]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mem_sx_reg[1][9]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_sum_dx0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_dx0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum_sx0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_sx0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_11\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_13\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_15\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_9\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "waiting:000,get_right:001,get_left:100,output_left:110,computing_left:101,output_right:011,computing_right:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "waiting:000,get_right:001,get_left:100,output_left:110,computing_left:101,output_right:011,computing_right:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "waiting:000,get_right:001,get_left:100,output_left:110,computing_left:101,output_right:011,computing_right:010";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[2]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[2]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[2]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[2]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[2]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[31]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of is_filtering_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata_int_left[23]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata_int_right[23]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair7";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \mem_dx_reg[1][0]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name : string;
  attribute srl_name of \mem_dx_reg[1][0]_srl31\ : label is "\U0/mem_dx_reg[1][0]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][10]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][10]_srl31\ : label is "\U0/mem_dx_reg[1][10]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][11]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][11]_srl31\ : label is "\U0/mem_dx_reg[1][11]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][12]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][12]_srl31\ : label is "\U0/mem_dx_reg[1][12]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][13]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][13]_srl31\ : label is "\U0/mem_dx_reg[1][13]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][14]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][14]_srl31\ : label is "\U0/mem_dx_reg[1][14]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][15]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][15]_srl31\ : label is "\U0/mem_dx_reg[1][15]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][16]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][16]_srl31\ : label is "\U0/mem_dx_reg[1][16]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][17]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][17]_srl31\ : label is "\U0/mem_dx_reg[1][17]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][18]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][18]_srl31\ : label is "\U0/mem_dx_reg[1][18]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][19]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][19]_srl31\ : label is "\U0/mem_dx_reg[1][19]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][1]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][1]_srl31\ : label is "\U0/mem_dx_reg[1][1]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][20]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][20]_srl31\ : label is "\U0/mem_dx_reg[1][20]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][21]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][21]_srl31\ : label is "\U0/mem_dx_reg[1][21]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][22]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][22]_srl31\ : label is "\U0/mem_dx_reg[1][22]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][23]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][23]_srl31\ : label is "\U0/mem_dx_reg[1][23]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][2]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][2]_srl31\ : label is "\U0/mem_dx_reg[1][2]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][3]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][3]_srl31\ : label is "\U0/mem_dx_reg[1][3]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][4]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][4]_srl31\ : label is "\U0/mem_dx_reg[1][4]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][5]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][5]_srl31\ : label is "\U0/mem_dx_reg[1][5]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][6]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][6]_srl31\ : label is "\U0/mem_dx_reg[1][6]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][7]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][7]_srl31\ : label is "\U0/mem_dx_reg[1][7]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][8]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][8]_srl31\ : label is "\U0/mem_dx_reg[1][8]_srl31 ";
  attribute srl_bus_name of \mem_dx_reg[1][9]_srl31\ : label is "\U0/mem_dx_reg[1] ";
  attribute srl_name of \mem_dx_reg[1][9]_srl31\ : label is "\U0/mem_dx_reg[1][9]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][0]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][0]_srl31\ : label is "\U0/mem_sx_reg[1][0]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][10]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][10]_srl31\ : label is "\U0/mem_sx_reg[1][10]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][11]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][11]_srl31\ : label is "\U0/mem_sx_reg[1][11]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][12]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][12]_srl31\ : label is "\U0/mem_sx_reg[1][12]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][13]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][13]_srl31\ : label is "\U0/mem_sx_reg[1][13]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][14]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][14]_srl31\ : label is "\U0/mem_sx_reg[1][14]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][15]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][15]_srl31\ : label is "\U0/mem_sx_reg[1][15]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][16]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][16]_srl31\ : label is "\U0/mem_sx_reg[1][16]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][17]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][17]_srl31\ : label is "\U0/mem_sx_reg[1][17]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][18]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][18]_srl31\ : label is "\U0/mem_sx_reg[1][18]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][19]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][19]_srl31\ : label is "\U0/mem_sx_reg[1][19]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][1]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][1]_srl31\ : label is "\U0/mem_sx_reg[1][1]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][20]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][20]_srl31\ : label is "\U0/mem_sx_reg[1][20]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][21]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][21]_srl31\ : label is "\U0/mem_sx_reg[1][21]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][22]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][22]_srl31\ : label is "\U0/mem_sx_reg[1][22]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][23]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][23]_srl31\ : label is "\U0/mem_sx_reg[1][23]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][2]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][2]_srl31\ : label is "\U0/mem_sx_reg[1][2]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][3]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][3]_srl31\ : label is "\U0/mem_sx_reg[1][3]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][4]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][4]_srl31\ : label is "\U0/mem_sx_reg[1][4]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][5]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][5]_srl31\ : label is "\U0/mem_sx_reg[1][5]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][6]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][6]_srl31\ : label is "\U0/mem_sx_reg[1][6]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][7]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][7]_srl31\ : label is "\U0/mem_sx_reg[1][7]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][8]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][8]_srl31\ : label is "\U0/mem_sx_reg[1][8]_srl31 ";
  attribute srl_bus_name of \mem_sx_reg[1][9]_srl31\ : label is "\U0/mem_sx_reg[1] ";
  attribute srl_name of \mem_sx_reg[1][9]_srl31\ : label is "\U0/mem_sx_reg[1][9]_srl31 ";
  attribute SOFT_HLUTNM of \output_temp[29]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of sum_dx0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum_dx0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_dx0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_dx0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_dx0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_dx0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_dx0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_dx0_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of sum_sx0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum_sx0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_sx0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_sx0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_sx0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_sx0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_sx0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_sx0_carry__6\ : label is 35;
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEFFAAAA0200"
    )
        port map (
      I0 => \state__1\(0),
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0C3A"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => is_filtering,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => \state__1\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEFFAAAA0200"
    )
        port map (
      I0 => \state__1\(1),
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D3C"
    )
        port map (
      I0 => is_filtering,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      O => \state__1\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEFFAAAA0200"
    )
        port map (
      I0 => \state__1\(2),
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[13]\,
      I1 => \counter_reg_n_0_[12]\,
      I2 => \counter_reg_n_0_[15]\,
      I3 => \counter_reg_n_0_[14]\,
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => \counter_reg_n_0_[8]\,
      I2 => \counter_reg_n_0_[11]\,
      I3 => \counter_reg_n_0_[10]\,
      O => \FSM_sequential_state[2]_i_11_n_0\
    );
\FSM_sequential_state[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[21]\,
      I1 => \counter_reg_n_0_[20]\,
      I2 => \counter_reg_n_0_[23]\,
      I3 => \counter_reg_n_0_[22]\,
      O => \FSM_sequential_state[2]_i_12_n_0\
    );
\FSM_sequential_state[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[17]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \counter_reg_n_0_[19]\,
      I3 => \counter_reg_n_0_[18]\,
      O => \FSM_sequential_state[2]_i_13_n_0\
    );
\FSM_sequential_state[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[29]\,
      I1 => \counter_reg_n_0_[28]\,
      I2 => \counter_reg_n_0_[31]\,
      I3 => \counter_reg_n_0_[30]\,
      O => \FSM_sequential_state[2]_i_14_n_0\
    );
\FSM_sequential_state[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[25]\,
      I1 => \counter_reg_n_0_[24]\,
      I2 => \counter_reg_n_0_[27]\,
      I3 => \counter_reg_n_0_[26]\,
      O => \FSM_sequential_state[2]_i_15_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50AB"
    )
        port map (
      I0 => \state__0\(2),
      I1 => s_axis_tlast,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \state__1\(2)
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_8_n_0\,
      I1 => \FSM_sequential_state[2]_i_9_n_0\,
      I2 => \FSM_sequential_state[2]_i_10_n_0\,
      I3 => \FSM_sequential_state[2]_i_11_n_0\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_12_n_0\,
      I1 => \FSM_sequential_state[2]_i_13_n_0\,
      I2 => \FSM_sequential_state[2]_i_14_n_0\,
      I3 => \FSM_sequential_state[2]_i_15_n_0\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"43"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0AC0AF"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      I1 => \counter_reg_n_0_[4]\,
      I2 => \counter_reg_n_0_[7]\,
      I3 => \counter_reg_n_0_[6]\,
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[3]\,
      I3 => \counter_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2)
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3) => \counter_reg_n_0_[4]\,
      DI(2) => \counter_reg_n_0_[3]\,
      DI(1) => \counter_reg_n_0_[2]\,
      DI(0) => \counter_reg_n_0_[1]\,
      O(3 downto 0) => in12(4 downto 1),
      S(3) => counter0_carry_i_1_n_0,
      S(2) => counter0_carry_i_2_n_0,
      S(1) => counter0_carry_i_3_n_0,
      S(0) => counter0_carry_i_4_n_0
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \counter_reg_n_0_[8]\,
      DI(2) => \counter_reg_n_0_[7]\,
      DI(1) => \counter_reg_n_0_[6]\,
      DI(0) => \counter_reg_n_0_[5]\,
      O(3 downto 0) => in12(8 downto 5),
      S(3) => \counter0_carry__0_i_1_n_0\,
      S(2) => \counter0_carry__0_i_2_n_0\,
      S(1) => \counter0_carry__0_i_3_n_0\,
      S(0) => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[8]\,
      O => \counter0_carry__0_i_1_n_0\
    );
\counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      O => \counter0_carry__0_i_2_n_0\
    );
\counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      O => \counter0_carry__0_i_3_n_0\
    );
\counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      O => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \counter_reg_n_0_[12]\,
      DI(2) => \counter_reg_n_0_[11]\,
      DI(1) => \counter_reg_n_0_[10]\,
      DI(0) => \counter_reg_n_0_[9]\,
      O(3 downto 0) => in12(12 downto 9),
      S(3) => \counter0_carry__1_i_1_n_0\,
      S(2) => \counter0_carry__1_i_2_n_0\,
      S(1) => \counter0_carry__1_i_3_n_0\,
      S(0) => \counter0_carry__1_i_4_n_0\
    );
\counter0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[12]\,
      O => \counter0_carry__1_i_1_n_0\
    );
\counter0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[11]\,
      O => \counter0_carry__1_i_2_n_0\
    );
\counter0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[10]\,
      O => \counter0_carry__1_i_3_n_0\
    );
\counter0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      O => \counter0_carry__1_i_4_n_0\
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \counter_reg_n_0_[16]\,
      DI(2) => \counter_reg_n_0_[15]\,
      DI(1) => \counter_reg_n_0_[14]\,
      DI(0) => \counter_reg_n_0_[13]\,
      O(3 downto 0) => in12(16 downto 13),
      S(3) => \counter0_carry__2_i_1_n_0\,
      S(2) => \counter0_carry__2_i_2_n_0\,
      S(1) => \counter0_carry__2_i_3_n_0\,
      S(0) => \counter0_carry__2_i_4_n_0\
    );
\counter0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[16]\,
      O => \counter0_carry__2_i_1_n_0\
    );
\counter0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      O => \counter0_carry__2_i_2_n_0\
    );
\counter0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[14]\,
      O => \counter0_carry__2_i_3_n_0\
    );
\counter0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[13]\,
      O => \counter0_carry__2_i_4_n_0\
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \counter0_carry__3_n_0\,
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \counter_reg_n_0_[20]\,
      DI(2) => \counter_reg_n_0_[19]\,
      DI(1) => \counter_reg_n_0_[18]\,
      DI(0) => \counter_reg_n_0_[17]\,
      O(3 downto 0) => in12(20 downto 17),
      S(3) => \counter0_carry__3_i_1_n_0\,
      S(2) => \counter0_carry__3_i_2_n_0\,
      S(1) => \counter0_carry__3_i_3_n_0\,
      S(0) => \counter0_carry__3_i_4_n_0\
    );
\counter0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[20]\,
      O => \counter0_carry__3_i_1_n_0\
    );
\counter0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[19]\,
      O => \counter0_carry__3_i_2_n_0\
    );
\counter0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[18]\,
      O => \counter0_carry__3_i_3_n_0\
    );
\counter0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[17]\,
      O => \counter0_carry__3_i_4_n_0\
    );
\counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__3_n_0\,
      CO(3) => \counter0_carry__4_n_0\,
      CO(2) => \counter0_carry__4_n_1\,
      CO(1) => \counter0_carry__4_n_2\,
      CO(0) => \counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \counter_reg_n_0_[24]\,
      DI(2) => \counter_reg_n_0_[23]\,
      DI(1) => \counter_reg_n_0_[22]\,
      DI(0) => \counter_reg_n_0_[21]\,
      O(3 downto 0) => in12(24 downto 21),
      S(3) => \counter0_carry__4_i_1_n_0\,
      S(2) => \counter0_carry__4_i_2_n_0\,
      S(1) => \counter0_carry__4_i_3_n_0\,
      S(0) => \counter0_carry__4_i_4_n_0\
    );
\counter0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[24]\,
      O => \counter0_carry__4_i_1_n_0\
    );
\counter0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[23]\,
      O => \counter0_carry__4_i_2_n_0\
    );
\counter0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[22]\,
      O => \counter0_carry__4_i_3_n_0\
    );
\counter0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[21]\,
      O => \counter0_carry__4_i_4_n_0\
    );
\counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__4_n_0\,
      CO(3) => \counter0_carry__5_n_0\,
      CO(2) => \counter0_carry__5_n_1\,
      CO(1) => \counter0_carry__5_n_2\,
      CO(0) => \counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \counter_reg_n_0_[28]\,
      DI(2) => \counter_reg_n_0_[27]\,
      DI(1) => \counter_reg_n_0_[26]\,
      DI(0) => \counter_reg_n_0_[25]\,
      O(3 downto 0) => in12(28 downto 25),
      S(3) => \counter0_carry__5_i_1_n_0\,
      S(2) => \counter0_carry__5_i_2_n_0\,
      S(1) => \counter0_carry__5_i_3_n_0\,
      S(0) => \counter0_carry__5_i_4_n_0\
    );
\counter0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[28]\,
      O => \counter0_carry__5_i_1_n_0\
    );
\counter0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[27]\,
      O => \counter0_carry__5_i_2_n_0\
    );
\counter0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[26]\,
      O => \counter0_carry__5_i_3_n_0\
    );
\counter0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[25]\,
      O => \counter0_carry__5_i_4_n_0\
    );
\counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter0_carry__6_n_2\,
      CO(0) => \counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \counter_reg_n_0_[30]\,
      DI(0) => \counter_reg_n_0_[29]\,
      O(3) => \NLW_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in12(31 downto 29),
      S(3) => '0',
      S(2) => \counter0_carry__6_i_1_n_0\,
      S(1) => \counter0_carry__6_i_2_n_0\,
      S(0) => \counter0_carry__6_i_3_n_0\
    );
\counter0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[31]\,
      O => \counter0_carry__6_i_1_n_0\
    );
\counter0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[30]\,
      O => \counter0_carry__6_i_2_n_0\
    );
\counter0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[29]\,
      O => \counter0_carry__6_i_3_n_0\
    );
counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      O => counter0_carry_i_1_n_0
    );
counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      O => counter0_carry_i_2_n_0
    );
counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      O => counter0_carry_i_3_n_0
    );
counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      O => counter0_carry_i_4_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"075F"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      O => counter(0)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEA"
    )
        port map (
      I0 => p_0_in(29),
      I1 => \counter[2]_i_4_n_0\,
      I2 => \counter[2]_i_5_n_0\,
      I3 => \counter[2]_i_6_n_0\,
      I4 => \counter[2]_i_7_n_0\,
      I5 => \counter[2]_i_8_n_0\,
      O => counter0
    );
\counter[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BAF"
    )
        port map (
      I0 => in12(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      O => counter(2)
    );
\counter[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000800000"
    )
        port map (
      I0 => is_filtering,
      I1 => aresetn,
      I2 => s_axis_tvalid,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \state__0\(2),
      O => p_0_in(29)
    );
\counter[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2400"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => aresetn,
      O => \counter[2]_i_4_n_0\
    );
\counter[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[10]\,
      I1 => \counter_reg_n_0_[11]\,
      I2 => \counter_reg_n_0_[8]\,
      I3 => \counter_reg_n_0_[9]\,
      I4 => \FSM_sequential_state[2]_i_10_n_0\,
      O => \counter[2]_i_5_n_0\
    );
\counter[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \FSM_sequential_state[2]_i_8_n_0\,
      O => \counter[2]_i_6_n_0\
    );
\counter[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[26]\,
      I1 => \counter_reg_n_0_[27]\,
      I2 => \counter_reg_n_0_[24]\,
      I3 => \counter_reg_n_0_[25]\,
      I4 => \FSM_sequential_state[2]_i_14_n_0\,
      O => \counter[2]_i_7_n_0\
    );
\counter[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[18]\,
      I1 => \counter_reg_n_0_[19]\,
      I2 => \counter_reg_n_0_[16]\,
      I3 => \counter_reg_n_0_[17]\,
      I4 => \FSM_sequential_state[2]_i_12_n_0\,
      O => \counter[2]_i_8_n_0\
    );
\counter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFE00"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => \counter[2]_i_6_n_0\,
      I2 => \counter[2]_i_5_n_0\,
      I3 => \counter[2]_i_4_n_0\,
      I4 => p_0_in(29),
      I5 => \counter[31]_i_2_n_0\,
      O => \counter[31]_i_1_n_0\
    );
\counter[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \counter[31]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => counter(0),
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(10),
      Q => \counter_reg_n_0_[10]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(11),
      Q => \counter_reg_n_0_[11]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(12),
      Q => \counter_reg_n_0_[12]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(13),
      Q => \counter_reg_n_0_[13]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(14),
      Q => \counter_reg_n_0_[14]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(15),
      Q => \counter_reg_n_0_[15]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(16),
      Q => \counter_reg_n_0_[16]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(17),
      Q => \counter_reg_n_0_[17]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(18),
      Q => \counter_reg_n_0_[18]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(19),
      Q => \counter_reg_n_0_[19]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(1),
      Q => \counter_reg_n_0_[1]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(20),
      Q => \counter_reg_n_0_[20]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(21),
      Q => \counter_reg_n_0_[21]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(22),
      Q => \counter_reg_n_0_[22]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(23),
      Q => \counter_reg_n_0_[23]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(24),
      Q => \counter_reg_n_0_[24]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(25),
      Q => \counter_reg_n_0_[25]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(26),
      Q => \counter_reg_n_0_[26]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(27),
      Q => \counter_reg_n_0_[27]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(28),
      Q => \counter_reg_n_0_[28]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(29),
      Q => \counter_reg_n_0_[29]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => counter(2),
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(30),
      Q => \counter_reg_n_0_[30]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(31),
      Q => \counter_reg_n_0_[31]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(3),
      Q => \counter_reg_n_0_[3]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(4),
      Q => \counter_reg_n_0_[4]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(5),
      Q => \counter_reg_n_0_[5]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(6),
      Q => \counter_reg_n_0_[6]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(7),
      Q => \counter_reg_n_0_[7]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(8),
      Q => \counter_reg_n_0_[8]\,
      R => \counter[31]_i_1_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => in12(9),
      Q => \counter_reg_n_0_[9]\,
      R => \counter[31]_i_1_n_0\
    );
is_filtering_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => filter_enable,
      I1 => is_filtering,
      O => is_filtering_i_1_n_0
    );
is_filtering_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => is_filtering_i_1_n_0,
      Q => is_filtering
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[0]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[0]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[10]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[10]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[11]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[11]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[12]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[12]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[13]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[13]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[14]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[14]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[15]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[15]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[16]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[16]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[17]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[17]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[18]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[18]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[19]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[19]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[1]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[1]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[20]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[20]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[21]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[21]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[22]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[22]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[23]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[23]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(23)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[2]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[2]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[3]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[3]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[4]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[4]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[5]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[5]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[6]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[6]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[7]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[7]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[8]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[8]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C00A000"
    )
        port map (
      I0 => \m_axis_tdata_int_left_reg_n_0_[9]\,
      I1 => \m_axis_tdata_int_right_reg_n_0_[9]\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => m_axis_tdata(9)
    );
\m_axis_tdata_int_left[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[0]\,
      I1 => s_axis_tdata(0),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(0)
    );
\m_axis_tdata_int_left[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[10]\,
      I1 => s_axis_tdata(10),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(10)
    );
\m_axis_tdata_int_left[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[11]\,
      I1 => s_axis_tdata(11),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(11)
    );
\m_axis_tdata_int_left[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[12]\,
      I1 => s_axis_tdata(12),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(12)
    );
\m_axis_tdata_int_left[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[13]\,
      I1 => s_axis_tdata(13),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(13)
    );
\m_axis_tdata_int_left[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[14]\,
      I1 => s_axis_tdata(14),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(14)
    );
\m_axis_tdata_int_left[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[15]\,
      I1 => s_axis_tdata(15),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(15)
    );
\m_axis_tdata_int_left[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[16]\,
      I1 => s_axis_tdata(16),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(16)
    );
\m_axis_tdata_int_left[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[17]\,
      I1 => s_axis_tdata(17),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(17)
    );
\m_axis_tdata_int_left[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[18]\,
      I1 => s_axis_tdata(18),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(18)
    );
\m_axis_tdata_int_left[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[19]\,
      I1 => s_axis_tdata(19),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(19)
    );
\m_axis_tdata_int_left[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[1]\,
      I1 => s_axis_tdata(1),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(1)
    );
\m_axis_tdata_int_left[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[20]\,
      I1 => s_axis_tdata(20),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(20)
    );
\m_axis_tdata_int_left[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[21]\,
      I1 => s_axis_tdata(21),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(21)
    );
\m_axis_tdata_int_left[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[22]\,
      I1 => s_axis_tdata(22),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(22)
    );
\m_axis_tdata_int_left[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \m_axis_tdata_int_left[23]_i_3_n_0\,
      I1 => \counter[2]_i_5_n_0\,
      I2 => \counter[2]_i_6_n_0\,
      I3 => \counter[2]_i_7_n_0\,
      I4 => \counter[2]_i_8_n_0\,
      I5 => \m_axis_tdata_int_left[23]_i_4_n_0\,
      O => m_axis_tdata_int_left0
    );
\m_axis_tdata_int_left[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[23]\,
      I1 => s_axis_tdata(23),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(23)
    );
\m_axis_tdata_int_left[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => is_filtering,
      I1 => aresetn,
      I2 => s_axis_tvalid,
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => \m_axis_tdata_int_left[23]_i_3_n_0\
    );
\m_axis_tdata_int_left[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \m_axis_tdata_int_left[23]_i_4_n_0\
    );
\m_axis_tdata_int_left[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[2]\,
      I1 => s_axis_tdata(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(2)
    );
\m_axis_tdata_int_left[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[3]\,
      I1 => s_axis_tdata(3),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(3)
    );
\m_axis_tdata_int_left[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[4]\,
      I1 => s_axis_tdata(4),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(4)
    );
\m_axis_tdata_int_left[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[5]\,
      I1 => s_axis_tdata(5),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(5)
    );
\m_axis_tdata_int_left[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[6]\,
      I1 => s_axis_tdata(6),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(6)
    );
\m_axis_tdata_int_left[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[7]\,
      I1 => s_axis_tdata(7),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(7)
    );
\m_axis_tdata_int_left[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[8]\,
      I1 => s_axis_tdata(8),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(8)
    );
\m_axis_tdata_int_left[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \output_temp_reg_n_0_[9]\,
      I1 => s_axis_tdata(9),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => m_axis_tdata_int_left(9)
    );
\m_axis_tdata_int_left_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(0),
      Q => \m_axis_tdata_int_left_reg_n_0_[0]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(10),
      Q => \m_axis_tdata_int_left_reg_n_0_[10]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(11),
      Q => \m_axis_tdata_int_left_reg_n_0_[11]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(12),
      Q => \m_axis_tdata_int_left_reg_n_0_[12]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(13),
      Q => \m_axis_tdata_int_left_reg_n_0_[13]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(14),
      Q => \m_axis_tdata_int_left_reg_n_0_[14]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(15),
      Q => \m_axis_tdata_int_left_reg_n_0_[15]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(16),
      Q => \m_axis_tdata_int_left_reg_n_0_[16]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(17),
      Q => \m_axis_tdata_int_left_reg_n_0_[17]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(18),
      Q => \m_axis_tdata_int_left_reg_n_0_[18]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(19),
      Q => \m_axis_tdata_int_left_reg_n_0_[19]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(1),
      Q => \m_axis_tdata_int_left_reg_n_0_[1]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(20),
      Q => \m_axis_tdata_int_left_reg_n_0_[20]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(21),
      Q => \m_axis_tdata_int_left_reg_n_0_[21]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(22),
      Q => \m_axis_tdata_int_left_reg_n_0_[22]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(23),
      Q => \m_axis_tdata_int_left_reg_n_0_[23]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(2),
      Q => \m_axis_tdata_int_left_reg_n_0_[2]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(3),
      Q => \m_axis_tdata_int_left_reg_n_0_[3]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(4),
      Q => \m_axis_tdata_int_left_reg_n_0_[4]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(5),
      Q => \m_axis_tdata_int_left_reg_n_0_[5]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(6),
      Q => \m_axis_tdata_int_left_reg_n_0_[6]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(7),
      Q => \m_axis_tdata_int_left_reg_n_0_[7]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(8),
      Q => \m_axis_tdata_int_left_reg_n_0_[8]\,
      R => '0'
    );
\m_axis_tdata_int_left_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_left0,
      D => m_axis_tdata_int_left(9),
      Q => \m_axis_tdata_int_left_reg_n_0_[9]\,
      R => '0'
    );
\m_axis_tdata_int_right[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[0]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(0),
      O => m_axis_tdata_int_right(0)
    );
\m_axis_tdata_int_right[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[10]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(10),
      O => m_axis_tdata_int_right(10)
    );
\m_axis_tdata_int_right[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[11]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(11),
      O => m_axis_tdata_int_right(11)
    );
\m_axis_tdata_int_right[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[12]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(12),
      O => m_axis_tdata_int_right(12)
    );
\m_axis_tdata_int_right[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[13]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(13),
      O => m_axis_tdata_int_right(13)
    );
\m_axis_tdata_int_right[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[14]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(14),
      O => m_axis_tdata_int_right(14)
    );
\m_axis_tdata_int_right[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[15]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(15),
      O => m_axis_tdata_int_right(15)
    );
\m_axis_tdata_int_right[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[16]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(16),
      O => m_axis_tdata_int_right(16)
    );
\m_axis_tdata_int_right[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[17]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(17),
      O => m_axis_tdata_int_right(17)
    );
\m_axis_tdata_int_right[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[18]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(18),
      O => m_axis_tdata_int_right(18)
    );
\m_axis_tdata_int_right[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[19]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(19),
      O => m_axis_tdata_int_right(19)
    );
\m_axis_tdata_int_right[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[1]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(1),
      O => m_axis_tdata_int_right(1)
    );
\m_axis_tdata_int_right[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[20]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(20),
      O => m_axis_tdata_int_right(20)
    );
\m_axis_tdata_int_right[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[21]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(21),
      O => m_axis_tdata_int_right(21)
    );
\m_axis_tdata_int_right[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[22]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(22),
      O => m_axis_tdata_int_right(22)
    );
\m_axis_tdata_int_right[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \counter[2]_i_5_n_0\,
      I1 => \counter[2]_i_6_n_0\,
      I2 => \counter[2]_i_7_n_0\,
      I3 => \counter[2]_i_8_n_0\,
      I4 => \m_axis_tdata_int_right[23]_i_3_n_0\,
      I5 => \m_axis_tdata_int_right[23]_i_4_n_0\,
      O => m_axis_tdata_int_right0
    );
\m_axis_tdata_int_right[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[23]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(23),
      O => m_axis_tdata_int_right(23)
    );
\m_axis_tdata_int_right[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state__0\(0),
      I1 => aresetn,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => \m_axis_tdata_int_right[23]_i_3_n_0\
    );
\m_axis_tdata_int_right[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => is_filtering,
      I4 => s_axis_tvalid,
      I5 => aresetn,
      O => \m_axis_tdata_int_right[23]_i_4_n_0\
    );
\m_axis_tdata_int_right[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[2]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(2),
      O => m_axis_tdata_int_right(2)
    );
\m_axis_tdata_int_right[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[3]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(3),
      O => m_axis_tdata_int_right(3)
    );
\m_axis_tdata_int_right[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[4]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(4),
      O => m_axis_tdata_int_right(4)
    );
\m_axis_tdata_int_right[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[5]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(5),
      O => m_axis_tdata_int_right(5)
    );
\m_axis_tdata_int_right[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[6]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(6),
      O => m_axis_tdata_int_right(6)
    );
\m_axis_tdata_int_right[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[7]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(7),
      O => m_axis_tdata_int_right(7)
    );
\m_axis_tdata_int_right[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[8]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(8),
      O => m_axis_tdata_int_right(8)
    );
\m_axis_tdata_int_right[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \output_temp_reg_n_0_[9]\,
      I2 => \state__0\(1),
      I3 => s_axis_tdata(9),
      O => m_axis_tdata_int_right(9)
    );
\m_axis_tdata_int_right_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(0),
      Q => \m_axis_tdata_int_right_reg_n_0_[0]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(10),
      Q => \m_axis_tdata_int_right_reg_n_0_[10]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(11),
      Q => \m_axis_tdata_int_right_reg_n_0_[11]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(12),
      Q => \m_axis_tdata_int_right_reg_n_0_[12]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(13),
      Q => \m_axis_tdata_int_right_reg_n_0_[13]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(14),
      Q => \m_axis_tdata_int_right_reg_n_0_[14]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(15),
      Q => \m_axis_tdata_int_right_reg_n_0_[15]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(16),
      Q => \m_axis_tdata_int_right_reg_n_0_[16]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(17),
      Q => \m_axis_tdata_int_right_reg_n_0_[17]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(18),
      Q => \m_axis_tdata_int_right_reg_n_0_[18]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(19),
      Q => \m_axis_tdata_int_right_reg_n_0_[19]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(1),
      Q => \m_axis_tdata_int_right_reg_n_0_[1]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(20),
      Q => \m_axis_tdata_int_right_reg_n_0_[20]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(21),
      Q => \m_axis_tdata_int_right_reg_n_0_[21]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(22),
      Q => \m_axis_tdata_int_right_reg_n_0_[22]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(23),
      Q => \m_axis_tdata_int_right_reg_n_0_[23]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(2),
      Q => \m_axis_tdata_int_right_reg_n_0_[2]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(3),
      Q => \m_axis_tdata_int_right_reg_n_0_[3]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(4),
      Q => \m_axis_tdata_int_right_reg_n_0_[4]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(5),
      Q => \m_axis_tdata_int_right_reg_n_0_[5]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(6),
      Q => \m_axis_tdata_int_right_reg_n_0_[6]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(7),
      Q => \m_axis_tdata_int_right_reg_n_0_[7]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(8),
      Q => \m_axis_tdata_int_right_reg_n_0_[8]\,
      R => '0'
    );
\m_axis_tdata_int_right_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_axis_tdata_int_right0,
      D => m_axis_tdata_int_right(9),
      Q => \m_axis_tdata_int_right_reg_n_0_[9]\,
      R => '0'
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(2),
      O => m_axis_tlast
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => m_axis_tvalid
    );
\mem_dx_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][0]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(0),
      R => '0'
    );
\mem_dx_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][10]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(10),
      R => '0'
    );
\mem_dx_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][11]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(11),
      R => '0'
    );
\mem_dx_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][12]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(12),
      R => '0'
    );
\mem_dx_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][13]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(13),
      R => '0'
    );
\mem_dx_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][14]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(14),
      R => '0'
    );
\mem_dx_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][15]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(15),
      R => '0'
    );
\mem_dx_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][16]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(16),
      R => '0'
    );
\mem_dx_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][17]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(17),
      R => '0'
    );
\mem_dx_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][18]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(18),
      R => '0'
    );
\mem_dx_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][19]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(19),
      R => '0'
    );
\mem_dx_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][1]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(1),
      R => '0'
    );
\mem_dx_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][20]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(20),
      R => '0'
    );
\mem_dx_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][21]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(21),
      R => '0'
    );
\mem_dx_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][22]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(22),
      R => '0'
    );
\mem_dx_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][23]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(23),
      R => '0'
    );
\mem_dx_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][2]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(2),
      R => '0'
    );
\mem_dx_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][3]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(3),
      R => '0'
    );
\mem_dx_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][4]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(4),
      R => '0'
    );
\mem_dx_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][5]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(5),
      R => '0'
    );
\mem_dx_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][6]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(6),
      R => '0'
    );
\mem_dx_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][7]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(7),
      R => '0'
    );
\mem_dx_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][8]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(8),
      R => '0'
    );
\mem_dx_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \mem_dx_reg[1][9]_srl31_n_0\,
      Q => \mem_dx_reg[0]\(9),
      R => '0'
    );
\mem_dx_reg[1][0]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(0),
      Q => \mem_dx_reg[1][0]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][0]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][10]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(10),
      Q => \mem_dx_reg[1][10]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][10]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][11]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(11),
      Q => \mem_dx_reg[1][11]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][11]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][12]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(12),
      Q => \mem_dx_reg[1][12]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][12]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][13]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(13),
      Q => \mem_dx_reg[1][13]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][13]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][14]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(14),
      Q => \mem_dx_reg[1][14]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][14]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][15]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(15),
      Q => \mem_dx_reg[1][15]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][15]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][16]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(16),
      Q => \mem_dx_reg[1][16]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][16]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][17]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(17),
      Q => \mem_dx_reg[1][17]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][17]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][18]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(18),
      Q => \mem_dx_reg[1][18]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][18]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][19]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(19),
      Q => \mem_dx_reg[1][19]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][19]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][1]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(1),
      Q => \mem_dx_reg[1][1]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][1]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][20]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(20),
      Q => \mem_dx_reg[1][20]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][20]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][21]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(21),
      Q => \mem_dx_reg[1][21]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][21]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][22]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(22),
      Q => \mem_dx_reg[1][22]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][22]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][23]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(23),
      Q => \mem_dx_reg[1][23]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][23]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][2]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(2),
      Q => \mem_dx_reg[1][2]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][2]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][3]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(3),
      Q => \mem_dx_reg[1][3]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][3]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][4]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(4),
      Q => \mem_dx_reg[1][4]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][4]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][5]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(5),
      Q => \mem_dx_reg[1][5]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][5]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][6]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(6),
      Q => \mem_dx_reg[1][6]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][6]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][7]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(7),
      Q => \mem_dx_reg[1][7]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][7]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][8]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(8),
      Q => \mem_dx_reg[1][8]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][8]_srl31_Q31_UNCONNECTED\
    );
\mem_dx_reg[1][9]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_dx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(9),
      Q => \mem_dx_reg[1][9]_srl31_n_0\,
      Q31 => \NLW_mem_dx_reg[1][9]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][0]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(0),
      R => '0'
    );
\mem_sx_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][10]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(10),
      R => '0'
    );
\mem_sx_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][11]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(11),
      R => '0'
    );
\mem_sx_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][12]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(12),
      R => '0'
    );
\mem_sx_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][13]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(13),
      R => '0'
    );
\mem_sx_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][14]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(14),
      R => '0'
    );
\mem_sx_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][15]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(15),
      R => '0'
    );
\mem_sx_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][16]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(16),
      R => '0'
    );
\mem_sx_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][17]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(17),
      R => '0'
    );
\mem_sx_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][18]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(18),
      R => '0'
    );
\mem_sx_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][19]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(19),
      R => '0'
    );
\mem_sx_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][1]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(1),
      R => '0'
    );
\mem_sx_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][20]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(20),
      R => '0'
    );
\mem_sx_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][21]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(21),
      R => '0'
    );
\mem_sx_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][22]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(22),
      R => '0'
    );
\mem_sx_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][23]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(23),
      R => '0'
    );
\mem_sx_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][2]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(2),
      R => '0'
    );
\mem_sx_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][3]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(3),
      R => '0'
    );
\mem_sx_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][4]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(4),
      R => '0'
    );
\mem_sx_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][5]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(5),
      R => '0'
    );
\mem_sx_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][6]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(6),
      R => '0'
    );
\mem_sx_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][7]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(7),
      R => '0'
    );
\mem_sx_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][8]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(8),
      R => '0'
    );
\mem_sx_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \mem_sx_reg[1][9]_srl31_n_0\,
      Q => \mem_sx_reg[0]\(9),
      R => '0'
    );
\mem_sx_reg[1][0]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(0),
      Q => \mem_sx_reg[1][0]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][0]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][10]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(10),
      Q => \mem_sx_reg[1][10]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][10]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][11]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(11),
      Q => \mem_sx_reg[1][11]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][11]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][12]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(12),
      Q => \mem_sx_reg[1][12]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][12]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][13]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(13),
      Q => \mem_sx_reg[1][13]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][13]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][14]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(14),
      Q => \mem_sx_reg[1][14]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][14]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][15]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(15),
      Q => \mem_sx_reg[1][15]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][15]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][16]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(16),
      Q => \mem_sx_reg[1][16]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][16]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][17]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(17),
      Q => \mem_sx_reg[1][17]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][17]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][18]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(18),
      Q => \mem_sx_reg[1][18]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][18]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][19]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(19),
      Q => \mem_sx_reg[1][19]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][19]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][1]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(1),
      Q => \mem_sx_reg[1][1]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][1]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][20]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(20),
      Q => \mem_sx_reg[1][20]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][20]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][21]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(21),
      Q => \mem_sx_reg[1][21]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][21]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][22]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(22),
      Q => \mem_sx_reg[1][22]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][22]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][23]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(23),
      Q => \mem_sx_reg[1][23]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][23]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][2]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(2),
      Q => \mem_sx_reg[1][2]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][2]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][3]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(3),
      Q => \mem_sx_reg[1][3]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][3]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][4]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(4),
      Q => \mem_sx_reg[1][4]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][4]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][5]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(5),
      Q => \mem_sx_reg[1][5]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][5]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][6]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(6),
      Q => \mem_sx_reg[1][6]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][6]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][7]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(7),
      Q => \mem_sx_reg[1][7]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][7]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][8]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(8),
      Q => \mem_sx_reg[1][8]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][8]_srl31_Q31_UNCONNECTED\
    );
\mem_sx_reg[1][9]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => \mem_sx_reg[31]0\,
      CLK => aclk,
      D => s_axis_tdata(9),
      Q => \mem_sx_reg[1][9]_srl31_n_0\,
      Q31 => \NLW_mem_sx_reg[1][9]_srl31_Q31_UNCONNECTED\
    );
\output_temp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(0),
      I1 => sum_sx(0),
      I2 => \output_temp_reg_n_0_[1]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(0)
    );
\output_temp[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(10),
      I1 => sum_sx(10),
      I2 => \output_temp_reg_n_0_[11]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(10)
    );
\output_temp[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(11),
      I1 => sum_sx(11),
      I2 => \output_temp_reg_n_0_[12]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(11)
    );
\output_temp[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(12),
      I1 => sum_sx(12),
      I2 => \output_temp_reg_n_0_[13]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(12)
    );
\output_temp[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(13),
      I1 => sum_sx(13),
      I2 => \output_temp_reg_n_0_[14]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(13)
    );
\output_temp[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(14),
      I1 => sum_sx(14),
      I2 => \output_temp_reg_n_0_[15]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(14)
    );
\output_temp[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(15),
      I1 => sum_sx(15),
      I2 => \output_temp_reg_n_0_[16]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(15)
    );
\output_temp[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(16),
      I1 => sum_sx(16),
      I2 => \output_temp_reg_n_0_[17]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(16)
    );
\output_temp[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(17),
      I1 => sum_sx(17),
      I2 => \output_temp_reg_n_0_[18]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(17)
    );
\output_temp[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(18),
      I1 => sum_sx(18),
      I2 => \output_temp_reg_n_0_[19]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(18)
    );
\output_temp[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(19),
      I1 => sum_sx(19),
      I2 => \output_temp_reg_n_0_[20]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(19)
    );
\output_temp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(1),
      I1 => sum_sx(1),
      I2 => \output_temp_reg_n_0_[2]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(1)
    );
\output_temp[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(20),
      I1 => sum_sx(20),
      I2 => \output_temp_reg_n_0_[21]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(20)
    );
\output_temp[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(21),
      I1 => sum_sx(21),
      I2 => \output_temp_reg_n_0_[22]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(21)
    );
\output_temp[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(22),
      I1 => sum_sx(22),
      I2 => \output_temp_reg_n_0_[23]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(22)
    );
\output_temp[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(23),
      I1 => sum_sx(23),
      I2 => \output_temp_reg_n_0_[24]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(23)
    );
\output_temp[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(24),
      I1 => sum_sx(24),
      I2 => \output_temp_reg_n_0_[25]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(24)
    );
\output_temp[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(25),
      I1 => sum_sx(25),
      I2 => \output_temp_reg_n_0_[26]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(25)
    );
\output_temp[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(26),
      I1 => sum_sx(26),
      I2 => \output_temp_reg_n_0_[27]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(26)
    );
\output_temp[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(27),
      I1 => sum_sx(27),
      I2 => \output_temp_reg_n_0_[28]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(27)
    );
\output_temp[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(28),
      I1 => sum_sx(28),
      I2 => \output_temp_reg_n_0_[29]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(28)
    );
\output_temp[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFBFF00080800"
    )
        port map (
      I0 => output_temp(29),
      I1 => \output_temp[29]_i_3_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \output_temp_reg_n_0_[29]\,
      O => \output_temp[29]_i_1_n_0\
    );
\output_temp[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(29),
      I1 => sum_sx(29),
      I2 => \output_temp_reg_n_0_[29]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(29)
    );
\output_temp[29]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => aresetn,
      I2 => is_filtering,
      O => \output_temp[29]_i_3_n_0\
    );
\output_temp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(2),
      I1 => sum_sx(2),
      I2 => \output_temp_reg_n_0_[3]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(2)
    );
\output_temp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(3),
      I1 => sum_sx(3),
      I2 => \output_temp_reg_n_0_[4]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(3)
    );
\output_temp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(4),
      I1 => sum_sx(4),
      I2 => \output_temp_reg_n_0_[5]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(4)
    );
\output_temp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(5),
      I1 => sum_sx(5),
      I2 => \output_temp_reg_n_0_[6]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(5)
    );
\output_temp[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(6),
      I1 => sum_sx(6),
      I2 => \output_temp_reg_n_0_[7]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(6)
    );
\output_temp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(7),
      I1 => sum_sx(7),
      I2 => \output_temp_reg_n_0_[8]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(7)
    );
\output_temp[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(8),
      I1 => sum_sx(8),
      I2 => \output_temp_reg_n_0_[9]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(8)
    );
\output_temp[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F0CCAAAA"
    )
        port map (
      I0 => sum_dx(9),
      I1 => sum_sx(9),
      I2 => \output_temp_reg_n_0_[10]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => output_temp(9)
    );
\output_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(0),
      Q => \output_temp_reg_n_0_[0]\,
      R => '0'
    );
\output_temp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(10),
      Q => \output_temp_reg_n_0_[10]\,
      R => '0'
    );
\output_temp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(11),
      Q => \output_temp_reg_n_0_[11]\,
      R => '0'
    );
\output_temp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(12),
      Q => \output_temp_reg_n_0_[12]\,
      R => '0'
    );
\output_temp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(13),
      Q => \output_temp_reg_n_0_[13]\,
      R => '0'
    );
\output_temp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(14),
      Q => \output_temp_reg_n_0_[14]\,
      R => '0'
    );
\output_temp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(15),
      Q => \output_temp_reg_n_0_[15]\,
      R => '0'
    );
\output_temp_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(16),
      Q => \output_temp_reg_n_0_[16]\,
      R => '0'
    );
\output_temp_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(17),
      Q => \output_temp_reg_n_0_[17]\,
      R => '0'
    );
\output_temp_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(18),
      Q => \output_temp_reg_n_0_[18]\,
      R => '0'
    );
\output_temp_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(19),
      Q => \output_temp_reg_n_0_[19]\,
      R => '0'
    );
\output_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(1),
      Q => \output_temp_reg_n_0_[1]\,
      R => '0'
    );
\output_temp_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(20),
      Q => \output_temp_reg_n_0_[20]\,
      R => '0'
    );
\output_temp_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(21),
      Q => \output_temp_reg_n_0_[21]\,
      R => '0'
    );
\output_temp_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(22),
      Q => \output_temp_reg_n_0_[22]\,
      R => '0'
    );
\output_temp_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(23),
      Q => \output_temp_reg_n_0_[23]\,
      R => '0'
    );
\output_temp_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(24),
      Q => \output_temp_reg_n_0_[24]\,
      R => '0'
    );
\output_temp_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(25),
      Q => \output_temp_reg_n_0_[25]\,
      R => '0'
    );
\output_temp_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(26),
      Q => \output_temp_reg_n_0_[26]\,
      R => '0'
    );
\output_temp_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(27),
      Q => \output_temp_reg_n_0_[27]\,
      R => '0'
    );
\output_temp_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(28),
      Q => \output_temp_reg_n_0_[28]\,
      R => '0'
    );
\output_temp_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \output_temp[29]_i_1_n_0\,
      Q => \output_temp_reg_n_0_[29]\,
      R => '0'
    );
\output_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(2),
      Q => \output_temp_reg_n_0_[2]\,
      R => '0'
    );
\output_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(3),
      Q => \output_temp_reg_n_0_[3]\,
      R => '0'
    );
\output_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(4),
      Q => \output_temp_reg_n_0_[4]\,
      R => '0'
    );
\output_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(5),
      Q => \output_temp_reg_n_0_[5]\,
      R => '0'
    );
\output_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(6),
      Q => \output_temp_reg_n_0_[6]\,
      R => '0'
    );
\output_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(7),
      Q => \output_temp_reg_n_0_[7]\,
      R => '0'
    );
\output_temp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(8),
      Q => \output_temp_reg_n_0_[8]\,
      R => '0'
    );
\output_temp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => counter0,
      D => output_temp(9),
      Q => \output_temp_reg_n_0_[9]\,
      R => '0'
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => s_axis_tready
    );
sum_dx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum_dx0_carry_n_0,
      CO(2) => sum_dx0_carry_n_1,
      CO(1) => sum_dx0_carry_n_2,
      CO(0) => sum_dx0_carry_n_3,
      CYINIT => '0',
      DI(3) => sum_dx0_carry_i_1_n_0,
      DI(2) => sum_dx0_carry_i_2_n_0,
      DI(1) => sum_dx0_carry_i_3_n_0,
      DI(0) => sum_dx0_carry_i_4_n_0,
      O(3) => sum_dx0_carry_n_4,
      O(2) => sum_dx0_carry_n_5,
      O(1) => sum_dx0_carry_n_6,
      O(0) => sum_dx0_carry_n_7,
      S(3) => sum_dx0_carry_i_5_n_0,
      S(2) => sum_dx0_carry_i_6_n_0,
      S(1) => sum_dx0_carry_i_7_n_0,
      S(0) => sum_dx0_carry_i_8_n_0
    );
\sum_dx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum_dx0_carry_n_0,
      CO(3) => \sum_dx0_carry__0_n_0\,
      CO(2) => \sum_dx0_carry__0_n_1\,
      CO(1) => \sum_dx0_carry__0_n_2\,
      CO(0) => \sum_dx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sum_dx0_carry__0_i_1_n_0\,
      DI(2) => \sum_dx0_carry__0_i_2_n_0\,
      DI(1) => \sum_dx0_carry__0_i_3_n_0\,
      DI(0) => \sum_dx0_carry__0_i_4_n_0\,
      O(3) => \sum_dx0_carry__0_n_4\,
      O(2) => \sum_dx0_carry__0_n_5\,
      O(1) => \sum_dx0_carry__0_n_6\,
      O(0) => \sum_dx0_carry__0_n_7\,
      S(3) => \sum_dx0_carry__0_i_5_n_0\,
      S(2) => \sum_dx0_carry__0_i_6_n_0\,
      S(1) => \sum_dx0_carry__0_i_7_n_0\,
      S(0) => \sum_dx0_carry__0_i_8_n_0\
    );
\sum_dx0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(6),
      I1 => \mem_dx_reg[0]\(6),
      I2 => s_axis_tdata(6),
      O => \sum_dx0_carry__0_i_1_n_0\
    );
\sum_dx0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(5),
      I1 => \mem_dx_reg[0]\(5),
      I2 => s_axis_tdata(5),
      O => \sum_dx0_carry__0_i_2_n_0\
    );
\sum_dx0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(4),
      I1 => \mem_dx_reg[0]\(4),
      I2 => s_axis_tdata(4),
      O => \sum_dx0_carry__0_i_3_n_0\
    );
\sum_dx0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(3),
      I1 => \mem_dx_reg[0]\(3),
      I2 => s_axis_tdata(3),
      O => \sum_dx0_carry__0_i_4_n_0\
    );
\sum_dx0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \mem_dx_reg[0]\(6),
      I2 => sum_dx(6),
      I3 => \mem_dx_reg[0]\(7),
      I4 => s_axis_tdata(7),
      I5 => sum_dx(7),
      O => \sum_dx0_carry__0_i_5_n_0\
    );
\sum_dx0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \mem_dx_reg[0]\(5),
      I2 => sum_dx(5),
      I3 => \mem_dx_reg[0]\(6),
      I4 => s_axis_tdata(6),
      I5 => sum_dx(6),
      O => \sum_dx0_carry__0_i_6_n_0\
    );
\sum_dx0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \mem_dx_reg[0]\(4),
      I2 => sum_dx(4),
      I3 => \mem_dx_reg[0]\(5),
      I4 => s_axis_tdata(5),
      I5 => sum_dx(5),
      O => \sum_dx0_carry__0_i_7_n_0\
    );
\sum_dx0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \mem_dx_reg[0]\(3),
      I2 => sum_dx(3),
      I3 => \mem_dx_reg[0]\(4),
      I4 => s_axis_tdata(4),
      I5 => sum_dx(4),
      O => \sum_dx0_carry__0_i_8_n_0\
    );
\sum_dx0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_dx0_carry__0_n_0\,
      CO(3) => \sum_dx0_carry__1_n_0\,
      CO(2) => \sum_dx0_carry__1_n_1\,
      CO(1) => \sum_dx0_carry__1_n_2\,
      CO(0) => \sum_dx0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_dx0_carry__1_i_1_n_0\,
      DI(2) => \sum_dx0_carry__1_i_2_n_0\,
      DI(1) => \sum_dx0_carry__1_i_3_n_0\,
      DI(0) => \sum_dx0_carry__1_i_4_n_0\,
      O(3) => \sum_dx0_carry__1_n_4\,
      O(2) => \sum_dx0_carry__1_n_5\,
      O(1) => \sum_dx0_carry__1_n_6\,
      O(0) => \sum_dx0_carry__1_n_7\,
      S(3) => \sum_dx0_carry__1_i_5_n_0\,
      S(2) => \sum_dx0_carry__1_i_6_n_0\,
      S(1) => \sum_dx0_carry__1_i_7_n_0\,
      S(0) => \sum_dx0_carry__1_i_8_n_0\
    );
\sum_dx0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(10),
      I1 => \mem_dx_reg[0]\(10),
      I2 => s_axis_tdata(10),
      O => \sum_dx0_carry__1_i_1_n_0\
    );
\sum_dx0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(9),
      I1 => \mem_dx_reg[0]\(9),
      I2 => s_axis_tdata(9),
      O => \sum_dx0_carry__1_i_2_n_0\
    );
\sum_dx0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(8),
      I1 => \mem_dx_reg[0]\(8),
      I2 => s_axis_tdata(8),
      O => \sum_dx0_carry__1_i_3_n_0\
    );
\sum_dx0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(7),
      I1 => \mem_dx_reg[0]\(7),
      I2 => s_axis_tdata(7),
      O => \sum_dx0_carry__1_i_4_n_0\
    );
\sum_dx0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \mem_dx_reg[0]\(10),
      I2 => sum_dx(10),
      I3 => \mem_dx_reg[0]\(11),
      I4 => s_axis_tdata(11),
      I5 => sum_dx(11),
      O => \sum_dx0_carry__1_i_5_n_0\
    );
\sum_dx0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \mem_dx_reg[0]\(9),
      I2 => sum_dx(9),
      I3 => \mem_dx_reg[0]\(10),
      I4 => s_axis_tdata(10),
      I5 => sum_dx(10),
      O => \sum_dx0_carry__1_i_6_n_0\
    );
\sum_dx0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \mem_dx_reg[0]\(8),
      I2 => sum_dx(8),
      I3 => \mem_dx_reg[0]\(9),
      I4 => s_axis_tdata(9),
      I5 => sum_dx(9),
      O => \sum_dx0_carry__1_i_7_n_0\
    );
\sum_dx0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \mem_dx_reg[0]\(7),
      I2 => sum_dx(7),
      I3 => \mem_dx_reg[0]\(8),
      I4 => s_axis_tdata(8),
      I5 => sum_dx(8),
      O => \sum_dx0_carry__1_i_8_n_0\
    );
\sum_dx0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_dx0_carry__1_n_0\,
      CO(3) => \sum_dx0_carry__2_n_0\,
      CO(2) => \sum_dx0_carry__2_n_1\,
      CO(1) => \sum_dx0_carry__2_n_2\,
      CO(0) => \sum_dx0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_dx0_carry__2_i_1_n_0\,
      DI(2) => \sum_dx0_carry__2_i_2_n_0\,
      DI(1) => \sum_dx0_carry__2_i_3_n_0\,
      DI(0) => \sum_dx0_carry__2_i_4_n_0\,
      O(3) => \sum_dx0_carry__2_n_4\,
      O(2) => \sum_dx0_carry__2_n_5\,
      O(1) => \sum_dx0_carry__2_n_6\,
      O(0) => \sum_dx0_carry__2_n_7\,
      S(3) => \sum_dx0_carry__2_i_5_n_0\,
      S(2) => \sum_dx0_carry__2_i_6_n_0\,
      S(1) => \sum_dx0_carry__2_i_7_n_0\,
      S(0) => \sum_dx0_carry__2_i_8_n_0\
    );
\sum_dx0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(14),
      I1 => \mem_dx_reg[0]\(14),
      I2 => s_axis_tdata(14),
      O => \sum_dx0_carry__2_i_1_n_0\
    );
\sum_dx0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(13),
      I1 => \mem_dx_reg[0]\(13),
      I2 => s_axis_tdata(13),
      O => \sum_dx0_carry__2_i_2_n_0\
    );
\sum_dx0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(12),
      I1 => \mem_dx_reg[0]\(12),
      I2 => s_axis_tdata(12),
      O => \sum_dx0_carry__2_i_3_n_0\
    );
\sum_dx0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(11),
      I1 => \mem_dx_reg[0]\(11),
      I2 => s_axis_tdata(11),
      O => \sum_dx0_carry__2_i_4_n_0\
    );
\sum_dx0_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \mem_dx_reg[0]\(14),
      I2 => sum_dx(14),
      I3 => \mem_dx_reg[0]\(15),
      I4 => s_axis_tdata(15),
      I5 => sum_dx(15),
      O => \sum_dx0_carry__2_i_5_n_0\
    );
\sum_dx0_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \mem_dx_reg[0]\(13),
      I2 => sum_dx(13),
      I3 => \mem_dx_reg[0]\(14),
      I4 => s_axis_tdata(14),
      I5 => sum_dx(14),
      O => \sum_dx0_carry__2_i_6_n_0\
    );
\sum_dx0_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \mem_dx_reg[0]\(12),
      I2 => sum_dx(12),
      I3 => \mem_dx_reg[0]\(13),
      I4 => s_axis_tdata(13),
      I5 => sum_dx(13),
      O => \sum_dx0_carry__2_i_7_n_0\
    );
\sum_dx0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \mem_dx_reg[0]\(11),
      I2 => sum_dx(11),
      I3 => \mem_dx_reg[0]\(12),
      I4 => s_axis_tdata(12),
      I5 => sum_dx(12),
      O => \sum_dx0_carry__2_i_8_n_0\
    );
\sum_dx0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_dx0_carry__2_n_0\,
      CO(3) => \sum_dx0_carry__3_n_0\,
      CO(2) => \sum_dx0_carry__3_n_1\,
      CO(1) => \sum_dx0_carry__3_n_2\,
      CO(0) => \sum_dx0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \sum_dx0_carry__3_i_1_n_0\,
      DI(2) => \sum_dx0_carry__3_i_2_n_0\,
      DI(1) => \sum_dx0_carry__3_i_3_n_0\,
      DI(0) => \sum_dx0_carry__3_i_4_n_0\,
      O(3) => \sum_dx0_carry__3_n_4\,
      O(2) => \sum_dx0_carry__3_n_5\,
      O(1) => \sum_dx0_carry__3_n_6\,
      O(0) => \sum_dx0_carry__3_n_7\,
      S(3) => \sum_dx0_carry__3_i_5_n_0\,
      S(2) => \sum_dx0_carry__3_i_6_n_0\,
      S(1) => \sum_dx0_carry__3_i_7_n_0\,
      S(0) => \sum_dx0_carry__3_i_8_n_0\
    );
\sum_dx0_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(18),
      I1 => \mem_dx_reg[0]\(18),
      I2 => s_axis_tdata(18),
      O => \sum_dx0_carry__3_i_1_n_0\
    );
\sum_dx0_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(17),
      I1 => \mem_dx_reg[0]\(17),
      I2 => s_axis_tdata(17),
      O => \sum_dx0_carry__3_i_2_n_0\
    );
\sum_dx0_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(16),
      I1 => \mem_dx_reg[0]\(16),
      I2 => s_axis_tdata(16),
      O => \sum_dx0_carry__3_i_3_n_0\
    );
\sum_dx0_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(15),
      I1 => \mem_dx_reg[0]\(15),
      I2 => s_axis_tdata(15),
      O => \sum_dx0_carry__3_i_4_n_0\
    );
\sum_dx0_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => \mem_dx_reg[0]\(18),
      I2 => sum_dx(18),
      I3 => \mem_dx_reg[0]\(19),
      I4 => s_axis_tdata(19),
      I5 => sum_dx(19),
      O => \sum_dx0_carry__3_i_5_n_0\
    );
\sum_dx0_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => \mem_dx_reg[0]\(17),
      I2 => sum_dx(17),
      I3 => \mem_dx_reg[0]\(18),
      I4 => s_axis_tdata(18),
      I5 => sum_dx(18),
      O => \sum_dx0_carry__3_i_6_n_0\
    );
\sum_dx0_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => \mem_dx_reg[0]\(16),
      I2 => sum_dx(16),
      I3 => \mem_dx_reg[0]\(17),
      I4 => s_axis_tdata(17),
      I5 => sum_dx(17),
      O => \sum_dx0_carry__3_i_7_n_0\
    );
\sum_dx0_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \mem_dx_reg[0]\(15),
      I2 => sum_dx(15),
      I3 => \mem_dx_reg[0]\(16),
      I4 => s_axis_tdata(16),
      I5 => sum_dx(16),
      O => \sum_dx0_carry__3_i_8_n_0\
    );
\sum_dx0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_dx0_carry__3_n_0\,
      CO(3) => \sum_dx0_carry__4_n_0\,
      CO(2) => \sum_dx0_carry__4_n_1\,
      CO(1) => \sum_dx0_carry__4_n_2\,
      CO(0) => \sum_dx0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \sum_dx0_carry__4_i_1_n_0\,
      DI(2) => \sum_dx0_carry__4_i_2_n_0\,
      DI(1) => \sum_dx0_carry__4_i_3_n_0\,
      DI(0) => \sum_dx0_carry__4_i_4_n_0\,
      O(3) => \sum_dx0_carry__4_n_4\,
      O(2) => \sum_dx0_carry__4_n_5\,
      O(1) => \sum_dx0_carry__4_n_6\,
      O(0) => \sum_dx0_carry__4_n_7\,
      S(3) => \sum_dx0_carry__4_i_5_n_0\,
      S(2) => \sum_dx0_carry__4_i_6_n_0\,
      S(1) => \sum_dx0_carry__4_i_7_n_0\,
      S(0) => \sum_dx0_carry__4_i_8_n_0\
    );
\sum_dx0_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(22),
      I1 => \mem_dx_reg[0]\(22),
      I2 => s_axis_tdata(22),
      O => \sum_dx0_carry__4_i_1_n_0\
    );
\sum_dx0_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(21),
      I1 => \mem_dx_reg[0]\(21),
      I2 => s_axis_tdata(21),
      O => \sum_dx0_carry__4_i_2_n_0\
    );
\sum_dx0_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(20),
      I1 => \mem_dx_reg[0]\(20),
      I2 => s_axis_tdata(20),
      O => \sum_dx0_carry__4_i_3_n_0\
    );
\sum_dx0_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(19),
      I1 => \mem_dx_reg[0]\(19),
      I2 => s_axis_tdata(19),
      O => \sum_dx0_carry__4_i_4_n_0\
    );
\sum_dx0_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \mem_dx_reg[0]\(22),
      I2 => sum_dx(22),
      I3 => \mem_dx_reg[0]\(23),
      I4 => s_axis_tdata(23),
      I5 => sum_dx(23),
      O => \sum_dx0_carry__4_i_5_n_0\
    );
\sum_dx0_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \mem_dx_reg[0]\(21),
      I2 => sum_dx(21),
      I3 => \mem_dx_reg[0]\(22),
      I4 => s_axis_tdata(22),
      I5 => sum_dx(22),
      O => \sum_dx0_carry__4_i_6_n_0\
    );
\sum_dx0_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \mem_dx_reg[0]\(20),
      I2 => sum_dx(20),
      I3 => \mem_dx_reg[0]\(21),
      I4 => s_axis_tdata(21),
      I5 => sum_dx(21),
      O => \sum_dx0_carry__4_i_7_n_0\
    );
\sum_dx0_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \mem_dx_reg[0]\(19),
      I2 => sum_dx(19),
      I3 => \mem_dx_reg[0]\(20),
      I4 => s_axis_tdata(20),
      I5 => sum_dx(20),
      O => \sum_dx0_carry__4_i_8_n_0\
    );
\sum_dx0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_dx0_carry__4_n_0\,
      CO(3) => \sum_dx0_carry__5_n_0\,
      CO(2) => \sum_dx0_carry__5_n_1\,
      CO(1) => \sum_dx0_carry__5_n_2\,
      CO(0) => \sum_dx0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => sum_dx(26 downto 24),
      DI(0) => \sum_dx0_carry__5_i_1_n_0\,
      O(3) => \sum_dx0_carry__5_n_4\,
      O(2) => \sum_dx0_carry__5_n_5\,
      O(1) => \sum_dx0_carry__5_n_6\,
      O(0) => \sum_dx0_carry__5_n_7\,
      S(3) => \sum_dx0_carry__5_i_2_n_0\,
      S(2) => \sum_dx0_carry__5_i_3_n_0\,
      S(1) => \sum_dx0_carry__5_i_4_n_0\,
      S(0) => \sum_dx0_carry__5_i_5_n_0\
    );
\sum_dx0_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(23),
      I1 => s_axis_tdata(23),
      I2 => \mem_dx_reg[0]\(23),
      O => \sum_dx0_carry__5_i_1_n_0\
    );
\sum_dx0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_dx(26),
      I1 => sum_dx(27),
      O => \sum_dx0_carry__5_i_2_n_0\
    );
\sum_dx0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_dx(25),
      I1 => sum_dx(26),
      O => \sum_dx0_carry__5_i_3_n_0\
    );
\sum_dx0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_dx(24),
      I1 => sum_dx(25),
      O => \sum_dx0_carry__5_i_4_n_0\
    );
\sum_dx0_carry__5_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B24D"
    )
        port map (
      I0 => \mem_dx_reg[0]\(23),
      I1 => s_axis_tdata(23),
      I2 => sum_dx(23),
      I3 => sum_dx(24),
      O => \sum_dx0_carry__5_i_5_n_0\
    );
\sum_dx0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_dx0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_sum_dx0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sum_dx0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => sum_dx(27),
      O(3 downto 2) => \NLW_sum_dx0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1) => \sum_dx0_carry__6_n_6\,
      O(0) => \sum_dx0_carry__6_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \sum_dx0_carry__6_i_1_n_0\,
      S(0) => \sum_dx0_carry__6_i_2_n_0\
    );
\sum_dx0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_dx(28),
      I1 => sum_dx(29),
      O => \sum_dx0_carry__6_i_1_n_0\
    );
\sum_dx0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_dx(27),
      I1 => sum_dx(28),
      O => \sum_dx0_carry__6_i_2_n_0\
    );
sum_dx0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(2),
      I1 => \mem_dx_reg[0]\(2),
      I2 => s_axis_tdata(2),
      O => sum_dx0_carry_i_1_n_0
    );
sum_dx0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => sum_dx(1),
      I1 => \mem_dx_reg[0]\(1),
      I2 => s_axis_tdata(1),
      O => sum_dx0_carry_i_2_n_0
    );
sum_dx0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => sum_dx(0),
      O => sum_dx0_carry_i_3_n_0
    );
sum_dx0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => sum_dx(0),
      O => sum_dx0_carry_i_4_n_0
    );
sum_dx0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => \mem_dx_reg[0]\(2),
      I2 => sum_dx(2),
      I3 => \mem_dx_reg[0]\(3),
      I4 => s_axis_tdata(3),
      I5 => sum_dx(3),
      O => sum_dx0_carry_i_5_n_0
    );
sum_dx0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \mem_dx_reg[0]\(1),
      I2 => sum_dx(1),
      I3 => \mem_dx_reg[0]\(2),
      I4 => s_axis_tdata(2),
      I5 => sum_dx(2),
      O => sum_dx0_carry_i_6_n_0
    );
sum_dx0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E11E1EE1"
    )
        port map (
      I0 => sum_dx(0),
      I1 => s_axis_tdata(0),
      I2 => \mem_dx_reg[0]\(1),
      I3 => s_axis_tdata(1),
      I4 => sum_dx(1),
      O => sum_dx0_carry_i_7_n_0
    );
sum_dx0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sum_dx(0),
      I1 => s_axis_tdata(0),
      I2 => \mem_dx_reg[0]\(0),
      O => sum_dx0_carry_i_8_n_0
    );
\sum_dx[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => is_filtering,
      I4 => aresetn,
      I5 => s_axis_tvalid,
      O => \mem_dx_reg[31]0\
    );
\sum_dx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => sum_dx0_carry_n_7,
      Q => sum_dx(0),
      R => '0'
    );
\sum_dx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__1_n_5\,
      Q => sum_dx(10),
      R => '0'
    );
\sum_dx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__1_n_4\,
      Q => sum_dx(11),
      R => '0'
    );
\sum_dx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__2_n_7\,
      Q => sum_dx(12),
      R => '0'
    );
\sum_dx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__2_n_6\,
      Q => sum_dx(13),
      R => '0'
    );
\sum_dx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__2_n_5\,
      Q => sum_dx(14),
      R => '0'
    );
\sum_dx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__2_n_4\,
      Q => sum_dx(15),
      R => '0'
    );
\sum_dx_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__3_n_7\,
      Q => sum_dx(16),
      R => '0'
    );
\sum_dx_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__3_n_6\,
      Q => sum_dx(17),
      R => '0'
    );
\sum_dx_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__3_n_5\,
      Q => sum_dx(18),
      R => '0'
    );
\sum_dx_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__3_n_4\,
      Q => sum_dx(19),
      R => '0'
    );
\sum_dx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => sum_dx0_carry_n_6,
      Q => sum_dx(1),
      R => '0'
    );
\sum_dx_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__4_n_7\,
      Q => sum_dx(20),
      R => '0'
    );
\sum_dx_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__4_n_6\,
      Q => sum_dx(21),
      R => '0'
    );
\sum_dx_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__4_n_5\,
      Q => sum_dx(22),
      R => '0'
    );
\sum_dx_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__4_n_4\,
      Q => sum_dx(23),
      R => '0'
    );
\sum_dx_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__5_n_7\,
      Q => sum_dx(24),
      R => '0'
    );
\sum_dx_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__5_n_6\,
      Q => sum_dx(25),
      R => '0'
    );
\sum_dx_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__5_n_5\,
      Q => sum_dx(26),
      R => '0'
    );
\sum_dx_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__5_n_4\,
      Q => sum_dx(27),
      R => '0'
    );
\sum_dx_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__6_n_7\,
      Q => sum_dx(28),
      R => '0'
    );
\sum_dx_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__6_n_6\,
      Q => sum_dx(29),
      R => '0'
    );
\sum_dx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => sum_dx0_carry_n_5,
      Q => sum_dx(2),
      R => '0'
    );
\sum_dx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => sum_dx0_carry_n_4,
      Q => sum_dx(3),
      R => '0'
    );
\sum_dx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__0_n_7\,
      Q => sum_dx(4),
      R => '0'
    );
\sum_dx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__0_n_6\,
      Q => sum_dx(5),
      R => '0'
    );
\sum_dx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__0_n_5\,
      Q => sum_dx(6),
      R => '0'
    );
\sum_dx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__0_n_4\,
      Q => sum_dx(7),
      R => '0'
    );
\sum_dx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__1_n_7\,
      Q => sum_dx(8),
      R => '0'
    );
\sum_dx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_dx_reg[31]0\,
      D => \sum_dx0_carry__1_n_6\,
      Q => sum_dx(9),
      R => '0'
    );
sum_sx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum_sx0_carry_n_0,
      CO(2) => sum_sx0_carry_n_1,
      CO(1) => sum_sx0_carry_n_2,
      CO(0) => sum_sx0_carry_n_3,
      CYINIT => '0',
      DI(3) => sum_sx0_carry_i_1_n_0,
      DI(2) => sum_sx0_carry_i_2_n_0,
      DI(1) => sum_sx0_carry_i_3_n_0,
      DI(0) => sum_sx0_carry_i_4_n_0,
      O(3) => sum_sx0_carry_n_4,
      O(2) => sum_sx0_carry_n_5,
      O(1) => sum_sx0_carry_n_6,
      O(0) => sum_sx0_carry_n_7,
      S(3) => sum_sx0_carry_i_5_n_0,
      S(2) => sum_sx0_carry_i_6_n_0,
      S(1) => sum_sx0_carry_i_7_n_0,
      S(0) => sum_sx0_carry_i_8_n_0
    );
\sum_sx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum_sx0_carry_n_0,
      CO(3) => \sum_sx0_carry__0_n_0\,
      CO(2) => \sum_sx0_carry__0_n_1\,
      CO(1) => \sum_sx0_carry__0_n_2\,
      CO(0) => \sum_sx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sum_sx0_carry__0_i_1_n_0\,
      DI(2) => \sum_sx0_carry__0_i_2_n_0\,
      DI(1) => \sum_sx0_carry__0_i_3_n_0\,
      DI(0) => \sum_sx0_carry__0_i_4_n_0\,
      O(3) => \sum_sx0_carry__0_n_4\,
      O(2) => \sum_sx0_carry__0_n_5\,
      O(1) => \sum_sx0_carry__0_n_6\,
      O(0) => \sum_sx0_carry__0_n_7\,
      S(3) => \sum_sx0_carry__0_i_5_n_0\,
      S(2) => \sum_sx0_carry__0_i_6_n_0\,
      S(1) => \sum_sx0_carry__0_i_7_n_0\,
      S(0) => \sum_sx0_carry__0_i_8_n_0\
    );
\sum_sx0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \mem_sx_reg[0]\(6),
      I2 => sum_sx(6),
      O => \sum_sx0_carry__0_i_1_n_0\
    );
\sum_sx0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \mem_sx_reg[0]\(5),
      I2 => sum_sx(5),
      O => \sum_sx0_carry__0_i_2_n_0\
    );
\sum_sx0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \mem_sx_reg[0]\(4),
      I2 => sum_sx(4),
      O => \sum_sx0_carry__0_i_3_n_0\
    );
\sum_sx0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \mem_sx_reg[0]\(3),
      I2 => sum_sx(3),
      O => \sum_sx0_carry__0_i_4_n_0\
    );
\sum_sx0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(6),
      I1 => \mem_sx_reg[0]\(6),
      I2 => s_axis_tdata(6),
      I3 => \mem_sx_reg[0]\(7),
      I4 => sum_sx(7),
      I5 => s_axis_tdata(7),
      O => \sum_sx0_carry__0_i_5_n_0\
    );
\sum_sx0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(5),
      I1 => \mem_sx_reg[0]\(5),
      I2 => s_axis_tdata(5),
      I3 => \mem_sx_reg[0]\(6),
      I4 => sum_sx(6),
      I5 => s_axis_tdata(6),
      O => \sum_sx0_carry__0_i_6_n_0\
    );
\sum_sx0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(4),
      I1 => \mem_sx_reg[0]\(4),
      I2 => s_axis_tdata(4),
      I3 => \mem_sx_reg[0]\(5),
      I4 => sum_sx(5),
      I5 => s_axis_tdata(5),
      O => \sum_sx0_carry__0_i_7_n_0\
    );
\sum_sx0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(3),
      I1 => \mem_sx_reg[0]\(3),
      I2 => s_axis_tdata(3),
      I3 => \mem_sx_reg[0]\(4),
      I4 => sum_sx(4),
      I5 => s_axis_tdata(4),
      O => \sum_sx0_carry__0_i_8_n_0\
    );
\sum_sx0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_sx0_carry__0_n_0\,
      CO(3) => \sum_sx0_carry__1_n_0\,
      CO(2) => \sum_sx0_carry__1_n_1\,
      CO(1) => \sum_sx0_carry__1_n_2\,
      CO(0) => \sum_sx0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_sx0_carry__1_i_1_n_0\,
      DI(2) => \sum_sx0_carry__1_i_2_n_0\,
      DI(1) => \sum_sx0_carry__1_i_3_n_0\,
      DI(0) => \sum_sx0_carry__1_i_4_n_0\,
      O(3) => \sum_sx0_carry__1_n_4\,
      O(2) => \sum_sx0_carry__1_n_5\,
      O(1) => \sum_sx0_carry__1_n_6\,
      O(0) => \sum_sx0_carry__1_n_7\,
      S(3) => \sum_sx0_carry__1_i_5_n_0\,
      S(2) => \sum_sx0_carry__1_i_6_n_0\,
      S(1) => \sum_sx0_carry__1_i_7_n_0\,
      S(0) => \sum_sx0_carry__1_i_8_n_0\
    );
\sum_sx0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \mem_sx_reg[0]\(10),
      I2 => sum_sx(10),
      O => \sum_sx0_carry__1_i_1_n_0\
    );
\sum_sx0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \mem_sx_reg[0]\(9),
      I2 => sum_sx(9),
      O => \sum_sx0_carry__1_i_2_n_0\
    );
\sum_sx0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \mem_sx_reg[0]\(8),
      I2 => sum_sx(8),
      O => \sum_sx0_carry__1_i_3_n_0\
    );
\sum_sx0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \mem_sx_reg[0]\(7),
      I2 => sum_sx(7),
      O => \sum_sx0_carry__1_i_4_n_0\
    );
\sum_sx0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(10),
      I1 => \mem_sx_reg[0]\(10),
      I2 => s_axis_tdata(10),
      I3 => \mem_sx_reg[0]\(11),
      I4 => sum_sx(11),
      I5 => s_axis_tdata(11),
      O => \sum_sx0_carry__1_i_5_n_0\
    );
\sum_sx0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(9),
      I1 => \mem_sx_reg[0]\(9),
      I2 => s_axis_tdata(9),
      I3 => \mem_sx_reg[0]\(10),
      I4 => sum_sx(10),
      I5 => s_axis_tdata(10),
      O => \sum_sx0_carry__1_i_6_n_0\
    );
\sum_sx0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(8),
      I1 => \mem_sx_reg[0]\(8),
      I2 => s_axis_tdata(8),
      I3 => \mem_sx_reg[0]\(9),
      I4 => sum_sx(9),
      I5 => s_axis_tdata(9),
      O => \sum_sx0_carry__1_i_7_n_0\
    );
\sum_sx0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(7),
      I1 => \mem_sx_reg[0]\(7),
      I2 => s_axis_tdata(7),
      I3 => \mem_sx_reg[0]\(8),
      I4 => sum_sx(8),
      I5 => s_axis_tdata(8),
      O => \sum_sx0_carry__1_i_8_n_0\
    );
\sum_sx0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_sx0_carry__1_n_0\,
      CO(3) => \sum_sx0_carry__2_n_0\,
      CO(2) => \sum_sx0_carry__2_n_1\,
      CO(1) => \sum_sx0_carry__2_n_2\,
      CO(0) => \sum_sx0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_sx0_carry__2_i_1_n_0\,
      DI(2) => \sum_sx0_carry__2_i_2_n_0\,
      DI(1) => \sum_sx0_carry__2_i_3_n_0\,
      DI(0) => \sum_sx0_carry__2_i_4_n_0\,
      O(3) => \sum_sx0_carry__2_n_4\,
      O(2) => \sum_sx0_carry__2_n_5\,
      O(1) => \sum_sx0_carry__2_n_6\,
      O(0) => \sum_sx0_carry__2_n_7\,
      S(3) => \sum_sx0_carry__2_i_5_n_0\,
      S(2) => \sum_sx0_carry__2_i_6_n_0\,
      S(1) => \sum_sx0_carry__2_i_7_n_0\,
      S(0) => \sum_sx0_carry__2_i_8_n_0\
    );
\sum_sx0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \mem_sx_reg[0]\(14),
      I2 => sum_sx(14),
      O => \sum_sx0_carry__2_i_1_n_0\
    );
\sum_sx0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \mem_sx_reg[0]\(13),
      I2 => sum_sx(13),
      O => \sum_sx0_carry__2_i_2_n_0\
    );
\sum_sx0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \mem_sx_reg[0]\(12),
      I2 => sum_sx(12),
      O => \sum_sx0_carry__2_i_3_n_0\
    );
\sum_sx0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \mem_sx_reg[0]\(11),
      I2 => sum_sx(11),
      O => \sum_sx0_carry__2_i_4_n_0\
    );
\sum_sx0_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(14),
      I1 => \mem_sx_reg[0]\(14),
      I2 => s_axis_tdata(14),
      I3 => \mem_sx_reg[0]\(15),
      I4 => sum_sx(15),
      I5 => s_axis_tdata(15),
      O => \sum_sx0_carry__2_i_5_n_0\
    );
\sum_sx0_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(13),
      I1 => \mem_sx_reg[0]\(13),
      I2 => s_axis_tdata(13),
      I3 => \mem_sx_reg[0]\(14),
      I4 => sum_sx(14),
      I5 => s_axis_tdata(14),
      O => \sum_sx0_carry__2_i_6_n_0\
    );
\sum_sx0_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(12),
      I1 => \mem_sx_reg[0]\(12),
      I2 => s_axis_tdata(12),
      I3 => \mem_sx_reg[0]\(13),
      I4 => sum_sx(13),
      I5 => s_axis_tdata(13),
      O => \sum_sx0_carry__2_i_7_n_0\
    );
\sum_sx0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(11),
      I1 => \mem_sx_reg[0]\(11),
      I2 => s_axis_tdata(11),
      I3 => \mem_sx_reg[0]\(12),
      I4 => sum_sx(12),
      I5 => s_axis_tdata(12),
      O => \sum_sx0_carry__2_i_8_n_0\
    );
\sum_sx0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_sx0_carry__2_n_0\,
      CO(3) => \sum_sx0_carry__3_n_0\,
      CO(2) => \sum_sx0_carry__3_n_1\,
      CO(1) => \sum_sx0_carry__3_n_2\,
      CO(0) => \sum_sx0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \sum_sx0_carry__3_i_1_n_0\,
      DI(2) => \sum_sx0_carry__3_i_2_n_0\,
      DI(1) => \sum_sx0_carry__3_i_3_n_0\,
      DI(0) => \sum_sx0_carry__3_i_4_n_0\,
      O(3) => \sum_sx0_carry__3_n_4\,
      O(2) => \sum_sx0_carry__3_n_5\,
      O(1) => \sum_sx0_carry__3_n_6\,
      O(0) => \sum_sx0_carry__3_n_7\,
      S(3) => \sum_sx0_carry__3_i_5_n_0\,
      S(2) => \sum_sx0_carry__3_i_6_n_0\,
      S(1) => \sum_sx0_carry__3_i_7_n_0\,
      S(0) => \sum_sx0_carry__3_i_8_n_0\
    );
\sum_sx0_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => \mem_sx_reg[0]\(18),
      I2 => sum_sx(18),
      O => \sum_sx0_carry__3_i_1_n_0\
    );
\sum_sx0_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => \mem_sx_reg[0]\(17),
      I2 => sum_sx(17),
      O => \sum_sx0_carry__3_i_2_n_0\
    );
\sum_sx0_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => \mem_sx_reg[0]\(16),
      I2 => sum_sx(16),
      O => \sum_sx0_carry__3_i_3_n_0\
    );
\sum_sx0_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \mem_sx_reg[0]\(15),
      I2 => sum_sx(15),
      O => \sum_sx0_carry__3_i_4_n_0\
    );
\sum_sx0_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(18),
      I1 => \mem_sx_reg[0]\(18),
      I2 => s_axis_tdata(18),
      I3 => \mem_sx_reg[0]\(19),
      I4 => sum_sx(19),
      I5 => s_axis_tdata(19),
      O => \sum_sx0_carry__3_i_5_n_0\
    );
\sum_sx0_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(17),
      I1 => \mem_sx_reg[0]\(17),
      I2 => s_axis_tdata(17),
      I3 => \mem_sx_reg[0]\(18),
      I4 => sum_sx(18),
      I5 => s_axis_tdata(18),
      O => \sum_sx0_carry__3_i_6_n_0\
    );
\sum_sx0_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(16),
      I1 => \mem_sx_reg[0]\(16),
      I2 => s_axis_tdata(16),
      I3 => \mem_sx_reg[0]\(17),
      I4 => sum_sx(17),
      I5 => s_axis_tdata(17),
      O => \sum_sx0_carry__3_i_7_n_0\
    );
\sum_sx0_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(15),
      I1 => \mem_sx_reg[0]\(15),
      I2 => s_axis_tdata(15),
      I3 => \mem_sx_reg[0]\(16),
      I4 => sum_sx(16),
      I5 => s_axis_tdata(16),
      O => \sum_sx0_carry__3_i_8_n_0\
    );
\sum_sx0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_sx0_carry__3_n_0\,
      CO(3) => \sum_sx0_carry__4_n_0\,
      CO(2) => \sum_sx0_carry__4_n_1\,
      CO(1) => \sum_sx0_carry__4_n_2\,
      CO(0) => \sum_sx0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \sum_sx0_carry__4_i_1_n_0\,
      DI(2) => \sum_sx0_carry__4_i_2_n_0\,
      DI(1) => \sum_sx0_carry__4_i_3_n_0\,
      DI(0) => \sum_sx0_carry__4_i_4_n_0\,
      O(3) => \sum_sx0_carry__4_n_4\,
      O(2) => \sum_sx0_carry__4_n_5\,
      O(1) => \sum_sx0_carry__4_n_6\,
      O(0) => \sum_sx0_carry__4_n_7\,
      S(3) => \sum_sx0_carry__4_i_5_n_0\,
      S(2) => \sum_sx0_carry__4_i_6_n_0\,
      S(1) => \sum_sx0_carry__4_i_7_n_0\,
      S(0) => \sum_sx0_carry__4_i_8_n_0\
    );
\sum_sx0_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \mem_sx_reg[0]\(22),
      I2 => sum_sx(22),
      O => \sum_sx0_carry__4_i_1_n_0\
    );
\sum_sx0_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \mem_sx_reg[0]\(21),
      I2 => sum_sx(21),
      O => \sum_sx0_carry__4_i_2_n_0\
    );
\sum_sx0_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \mem_sx_reg[0]\(20),
      I2 => sum_sx(20),
      O => \sum_sx0_carry__4_i_3_n_0\
    );
\sum_sx0_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \mem_sx_reg[0]\(19),
      I2 => sum_sx(19),
      O => \sum_sx0_carry__4_i_4_n_0\
    );
\sum_sx0_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(22),
      I1 => \mem_sx_reg[0]\(22),
      I2 => s_axis_tdata(22),
      I3 => \mem_sx_reg[0]\(23),
      I4 => sum_sx(23),
      I5 => s_axis_tdata(23),
      O => \sum_sx0_carry__4_i_5_n_0\
    );
\sum_sx0_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(21),
      I1 => \mem_sx_reg[0]\(21),
      I2 => s_axis_tdata(21),
      I3 => \mem_sx_reg[0]\(22),
      I4 => sum_sx(22),
      I5 => s_axis_tdata(22),
      O => \sum_sx0_carry__4_i_6_n_0\
    );
\sum_sx0_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(20),
      I1 => \mem_sx_reg[0]\(20),
      I2 => s_axis_tdata(20),
      I3 => \mem_sx_reg[0]\(21),
      I4 => sum_sx(21),
      I5 => s_axis_tdata(21),
      O => \sum_sx0_carry__4_i_7_n_0\
    );
\sum_sx0_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(19),
      I1 => \mem_sx_reg[0]\(19),
      I2 => s_axis_tdata(19),
      I3 => \mem_sx_reg[0]\(20),
      I4 => sum_sx(20),
      I5 => s_axis_tdata(20),
      O => \sum_sx0_carry__4_i_8_n_0\
    );
\sum_sx0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_sx0_carry__4_n_0\,
      CO(3) => \sum_sx0_carry__5_n_0\,
      CO(2) => \sum_sx0_carry__5_n_1\,
      CO(1) => \sum_sx0_carry__5_n_2\,
      CO(0) => \sum_sx0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => sum_sx(26 downto 24),
      DI(0) => \sum_sx0_carry__5_i_1_n_0\,
      O(3) => \sum_sx0_carry__5_n_4\,
      O(2) => \sum_sx0_carry__5_n_5\,
      O(1) => \sum_sx0_carry__5_n_6\,
      O(0) => \sum_sx0_carry__5_n_7\,
      S(3) => \sum_sx0_carry__5_i_2_n_0\,
      S(2) => \sum_sx0_carry__5_i_3_n_0\,
      S(1) => \sum_sx0_carry__5_i_4_n_0\,
      S(0) => \sum_sx0_carry__5_i_5_n_0\
    );
\sum_sx0_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => sum_sx(23),
      I2 => \mem_sx_reg[0]\(23),
      O => \sum_sx0_carry__5_i_1_n_0\
    );
\sum_sx0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_sx(26),
      I1 => sum_sx(27),
      O => \sum_sx0_carry__5_i_2_n_0\
    );
\sum_sx0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_sx(25),
      I1 => sum_sx(26),
      O => \sum_sx0_carry__5_i_3_n_0\
    );
\sum_sx0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_sx(24),
      I1 => sum_sx(25),
      O => \sum_sx0_carry__5_i_4_n_0\
    );
\sum_sx0_carry__5_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => \mem_sx_reg[0]\(23),
      I1 => sum_sx(23),
      I2 => s_axis_tdata(23),
      I3 => sum_sx(24),
      O => \sum_sx0_carry__5_i_5_n_0\
    );
\sum_sx0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_sx0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_sum_sx0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sum_sx0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => sum_sx(27),
      O(3 downto 2) => \NLW_sum_sx0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1) => \sum_sx0_carry__6_n_6\,
      O(0) => \sum_sx0_carry__6_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \sum_sx0_carry__6_i_1_n_0\,
      S(0) => \sum_sx0_carry__6_i_2_n_0\
    );
\sum_sx0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_sx(28),
      I1 => sum_sx(29),
      O => \sum_sx0_carry__6_i_1_n_0\
    );
\sum_sx0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_sx(27),
      I1 => sum_sx(28),
      O => \sum_sx0_carry__6_i_2_n_0\
    );
sum_sx0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => \mem_sx_reg[0]\(2),
      I2 => sum_sx(2),
      O => sum_sx0_carry_i_1_n_0
    );
sum_sx0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \mem_sx_reg[0]\(1),
      I2 => sum_sx(1),
      O => sum_sx0_carry_i_2_n_0
    );
sum_sx0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => sum_sx(0),
      O => sum_sx0_carry_i_3_n_0
    );
sum_sx0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_sx(0),
      I1 => s_axis_tdata(0),
      O => sum_sx0_carry_i_4_n_0
    );
sum_sx0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(2),
      I1 => \mem_sx_reg[0]\(2),
      I2 => s_axis_tdata(2),
      I3 => \mem_sx_reg[0]\(3),
      I4 => sum_sx(3),
      I5 => s_axis_tdata(3),
      O => sum_sx0_carry_i_5_n_0
    );
sum_sx0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => sum_sx(1),
      I1 => \mem_sx_reg[0]\(1),
      I2 => s_axis_tdata(1),
      I3 => \mem_sx_reg[0]\(2),
      I4 => sum_sx(2),
      I5 => s_axis_tdata(2),
      O => sum_sx0_carry_i_6_n_0
    );
sum_sx0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E11E1EE1"
    )
        port map (
      I0 => sum_sx(0),
      I1 => s_axis_tdata(0),
      I2 => \mem_sx_reg[0]\(1),
      I3 => sum_sx(1),
      I4 => s_axis_tdata(1),
      O => sum_sx0_carry_i_7_n_0
    );
sum_sx0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => sum_sx(0),
      I2 => \mem_sx_reg[0]\(0),
      O => sum_sx0_carry_i_8_n_0
    );
\sum_sx[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => is_filtering,
      I1 => aresetn,
      I2 => s_axis_tvalid,
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => \mem_sx_reg[31]0\
    );
\sum_sx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => sum_sx0_carry_n_7,
      Q => sum_sx(0),
      R => '0'
    );
\sum_sx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__1_n_5\,
      Q => sum_sx(10),
      R => '0'
    );
\sum_sx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__1_n_4\,
      Q => sum_sx(11),
      R => '0'
    );
\sum_sx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__2_n_7\,
      Q => sum_sx(12),
      R => '0'
    );
\sum_sx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__2_n_6\,
      Q => sum_sx(13),
      R => '0'
    );
\sum_sx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__2_n_5\,
      Q => sum_sx(14),
      R => '0'
    );
\sum_sx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__2_n_4\,
      Q => sum_sx(15),
      R => '0'
    );
\sum_sx_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__3_n_7\,
      Q => sum_sx(16),
      R => '0'
    );
\sum_sx_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__3_n_6\,
      Q => sum_sx(17),
      R => '0'
    );
\sum_sx_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__3_n_5\,
      Q => sum_sx(18),
      R => '0'
    );
\sum_sx_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__3_n_4\,
      Q => sum_sx(19),
      R => '0'
    );
\sum_sx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => sum_sx0_carry_n_6,
      Q => sum_sx(1),
      R => '0'
    );
\sum_sx_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__4_n_7\,
      Q => sum_sx(20),
      R => '0'
    );
\sum_sx_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__4_n_6\,
      Q => sum_sx(21),
      R => '0'
    );
\sum_sx_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__4_n_5\,
      Q => sum_sx(22),
      R => '0'
    );
\sum_sx_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__4_n_4\,
      Q => sum_sx(23),
      R => '0'
    );
\sum_sx_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__5_n_7\,
      Q => sum_sx(24),
      R => '0'
    );
\sum_sx_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__5_n_6\,
      Q => sum_sx(25),
      R => '0'
    );
\sum_sx_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__5_n_5\,
      Q => sum_sx(26),
      R => '0'
    );
\sum_sx_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__5_n_4\,
      Q => sum_sx(27),
      R => '0'
    );
\sum_sx_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__6_n_7\,
      Q => sum_sx(28),
      R => '0'
    );
\sum_sx_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__6_n_6\,
      Q => sum_sx(29),
      R => '0'
    );
\sum_sx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => sum_sx0_carry_n_5,
      Q => sum_sx(2),
      R => '0'
    );
\sum_sx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => sum_sx0_carry_n_4,
      Q => sum_sx(3),
      R => '0'
    );
\sum_sx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__0_n_7\,
      Q => sum_sx(4),
      R => '0'
    );
\sum_sx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__0_n_6\,
      Q => sum_sx(5),
      R => '0'
    );
\sum_sx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__0_n_5\,
      Q => sum_sx(6),
      R => '0'
    );
\sum_sx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__0_n_4\,
      Q => sum_sx(7),
      R => '0'
    );
\sum_sx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__1_n_7\,
      Q => sum_sx(8),
      R => '0'
    );
\sum_sx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mem_sx_reg[31]0\,
      D => \sum_sx0_carry__1_n_6\,
      Q => sum_sx(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dual_moving_average_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_dual_moving_average_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_dual_moving_average_0_0 : entity is "design_1_dual_moving_average_0_0,dual_moving_average,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_dual_moving_average_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_dual_moving_average_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_dual_moving_average_0_0 : entity is "dual_moving_average,Vivado 2020.2";
end design_1_dual_moving_average_0_0;

architecture STRUCTURE of design_1_dual_moving_average_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.design_1_dual_moving_average_0_0_dual_moving_average
     port map (
      aclk => aclk,
      aresetn => aresetn,
      filter_enable => filter_enable,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
