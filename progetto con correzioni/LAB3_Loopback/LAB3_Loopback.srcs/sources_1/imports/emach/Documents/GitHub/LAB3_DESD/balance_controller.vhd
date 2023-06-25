library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.math_real.all;
    use IEEE.numeric_std.all;

entity balance_controller is
    
	generic (
		N_VALUE		    : integer := 6 
        );
	Port ( 
        -- 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- FOR MASTER TX --
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(23 downto 0);
		m_axis_tready	: in STD_LOGIC;
        m_axis_tlast    : out STD_LOGIC;

		-- FOR SLAVE RX -- 
		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(23 downto 0);
        s_axis_tready	: out STD_LOGIC;
        s_axis_tlast    : in STD_LOGIC;

        balance         : in  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
end balance_controller;  

architecture Behavioral of balance_controller is

    -- CONSTANTS DECLARATION --
    constant SPAN              : integer   := 2 ** N_VALUE; -- The span is the width of an interval used later to calculate how much a channel should be muted
    constant SPAN_HALF         : integer   := SPAN / 2; -- The first interval is wide half in the positive and negative directions in the axis centered in 0  

    -- SIGNALS DECLARATION --
    signal balance_integer     : integer range -1300 to 1300  := to_integer(unsigned(balance)); -- We cast this value to an integer to then subtract it by 512 and put it into balance_temp to center the axis in 0
    signal balance_temp        : integer  range -1300 to 1300 := to_integer(unsigned(balance));
    signal LorR                : std_logic := '0';                           -- LorR = shift left or shift right. 0 is left, 1 is right
    signal m_axis_tlast_temp   : std_logic := '0';

    signal s_axis_tready_int   : std_logic := '1';
    signal m_axis_tvalid_int   : std_logic := '0';
    signal new_data            : std_logic := '0';

    signal counter_span       : integer range -1300 to 1300 := 0;
    signal counter            : integer range -1300 to 1300 := 0;
    signal output_temp         : signed(23 downto 0) := (Others => '1');
    signal is_computing        : std_logic := '0';
    signal is_computing_counter :std_logic := '0';


begin

    -- OUTPUT ASSIGNMENTS --
    s_axis_tready <= s_axis_tready_int;
    m_axis_tvalid <= m_axis_tvalid_int;
	
    balance_integer <= to_integer(unsigned(balance));

	process(aclk, aresetn)

    begin

        if aresetn = '0' then

            counter_span <= 0;
            counter <= 0;
            output_temp <= (others => '1');
            is_computing <= '0';
            is_computing_counter <= '0';
            s_axis_tready_int <='1';
            m_axis_tvalid_int <= '0';
            new_data <= '0';
            m_axis_tlast_temp <= '0';
            LorR <= '0';

        elsif rising_edge(aclk) then

            -- ACQUISITION OF TDATA --
            if s_axis_tready_int = '1' and s_axis_tvalid = '1' then

                m_axis_tlast_temp <= s_axis_tlast;
                output_temp <= signed(s_axis_tdata); 
                --s_axis_tready_int <= '0';

                balance_temp <= balance_integer - 512;

                if balance_temp > 0 then -- If you move the joystick to the right you divide the volume to the left and vice versa
                    LorR <= '1';
                else    
                    LorR <= '0';
                end if;

                if LorR = '1' then

                    counter <= balance_temp + SPAN_HALF;
                    counter_span <= N_VALUE;
                    -- Here, we understand by how much we have to divide the channel's volume
                    is_computing_counter <= '1'; -- When we flag this to 1 we set the ready to 0
                    
                end if;

                if LorR = '0' then

                    counter <= -(balance_temp - SPAN_HALF);
                    counter_span <= N_VALUE;
    
                    is_computing_counter <= '1';
                        
                end if;

            end if;
            
            -- We use this series of ifs to divide N_value times balance_temp + Span_half to get the right counter of how many times we have to divide a channel below in "operations on volume"

            if is_computing_counter = '1' then

                s_axis_tready_int <= '0';

                if counter_span /= 0 then

                    counter <= counter /2;

                    counter_span <= counter_span - 1;
                end if;
                
                if counter_span = 0 then
                    
                    is_computing_counter <= '0';
                    is_computing <= '1';


                end if;
            end if;

            -- OPERATIONS ON VOLUME --
            if is_computing = '1' then

                s_axis_tready_int <= '0';

                if counter /= 0 then -- We divide counter times by two

                    if LorR = '1' then

                        if m_axis_tlast_temp = '0' then

                            output_temp <= output_temp(output_temp'HIGH) & output_temp(output_temp'HIGH downto 1);
                            --counter <= counter - 1;

                        else 

                            counter <= 1; -- If the sample comes from the opposite channel we set the counter to one to exit the loop otherwise we reduce it
                            --counter <= 0;
                        end if;

                    end if;

                    if LorR = '0' then

                        if m_axis_tlast_temp = '1' then

                            output_temp <= output_temp(output_temp'HIGH) & output_temp(output_temp'HIGH downto 1);
                            --counter <= counter - 1;

                        else

                            counter <= 1; 
                            --counter <= 0;

                        end if;

                    end if;

                    counter <= counter - 1; --questo va cancellato

                end if;
                
                if counter = 0 then
                    
                    is_computing <= '0';
                    new_data <= '1';

                end if;
                
            end if;

            if is_computing_counter = '0' and is_computing = '0' then
                s_axis_tready_int <= '1';
            end if;
            ------------

            
            --error resistance
            if counter < 0 then
                counter <= 0;
            end if;

            if counter_span < 0 then
                counter_span <= 0;
            end if;
            

            -- MASTER --
            if new_data = '1' and m_axis_tvalid_int = '0' then

                m_axis_tdata <= std_logic_vector(output_temp);
                m_axis_tvalid_int <= '1';
                m_axis_tlast <= m_axis_tlast_temp;
                new_data <= '0';

            end if;
            
            -- HANDSHAKE CHECK -- 
            if m_axis_tready = '1' and m_axis_tvalid_int = '1' then

                m_axis_tvalid_int <= '0';

            end if;

        end if;

	end process;
	
end architecture;