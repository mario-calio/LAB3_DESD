library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use IEEE.numeric_std.all;

entity digilent_jstk2 is
	generic (
		DELAY_US		: integer := 25;    -- Delay (in us) between two packets
		CLKFREQ		 	: integer := 100_000_000;  -- Frequency of the aclk signal (in Hz)
		SPI_SCLKFREQ 	: integer := 5000 -- Frequency of the SPI SCLK clock signal (in Hz)
	);
	Port ( 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- Data going TO the SPI IP-Core (and so, to the JSTK2 module)
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in STD_LOGIC;

		-- Data coming FROM the SPI IP-Core (and so, from the JSTK2 module)
		-- There is no tready signal, so you must be always ready to accept and use the incoming data, or it will be lost!
		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);

		-- Joystick and button values read from the module
		jstk_x			: out std_logic_vector(9 downto 0);
		jstk_y			: out std_logic_vector(9 downto 0);
		btn_jstk		: out std_logic;
		btn_trigger		: out std_logic;

		-- LED color to send to the module
		led_r			: in std_logic_vector(7 downto 0);
		led_g			: in std_logic_vector(7 downto 0);
		led_b			: in std_logic_vector(7 downto 0)
	);
end digilent_jstk2;

architecture Behavioral of digilent_jstk2 is

	-- SetLEDRGB command, see the JSTK2 datasheet --
	
	constant CMDSETLEDRGB		: std_logic_vector(7 downto 0) := x"84";

	-- Do not forget that you MUST wait a bit between two packets. See the JSTK2 datasheet (and the SPI IP-Core README).
	-- Inter-packet delay plus the time needed to transfer 1 byte (for the CS de-assertion)
	constant DELAY_CYCLES_PACKET		: integer := DELAY_US * (CLKFREQ / 1_000_000) + CLKFREQ / SPI_SCLKFREQ;
	signal 	 DELAY_COUNTER				: integer range 0 to DELAY_CYCLES_PACKET := 0;
	signal   DELAY_TO_WAIT				: integer range 0 to DELAY_CYCLES_PACKET := DELAY_CYCLES_PACKET;
	
	--------------------------------------------------------------

	----------------FSM states for CMD and RGB TX-----------------

	type state_cmd_type is (WAIT_DELAY, SEND_CMD, SEND_RED, SEND_GREEN, SEND_BLUE, SEND_DUMMY);
	signal state_cmd			: state_cmd_type := WAIT_DELAY;

	---------------------------------------------------------------

	-----------------FSM states for XY and BTNS RX-----------------

	type state_sts_type is (GET_X_LSB, GET_X_MSB, GET_Y_LSB, GET_Y_MSB, GET_BUTTONS);
	signal state_sts	   : state_sts_type := GET_X_LSB;

	---------------------------------------------------------------

	------------signals for positions and buttons------------------

	signal sig_jstk_x      : std_logic_vector (15 DOWNTO 0) := (others => '0');
	signal sig_jstk_y	   : std_logic_vector (15 DOWNTO 0) := (others => '0');
	signal sig_btn    	   : std_logic_vector (7 DOWNTO 0) := (others => '0');

	----------------------------------------------------------------

	-------------------auxiliary signals----------------------------

	signal auxiliary_vector   	   : std_logic_vector (7 DOWNTO 0);
	signal precedent_state_cmd	   : state_cmd_type := SEND_CMD;
	signal m_axis_tvalid_int       : std_logic := '0';

	----------------------------------------------------------------

begin

	with state_cmd select m_axis_tvalid <=
		'0' when WAIT_DELAY,
		'1' when SEND_CMD,
		'1' when SEND_BLUE,
		'1' when SEND_GREEN,
		'1' when SEND_RED,
		'1' when SEND_DUMMY;
	
	with state_cmd select m_axis_tdata <=
		(Others => '0') when WAIT_DELAY ,
		CMDSETLEDRGB when SEND_CMD,
		led_b when SEND_BLUE,
		led_g when SEND_GREEN,
		led_r when SEND_RED,
		(Others => '0') when SEND_DUMMY;
	

	led_rgb_transfer : process(aclk)
		begin
			if aresetn = '0' then
				state_cmd <= WAIT_DELAY;
				precedent_state_cmd <= SEND_DUMMY;
				DELAY_COUNTER <= 0;
				DELAY_TO_WAIT <= DELAY_CYCLES_PACKET;
			elsif rising_edge(aclk) then
				case (state_cmd) is
					when WAIT_DELAY =>
						if DELAY_COUNTER = DELAY_TO_WAIT  then
							DELAY_COUNTER <= 0;
							state_cmd <= SEND_CMD;
						else
								DELAY_COUNTER <= DELAY_COUNTER + 1;	
						end if;
					when SEND_CMD =>
						if m_axis_tready = '1' then
							state_cmd <= SEND_RED;
						end if;
					when SEND_RED =>
						if m_axis_tready = '1' then
							state_cmd <= SEND_GREEN;
						end if;
					when SEND_GREEN =>
						if m_axis_tready = '1' then
							state_cmd <= SEND_BLUE;
						end if;
					when SEND_BLUE =>
						if m_axis_tready = '1' then
							state_cmd <= SEND_DUMMY;
						end if;
					when SEND_DUMMY =>
						if m_axis_tready = '1' then
							state_cmd <= WAIT_DELAY;
							DELAY_TO_WAIT <= DELAY_CYCLES_PACKET;
						end if;
					when others =>
						precedent_state_cmd <= SEND_DUMMY;
						state_cmd <= WAIT_DELAY;
						DELAY_TO_WAIT <= DELAY_CYCLES_PACKET;
				end case;
			end if;
	end process;
	
	jstk_X_Y_Button_receive : process(aclk)
		begin
			if aresetn = '0' then
				state_sts <= GET_X_LSB;
			elsif rising_edge(aclk) then	
				case (state_sts) is
					when GET_X_LSB =>
						if s_axis_tvalid = '1' then
							sig_jstk_x(7 DOWNTO 0) <= s_axis_tdata;
							state_sts <= GET_X_MSB;
						end if;
					when GET_X_MSB =>
						if s_axis_tvalid = '1' then
							sig_jstk_x(15 DOWNTO 8) <= s_axis_tdata;
							state_sts <= GET_Y_LSB;
						end if;
					when GET_Y_LSB =>
						if s_axis_tvalid = '1'then
							sig_jstk_y(7 DOWNTO 0) <= s_axis_tdata;
							state_sts <= GET_Y_MSB;
						end if;
					when GET_Y_MSB =>
						if s_axis_tvalid = '1' then
							sig_jstk_y(15 DOWNTO 8) <= s_axis_tdata;
							state_sts <= GET_BUTTONS;
						end if;
					when GET_BUTTONS =>
						if s_axis_tvalid = '1' then
							state_sts <= GET_X_LSB;
							--output signals are updated here to avoid information missmatch
							jstk_x <= sig_jstk_x(9 DOWNTO 0);
							jstk_y <= sig_jstk_y(9 DOWNTO 0);
							btn_jstk <= s_axis_tdata(0);
							btn_trigger <= s_axis_tdata(1);
						end if;
					when others =>
						state_sts <= GET_X_LSB;
				end case;
			end if;
	end process;
end architecture;