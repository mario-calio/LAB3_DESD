library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.math_real.all;
    use IEEE.numeric_std.all;

entity volume_controller is
    
	generic (
		N_VALUE		: integer := 6 
        );
	Port ( 
        -- 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- Master
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in STD_LOGIC;
        m_axis_tlast    : out STD_LOGIC;

		-- Slave

		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);
        s_axis_tready	: out STD_LOGIC;
        s_axis_tlast    : in STD_LOGIC;

        --input
        volume          : in  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
end volume_controller;

architecture Behavioral of volume_controller is

    constant SPAN : integer := 2 ** N_VALUE;
    constant SPAN_HALF : integer := SPAN / 2;
    
    constant NUMBER_OF_GROUPS : integer  := 2 ** 10 / SPAN;   
    
    

    signal volume_integer : integer := to_integer(unsigned(volume));
    signal volume_temp : integer := to_integer(unsigned(volume));
    signal LorR : std_logic := '0'; --0 is division, 1 is multiplication
    signal slider : integer := 0;

    signal finished_flag : std_logic := '0';
    
	
begin

	volume_integer <= to_integer(unsigned(volume));

	range_finder : process(aclk)
		begin
			volume_temp <= volume_integer - 512;
            slider <= 0;

            if volume_temp > 0 then
                LorR <= '1';
            else LorR <= '0';
            end if;

            while finished_flag = '0' loop
                slider <= slider + SPAN_HALF;
                
                if volume_temp < slider then

                    finished_flag <= '1';
                end if; 


            end loop;
            




	end process;
	
	jstk_X_Y_Button_receive : process(aclk)
		begin
		
	end process;
end architecture;