-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 20:25:50 2023
-- Host        : Pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/mario/Desktop/Group_11A_assignement3.xpr/LAB3_Loopback/LAB3_Loopback.gen/sources_1/bd/design_1/ip/design_1_debouncer_0_0/design_1_debouncer_0_0_sim_netlist.vhdl
-- Design      : design_1_debouncer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_debouncer_0_0_debouncer is
  port (
    debounced : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_signal : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_debouncer_0_0_debouncer : entity is "debouncer";
end design_1_debouncer_0_0_debouncer;

architecture STRUCTURE of design_1_debouncer_0_0_debouncer is
  signal counter : STD_LOGIC_VECTOR ( 19 downto 0 );
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
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal counter0_carry_i_1_n_0 : STD_LOGIC;
  signal counter0_carry_i_2_n_0 : STD_LOGIC;
  signal counter0_carry_i_3_n_0 : STD_LOGIC;
  signal counter0_carry_i_4_n_0 : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \counter[19]_i_2_n_0\ : STD_LOGIC;
  signal \counter[19]_i_3_n_0\ : STD_LOGIC;
  signal \counter[19]_i_4_n_0\ : STD_LOGIC;
  signal \counter[19]_i_5_n_0\ : STD_LOGIC;
  signal \counter[19]_i_6_n_0\ : STD_LOGIC;
  signal \counter[19]_i_7_n_0\ : STD_LOGIC;
  signal \counter[19]_i_8_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal debounced_int_C_i_1_n_0 : STD_LOGIC;
  signal debounced_int_reg_C_n_0 : STD_LOGIC;
  signal debounced_int_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal debounced_int_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal debounced_int_reg_LDC_n_0 : STD_LOGIC;
  signal debounced_int_reg_P_n_0 : STD_LOGIC;
  signal \NLW_counter0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__3\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[19]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of debounced_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of debounced_int_C_i_1 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of debounced_int_reg_LDC : label is "LDC";
begin
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => counter(4 downto 1),
      O(3 downto 0) => data0(4 downto 1),
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
      DI(3 downto 0) => counter(8 downto 5),
      O(3 downto 0) => data0(8 downto 5),
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
      I0 => counter(8),
      O => \counter0_carry__0_i_1_n_0\
    );
\counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(7),
      O => \counter0_carry__0_i_2_n_0\
    );
\counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(6),
      O => \counter0_carry__0_i_3_n_0\
    );
\counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(5),
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
      DI(3 downto 0) => counter(12 downto 9),
      O(3 downto 0) => data0(12 downto 9),
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
      I0 => counter(12),
      O => \counter0_carry__1_i_1_n_0\
    );
\counter0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(11),
      O => \counter0_carry__1_i_2_n_0\
    );
\counter0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(10),
      O => \counter0_carry__1_i_3_n_0\
    );
\counter0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(9),
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
      DI(3 downto 0) => counter(16 downto 13),
      O(3 downto 0) => data0(16 downto 13),
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
      I0 => counter(16),
      O => \counter0_carry__2_i_1_n_0\
    );
\counter0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(15),
      O => \counter0_carry__2_i_2_n_0\
    );
\counter0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(14),
      O => \counter0_carry__2_i_3_n_0\
    );
\counter0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(13),
      O => \counter0_carry__2_i_4_n_0\
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_counter0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => counter(18 downto 17),
      O(3) => \NLW_counter0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2) => \counter0_carry__3_i_1_n_0\,
      S(1) => \counter0_carry__3_i_2_n_0\,
      S(0) => \counter0_carry__3_i_3_n_0\
    );
\counter0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(19),
      O => \counter0_carry__3_i_1_n_0\
    );
\counter0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(18),
      O => \counter0_carry__3_i_2_n_0\
    );
\counter0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(17),
      O => \counter0_carry__3_i_3_n_0\
    );
counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(4),
      O => counter0_carry_i_1_n_0
    );
counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(3),
      O => counter0_carry_i_2_n_0
    );
counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(2),
      O => counter0_carry_i_3_n_0
    );
counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(1),
      O => counter0_carry_i_4_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[19]_i_3_n_0\,
      I1 => data0(10),
      O => \counter[10]_i_1_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[19]_i_3_n_0\,
      I1 => data0(11),
      O => \counter[11]_i_1_n_0\
    );
\counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[19]_i_3_n_0\,
      I1 => data0(12),
      O => \counter[12]_i_1_n_0\
    );
\counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[19]_i_3_n_0\,
      I1 => data0(13),
      O => \counter[13]_i_1_n_0\
    );
\counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(14),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[14]_i_1_n_0\
    );
\counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[19]_i_3_n_0\,
      I1 => data0(15),
      O => \counter[15]_i_1_n_0\
    );
\counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(16),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[16]_i_1_n_0\
    );
\counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(17),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[17]_i_1_n_0\
    );
\counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(18),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[18]_i_1_n_0\
    );
\counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF656A"
    )
        port map (
      I0 => input_signal,
      I1 => debounced_int_reg_P_n_0,
      I2 => debounced_int_reg_LDC_n_0,
      I3 => debounced_int_reg_C_n_0,
      I4 => \counter[19]_i_3_n_0\,
      O => counter_0
    );
\counter[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(19),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[19]_i_2_n_0\
    );
\counter[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter[19]_i_4_n_0\,
      I1 => \counter[19]_i_5_n_0\,
      I2 => \counter[19]_i_6_n_0\,
      I3 => \counter[19]_i_7_n_0\,
      I4 => \counter[19]_i_8_n_0\,
      O => \counter[19]_i_3_n_0\
    );
\counter[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(3),
      I3 => counter(2),
      O => \counter[19]_i_4_n_0\
    );
\counter[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(13),
      I1 => counter(12),
      I2 => counter(15),
      I3 => counter(14),
      O => \counter[19]_i_5_n_0\
    );
\counter[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(17),
      I1 => counter(16),
      I2 => counter(19),
      I3 => counter(18),
      O => \counter[19]_i_6_n_0\
    );
\counter[19]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(9),
      I1 => counter(8),
      I2 => counter(11),
      I3 => counter(10),
      O => \counter[19]_i_7_n_0\
    );
\counter[19]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => counter(7),
      I3 => counter(6),
      O => \counter[19]_i_8_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(1),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(2),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(3),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[3]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(4),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(5),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[5]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[19]_i_3_n_0\,
      I1 => data0(6),
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[19]_i_3_n_0\,
      I1 => data0(7),
      O => \counter[7]_i_1_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[19]_i_3_n_0\,
      I1 => data0(8),
      O => \counter[8]_i_1_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data0(9),
      I1 => \counter[19]_i_3_n_0\,
      O => \counter[9]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[0]_i_1_n_0\,
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[10]_i_1_n_0\,
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[11]_i_1_n_0\,
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[12]_i_1_n_0\,
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[13]_i_1_n_0\,
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[14]_i_1_n_0\,
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[15]_i_1_n_0\,
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[16]_i_1_n_0\,
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[17]_i_1_n_0\,
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[18]_i_1_n_0\,
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[19]_i_2_n_0\,
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[2]_i_1_n_0\,
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[3]_i_1_n_0\,
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[4]_i_1_n_0\,
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[5]_i_1_n_0\,
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[6]_i_1_n_0\,
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[7]_i_1_n_0\,
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[8]_i_1_n_0\,
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter_0,
      CLR => reset,
      D => \counter[9]_i_1_n_0\,
      Q => counter(9)
    );
debounced_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => debounced_int_reg_P_n_0,
      I1 => debounced_int_reg_LDC_n_0,
      I2 => debounced_int_reg_C_n_0,
      O => debounced
    );
debounced_int_C_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => debounced_int_reg_P_n_0,
      I1 => debounced_int_reg_LDC_n_0,
      I2 => debounced_int_reg_C_n_0,
      I3 => \counter[19]_i_3_n_0\,
      I4 => input_signal,
      O => debounced_int_C_i_1_n_0
    );
debounced_int_reg_C: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => debounced_int_reg_LDC_i_2_n_0,
      D => debounced_int_C_i_1_n_0,
      Q => debounced_int_reg_C_n_0
    );
debounced_int_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => debounced_int_reg_LDC_i_2_n_0,
      D => '1',
      G => debounced_int_reg_LDC_i_1_n_0,
      GE => '1',
      Q => debounced_int_reg_LDC_n_0
    );
debounced_int_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reset,
      I1 => input_signal,
      O => debounced_int_reg_LDC_i_1_n_0
    );
debounced_int_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset,
      I1 => input_signal,
      O => debounced_int_reg_LDC_i_2_n_0
    );
debounced_int_reg_P: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => debounced_int_C_i_1_n_0,
      PRE => debounced_int_reg_LDC_i_1_n_0,
      Q => debounced_int_reg_P_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_debouncer_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    debounced : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_debouncer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_debouncer_0_0 : entity is "design_1_debouncer_0_0,debouncer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_debouncer_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_debouncer_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_debouncer_0_0 : entity is "debouncer,Vivado 2020.2";
end design_1_debouncer_0_0;

architecture STRUCTURE of design_1_debouncer_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.design_1_debouncer_0_0_debouncer
     port map (
      clk => clk,
      debounced => debounced,
      input_signal => input_signal,
      reset => reset
    );
end STRUCTURE;
