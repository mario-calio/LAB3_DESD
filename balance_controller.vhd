library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.math_real.all;
    use IEEE.numeric_std.all;

    --test comment
entity balance_controller is
    
	generic (
		N_VALUE		    : integer := 6 
        );
	Port ( 
        -- 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- Master
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(23 downto 0);
		m_axis_tready	: in STD_LOGIC;
        m_axis_tlast    : out STD_LOGIC;

		-- Slave

		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(23 downto 0);
        s_axis_tready	: out STD_LOGIC;
        s_axis_tlast    : in STD_LOGIC;

        --input
        balance          : in  STD_LOGIC_VECTOR(9 DOWNTO 0);
        controllo_balance       : out signed(23 downto 0); 
        controllo_balance_2     : out signed(23 downto 0) --for counter

	);
end balance_controller;  

architecture Behavioral of balance_controller is

    constant SPAN             : integer     := 2 ** N_VALUE;
    constant SPAN_HALF        : integer     := SPAN / 2;
    
    constant NUMBER_OF_GROUPS : integer     := 2 ** 10 / SPAN;   
    
    

    signal balance_integer     : integer   := to_integer(unsigned(balance));
    signal balance_temp        : integer   := to_integer(unsigned(balance));
    signal LorR               : std_logic := '0';                             -- 0 is sx, 1 is dx
    signal m_axis_tlast_temp  : std_logic := '0';

    signal s_axis_tready_int  : std_logic := '1';
    signal m_axis_tvalid_int   : std_logic := '0';
    signal new_data           : std_logic := '0';

    signal counter            : integer := 0;
    signal output_temp        : signed(23 downto 0) := (Others => '1');
    signal is_computing       : std_logic := '0';
	
begin


    controllo_balance <= output_temp;
    controllo_balance_2 <= to_signed(counter, 24);

    s_axis_tready <= s_axis_tready_int;
    m_axis_tvalid <= m_axis_tvalid_int;
	
    balance_integer <= to_integer(unsigned(balance));

	process(aclk, aresetn)
    begin
        if aresetn = '0' then
            counter <= 0;
            m_axis_tvalid_int <= '0';
            --output_temp <= (others => '0');

        elsif rising_edge(aclk) then
           
           -- s_axis_tready_int <= '1'; -- check if you skip a cycle untill s axis t ready isn't 1

            if s_axis_tready_int = '1' and s_axis_tvalid = '1' then

                m_axis_tlast_temp <= s_axis_tlast;
                --s_axis_tready_int <= '0'; --we're always ready actually, we might need it to adress computation time
                output_temp <= signed(s_axis_tdata); -- this assignement doesn't happen, don't know why.... bicöss...


                balance_temp <= balance_integer - 512;

                
                if balance_temp > 0 then
                    LorR <= '1';
                else LorR <= '0';
                end if;

                if LorR = '1' then

                    counter <= (balance_temp + SPAN_HALF)/SPAN;

                        is_computing <= '1';


                    --output_temp(output_temp'high-1 downto counter) <= output_temp(output_temp'high-1-counter downto 0);

                    --output_temp(0 to counter - 1) <= (Others => '0');
                    
                end if;

                if LorR = '0' then

                    counter <= -(balance_temp - SPAN_HALF)/SPAN;

                    --output_temp(output_temp'high downto output_temp'high-counter + 1) <= (Others => output_temp(output_temp'high));
                    
                    --output_temp(output_temp'high - counter downto 0) <= output_temp(output_temp'high downto counter);

                    --output_temp <= shift_right(output_temp, counter);
                    
                        is_computing <= '1';
                        
                end if;

            end if;

            if is_computing = '1' then

                s_axis_tready_int <= '0';

                if counter /= 0 then

                    if LorR = '1' then

                        if m_axis_tlast_temp = '0' then
                            output_temp <= output_temp(output_temp'HIGH) & output_temp(output_temp'HIGH downto 1);
                        else 
                            counter <= 1; --exit from the loop is it doesn't have to act on the signal
                        end if;

                    end if;

                    if LorR = '0' then

                        if m_axis_tlast_temp = '1' then
                            output_temp <= output_temp(output_temp'HIGH) & output_temp(output_temp'HIGH downto 1);
                        else 
                            counter <= 1;
                        end if;

                    end if;

                    counter <= counter - 1;
                end if;
                
                if counter = 0 then
                    
                    is_computing <= '0';
                    new_data <= '1';

                end if;
            else s_axis_tready_int <= '1';
            end if;
            
            --master--
            if new_data = '1' and m_axis_tvalid_int = '0' then

                m_axis_tdata <= std_logic_vector(output_temp);
                m_axis_tvalid_int <= '1';
                m_axis_tlast <= m_axis_tlast_temp;
                new_data <= '0';

            end if;
            ---------
            if m_axis_tready = '1' and m_axis_tvalid_int = '1' then
                m_axis_tvalid_int <= '0';
            end if;

        end if;

	end process;

	
end architecture;