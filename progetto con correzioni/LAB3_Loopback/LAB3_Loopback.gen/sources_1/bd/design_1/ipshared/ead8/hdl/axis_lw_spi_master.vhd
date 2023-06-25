library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axis_lw_spi_master is
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
end axis_lw_spi_master;

architecture Behavioral of axis_lw_spi_master is

	component lw_spi_master is
		generic (
			c_clkfreq 		: integer := 50_000_000;
			c_sclkfreq 		: integer := 5_000_000;
			c_cpol			: std_logic := '0';
			c_cpha			: std_logic := '0'
		);
		Port ( 
			clk_i 			: in  STD_LOGIC;
			rst_i			: in  STD_LOGIC;
			en_i 			: in  STD_LOGIC;
			mosi_data_i 	: in  STD_LOGIC_VECTOR (7 downto 0);
			miso_data_o 	: out STD_LOGIC_VECTOR (7 downto 0);
			data_ready_o 	: out STD_LOGIC;
			cs_o 			: out STD_LOGIC;
			sclk_o 			: out STD_LOGIC;
			mosi_o 			: out STD_LOGIC;
			miso_i 			: in  STD_LOGIC
		);
		end component;

	signal rst				: std_logic;
	signal data_ready		: std_logic;
	signal data_ready_reg	: std_logic;
	signal new_data			: std_logic;

begin

	inst_lw_spi_master : lw_spi_master
		generic map (
			c_clkfreq 		=> c_clkfreq,
			c_sclkfreq 		=> c_sclkfreq,
			c_cpol			=> c_cpol,
			c_cpha			=> c_cpha
		)
		Port map ( 
			clk_i 			=> aclk,
			rst_i			=> rst,
			en_i 			=> s_axis_tvalid,
			mosi_data_i 	=> s_axis_tdata,
			miso_data_o 	=> m_axis_tdata,
			data_ready_o 	=> data_ready,
			cs_o 			=> cs,
			sclk_o 			=> sclk,
			mosi_o 			=> mosi,
			miso_i 			=> miso
		);

	rst				<= not aresetn;
	s_axis_tready	<= new_data;
	m_axis_tvalid	<= new_data;

	process (aclk)
	begin
		if rising_edge(aclk) then
			if aresetn = '0' then

				new_data	<= '0';

			else

				data_ready_reg	<= data_ready;

				if data_ready_reg = '0' and data_ready = '1' then
					new_data	<= '1';
				else
					new_data	<= '0';
				end if;

			end if;
		end if;
	end process;

end Behavioral;
