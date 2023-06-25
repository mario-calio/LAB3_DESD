-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 20:28:20 2023
-- Host        : Pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mute_0_0_sim_netlist.vhdl
-- Design      : design_1_mute_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mute is
  port (
    m_axis_tvalid_int_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    reset : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    mute_enable : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mute;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mute is
  signal is_mute : STD_LOGIC;
  signal is_mute_i_1_n_0 : STD_LOGIC;
  signal \m_axis_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_temp : STD_LOGIC;
  signal m_axis_tvalid_int_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_int_reg_0\ : STD_LOGIC;
  signal new_data_i_1_n_0 : STD_LOGIC;
  signal new_data_reg_n_0 : STD_LOGIC;
  signal unmuted_signal : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_tvalid_int_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of new_data_i_1 : label is "soft_lutpair0";
begin
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid_int_reg_0 <= \^m_axis_tvalid_int_reg_0\;
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
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => is_mute,
      I1 => new_data_reg_n_0,
      I2 => \^m_axis_tvalid_int_reg_0\,
      I3 => reset,
      O => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^m_axis_tvalid_int_reg_0\,
      I1 => new_data_reg_n_0,
      I2 => reset,
      O => \m_axis_tdata[23]_i_2_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(0),
      Q => m_axis_tdata(0),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(10),
      Q => m_axis_tdata(10),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(11),
      Q => m_axis_tdata(11),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(12),
      Q => m_axis_tdata(12),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(13),
      Q => m_axis_tdata(13),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(14),
      Q => m_axis_tdata(14),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(15),
      Q => m_axis_tdata(15),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(16),
      Q => m_axis_tdata(16),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(17),
      Q => m_axis_tdata(17),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(18),
      Q => m_axis_tdata(18),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(19),
      Q => m_axis_tdata(19),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(1),
      Q => m_axis_tdata(1),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(20),
      Q => m_axis_tdata(20),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(21),
      Q => m_axis_tdata(21),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(22),
      Q => m_axis_tdata(22),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(23),
      Q => m_axis_tdata(23),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(2),
      Q => m_axis_tdata(2),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(3),
      Q => m_axis_tdata(3),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(4),
      Q => m_axis_tdata(4),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(5),
      Q => m_axis_tdata(5),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(6),
      Q => m_axis_tdata(6),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(7),
      Q => m_axis_tdata(7),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(8),
      Q => m_axis_tdata(8),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[23]_i_2_n_0\,
      D => unmuted_signal(9),
      Q => m_axis_tdata(9),
      R => \m_axis_tdata[23]_i_1_n_0\
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => m_axis_tlast_temp,
      I1 => \^m_axis_tvalid_int_reg_0\,
      I2 => new_data_reg_n_0,
      I3 => reset,
      I4 => \^m_axis_tlast\,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tlast_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
m_axis_tlast_temp_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tlast,
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
m_axis_tvalid_int_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => reset,
      D => m_axis_tvalid_int_i_1_n_0,
      Q => \^m_axis_tvalid_int_reg_0\
    );
new_data_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axis_tvalid_int_reg_0\,
      I1 => new_data_reg_n_0,
      I2 => s_axis_tvalid,
      O => new_data_i_1_n_0
    );
new_data_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => reset,
      D => new_data_i_1_n_0,
      Q => new_data_reg_n_0
    );
\unmuted_signal_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(0),
      Q => unmuted_signal(0)
    );
\unmuted_signal_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(10),
      Q => unmuted_signal(10)
    );
\unmuted_signal_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(11),
      Q => unmuted_signal(11)
    );
\unmuted_signal_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(12),
      Q => unmuted_signal(12)
    );
\unmuted_signal_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(13),
      Q => unmuted_signal(13)
    );
\unmuted_signal_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(14),
      Q => unmuted_signal(14)
    );
\unmuted_signal_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(15),
      Q => unmuted_signal(15)
    );
\unmuted_signal_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(16),
      Q => unmuted_signal(16)
    );
\unmuted_signal_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(17),
      Q => unmuted_signal(17)
    );
\unmuted_signal_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(18),
      Q => unmuted_signal(18)
    );
\unmuted_signal_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(19),
      Q => unmuted_signal(19)
    );
\unmuted_signal_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(1),
      Q => unmuted_signal(1)
    );
\unmuted_signal_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(20),
      Q => unmuted_signal(20)
    );
\unmuted_signal_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(21),
      Q => unmuted_signal(21)
    );
\unmuted_signal_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(22),
      Q => unmuted_signal(22)
    );
\unmuted_signal_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(23),
      Q => unmuted_signal(23)
    );
\unmuted_signal_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(2),
      Q => unmuted_signal(2)
    );
\unmuted_signal_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(3),
      Q => unmuted_signal(3)
    );
\unmuted_signal_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(4),
      Q => unmuted_signal(4)
    );
\unmuted_signal_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(5),
      Q => unmuted_signal(5)
    );
\unmuted_signal_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(6),
      Q => unmuted_signal(6)
    );
\unmuted_signal_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(7),
      Q => unmuted_signal(7)
    );
\unmuted_signal_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(8),
      Q => unmuted_signal(8)
    );
\unmuted_signal_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      CLR => reset,
      D => s_axis_tdata(9),
      Q => unmuted_signal(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    mute_enable : in STD_LOGIC;
    aclk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_mute_0_0,mute,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mute,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  s_axis_tready <= \<const1>\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mute
     port map (
      aclk => aclk,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid_int_reg_0 => m_axis_tvalid,
      mute_enable => mute_enable,
      reset => reset,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
