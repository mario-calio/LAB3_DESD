library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dual_moving_average is 
    
    port (
        
        aclk : in std_logic;
        aresetn : in std_logic;
        filter_enable : in std_logic;

        -- For serial (slv mode) communication with I2S--

        s_axis_tvalid : in std_logic;
        s_axis_tlast : in std_logic;
        s_axis_tdata : in std_logic_vector(23 DOWNTO 0);
        s_axis_tready : out std_logic;

        -- For serial (master mode) communication with balance controller --

        m_axis_tvalid : out std_logic;
        m_axis_tlast : out std_logic;
        m_axis_tdata : out std_logic_vector(23 DOWNTO 0);
        m_axis_tready : in std_logic;

    );
    end dual_moving_average;
    
architecture dual_moving_average of dual_moving_average is 
    
    type   MEM_ARRAY  is  array(0 TO 31) of std_logic_vector(23 downto 0);

    signal mem_dx :  MEM_ARRAY = (Others => (Others => '0'));
    signal mem_sx :  MEM_ARRAY = (Others => (Others => '0'));

    signal counter_dx : integer = 0;
    signal counter_sx : integer = 0;
    signal sum_dx :     std_logic_vector(33 DOWNTO 0) = (Others => '0');
    signal sum_sx :     std_logic_vector(33 DOWNTO 0) = (Others => '0');
    signal average_dx : std_logic_vector(33 DOWNTO 0) = (Others => '0');
    signal average_sx : std_logic_vector(33 DOWNTO 0) = (Others => '0');


begin

    s_axis_tready <= '1';

    process(aclk,aresetn)

    begin   

        if aresetn = '1' then
            
            counter  <= 0;
                  
        elsif rising_edge(aclk) then        
    --If data is valid from the master
            if s_axis_tvalid then
    --I check if the filter is enabled 
                if filter_enable then
    --I check what channel is the data for
                    if s_axis_tlast then
                        if counter_dx = 32 then
                            mem_dx <= s_axis_tdata & mem_dx[31 down to 0];
                            signed[sum_dx] <= signed[sum_dx] - signed[mem_dx[0]];
                            signed[average_dx] <= signed[sum_dx]/32;
                        else
                            mem_dx[counter_dx] <= s_axis_tdata;
                            signed(sum_dx) += signed(s_axis_tdata);
                            counter_dx  <= counter_dx + 1;
                        end if;
                            
                    else
                        if counter_sx = 32 then
                            mem_sx <= s_axis_tdata & mem_sx[31 down to 0];
                            signed[sum_sx] <= signed[sum_sx] - signed[mem_sx[0]];
                            signed[average_sx] <= signed[sum_sx]/32;            
                        else 
                            mem_dx[counter_sx] <= s_axis_tdata;
                            signed(sum_sx) += signed(s_axis_tdata);
                            counter_sx  <= counter_sx + 1;
                        end if;
                        
                    
                    end if;
                else
                    
                end if;

        end if;

end architecture;