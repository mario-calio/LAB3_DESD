library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.math_real.all;
    use IEEE.numeric_std.all;

entity balance_controller is
    
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
end balance_controller;

architecture Behavioral of balance_controller is

	
begin

	

	led_rgb_transfer : process(aclk)
		begin
			
	end process;
	
	jstk_X_Y_Button_receive : process(aclk)
		begin
		
	end process;
end architecture;