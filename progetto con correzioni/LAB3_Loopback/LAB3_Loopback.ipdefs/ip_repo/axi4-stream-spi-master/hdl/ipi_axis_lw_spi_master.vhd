library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ipi_axis_lw_spi_master is
	generic (
		c_clkfreq 		: integer := 100_000_000;
		c_sclkfreq 		: integer := 1_000_000;
		c_cpol			: integer range 0 to 1 := 0;
		c_cpha			: integer range 0 to 1 := 0
	);
	Port ( 
		aclk 			: in STD_LOGIC;
		aresetn			: in STD_LOGIC;

		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);
		s_axis_tready	: out STD_LOGIC;

		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);

		cs_i			: in STD_LOGIC;
		cs_o			: out STD_LOGIC;
		cs_t			: out STD_LOGIC;

		sclk_i			: in STD_LOGIC;
		sclk_o			: out STD_LOGIC;
		sclk_t			: out STD_LOGIC;

		mosi_i			: in STD_LOGIC;
		mosi_o			: out STD_LOGIC;
		mosi_t			: out STD_LOGIC;

		miso_i			: in  STD_LOGIC;
		miso_o			: out STD_LOGIC;
		miso_t			: out STD_LOGIC
	);
end ipi_axis_lw_spi_master;

architecture Behavioral of ipi_axis_lw_spi_master is

	component axis_lw_spi_master is
		generic (
			c_clkfreq 		: integer := 100_000_000;
			c_sclkfreq 		: integer := 1_000_000;
			c_cpol			: std_logic := '0';
			c_cpha			: std_logic := '0'
		);
		Port ( 
			aclk 			: in  STD_LOGIC;
			aresetn			: in  STD_LOGIC;
	
			s_axis_tvalid	: in STD_LOGIC;
			s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);
			s_axis_tready	: out STD_LOGIC;
	
			m_axis_tvalid	: out STD_LOGIC;
			m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
	
			cs				: out STD_LOGIC;
			sclk			: out STD_LOGIC;
			mosi			: out STD_LOGIC;
			miso			: in  STD_LOGIC
		);
	end component;

	constant C_CPOL_SLV		: std_logic_vector := std_logic_vector(to_unsigned(c_cpol, 1));
	constant C_CPHA_SLV		: std_logic_vector := std_logic_vector(to_unsigned(c_cpha, 1));

begin

	inst_axis_lw_spi_master : axis_lw_spi_master
		generic map (
			c_clkfreq 		=> c_clkfreq,
			c_sclkfreq 		=> c_sclkfreq,
			c_cpol			=> C_CPOL_SLV(0),
			c_cpha			=> C_CPHA_SLV(0)
		)
		Port map ( 
			aclk 			=> aclk,
			aresetn			=> aresetn,
	
			s_axis_tvalid	=> s_axis_tvalid,
			s_axis_tdata	=> s_axis_tdata,
			s_axis_tready	=> s_axis_tready,
	
			m_axis_tvalid	=> m_axis_tvalid,
			m_axis_tdata	=> m_axis_tdata,
	
			cs				=> cs_o,
			sclk			=> sclk_o,
			mosi			=> mosi_o,
			miso			=> miso_i
		);

	cs_t	<= '0';
	sclk_t	<= '0';
	mosi_t	<= '0';
	miso_t	<= '1';
	miso_o	<= '0';

end Behavioral;
