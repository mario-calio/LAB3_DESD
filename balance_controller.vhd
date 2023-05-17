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
        volume          : in  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
end balance_controller;

architecture Behavioral of balance_controller is

    constant SPAN             : integer     := 2 ** N_VALUE;
    constant SPAN_HALF        : integer     := SPAN / 2;
    
    constant NUMBER_OF_GROUPS : integer     := 2 ** 10 / SPAN;   
    
    

    signal volume_integer     : integer   := to_integer(unsigned(volume));
    signal volume_temp        : integer   := to_integer(unsigned(volume));
    signal LorR               : std_logic := '0';                             -- 0 is division, 1 is multiplication
    signal m_axis_tlast_temp  : std_logic := '0';
    signal s_axis_tready_int  : std_logic := '0';
    signal slider             : integer   :=  0;

    -- signal finished_flag      : std_logic := '0';   -- maybe we don't need this flag since we have slider and volume_temp that can check the state : if finished or not
    signal counter            : integer;
    signal output_temp        : std_logic_vector(23 downto 0) := s_axis_tdata;
    
	
begin

    s_axis_tready <= s_axis_tready_int;
	volume_integer <= to_integer(unsigned(volume));

	range_finder : process(aclk)
    begin
        if aresetn = '0' then
            slider <= 0;
            counter <= 0;
            output_temp <= (others => '0');
        elsif rising_edge(aclk) then

            m_axis_tvalid <= '0';            
            s_axis_tready_int <= '1'; -- check if you skip a cycle untill s axis t ready isn't 1

            if s_axis_tready_int = '1' and s_axis_tvalid = '1' then

                m_axis_tlast_temp <= s_axis_tlast;
                s_axis_tready_int <= '0'; --we're always ready actually
                output_temp <= s_axis_tdata;


                volume_temp <= volume_integer - 512;
                slider  <= 0;
                counter <= 0;

                if volume_temp > 0 then
                    LorR <= '1';
                else LorR <= '0';
                end if;

                if LorR = '1' then

                    while volume_temp > slider loop

                        if slider = 0 then

                            slider <= slider + SPAN_HALF;
                        
                        else 
                            slider <= slider + SPAN;
                            counter <= counter + 1; 
                        end if;
                        
                    end loop;

                    if volume_temp <= slider then

                        

                        while counter /= 0 loop  -- <shift_left>
                            
                            if to_signed(volume_temp, 24)(23) = '1' then   -- CHECK CLIPPING
                                counter <= 0;
                                output_temp <= ((others => '1') );

                            else
                                
                                output_temp(23 downto 0) <= output_temp(22 downto 0) & '0';
                                counter <= counter - 1;

                            end if;

                        end loop;

                            
                        m_axis_tdata <= output_temp;
                        m_axis_tvalid <= '1';
                        m_axis_tlast <= m_axis_tlast_temp;

                    end if;
                end if;

                if LorR = '0' then
                    while volume_temp < slider loop
                        if slider = 0 then
                            slider <= slider - SPAN_HALF;
                        else 
                            slider <= slider - SPAN;
                            counter <= counter + 1;
                        end if;

                    end loop;
                    if slider <=  volume_temp then

                        while counter /= 0 loop  -- <shift_right>

                            output_temp(23 downto 0) <= '0' & output_temp(23 downto 1);
                            counter <= counter - 1;

                        end loop;                

                        m_axis_tdata <= output_temp;
                        m_axis_tvalid <= '1';
                        
                    end if;

                end if;

            end if;

        end if;

	end process;
	
end architecture;