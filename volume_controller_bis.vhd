library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.math_real.all;
    use IEEE.numeric_std.all;

entity volume_controller_bis is
    
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
        volume          : in  STD_LOGIC_VECTOR(9 DOWNTO 0);

        controllo       : out std_logic_vector(23 downto 0)
	);
end volume_controller_bis;

architecture Behavioral of volume_controller_bis is

    constant SPAN             : integer     := 2 ** N_VALUE;
    constant SPAN_HALF        : integer     := SPAN / 2;
    
    constant NUMBER_OF_GROUPS : integer     := 2 ** 10 / SPAN;   
    
    

    signal volume_integer     : integer   := to_integer(unsigned(volume));
    signal volume_temp        : integer   := to_integer(unsigned(volume));
    signal DorM               : std_logic := '0';                             -- 0 is division, 1 is multiplication
    signal m_axis_tlast_temp  : std_logic := '0';

    signal s_axis_tready_int  : std_logic := '1';
    signal m_axis_tvalid_int   : std_logic := '0';
    signal new_data           : std_logic := '0';

    signal slider             : integer   :=  0;
    signal counter            : integer;
    signal output_temp        : std_logic_vector(23 downto 0) := (Others => '0');
    
	
begin

    s_axis_tready <= s_axis_tready_int;
    m_axis_tvalid <= m_axis_tvalid_int;
    
    controllo <= output_temp;
	
    volume_integer <= to_integer(unsigned(volume));

	process(aclk)
    begin
        if aresetn = '0' then
            slider <= 0;
            counter <= 0;
            m_axis_tvalid_int <= '0';
            output_temp <= (others => '0');

        elsif rising_edge(aclk) then
           
           -- s_axis_tready_int <= '1'; -- check if you skip a cycle untill s axis t ready isn't 1

            if s_axis_tready_int = '1' and s_axis_tvalid = '1' then

                m_axis_tlast_temp <= s_axis_tlast;
                --s_axis_tready_int <= '0'; --we're always ready actually, we might need it to adress computation time
                output_temp <= s_axis_tdata; -- this assignement doesn't happen, don't know why.... bicöss...


                volume_temp <= volume_integer - 512;
                slider  <= 0;
                counter <= 0;
                
                new_data <= '1';

                if volume_temp > 0 then
                    DorM <= '1';
                else DorM <= '0';
                end if;

                if DorM = '1' then

                    counter <= (volume_temp + SPAN_HALF)/SPAN;
                    
                    output_temp <= std_logic_vector(to_signed((to_integer(signed(output_temp))) * (2**counter), 24));
                            

                end if;

                if DorM = '0' then

                    counter <= (volume_temp - SPAN_HALF)/SPAN;

                    output_temp <= std_logic_vector(to_signed((to_integer(signed(output_temp))) / (2**counter), 24));         
                        
                end if;

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