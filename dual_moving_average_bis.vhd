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
        m_axis_tready : in std_logic

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
    signal m_axis_tlast_int  : std_logic := '0';
    signal new_data          : std_logic := '0';

    signal is_filter : std_logic := '0';

    constant counter_const : integer := integer(log2(real(FILTER_DEPTH)))+1;
    signal counter : integer := 0;
    signal is_computing : std_logic := '0';

begin
    
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
                is_filter <= '1';
            else
                is_filter <= '0';
                counter_sx <= 0;
                counter_dx <= 0;
            end if;

                --slave--------------      
                --If data is valid from the master
            if s_axis_tvalid = '1' and s_axis_tready_int = '1' then
                is_computing <= '1';
                --I check if the filter is enabled 
                if is_filter = '1' then
                    --I check what channel is the data for
                    if s_axis_tlast = '1' then
                        if counter_dx = 32 then
                            --I reached 32 counts so I have to remove the first number of the vector that doesn't belong anymore to the average depth
                            average_dx <= std_logic_vector(signed(average_dx) - signed(mem_dx(0)));
                            --I substitute the new entering data inside the memory to keep track of it
                            mem_dx <= s_axis_tdata(18 downto 0)&(Others => '0') & mem_dx(31 downto 1);
                            --I add the new averaged data in order to get the average to be put on the master
                            average_dx <= std_logic_vector(signed(average_dx) + signed(mem_dx(31)));
                            --Assignment of internal tlast and tdata
                            m_axis_tlast_int <= s_axis_tlast;
                            m_axis_tdata_int <= average_dx(29 DOWNTO 5);
                            --The data to be transfered is new
                            new_data <= '1';
                            --The computation of the data to be transfered has finished and I'm ready to acquire new ones
                            is_computing <= '0';
                        else
                            --I shift the entering data of N positions (in MSB direction) and I add zeros in order to get the division of 2^N of each sample
                            mem_dx(counter_dx) <= s_axis_tdata(17 downto 0) & (Others => '0');
                            --I start to compute the average acquisition after acquisition
                            average_dx <= std_logic_vector(signed(average_dx) + signed(mem_sx(counter_dx)));
                            counter_dx  <= counter_dx + 1;
                            --Until I have not finished to fill my memory I send the arriving datas without any modification
                            m_axis_tdata_int <= s_axis_tdata;
                            m_axis_tlast_int <= s_axis_tlast;
                            new_data <= '1';
                            is_computing <= '0';
                        end if;
                            
                    else
                        if counter_sx = 32 then
                            average_sx <= std_logic_vector(signed(average_sx) - signed(mem_sx(0)));
                            mem_sx <= s_axis_tdata(17 downto 0) & mem_sx(31 downto 1);
                            average_sx <= std_logic_vector(signed(average_sx) + signed(mem_sx(31)));
                            m_axis_tlast_int <= s_axis_tlast;
                            m_axis_tdata_int <= average_sx(29 DOWNTO 5);  
                            new_data <= '1'; 
                            --counter <= counter_const;
                            is_computing <= '0';     
                        else 
                            mem_sx(counter_dx) <= s_axis_tdata(17 downto 0) & (Others => '0');
                            average_sx <= std_logic_vector(signed(average_sx) + signed(mem_sx(counter_sx)));
                            counter_sx  <= counter_sx + 1;
                            m_axis_tdata_int <= s_axis_tdata;
                            m_axis_tlast_int <= s_axis_tlast;
                            new_data <= '1';
                            is_computing <= '0';
                        end if;
                    end if;
                else
                    m_axis_tdata_int <= s_axis_tdata;
                    m_axis_tlast_int <= s_axis_tlast;
                    new_data <= '1';
                end if;
            end if;

            if is_computing = '1' then
                s_axis_tready_int <= '0';
            else 
                s_axis_tready_int <= '1';
            end if;

                --if counter /= 0 then

                    --if m_axis_tlast_temp = '1' then

                      --  sum_dx <= sum_dx(sum_dx'HIGH) & sum_dx(sum_dx'HIGH downto 1);
                        --m_axis_tdata_int <= sum_dx(23 DOWNTO 0);

                    --elsif m_axis_tlast_temp = '0' then

                      --  sum_sx <= sum_sx(sum_sx'HIGH) & sum_sx(sum_sx'HIGH downto 1);
                      --  m_axis_tdata_int <= sum_sx(23 DOWNTO 0);

                    --end if;

                --elsif counter = 0 then
                -- is_computing <= '0';
                -- new_data <= '1';
                -- end if;  
            --else 
            --    s_axis_tready_int <= '1';
            -- end if;

            --- master-----
            --Check se il dato da inviare sul m_axis_tdata è nuovo--
            if new_data <= '1' and m_axis_tvalid_int = '0' then
                
                m_axis_tdata <= m_axis_tdata_int;
                m_axis_tlast <= m_axis_tlast_int;
                m_axis_tvalid_int <= '1';
                new_data <= '0';
            end if;

            -- check for the handshake with next block -- 
            if m_axis_tready = '1' and m_axis_tvalid_int = '1' then
                m_axis_tvalid_int <= '0';
            end if;

        end if;    
    end process;
end architecture;