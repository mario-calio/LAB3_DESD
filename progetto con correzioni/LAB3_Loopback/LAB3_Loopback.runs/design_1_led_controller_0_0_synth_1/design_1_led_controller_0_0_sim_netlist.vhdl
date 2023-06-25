-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 20:28:16 2023
-- Host        : Pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_led_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_led_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller is
  port (
    led_b : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_g : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_r : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    mute_enable : in STD_LOGIC;
    filter_enable : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller is
  signal is_filter : STD_LOGIC;
  signal is_filter_i_1_n_0 : STD_LOGIC;
  signal is_mute : STD_LOGIC;
  signal is_mute_i_1_n_0 : STD_LOGIC;
  signal \^led_b\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \led_b[7]_i_1_n_0\ : STD_LOGIC;
  signal \^led_g\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \led_g[7]_i_1_n_0\ : STD_LOGIC;
  signal \^led_r\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \led_r[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_b[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_g[7]_i_1\ : label is "soft_lutpair0";
begin
  led_b(0) <= \^led_b\(0);
  led_g(0) <= \^led_g\(0);
  led_r(0) <= \^led_r\(0);
is_filter_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => filter_enable,
      I1 => is_filter,
      O => is_filter_i_1_n_0
    );
is_filter_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => reset,
      D => is_filter_i_1_n_0,
      Q => is_filter
    );
is_mute_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mute_enable,
      I1 => is_mute,
      O => is_mute_i_1_n_0
    );
is_mute_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => reset,
      D => is_mute_i_1_n_0,
      Q => is_mute
    );
\led_b[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0AC"
    )
        port map (
      I0 => \^led_b\(0),
      I1 => is_filter,
      I2 => reset,
      I3 => is_mute,
      O => \led_b[7]_i_1_n_0\
    );
\led_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \led_b[7]_i_1_n_0\,
      Q => \^led_b\(0),
      R => '0'
    );
\led_g[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0A3"
    )
        port map (
      I0 => \^led_g\(0),
      I1 => is_filter,
      I2 => reset,
      I3 => is_mute,
      O => \led_g[7]_i_1_n_0\
    );
\led_g_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \led_g[7]_i_1_n_0\,
      Q => \^led_g\(0),
      R => '0'
    );
\led_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^led_r\(0),
      I1 => reset,
      I2 => is_mute,
      O => \led_r[7]_i_1_n_0\
    );
\led_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \led_r[7]_i_1_n_0\,
      Q => \^led_r\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    mute_enable : in STD_LOGIC;
    filter_enable : in STD_LOGIC;
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_led_controller_0_0,led_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "led_controller,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^led_b\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \^led_g\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \^led_r\ : STD_LOGIC_VECTOR ( 6 to 6 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  led_b(7) <= \^led_b\(6);
  led_b(6) <= \^led_b\(6);
  led_b(5) <= \^led_b\(6);
  led_b(4) <= \^led_b\(6);
  led_b(3) <= \^led_b\(6);
  led_b(2) <= \^led_b\(6);
  led_b(1) <= \^led_b\(6);
  led_b(0) <= \^led_b\(6);
  led_g(7) <= \^led_g\(6);
  led_g(6) <= \^led_g\(6);
  led_g(5) <= \^led_g\(6);
  led_g(4) <= \^led_g\(6);
  led_g(3) <= \^led_g\(6);
  led_g(2) <= \^led_g\(6);
  led_g(1) <= \^led_g\(6);
  led_g(0) <= \^led_g\(6);
  led_r(7) <= \^led_r\(6);
  led_r(6) <= \^led_r\(6);
  led_r(5) <= \^led_r\(6);
  led_r(4) <= \^led_r\(6);
  led_r(3) <= \^led_r\(6);
  led_r(2) <= \^led_r\(6);
  led_r(1) <= \^led_r\(6);
  led_r(0) <= \^led_r\(6);
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller
     port map (
      aclk => aclk,
      filter_enable => filter_enable,
      led_b(0) => \^led_b\(6),
      led_g(0) => \^led_g\(6),
      led_r(0) => \^led_r\(6),
      mute_enable => mute_enable,
      reset => reset
    );
end STRUCTURE;
