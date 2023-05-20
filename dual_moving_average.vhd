library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use IEEE.numeric_std.all;

entity dual_moving_average is 

    generic (
		FILTER_DEPTH		    : integer := 32
        );
    
    port (
        
        aclk : in std_logic;
        aresetn : in std_logic;
        filter_enable : in std_logic;

        -- For serial??? (slv mode) communication with I2S--

        s_axis_tvalid : in std_logic;
        s_axis_tlast : in std_logic;
        s_axis_tdata : in std_logic_vector(23 DOWNTO 0);
        s_axis_tready : out std_logic;

        -- For serial??? (master mode) communication with balance controller --

        m_axis_tvalid : out std_logic;
        m_axis_tlast : out std_logic;
        m_axis_tdata : out std_logic_vector(23 DOWNTO 0);
        m_axis_tready : in std_logic;

        --debug
        debug_1 : out std_logic_vector(29 DOWNTO 0); 
        debug_2 : out std_logic_vector(29 DOWNTO 0);
        debug_3 : out std_logic_vector(29 DOWNTO 0); 
        debug_4 : out std_logic_vector(29 DOWNTO 0);
        debug_5 : out std_logic;
        debug_6 : out std_logic;
        debug_7 : out std_logic;
        debug_8 : out signed (10  downto 0);
        debug_9 : out std_logic
    );
    end dual_moving_average;
    
architecture Behavioral of dual_moving_average is 
    
    type   MEM_ARRAY  is  array(FILTER_DEPTH-1 DOWNTO 0) of std_logic_vector(23 downto 0);

    signal mem_dx :  MEM_ARRAY := (Others => (Others => '0'));
    signal mem_sx :  MEM_ARRAY := (Others => (Others => '0'));

    signal counter_dx : integer := 0;
    signal counter_sx : integer := 0;
    
    signal sum_dx :     std_logic_vector(29 DOWNTO 0) := (Others => '0'); --fix this with generics
    signal sum_sx :     std_logic_vector(29 DOWNTO 0) := (Others => '0'); --why is this std_logc_vect?

    signal average_dx : std_logic_vector(29 DOWNTO 0) := (Others => '0');
    signal average_sx : std_logic_vector(29 DOWNTO 0) := (Others => '0');
    
    signal s_axis_tready_int : std_logic := '1';
    signal m_axis_tdata_int : std_logic_vector (23 DOWNTO 0) := (Others => '0');
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tlast_temp  : std_logic := '0';
    signal new_data          : std_logic := '0';

    signal is_filter : std_logic := '0';

    constant counter_const : integer := integer(log2(real(FILTER_DEPTH)))+1;
    signal counter : integer := 0;
    signal is_computing : std_logic := '0';


begin

    debug_1 <= sum_dx;
    debug_2 <= sum_sx;
    debug_3 <= average_dx;
    debug_4 <= average_sx;
    debug_5 <= is_filter;
    debug_6 <= m_axis_tlast_temp;
    debug_7 <= new_data;
    debug_8 <= to_signed(counter, 11);
    debug_9 <= is_computing;

    s_axis_tready <= s_axis_tready_int;
    m_axis_tvalid <= m_axis_tvalid_int;

    process (aclk,aresetn)

    begin   

        if aresetn = '0' then
            
            counter_dx <= 0;
            counter_sx <= 0;
            s_axis_tready_int <= '1';
            m_axis_tvalid_int <= '0';
            new_data <= '0';
            is_computing <= '0';
            counter <= 0;

        elsif rising_edge(aclk) then

            if filter_enable = '1' then
                is_filter <= not is_filter;
                counter_dx <= 0;
                counter_sx <= 0;
            end if;

                --slave--------------      
                 --If data is valid from the master
            if s_axis_tvalid = '1' and s_axis_tready_int = '1' then
                --I check if the filter is enabled 

                if is_filter = '1' then
                    --I check what channel is the data for
                    if s_axis_tlast = '1' then
                        if counter_dx = 32 then
                            sum_dx <= std_logic_vector(signed(sum_dx) - signed(mem_dx(0)));
                            sum_dx <= std_logic_vector(signed(sum_dx) + signed(s_axis_tdata));
                            mem_dx <= s_axis_tdata & mem_dx(FILTER_DEPTH-1 downto 1);                            
                            m_axis_tlast_temp <= s_axis_tlast;
                            counter <= counter_const;
                            average_dx <= sum_dx; --I have one cycle delay in the output
                            is_computing <= '1';
                        else
                            mem_dx(counter_dx) <= s_axis_tdata;
                            sum_dx <= std_logic_vector(signed(sum_dx) + signed(s_axis_tdata));
                            counter_dx  <= counter_dx + 1;
                            m_axis_tdata_int <= s_axis_tdata;
                            m_axis_tlast_temp <= s_axis_tlast;
                            new_data <= '1';
                        end if;
                            
                    else
                        if counter_sx = 32 then
                            sum_sx <= std_logic_vector(signed(sum_sx) - signed(mem_sx(0)));
                            sum_sx <= std_logic_vector(signed(sum_sx) + signed(s_axis_tdata));
                            mem_sx <= s_axis_tdata & mem_sx(FILTER_DEPTH-1 downto 1);                            
                            m_axis_tlast_temp <= s_axis_tlast;    
                            counter <= counter_const; 
                            average_sx <= sum_sx;
                            is_computing <= '1';     
                        else 
                            mem_sx(counter_sx) <= s_axis_tdata;
                            sum_sx <= std_logic_vector(signed(sum_sx) + signed(s_axis_tdata));
                            counter_sx  <= counter_sx + 1;
                            m_axis_tdata_int <= s_axis_tdata;
                            m_axis_tlast_temp <= s_axis_tlast;
                            new_data <= '1';
                        end if;
                    end if;
                else
                    m_axis_tdata_int <= s_axis_tdata;
                    m_axis_tlast_temp <= s_axis_tlast;
                    new_data <= '1';
                end if;
            end if;
        
            if is_computing = '1' then
                s_axis_tready_int <= '0';

                if counter /= 0 then --division

                    if m_axis_tlast_temp = '1' then

                        average_dx <= average_dx(average_dx'HIGH) & average_dx(average_dx'HIGH downto 1);

                    elsif m_axis_tlast_temp = '0' then

                        average_sx <= average_sx(average_sx'HIGH) & average_sx(average_sx'HIGH downto 1);

                    end if;

                    counter <= counter - 1;

                elsif counter = 0 then

                    if m_axis_tlast_temp = '1' then

                        m_axis_tdata_int <= average_dx(23 DOWNTO 0);

                    elsif m_axis_tlast_temp = '0' then

                        m_axis_tdata_int <= average_sx(23 DOWNTO 0);

                    end if;

                    is_computing <= '0';
                    new_data <= '1';
                end if;  
            else 
                s_axis_tready_int <= '1';
            end if;

            --------------
            --- master-----
            
            if new_data <= '1' and m_axis_tvalid_int = '0' then
                
                m_axis_tdata <= m_axis_tdata_int;
                m_axis_tlast <= m_axis_tlast_temp;
                m_axis_tvalid_int <= '1';
                new_data <= '0';

            end if;

            if m_axis_tready = '1' and m_axis_tvalid_int = '1' then
                
                m_axis_tvalid_int <= '0';

            end if;
        end if;    
    end process;
end architecture;