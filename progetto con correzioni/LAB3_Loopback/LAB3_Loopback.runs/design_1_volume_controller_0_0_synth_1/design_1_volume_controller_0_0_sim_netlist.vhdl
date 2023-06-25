-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 20:28:28 2023
-- Host        : Pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_volume_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_volume_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_volume_controller is
  port (
    s_axis_tready_int_reg_0 : out STD_LOGIC;
    m_axis_tvalid_int_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    volume : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_volume_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_volume_controller is
  signal DorM : STD_LOGIC;
  signal DorM_i_1_n_0 : STD_LOGIC;
  signal DorM_i_2_n_0 : STD_LOGIC;
  signal DorM_i_3_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal counter00_in : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal counter05_in : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \counter[11]_i_10_n_0\ : STD_LOGIC;
  signal \counter[11]_i_11_n_0\ : STD_LOGIC;
  signal \counter[11]_i_12_n_0\ : STD_LOGIC;
  signal \counter[11]_i_13_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \counter[11]_i_3_n_0\ : STD_LOGIC;
  signal \counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \counter[11]_i_6_n_0\ : STD_LOGIC;
  signal \counter[11]_i_8_n_0\ : STD_LOGIC;
  signal \counter[11]_i_9_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \counter[1]_i_3_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_10_n_0\ : STD_LOGIC;
  signal \counter[4]_i_11_n_0\ : STD_LOGIC;
  signal \counter[4]_i_12_n_0\ : STD_LOGIC;
  signal \counter[4]_i_13_n_0\ : STD_LOGIC;
  signal \counter[4]_i_14_n_0\ : STD_LOGIC;
  signal \counter[4]_i_15_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[4]_i_7_n_0\ : STD_LOGIC;
  signal \counter[4]_i_8_n_0\ : STD_LOGIC;
  signal \counter[4]_i_9_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter[5]_i_3_n_0\ : STD_LOGIC;
  signal \counter[5]_i_4_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \counter[6]_i_3_n_0\ : STD_LOGIC;
  signal \counter[6]_i_4_n_0\ : STD_LOGIC;
  signal \counter[6]_i_5_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \counter[7]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_10_n_0\ : STD_LOGIC;
  signal \counter[8]_i_11_n_0\ : STD_LOGIC;
  signal \counter[8]_i_12_n_0\ : STD_LOGIC;
  signal \counter[8]_i_13_n_0\ : STD_LOGIC;
  signal \counter[8]_i_14_n_0\ : STD_LOGIC;
  signal \counter[8]_i_15_n_0\ : STD_LOGIC;
  signal \counter[8]_i_16_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_6_n_0\ : STD_LOGIC;
  signal \counter[8]_i_8_n_0\ : STD_LOGIC;
  signal \counter[8]_i_9_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \counter[9]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \counter_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \counter_reg[11]_i_7_n_2\ : STD_LOGIC;
  signal \counter_reg[11]_i_7_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_3_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_3_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_3_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_6_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_6_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_6_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_4_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_4_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_7_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_7_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_7_n_3\ : STD_LOGIC;
  signal counter_span : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal counter_span0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \counter_span0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter_span0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter_span0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter_span0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter_span0_carry__0_n_0\ : STD_LOGIC;
  signal \counter_span0_carry__0_n_1\ : STD_LOGIC;
  signal \counter_span0_carry__0_n_2\ : STD_LOGIC;
  signal \counter_span0_carry__0_n_3\ : STD_LOGIC;
  signal \counter_span0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter_span0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter_span0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter_span0_carry__1_n_2\ : STD_LOGIC;
  signal \counter_span0_carry__1_n_3\ : STD_LOGIC;
  signal counter_span0_carry_i_1_n_0 : STD_LOGIC;
  signal counter_span0_carry_i_2_n_0 : STD_LOGIC;
  signal counter_span0_carry_i_3_n_0 : STD_LOGIC;
  signal counter_span0_carry_i_4_n_0 : STD_LOGIC;
  signal counter_span0_carry_n_0 : STD_LOGIC;
  signal counter_span0_carry_n_1 : STD_LOGIC;
  signal counter_span0_carry_n_2 : STD_LOGIC;
  signal counter_span0_carry_n_3 : STD_LOGIC;
  signal \counter_span[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter_span[11]_i_3_n_0\ : STD_LOGIC;
  signal \counter_span[11]_i_4_n_0\ : STD_LOGIC;
  signal \counter_span[11]_i_5_n_0\ : STD_LOGIC;
  signal \counter_span[11]_i_6_n_0\ : STD_LOGIC;
  signal \counter_span[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_span[2]_i_1_n_0\ : STD_LOGIC;
  signal is_computing_counter_i_1_n_0 : STD_LOGIC;
  signal is_computing_counter_i_2_n_0 : STD_LOGIC;
  signal is_computing_counter_i_3_n_0 : STD_LOGIC;
  signal is_computing_counter_reg_n_0 : STD_LOGIC;
  signal is_computing_i_1_n_0 : STD_LOGIC;
  signal is_computing_i_2_n_0 : STD_LOGIC;
  signal is_computing_reg_n_0 : STD_LOGIC;
  signal \m_axis_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal m_axis_tlast_temp : STD_LOGIC;
  signal m_axis_tlast_temp_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_int_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_int_reg_0\ : STD_LOGIC;
  signal new_data_i_1_n_0 : STD_LOGIC;
  signal new_data_reg_n_0 : STD_LOGIC;
  signal \output_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[10]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[10]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[11]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[11]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[12]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[12]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[13]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[13]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[14]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[14]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[15]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[15]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[16]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[16]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[17]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[17]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[18]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[18]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[19]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[19]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[1]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[20]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[20]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[21]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[22]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[22]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[23]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[2]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[2]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[3]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[3]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[4]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[4]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[5]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[5]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[6]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[6]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[7]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[7]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[8]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[8]_i_2_n_0\ : STD_LOGIC;
  signal \output_temp[9]_i_1_n_0\ : STD_LOGIC;
  signal \output_temp[9]_i_2_n_0\ : STD_LOGIC;
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
  signal \output_temp_reg_n_0_[2]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[3]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[4]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[5]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[6]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[7]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[8]\ : STD_LOGIC;
  signal \output_temp_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_1_in15_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_axis_tready_int0 : STD_LOGIC;
  signal \^s_axis_tready_int_reg_0\ : STD_LOGIC;
  signal volume_temp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal volume_temp00_in : STD_LOGIC_VECTOR ( 10 to 10 );
  signal \volume_temp[10]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[11]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[11]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[11]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[11]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_span0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_span0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DorM_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[10]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter[11]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[4]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[6]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[8]_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[8]_i_13\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[8]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[9]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[9]_i_4\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[11]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[11]_i_7\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_7\ : label is 35;
  attribute ADDER_THRESHOLD of counter_span0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter_span0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_span0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \counter_span[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter_span[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter_span[11]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter_span[11]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_span[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter_span[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter_span[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter_span[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter_span[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter_span[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter_span[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter_span[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter_span[9]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of is_computing_counter_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of is_computing_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \output_temp[10]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \output_temp[11]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \output_temp[12]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \output_temp[13]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \output_temp[14]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \output_temp[15]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \output_temp[16]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \output_temp[17]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \output_temp[18]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \output_temp[19]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \output_temp[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \output_temp[20]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \output_temp[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \output_temp[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \output_temp[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \output_temp[5]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \output_temp[6]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \output_temp[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \output_temp[8]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \output_temp[9]_i_2\ : label is "soft_lutpair9";
begin
  m_axis_tvalid_int_reg_0 <= \^m_axis_tvalid_int_reg_0\;
  s_axis_tready_int_reg_0 <= \^s_axis_tready_int_reg_0\;
DorM_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FFFFFF45000000"
    )
        port map (
      I0 => volume_temp(10),
      I1 => DorM_i_2_n_0,
      I2 => DorM_i_3_n_0,
      I3 => s_axis_tvalid,
      I4 => \^s_axis_tready_int_reg_0\,
      I5 => DorM,
      O => DorM_i_1_n_0
    );
DorM_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => volume_temp(4),
      I1 => volume_temp(1),
      I2 => volume_temp(2),
      I3 => volume_temp(3),
      I4 => volume_temp(0),
      O => DorM_i_2_n_0
    );
DorM_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => volume_temp(8),
      I1 => volume_temp(6),
      I2 => volume_temp(5),
      I3 => volume_temp(7),
      O => DorM_i_3_n_0
    );
DorM_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => p_0_in,
      D => DorM_i_1_n_0,
      Q => DorM
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555554045404"
    )
        port map (
      I0 => counter(11),
      I1 => volume_temp(0),
      I2 => \counter_span[11]_i_3_n_0\,
      I3 => counter(1),
      I4 => counter(0),
      I5 => \counter[11]_i_3_n_0\,
      O => \counter[0]_i_1_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55010001"
    )
        port map (
      I0 => counter(11),
      I1 => \counter[10]_i_2_n_0\,
      I2 => \counter_span[11]_i_3_n_0\,
      I3 => \counter[11]_i_3_n_0\,
      I4 => counter05_in(10),
      O => \counter[10]_i_1_n_0\
    );
\counter[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \counter[11]_i_6_n_0\,
      I1 => counter00_in(10),
      I2 => DorM,
      O => \counter[10]_i_2_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \counter[11]_i_3_n_0\,
      I1 => \^s_axis_tready_int_reg_0\,
      I2 => s_axis_tvalid,
      I3 => \counter_span[11]_i_3_n_0\,
      I4 => counter(11),
      O => \counter[11]_i_1_n_0\
    );
\counter[11]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(9),
      O => \counter[11]_i_10_n_0\
    );
\counter[11]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => volume_temp(10),
      I1 => volume_temp(7),
      I2 => volume_temp(5),
      I3 => volume_temp(6),
      I4 => volume_temp(8),
      O => \counter[11]_i_11_n_0\
    );
\counter[11]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => volume_temp(8),
      I1 => volume_temp(6),
      I2 => volume_temp(5),
      I3 => volume_temp(7),
      I4 => volume_temp(10),
      O => \counter[11]_i_12_n_0\
    );
\counter[11]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => volume_temp(7),
      I1 => volume_temp(5),
      I2 => volume_temp(6),
      I3 => volume_temp(8),
      I4 => volume_temp(10),
      O => \counter[11]_i_13_n_0\
    );
\counter[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55010001"
    )
        port map (
      I0 => counter(11),
      I1 => \counter[11]_i_4_n_0\,
      I2 => \counter_span[11]_i_3_n_0\,
      I3 => \counter[11]_i_3_n_0\,
      I4 => counter05_in(11),
      O => \counter[11]_i_2_n_0\
    );
\counter[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA2"
    )
        port map (
      I0 => is_computing_reg_n_0,
      I1 => is_computing_i_2_n_0,
      I2 => counter(10),
      I3 => counter(11),
      O => \counter[11]_i_3_n_0\
    );
\counter[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \counter[11]_i_6_n_0\,
      I1 => counter00_in(11),
      I2 => DorM,
      O => \counter[11]_i_4_n_0\
    );
\counter[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555555500000000"
    )
        port map (
      I0 => volume_temp(10),
      I1 => volume_temp(8),
      I2 => volume_temp(6),
      I3 => volume_temp(5),
      I4 => volume_temp(7),
      I5 => DorM,
      O => \counter[11]_i_6_n_0\
    );
\counter[11]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(11),
      O => \counter[11]_i_8_n_0\
    );
\counter[11]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(10),
      O => \counter[11]_i_9_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => counter05_in(1),
      I1 => \counter[11]_i_3_n_0\,
      I2 => \counter[1]_i_2_n_0\,
      I3 => counter(11),
      O => \counter[1]_i_1_n_0\
    );
\counter[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \counter[1]_i_3_n_0\,
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => volume_temp(1),
      I3 => DorM,
      I4 => counter00_in(1),
      O => \counter[1]_i_2_n_0\
    );
\counter[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => counter(11),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(2),
      O => \counter[1]_i_3_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \counter[2]_i_2_n_0\,
      I1 => \counter[11]_i_3_n_0\,
      I2 => counter05_in(2),
      I3 => counter(11),
      O => \counter[2]_i_1_n_0\
    );
\counter[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \counter[2]_i_3_n_0\,
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => volume_temp(2),
      I3 => DorM,
      I4 => counter00_in(2),
      O => \counter[2]_i_2_n_0\
    );
\counter[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6666666A"
    )
        port map (
      I0 => counter(3),
      I1 => counter(11),
      I2 => counter(2),
      I3 => counter(0),
      I4 => counter(1),
      O => \counter[2]_i_3_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A3"
    )
        port map (
      I0 => counter05_in(3),
      I1 => \counter[3]_i_2_n_0\,
      I2 => \counter[11]_i_3_n_0\,
      I3 => counter(11),
      O => \counter[3]_i_1_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000474700FF4747"
    )
        port map (
      I0 => volume_temp(3),
      I1 => DorM,
      I2 => counter00_in(3),
      I3 => \counter[3]_i_3_n_0\,
      I4 => \counter_span[11]_i_3_n_0\,
      I5 => \counter[4]_i_5_n_0\,
      O => \counter[3]_i_2_n_0\
    );
\counter[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666666666666C"
    )
        port map (
      I0 => counter(11),
      I1 => counter(4),
      I2 => counter(3),
      I3 => counter(1),
      I4 => counter(0),
      I5 => counter(2),
      O => \counter[3]_i_3_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \counter[4]_i_2_n_0\,
      I1 => \counter[11]_i_3_n_0\,
      I2 => counter05_in(4),
      I3 => counter(11),
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(1),
      O => \counter[4]_i_10_n_0\
    );
\counter[4]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => volume_temp(0),
      O => \counter[4]_i_11_n_0\
    );
\counter[4]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => volume_temp(4),
      O => \counter[4]_i_12_n_0\
    );
\counter[4]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => volume_temp(3),
      O => \counter[4]_i_13_n_0\
    );
\counter[4]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => volume_temp(2),
      O => \counter[4]_i_14_n_0\
    );
\counter[4]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => volume_temp(1),
      O => \counter[4]_i_15_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \counter[4]_i_4_n_0\,
      I1 => \counter[4]_i_5_n_0\,
      I2 => \counter_span[11]_i_3_n_0\,
      I3 => volume_temp(4),
      I4 => DorM,
      I5 => counter00_in(4),
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(5),
      I1 => counter(11),
      I2 => \counter[6]_i_5_n_0\,
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAA8"
    )
        port map (
      I0 => counter(11),
      I1 => counter(3),
      I2 => counter(2),
      I3 => counter(1),
      I4 => counter(0),
      I5 => counter(4),
      O => \counter[4]_i_5_n_0\
    );
\counter[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(4),
      O => \counter[4]_i_7_n_0\
    );
\counter[4]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(3),
      O => \counter[4]_i_8_n_0\
    );
\counter[4]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(2),
      O => \counter[4]_i_9_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \counter[5]_i_2_n_0\,
      I1 => \counter[11]_i_3_n_0\,
      I2 => counter05_in(5),
      I3 => counter(11),
      O => \counter[5]_i_1_n_0\
    );
\counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0EFEFEFE0EFE0"
    )
        port map (
      I0 => \counter[5]_i_3_n_0\,
      I1 => \counter[5]_i_4_n_0\,
      I2 => \counter_span[11]_i_3_n_0\,
      I3 => counter00_in(5),
      I4 => volume_temp(5),
      I5 => DorM,
      O => \counter[5]_i_2_n_0\
    );
\counter[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(6),
      I1 => counter(11),
      I2 => \counter[7]_i_5_n_0\,
      O => \counter[5]_i_3_n_0\
    );
\counter[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAAAAAAAAA8"
    )
        port map (
      I0 => counter(11),
      I1 => counter(5),
      I2 => \counter[8]_i_13_n_0\,
      I3 => counter(4),
      I4 => \counter[8]_i_12_n_0\,
      I5 => counter(6),
      O => \counter[5]_i_4_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555541000005410"
    )
        port map (
      I0 => counter(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => \counter[6]_i_2_n_0\,
      I3 => \counter[6]_i_3_n_0\,
      I4 => \counter[11]_i_3_n_0\,
      I5 => counter05_in(6),
      O => \counter[6]_i_1_n_0\
    );
\counter[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => volume_temp(5),
      I1 => volume_temp(6),
      I2 => DorM,
      I3 => counter00_in(6),
      O => \counter[6]_i_2_n_0\
    );
\counter[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCC6"
    )
        port map (
      I0 => counter(11),
      I1 => counter(7),
      I2 => counter(6),
      I3 => \counter[6]_i_4_n_0\,
      I4 => counter(5),
      I5 => \counter[6]_i_5_n_0\,
      O => \counter[6]_i_3_n_0\
    );
\counter[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000013"
    )
        port map (
      I0 => counter(11),
      I1 => counter(4),
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(2),
      I5 => counter(3),
      O => \counter[6]_i_4_n_0\
    );
\counter[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(4),
      I1 => counter(2),
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(3),
      O => \counter[6]_i_5_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555404400004044"
    )
        port map (
      I0 => counter(11),
      I1 => \counter[7]_i_2_n_0\,
      I2 => \counter[7]_i_3_n_0\,
      I3 => \counter[7]_i_4_n_0\,
      I4 => \counter[11]_i_3_n_0\,
      I5 => counter05_in(7),
      O => \counter[7]_i_1_n_0\
    );
\counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFEFEFEFEAEAEAE"
    )
        port map (
      I0 => \counter_span[11]_i_3_n_0\,
      I1 => counter00_in(7),
      I2 => DorM,
      I3 => volume_temp(6),
      I4 => volume_temp(5),
      I5 => volume_temp(7),
      O => \counter[7]_i_2_n_0\
    );
\counter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAAAAAAAA8AAAA"
    )
        port map (
      I0 => counter(11),
      I1 => \counter[7]_i_5_n_0\,
      I2 => counter(6),
      I3 => counter(7),
      I4 => \counter[8]_i_5_n_0\,
      I5 => counter(8),
      O => \counter[7]_i_3_n_0\
    );
\counter[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888804444444C"
    )
        port map (
      I0 => counter(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter(6),
      I3 => \counter[7]_i_5_n_0\,
      I4 => counter(7),
      I5 => counter(8),
      O => \counter[7]_i_4_n_0\
    );
\counter[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => counter(5),
      I1 => counter(3),
      I2 => counter(1),
      I3 => counter(0),
      I4 => counter(2),
      I5 => counter(4),
      O => \counter[7]_i_5_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555454000004540"
    )
        port map (
      I0 => counter(11),
      I1 => \counter[8]_i_2_n_0\,
      I2 => \counter_span[11]_i_3_n_0\,
      I3 => \counter[8]_i_3_n_0\,
      I4 => \counter[11]_i_3_n_0\,
      I5 => counter05_in(8),
      O => \counter[8]_i_1_n_0\
    );
\counter[8]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(6),
      O => \counter[8]_i_10_n_0\
    );
\counter[8]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(5),
      O => \counter[8]_i_11_n_0\
    );
\counter[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(3),
      I1 => counter(1),
      I2 => counter(0),
      I3 => counter(2),
      O => \counter[8]_i_12_n_0\
    );
\counter[8]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFEFFEE"
    )
        port map (
      I0 => counter(3),
      I1 => counter(2),
      I2 => counter(11),
      I3 => counter(1),
      I4 => counter(0),
      O => \counter[8]_i_13_n_0\
    );
\counter[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => volume_temp(6),
      I1 => volume_temp(5),
      I2 => volume_temp(7),
      I3 => volume_temp(8),
      O => \counter[8]_i_14_n_0\
    );
\counter[8]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => volume_temp(5),
      I1 => volume_temp(6),
      I2 => volume_temp(7),
      O => \counter[8]_i_15_n_0\
    );
\counter[8]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => volume_temp(5),
      I1 => volume_temp(6),
      O => \counter[8]_i_16_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC66CCCCCCC"
    )
        port map (
      I0 => counter(11),
      I1 => counter(9),
      I2 => counter(8),
      I3 => \counter[8]_i_5_n_0\,
      I4 => counter(7),
      I5 => \counter[8]_i_6_n_0\,
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF6AAA0000"
    )
        port map (
      I0 => volume_temp(8),
      I1 => volume_temp(6),
      I2 => volume_temp(5),
      I3 => volume_temp(7),
      I4 => DorM,
      I5 => counter00_in(8),
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000013"
    )
        port map (
      I0 => counter(11),
      I1 => counter(6),
      I2 => \counter[8]_i_12_n_0\,
      I3 => counter(4),
      I4 => \counter[8]_i_13_n_0\,
      I5 => counter(5),
      O => \counter[8]_i_5_n_0\
    );
\counter[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(6),
      I1 => \counter[7]_i_5_n_0\,
      O => \counter[8]_i_6_n_0\
    );
\counter[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(8),
      O => \counter[8]_i_8_n_0\
    );
\counter[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(7),
      O => \counter[8]_i_9_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555445400004454"
    )
        port map (
      I0 => counter(11),
      I1 => \counter[9]_i_2_n_0\,
      I2 => \counter_span[11]_i_3_n_0\,
      I3 => \counter[9]_i_3_n_0\,
      I4 => \counter[11]_i_3_n_0\,
      I5 => counter05_in(9),
      O => \counter[9]_i_1_n_0\
    );
\counter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006F60"
    )
        port map (
      I0 => volume_temp(10),
      I1 => \counter[9]_i_4_n_0\,
      I2 => DorM,
      I3 => counter00_in(9),
      I4 => \counter_span[11]_i_3_n_0\,
      O => \counter[9]_i_2_n_0\
    );
\counter[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => is_computing_i_2_n_0,
      I1 => counter(11),
      I2 => counter(10),
      O => \counter[9]_i_3_n_0\
    );
\counter[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => volume_temp(8),
      I1 => volume_temp(6),
      I2 => volume_temp(5),
      I3 => volume_temp(7),
      O => \counter[9]_i_4_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[0]_i_1_n_0\,
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[10]_i_1_n_0\,
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[11]_i_2_n_0\,
      Q => counter(11)
    );
\counter_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_4_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[11]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[11]_i_5_n_2\,
      CO(0) => \counter_reg[11]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => counter(10 downto 9),
      O(3) => \NLW_counter_reg[11]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => counter05_in(11 downto 9),
      S(3) => '0',
      S(2) => \counter[11]_i_8_n_0\,
      S(1) => \counter[11]_i_9_n_0\,
      S(0) => \counter[11]_i_10_n_0\
    );
\counter_reg[11]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_7_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[11]_i_7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[11]_i_7_n_2\,
      CO(0) => \counter_reg[11]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[11]_i_7_O_UNCONNECTED\(3),
      O(2 downto 0) => counter00_in(11 downto 9),
      S(3) => '0',
      S(2) => \counter[11]_i_11_n_0\,
      S(1) => \counter[11]_i_12_n_0\,
      S(0) => \counter[11]_i_13_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[2]_i_1_n_0\,
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[3]_i_1_n_0\,
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[4]_i_1_n_0\,
      Q => counter(4)
    );
\counter_reg[4]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_3_n_0\,
      CO(2) => \counter_reg[4]_i_3_n_1\,
      CO(1) => \counter_reg[4]_i_3_n_2\,
      CO(0) => \counter_reg[4]_i_3_n_3\,
      CYINIT => counter(0),
      DI(3 downto 0) => counter(4 downto 1),
      O(3 downto 0) => counter05_in(4 downto 1),
      S(3) => \counter[4]_i_7_n_0\,
      S(2) => \counter[4]_i_8_n_0\,
      S(1) => \counter[4]_i_9_n_0\,
      S(0) => \counter[4]_i_10_n_0\
    );
\counter_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_6_n_0\,
      CO(2) => \counter_reg[4]_i_6_n_1\,
      CO(1) => \counter_reg[4]_i_6_n_2\,
      CO(0) => \counter_reg[4]_i_6_n_3\,
      CYINIT => \counter[4]_i_11_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter00_in(4 downto 1),
      S(3) => \counter[4]_i_12_n_0\,
      S(2) => \counter[4]_i_13_n_0\,
      S(1) => \counter[4]_i_14_n_0\,
      S(0) => \counter[4]_i_15_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[5]_i_1_n_0\,
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[6]_i_1_n_0\,
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[7]_i_1_n_0\,
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[8]_i_1_n_0\,
      Q => counter(8)
    );
\counter_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_3_n_0\,
      CO(3) => \counter_reg[8]_i_4_n_0\,
      CO(2) => \counter_reg[8]_i_4_n_1\,
      CO(1) => \counter_reg[8]_i_4_n_2\,
      CO(0) => \counter_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter(8 downto 5),
      O(3 downto 0) => counter05_in(8 downto 5),
      S(3) => \counter[8]_i_8_n_0\,
      S(2) => \counter[8]_i_9_n_0\,
      S(1) => \counter[8]_i_10_n_0\,
      S(0) => \counter[8]_i_11_n_0\
    );
\counter_reg[8]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_6_n_0\,
      CO(3) => \counter_reg[8]_i_7_n_0\,
      CO(2) => \counter_reg[8]_i_7_n_1\,
      CO(1) => \counter_reg[8]_i_7_n_2\,
      CO(0) => \counter_reg[8]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter00_in(8 downto 5),
      S(3) => \counter[8]_i_14_n_0\,
      S(2) => \counter[8]_i_15_n_0\,
      S(1) => \counter[8]_i_16_n_0\,
      S(0) => volume_temp(5)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter[9]_i_1_n_0\,
      Q => counter(9)
    );
counter_span0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_span0_carry_n_0,
      CO(2) => counter_span0_carry_n_1,
      CO(1) => counter_span0_carry_n_2,
      CO(0) => counter_span0_carry_n_3,
      CYINIT => counter_span(0),
      DI(3 downto 0) => counter_span(4 downto 1),
      O(3 downto 0) => counter_span0(4 downto 1),
      S(3) => counter_span0_carry_i_1_n_0,
      S(2) => counter_span0_carry_i_2_n_0,
      S(1) => counter_span0_carry_i_3_n_0,
      S(0) => counter_span0_carry_i_4_n_0
    );
\counter_span0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_span0_carry_n_0,
      CO(3) => \counter_span0_carry__0_n_0\,
      CO(2) => \counter_span0_carry__0_n_1\,
      CO(1) => \counter_span0_carry__0_n_2\,
      CO(0) => \counter_span0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_span(8 downto 5),
      O(3 downto 0) => counter_span0(8 downto 5),
      S(3) => \counter_span0_carry__0_i_1_n_0\,
      S(2) => \counter_span0_carry__0_i_2_n_0\,
      S(1) => \counter_span0_carry__0_i_3_n_0\,
      S(0) => \counter_span0_carry__0_i_4_n_0\
    );
\counter_span0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(8),
      O => \counter_span0_carry__0_i_1_n_0\
    );
\counter_span0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(7),
      O => \counter_span0_carry__0_i_2_n_0\
    );
\counter_span0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(6),
      O => \counter_span0_carry__0_i_3_n_0\
    );
\counter_span0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(5),
      O => \counter_span0_carry__0_i_4_n_0\
    );
\counter_span0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_span0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_counter_span0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_span0_carry__1_n_2\,
      CO(0) => \counter_span0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => counter_span(10 downto 9),
      O(3) => \NLW_counter_span0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => counter_span0(11 downto 9),
      S(3) => '0',
      S(2) => \counter_span0_carry__1_i_1_n_0\,
      S(1) => \counter_span0_carry__1_i_2_n_0\,
      S(0) => \counter_span0_carry__1_i_3_n_0\
    );
\counter_span0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(11),
      O => \counter_span0_carry__1_i_1_n_0\
    );
\counter_span0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(10),
      O => \counter_span0_carry__1_i_2_n_0\
    );
\counter_span0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(9),
      O => \counter_span0_carry__1_i_3_n_0\
    );
counter_span0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(4),
      O => counter_span0_carry_i_1_n_0
    );
counter_span0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(3),
      O => counter_span0_carry_i_2_n_0
    );
counter_span0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(2),
      O => counter_span0_carry_i_3_n_0
    );
counter_span0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(1),
      O => counter_span0_carry_i_4_n_0
    );
\counter_span[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span(0),
      O => p_2_in(0)
    );
\counter_span[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span0(10),
      O => p_2_in(10)
    );
\counter_span[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => s_axis_tvalid,
      I3 => \^s_axis_tready_int_reg_0\,
      O => \counter_span[11]_i_1_n_0\
    );
\counter_span[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span0(11),
      O => p_2_in(11)
    );
\counter_span[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAAAAAAAAAA"
    )
        port map (
      I0 => is_computing_counter_reg_n_0,
      I1 => \counter_span[11]_i_4_n_0\,
      I2 => counter_span(5),
      I3 => counter_span(8),
      I4 => \counter_span[11]_i_5_n_0\,
      I5 => \counter_span[11]_i_6_n_0\,
      O => \counter_span[11]_i_3_n_0\
    );
\counter_span[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_span(1),
      I1 => counter_span(3),
      I2 => counter_span(9),
      I3 => counter_span(6),
      O => \counter_span[11]_i_4_n_0\
    );
\counter_span[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_span(11),
      I1 => counter_span(10),
      O => \counter_span[11]_i_5_n_0\
    );
\counter_span[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => counter_span(4),
      I1 => counter_span(2),
      I2 => counter_span(7),
      I3 => counter_span(0),
      O => \counter_span[11]_i_6_n_0\
    );
\counter_span[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => counter_span(11),
      I1 => counter_span0(1),
      I2 => \counter_span[11]_i_3_n_0\,
      O => \counter_span[1]_i_1_n_0\
    );
\counter_span[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => counter_span(11),
      I1 => counter_span0(2),
      I2 => \counter_span[11]_i_3_n_0\,
      O => \counter_span[2]_i_1_n_0\
    );
\counter_span[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span0(3),
      O => p_2_in(3)
    );
\counter_span[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span0(4),
      O => p_2_in(4)
    );
\counter_span[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span0(5),
      O => p_2_in(5)
    );
\counter_span[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span0(6),
      O => p_2_in(6)
    );
\counter_span[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span0(7),
      O => p_2_in(7)
    );
\counter_span[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span0(8),
      O => p_2_in(8)
    );
\counter_span[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_span(11),
      I1 => \counter_span[11]_i_3_n_0\,
      I2 => counter_span0(9),
      O => p_2_in(9)
    );
\counter_span_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(0),
      Q => counter_span(0)
    );
\counter_span_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(10),
      Q => counter_span(10)
    );
\counter_span_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(11),
      Q => counter_span(11)
    );
\counter_span_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter_span[1]_i_1_n_0\,
      Q => counter_span(1)
    );
\counter_span_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => \counter_span[2]_i_1_n_0\,
      Q => counter_span(2)
    );
\counter_span_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(3),
      Q => counter_span(3)
    );
\counter_span_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(4),
      Q => counter_span(4)
    );
\counter_span_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(5),
      Q => counter_span(5)
    );
\counter_span_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(6),
      Q => counter_span(6)
    );
\counter_span_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(7),
      Q => counter_span(7)
    );
\counter_span_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(8),
      Q => counter_span(8)
    );
\counter_span_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \counter_span[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(9),
      Q => counter_span(9)
    );
is_computing_counter_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => is_computing_counter_i_2_n_0,
      I1 => is_computing_counter_reg_n_0,
      I2 => \^s_axis_tready_int_reg_0\,
      I3 => s_axis_tvalid,
      O => is_computing_counter_i_1_n_0
    );
is_computing_counter_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_span(0),
      I1 => counter_span(7),
      I2 => counter_span(2),
      I3 => counter_span(4),
      I4 => is_computing_counter_i_3_n_0,
      I5 => \counter_span[11]_i_4_n_0\,
      O => is_computing_counter_i_2_n_0
    );
is_computing_counter_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_span(10),
      I1 => counter_span(11),
      I2 => counter_span(8),
      I3 => counter_span(5),
      O => is_computing_counter_i_3_n_0
    );
is_computing_counter_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => p_0_in,
      D => is_computing_counter_i_1_n_0,
      Q => is_computing_counter_reg_n_0
    );
is_computing_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFD00FD00FD00"
    )
        port map (
      I0 => is_computing_i_2_n_0,
      I1 => counter(10),
      I2 => counter(11),
      I3 => is_computing_reg_n_0,
      I4 => is_computing_counter_i_2_n_0,
      I5 => is_computing_counter_reg_n_0,
      O => is_computing_i_1_n_0
    );
is_computing_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => counter(9),
      I1 => counter(7),
      I2 => \counter[7]_i_5_n_0\,
      I3 => counter(6),
      I4 => counter(8),
      O => is_computing_i_2_n_0
    );
is_computing_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => p_0_in,
      D => is_computing_i_1_n_0,
      Q => is_computing_reg_n_0
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^m_axis_tvalid_int_reg_0\,
      I1 => new_data_reg_n_0,
      I2 => aresetn,
      O => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[0]\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[10]\,
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[11]\,
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[12]\,
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[13]\,
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[14]\,
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[15]\,
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[16]\,
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[17]\,
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[18]\,
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[19]\,
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[1]\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[20]\,
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[21]\,
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => p_0_in16_in,
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => p_1_in15_in,
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[2]\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[3]\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[4]\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[5]\,
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[6]\,
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[7]\,
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[8]\,
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => \output_temp_reg_n_0_[9]\,
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_1_n_0\,
      D => m_axis_tlast_temp,
      Q => m_axis_tlast,
      R => '0'
    );
m_axis_tlast_temp_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready_int_reg_0\,
      I3 => m_axis_tlast_temp,
      O => m_axis_tlast_temp_i_1_n_0
    );
m_axis_tlast_temp_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => p_0_in,
      D => m_axis_tlast_temp_i_1_n_0,
      Q => m_axis_tlast_temp
    );
m_axis_tvalid_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_int_reg_0\,
      I2 => new_data_reg_n_0,
      O => m_axis_tvalid_int_i_1_n_0
    );
m_axis_tvalid_int_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
m_axis_tvalid_int_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => p_0_in,
      D => m_axis_tvalid_int_i_1_n_0,
      Q => \^m_axis_tvalid_int_reg_0\
    );
new_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000002000200"
    )
        port map (
      I0 => is_computing_i_2_n_0,
      I1 => counter(10),
      I2 => counter(11),
      I3 => is_computing_reg_n_0,
      I4 => \^m_axis_tvalid_int_reg_0\,
      I5 => new_data_reg_n_0,
      O => new_data_i_1_n_0
    );
new_data_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => p_0_in,
      D => new_data_i_1_n_0,
      Q => new_data_reg_n_0
    );
\output_temp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => p_0_in16_in,
      I1 => p_1_in15_in,
      I2 => DorM,
      I3 => \output_temp_reg_n_0_[1]\,
      I4 => \counter[11]_i_3_n_0\,
      I5 => s_axis_tdata(0),
      O => \output_temp[0]_i_1_n_0\
    );
\output_temp[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[11]\,
      I2 => s_axis_tdata(10),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[10]_i_2_n_0\,
      O => \output_temp[10]_i_1_n_0\
    );
\output_temp[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[9]\,
      O => \output_temp[10]_i_2_n_0\
    );
\output_temp[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[12]\,
      I2 => s_axis_tdata(11),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[11]_i_2_n_0\,
      O => \output_temp[11]_i_1_n_0\
    );
\output_temp[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[10]\,
      O => \output_temp[11]_i_2_n_0\
    );
\output_temp[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[13]\,
      I2 => s_axis_tdata(12),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[12]_i_2_n_0\,
      O => \output_temp[12]_i_1_n_0\
    );
\output_temp[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[11]\,
      O => \output_temp[12]_i_2_n_0\
    );
\output_temp[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[14]\,
      I2 => s_axis_tdata(13),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[13]_i_2_n_0\,
      O => \output_temp[13]_i_1_n_0\
    );
\output_temp[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[12]\,
      O => \output_temp[13]_i_2_n_0\
    );
\output_temp[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[15]\,
      I2 => s_axis_tdata(14),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[14]_i_2_n_0\,
      O => \output_temp[14]_i_1_n_0\
    );
\output_temp[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[13]\,
      O => \output_temp[14]_i_2_n_0\
    );
\output_temp[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[16]\,
      I2 => s_axis_tdata(15),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[15]_i_2_n_0\,
      O => \output_temp[15]_i_1_n_0\
    );
\output_temp[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[14]\,
      O => \output_temp[15]_i_2_n_0\
    );
\output_temp[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[17]\,
      I2 => s_axis_tdata(16),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[16]_i_2_n_0\,
      O => \output_temp[16]_i_1_n_0\
    );
\output_temp[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[15]\,
      O => \output_temp[16]_i_2_n_0\
    );
\output_temp[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[18]\,
      I2 => s_axis_tdata(17),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[17]_i_2_n_0\,
      O => \output_temp[17]_i_1_n_0\
    );
\output_temp[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[16]\,
      O => \output_temp[17]_i_2_n_0\
    );
\output_temp[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[19]\,
      I2 => s_axis_tdata(18),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[18]_i_2_n_0\,
      O => \output_temp[18]_i_1_n_0\
    );
\output_temp[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[17]\,
      O => \output_temp[18]_i_2_n_0\
    );
\output_temp[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[20]\,
      I2 => s_axis_tdata(19),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[19]_i_2_n_0\,
      O => \output_temp[19]_i_1_n_0\
    );
\output_temp[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[18]\,
      O => \output_temp[19]_i_2_n_0\
    );
\output_temp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[2]\,
      I2 => s_axis_tdata(1),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[1]_i_2_n_0\,
      O => \output_temp[1]_i_1_n_0\
    );
\output_temp[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[0]\,
      O => \output_temp[1]_i_2_n_0\
    );
\output_temp[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[21]\,
      I2 => s_axis_tdata(20),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[20]_i_2_n_0\,
      O => \output_temp[20]_i_1_n_0\
    );
\output_temp[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[19]\,
      O => \output_temp[20]_i_2_n_0\
    );
\output_temp[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2EE22E2EEEE2222"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \counter[11]_i_3_n_0\,
      I2 => \output_temp_reg_n_0_[20]\,
      I3 => p_1_in15_in,
      I4 => p_0_in16_in,
      I5 => DorM,
      O => \output_temp[21]_i_1_n_0\
    );
\output_temp[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^s_axis_tready_int_reg_0\,
      I1 => s_axis_tvalid,
      I2 => \counter[11]_i_3_n_0\,
      O => \output_temp[22]_i_1_n_0\
    );
\output_temp[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2EE22E2EE22EE22"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \counter[11]_i_3_n_0\,
      I2 => \output_temp_reg_n_0_[21]\,
      I3 => p_1_in15_in,
      I4 => p_0_in16_in,
      I5 => DorM,
      O => \output_temp[22]_i_2_n_0\
    );
\output_temp[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready_int_reg_0\,
      I3 => \counter[11]_i_3_n_0\,
      I4 => p_1_in15_in,
      O => \output_temp[23]_i_1_n_0\
    );
\output_temp[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[3]\,
      I2 => s_axis_tdata(2),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[2]_i_2_n_0\,
      O => \output_temp[2]_i_1_n_0\
    );
\output_temp[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[1]\,
      O => \output_temp[2]_i_2_n_0\
    );
\output_temp[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[4]\,
      I2 => s_axis_tdata(3),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[3]_i_2_n_0\,
      O => \output_temp[3]_i_1_n_0\
    );
\output_temp[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[2]\,
      O => \output_temp[3]_i_2_n_0\
    );
\output_temp[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[5]\,
      I2 => s_axis_tdata(4),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[4]_i_2_n_0\,
      O => \output_temp[4]_i_1_n_0\
    );
\output_temp[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[3]\,
      O => \output_temp[4]_i_2_n_0\
    );
\output_temp[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[6]\,
      I2 => s_axis_tdata(5),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[5]_i_2_n_0\,
      O => \output_temp[5]_i_1_n_0\
    );
\output_temp[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[4]\,
      O => \output_temp[5]_i_2_n_0\
    );
\output_temp[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[7]\,
      I2 => s_axis_tdata(6),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[6]_i_2_n_0\,
      O => \output_temp[6]_i_1_n_0\
    );
\output_temp[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[5]\,
      O => \output_temp[6]_i_2_n_0\
    );
\output_temp[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[8]\,
      I2 => s_axis_tdata(7),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[7]_i_2_n_0\,
      O => \output_temp[7]_i_1_n_0\
    );
\output_temp[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[6]\,
      O => \output_temp[7]_i_2_n_0\
    );
\output_temp[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[9]\,
      I2 => s_axis_tdata(8),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[8]_i_2_n_0\,
      O => \output_temp[8]_i_1_n_0\
    );
\output_temp[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[7]\,
      O => \output_temp[8]_i_2_n_0\
    );
\output_temp[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF044F0"
    )
        port map (
      I0 => DorM,
      I1 => \output_temp_reg_n_0_[10]\,
      I2 => s_axis_tdata(9),
      I3 => \counter[11]_i_3_n_0\,
      I4 => \output_temp[9]_i_2_n_0\,
      O => \output_temp[9]_i_1_n_0\
    );
\output_temp[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => DorM,
      I1 => p_0_in16_in,
      I2 => p_1_in15_in,
      I3 => \output_temp_reg_n_0_[8]\,
      O => \output_temp[9]_i_2_n_0\
    );
\output_temp_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[0]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[0]\
    );
\output_temp_reg[10]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[10]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[10]\
    );
\output_temp_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[11]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[11]\
    );
\output_temp_reg[12]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[12]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[12]\
    );
\output_temp_reg[13]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[13]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[13]\
    );
\output_temp_reg[14]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[14]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[14]\
    );
\output_temp_reg[15]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[15]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[15]\
    );
\output_temp_reg[16]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[16]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[16]\
    );
\output_temp_reg[17]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[17]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[17]\
    );
\output_temp_reg[18]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[18]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[18]\
    );
\output_temp_reg[19]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[19]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[19]\
    );
\output_temp_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[1]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[1]\
    );
\output_temp_reg[20]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[20]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[20]\
    );
\output_temp_reg[21]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[21]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[21]\
    );
\output_temp_reg[22]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[22]_i_2_n_0\,
      PRE => p_0_in,
      Q => p_0_in16_in
    );
\output_temp_reg[23]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \output_temp[23]_i_1_n_0\,
      PRE => p_0_in,
      Q => p_1_in15_in
    );
\output_temp_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[2]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[2]\
    );
\output_temp_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[3]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[3]\
    );
\output_temp_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[4]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[4]\
    );
\output_temp_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[5]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[5]\
    );
\output_temp_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[6]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[6]\
    );
\output_temp_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[7]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[7]\
    );
\output_temp_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[8]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[8]\
    );
\output_temp_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \output_temp[22]_i_1_n_0\,
      D => \output_temp[9]_i_1_n_0\,
      PRE => p_0_in,
      Q => \output_temp_reg_n_0_[9]\
    );
s_axis_tready_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_computing_counter_reg_n_0,
      I1 => is_computing_reg_n_0,
      O => s_axis_tready_int0
    );
s_axis_tready_int_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_tready_int0,
      PRE => p_0_in,
      Q => \^s_axis_tready_int_reg_0\
    );
\volume_temp[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^s_axis_tready_int_reg_0\,
      I1 => s_axis_tvalid,
      I2 => aresetn,
      O => \volume_temp[10]_i_1_n_0\
    );
\volume_temp[10]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => volume(9),
      O => volume_temp00_in(10)
    );
\volume_temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume(0),
      Q => volume_temp(0),
      R => '0'
    );
\volume_temp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume_temp00_in(10),
      Q => volume_temp(10),
      R => '0'
    );
\volume_temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume(1),
      Q => volume_temp(1),
      R => '0'
    );
\volume_temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume(2),
      Q => volume_temp(2),
      R => '0'
    );
\volume_temp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume(3),
      Q => volume_temp(3),
      R => '0'
    );
\volume_temp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume(4),
      Q => volume_temp(4),
      R => '0'
    );
\volume_temp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume(5),
      Q => volume_temp(5),
      R => '0'
    );
\volume_temp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume(6),
      Q => volume_temp(6),
      R => '0'
    );
\volume_temp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume(7),
      Q => volume_temp(7),
      R => '0'
    );
\volume_temp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \volume_temp[10]_i_1_n_0\,
      D => volume(8),
      Q => volume_temp(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    volume : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_volume_controller_0_0,volume_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "volume_controller,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_volume_controller
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid_int_reg_0 => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready_int_reg_0 => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      volume(9 downto 0) => volume(9 downto 0)
    );
end STRUCTURE;
