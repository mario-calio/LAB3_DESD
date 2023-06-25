--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Sun May 21 20:22:19 2023
--Host        : Pc running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    SPI_M_0_io0_i : in STD_LOGIC;
    SPI_M_0_io0_o : out STD_LOGIC;
    SPI_M_0_io0_t : out STD_LOGIC;
    SPI_M_0_io1_i : in STD_LOGIC;
    SPI_M_0_io1_o : out STD_LOGIC;
    SPI_M_0_io1_t : out STD_LOGIC;
    SPI_M_0_sck_i : in STD_LOGIC;
    SPI_M_0_sck_o : out STD_LOGIC;
    SPI_M_0_sck_t : out STD_LOGIC;
    SPI_M_0_ss_i : in STD_LOGIC;
    SPI_M_0_ss_o : out STD_LOGIC;
    SPI_M_0_ss_t : out STD_LOGIC;
    reset : in STD_LOGIC;
    rx_lrck_0 : out STD_LOGIC;
    rx_mclk_0 : out STD_LOGIC;
    rx_sclk_0 : out STD_LOGIC;
    rx_sdin_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    tx_lrck_0 : out STD_LOGIC;
    tx_mclk_0 : out STD_LOGIC;
    tx_sclk_0 : out STD_LOGIC;
    tx_sdout_0 : out STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=15,numReposBlks=15,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=24,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0;
  component design_1_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_0;
  component design_1_proc_sys_reset_0_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_1;
  component design_1_debouncer_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    debounced : out STD_LOGIC
  );
  end component design_1_debouncer_0_0;
  component design_1_debouncer_1_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    debounced : out STD_LOGIC
  );
  end component design_1_debouncer_1_0;
  component design_1_edge_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    edge_detected : out STD_LOGIC
  );
  end component design_1_edge_detector_0_0;
  component design_1_edge_detector_1_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    edge_detected : out STD_LOGIC
  );
  end component design_1_edge_detector_1_0;
  component design_1_axi4stream_spi_master_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cs_i : in STD_LOGIC;
    cs_o : out STD_LOGIC;
    cs_t : out STD_LOGIC;
    sclk_i : in STD_LOGIC;
    sclk_o : out STD_LOGIC;
    sclk_t : out STD_LOGIC;
    mosi_i : in STD_LOGIC;
    mosi_o : out STD_LOGIC;
    mosi_t : out STD_LOGIC;
    miso_i : in STD_LOGIC;
    miso_o : out STD_LOGIC;
    miso_t : out STD_LOGIC
  );
  end component design_1_axi4stream_spi_master_0_0;
  component design_1_digilent_jstk2_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    led_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_digilent_jstk2_0_0;
  component design_1_axis_dual_i2s_0_2 is
  port (
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
  end component design_1_axis_dual_i2s_0_2;
  component design_1_dual_moving_average_0_0 is
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
  end component design_1_dual_moving_average_0_0;
  component design_1_led_controller_0_0 is
  port (
    mute_enable : in STD_LOGIC;
    filter_enable : in STD_LOGIC;
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component design_1_led_controller_0_0;
  component design_1_mute_0_0 is
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
  end component design_1_mute_0_0;
  component design_1_volume_controller_0_0 is
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
  end component design_1_volume_controller_0_0;
  component design_1_balance_controller_0_0 is
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
    balance : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component design_1_balance_controller_0_0;
  signal axi4stream_spi_master_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi4stream_spi_master_0_M_AXIS_TVALID : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_IO0_I : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_IO0_O : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_IO0_T : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_IO1_I : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_IO1_O : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_IO1_T : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_SCK_I : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_SCK_O : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_SCK_T : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_SS_I : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_SS_O : STD_LOGIC;
  signal axi4stream_spi_master_0_SPI_M_SS_T : STD_LOGIC;
  signal axis_dual_i2s_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axis_dual_i2s_0_m_axis_TLAST : STD_LOGIC;
  signal axis_dual_i2s_0_m_axis_TREADY : STD_LOGIC;
  signal axis_dual_i2s_0_m_axis_TVALID : STD_LOGIC;
  signal axis_dual_i2s_0_rx_lrck : STD_LOGIC;
  signal axis_dual_i2s_0_rx_mclk : STD_LOGIC;
  signal axis_dual_i2s_0_rx_sclk : STD_LOGIC;
  signal axis_dual_i2s_0_tx_lrck : STD_LOGIC;
  signal axis_dual_i2s_0_tx_mclk : STD_LOGIC;
  signal axis_dual_i2s_0_tx_sclk : STD_LOGIC;
  signal axis_dual_i2s_0_tx_sdout : STD_LOGIC;
  signal balance_controller_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal balance_controller_0_m_axis_TLAST : STD_LOGIC;
  signal balance_controller_0_m_axis_TREADY : STD_LOGIC;
  signal balance_controller_0_m_axis_TVALID : STD_LOGIC;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal clk_wiz_clk_out2 : STD_LOGIC;
  signal clk_wiz_locked : STD_LOGIC;
  signal debouncer_0_debounced : STD_LOGIC;
  signal debouncer_1_debounced : STD_LOGIC;
  signal digilent_jstk2_0_btn_jstk : STD_LOGIC;
  signal digilent_jstk2_0_btn_trigger : STD_LOGIC;
  signal digilent_jstk2_0_jstk_x : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal digilent_jstk2_0_jstk_y : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal digilent_jstk2_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal digilent_jstk2_0_m_axis_TREADY : STD_LOGIC;
  signal digilent_jstk2_0_m_axis_TVALID : STD_LOGIC;
  signal dual_moving_average_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dual_moving_average_0_m_axis_TLAST : STD_LOGIC;
  signal dual_moving_average_0_m_axis_TREADY : STD_LOGIC;
  signal dual_moving_average_0_m_axis_TVALID : STD_LOGIC;
  signal edge_detector_0_edge_detected : STD_LOGIC;
  signal edge_detector_1_edge_detected : STD_LOGIC;
  signal led_controller_0_led_b : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal led_controller_0_led_g : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal led_controller_0_led_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mute_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal mute_0_m_axis_TLAST : STD_LOGIC;
  signal mute_0_m_axis_TREADY : STD_LOGIC;
  signal mute_0_m_axis_TVALID : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_1 : STD_LOGIC;
  signal rx_sdin_0_1 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal volume_controller_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal volume_controller_0_m_axis_TLAST : STD_LOGIC;
  signal volume_controller_0_m_axis_TREADY : STD_LOGIC;
  signal volume_controller_0_m_axis_TVALID : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of SPI_M_0_io0_i : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 IO0_I";
  attribute x_interface_info of SPI_M_0_io0_o : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 IO0_O";
  attribute x_interface_info of SPI_M_0_io0_t : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 IO0_T";
  attribute x_interface_info of SPI_M_0_io1_i : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 IO1_I";
  attribute x_interface_info of SPI_M_0_io1_o : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 IO1_O";
  attribute x_interface_info of SPI_M_0_io1_t : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 IO1_T";
  attribute x_interface_info of SPI_M_0_sck_i : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 SCK_I";
  attribute x_interface_info of SPI_M_0_sck_o : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 SCK_O";
  attribute x_interface_info of SPI_M_0_sck_t : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 SCK_T";
  attribute x_interface_info of SPI_M_0_ss_i : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 SS_I";
  attribute x_interface_info of SPI_M_0_ss_o : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 SS_O";
  attribute x_interface_info of SPI_M_0_ss_t : signal is "xilinx.com:interface:spi:1.0 SPI_M_0 SS_T";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute x_interface_parameter of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  SPI_M_0_io0_o <= axi4stream_spi_master_0_SPI_M_IO0_O;
  SPI_M_0_io0_t <= axi4stream_spi_master_0_SPI_M_IO0_T;
  SPI_M_0_io1_o <= axi4stream_spi_master_0_SPI_M_IO1_O;
  SPI_M_0_io1_t <= axi4stream_spi_master_0_SPI_M_IO1_T;
  SPI_M_0_sck_o <= axi4stream_spi_master_0_SPI_M_SCK_O;
  SPI_M_0_sck_t <= axi4stream_spi_master_0_SPI_M_SCK_T;
  SPI_M_0_ss_o <= axi4stream_spi_master_0_SPI_M_SS_O;
  SPI_M_0_ss_t <= axi4stream_spi_master_0_SPI_M_SS_T;
  axi4stream_spi_master_0_SPI_M_IO0_I <= SPI_M_0_io0_i;
  axi4stream_spi_master_0_SPI_M_IO1_I <= SPI_M_0_io1_i;
  axi4stream_spi_master_0_SPI_M_SCK_I <= SPI_M_0_sck_i;
  axi4stream_spi_master_0_SPI_M_SS_I <= SPI_M_0_ss_i;
  reset_1 <= reset;
  rx_lrck_0 <= axis_dual_i2s_0_rx_lrck;
  rx_mclk_0 <= axis_dual_i2s_0_rx_mclk;
  rx_sclk_0 <= axis_dual_i2s_0_rx_sclk;
  rx_sdin_0_1 <= rx_sdin_0;
  sys_clock_1 <= sys_clock;
  tx_lrck_0 <= axis_dual_i2s_0_tx_lrck;
  tx_mclk_0 <= axis_dual_i2s_0_tx_mclk;
  tx_sclk_0 <= axis_dual_i2s_0_tx_sclk;
  tx_sdout_0 <= axis_dual_i2s_0_tx_sdout;
axi4stream_spi_master_0: component design_1_axi4stream_spi_master_0_0
     port map (
      aclk => clk_wiz_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      cs_i => axi4stream_spi_master_0_SPI_M_SS_I,
      cs_o => axi4stream_spi_master_0_SPI_M_SS_O,
      cs_t => axi4stream_spi_master_0_SPI_M_SS_T,
      m_axis_tdata(7 downto 0) => axi4stream_spi_master_0_M_AXIS_TDATA(7 downto 0),
      m_axis_tvalid => axi4stream_spi_master_0_M_AXIS_TVALID,
      miso_i => axi4stream_spi_master_0_SPI_M_IO1_I,
      miso_o => axi4stream_spi_master_0_SPI_M_IO1_O,
      miso_t => axi4stream_spi_master_0_SPI_M_IO1_T,
      mosi_i => axi4stream_spi_master_0_SPI_M_IO0_I,
      mosi_o => axi4stream_spi_master_0_SPI_M_IO0_O,
      mosi_t => axi4stream_spi_master_0_SPI_M_IO0_T,
      s_axis_tdata(7 downto 0) => digilent_jstk2_0_m_axis_TDATA(7 downto 0),
      s_axis_tready => digilent_jstk2_0_m_axis_TREADY,
      s_axis_tvalid => digilent_jstk2_0_m_axis_TVALID,
      sclk_i => axi4stream_spi_master_0_SPI_M_SCK_I,
      sclk_o => axi4stream_spi_master_0_SPI_M_SCK_O,
      sclk_t => axi4stream_spi_master_0_SPI_M_SCK_T
    );
axis_dual_i2s_0: component design_1_axis_dual_i2s_0_2
     port map (
      aclk => clk_wiz_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      i2s_clk => clk_wiz_clk_out2,
      i2s_resetn => proc_sys_reset_1_peripheral_aresetn(0),
      m_axis_tdata(23 downto 0) => axis_dual_i2s_0_m_axis_TDATA(23 downto 0),
      m_axis_tlast => axis_dual_i2s_0_m_axis_TLAST,
      m_axis_tready => axis_dual_i2s_0_m_axis_TREADY,
      m_axis_tvalid => axis_dual_i2s_0_m_axis_TVALID,
      rx_lrck => axis_dual_i2s_0_rx_lrck,
      rx_mclk => axis_dual_i2s_0_rx_mclk,
      rx_sclk => axis_dual_i2s_0_rx_sclk,
      rx_sdin => rx_sdin_0_1,
      s_axis_tdata(23 downto 0) => mute_0_m_axis_TDATA(23 downto 0),
      s_axis_tlast => mute_0_m_axis_TLAST,
      s_axis_tready => mute_0_m_axis_TREADY,
      s_axis_tvalid => mute_0_m_axis_TVALID,
      tx_lrck => axis_dual_i2s_0_tx_lrck,
      tx_mclk => axis_dual_i2s_0_tx_mclk,
      tx_sclk => axis_dual_i2s_0_tx_sclk,
      tx_sdout => axis_dual_i2s_0_tx_sdout
    );
balance_controller_0: component design_1_balance_controller_0_0
     port map (
      aclk => clk_wiz_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      balance(9 downto 0) => digilent_jstk2_0_jstk_x(9 downto 0),
      m_axis_tdata(23 downto 0) => balance_controller_0_m_axis_TDATA(23 downto 0),
      m_axis_tlast => balance_controller_0_m_axis_TLAST,
      m_axis_tready => balance_controller_0_m_axis_TREADY,
      m_axis_tvalid => balance_controller_0_m_axis_TVALID,
      s_axis_tdata(23 downto 0) => dual_moving_average_0_m_axis_TDATA(23 downto 0),
      s_axis_tlast => dual_moving_average_0_m_axis_TLAST,
      s_axis_tready => dual_moving_average_0_m_axis_TREADY,
      s_axis_tvalid => dual_moving_average_0_m_axis_TVALID
    );
clk_wiz: component design_1_clk_wiz_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_clk_out1,
      clk_out2 => clk_wiz_clk_out2,
      locked => clk_wiz_locked,
      reset => reset_1
    );
debouncer_0: component design_1_debouncer_0_0
     port map (
      clk => clk_wiz_clk_out1,
      debounced => debouncer_0_debounced,
      input_signal => digilent_jstk2_0_btn_jstk,
      reset => proc_sys_reset_0_peripheral_reset(0)
    );
debouncer_1: component design_1_debouncer_1_0
     port map (
      clk => clk_wiz_clk_out1,
      debounced => debouncer_1_debounced,
      input_signal => digilent_jstk2_0_btn_trigger,
      reset => proc_sys_reset_0_peripheral_reset(0)
    );
digilent_jstk2_0: component design_1_digilent_jstk2_0_0
     port map (
      aclk => clk_wiz_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      btn_jstk => digilent_jstk2_0_btn_jstk,
      btn_trigger => digilent_jstk2_0_btn_trigger,
      jstk_x(9 downto 0) => digilent_jstk2_0_jstk_x(9 downto 0),
      jstk_y(9 downto 0) => digilent_jstk2_0_jstk_y(9 downto 0),
      led_b(7 downto 0) => led_controller_0_led_b(7 downto 0),
      led_g(7 downto 0) => led_controller_0_led_g(7 downto 0),
      led_r(7 downto 0) => led_controller_0_led_r(7 downto 0),
      m_axis_tdata(7 downto 0) => digilent_jstk2_0_m_axis_TDATA(7 downto 0),
      m_axis_tready => digilent_jstk2_0_m_axis_TREADY,
      m_axis_tvalid => digilent_jstk2_0_m_axis_TVALID,
      s_axis_tdata(7 downto 0) => axi4stream_spi_master_0_M_AXIS_TDATA(7 downto 0),
      s_axis_tvalid => axi4stream_spi_master_0_M_AXIS_TVALID
    );
dual_moving_average_0: component design_1_dual_moving_average_0_0
     port map (
      aclk => clk_wiz_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      filter_enable => edge_detector_1_edge_detected,
      m_axis_tdata(23 downto 0) => dual_moving_average_0_m_axis_TDATA(23 downto 0),
      m_axis_tlast => dual_moving_average_0_m_axis_TLAST,
      m_axis_tready => dual_moving_average_0_m_axis_TREADY,
      m_axis_tvalid => dual_moving_average_0_m_axis_TVALID,
      s_axis_tdata(23 downto 0) => axis_dual_i2s_0_m_axis_TDATA(23 downto 0),
      s_axis_tlast => axis_dual_i2s_0_m_axis_TLAST,
      s_axis_tready => axis_dual_i2s_0_m_axis_TREADY,
      s_axis_tvalid => axis_dual_i2s_0_m_axis_TVALID
    );
edge_detector_0: component design_1_edge_detector_0_0
     port map (
      clk => clk_wiz_clk_out1,
      edge_detected => edge_detector_0_edge_detected,
      input_signal => debouncer_1_debounced,
      reset => proc_sys_reset_0_peripheral_reset(0)
    );
edge_detector_1: component design_1_edge_detector_1_0
     port map (
      clk => clk_wiz_clk_out1,
      edge_detected => edge_detector_1_edge_detected,
      input_signal => debouncer_0_debounced,
      reset => proc_sys_reset_0_peripheral_reset(0)
    );
led_controller_0: component design_1_led_controller_0_0
     port map (
      aclk => clk_wiz_clk_out1,
      filter_enable => edge_detector_1_edge_detected,
      led_b(7 downto 0) => led_controller_0_led_b(7 downto 0),
      led_g(7 downto 0) => led_controller_0_led_g(7 downto 0),
      led_r(7 downto 0) => led_controller_0_led_r(7 downto 0),
      mute_enable => edge_detector_0_edge_detected,
      reset => proc_sys_reset_0_peripheral_reset(0)
    );
mute_0: component design_1_mute_0_0
     port map (
      aclk => clk_wiz_clk_out1,
      m_axis_tdata(23 downto 0) => mute_0_m_axis_TDATA(23 downto 0),
      m_axis_tlast => mute_0_m_axis_TLAST,
      m_axis_tready => mute_0_m_axis_TREADY,
      m_axis_tvalid => mute_0_m_axis_TVALID,
      mute_enable => edge_detector_0_edge_detected,
      reset => proc_sys_reset_0_peripheral_reset(0),
      s_axis_tdata(23 downto 0) => volume_controller_0_m_axis_TDATA(23 downto 0),
      s_axis_tlast => volume_controller_0_m_axis_TLAST,
      s_axis_tready => volume_controller_0_m_axis_TREADY,
      s_axis_tvalid => volume_controller_0_m_axis_TVALID
    );
proc_sys_reset_0: component design_1_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => proc_sys_reset_0_peripheral_reset(0),
      slowest_sync_clk => clk_wiz_clk_out1
    );
proc_sys_reset_1: component design_1_proc_sys_reset_0_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_clk_out2
    );
volume_controller_0: component design_1_volume_controller_0_0
     port map (
      aclk => clk_wiz_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axis_tdata(23 downto 0) => volume_controller_0_m_axis_TDATA(23 downto 0),
      m_axis_tlast => volume_controller_0_m_axis_TLAST,
      m_axis_tready => volume_controller_0_m_axis_TREADY,
      m_axis_tvalid => volume_controller_0_m_axis_TVALID,
      s_axis_tdata(23 downto 0) => balance_controller_0_m_axis_TDATA(23 downto 0),
      s_axis_tlast => balance_controller_0_m_axis_TLAST,
      s_axis_tready => balance_controller_0_m_axis_TREADY,
      s_axis_tvalid => balance_controller_0_m_axis_TVALID,
      volume(9 downto 0) => digilent_jstk2_0_jstk_y(9 downto 0)
    );
end STRUCTURE;
