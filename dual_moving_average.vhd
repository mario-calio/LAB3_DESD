library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use IEEE.numeric_std.all;

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
        m_axis_tready : in std_logic

    );
    end dual_moving_average;
    
architecture Behavioral of dual_moving_average is 
    
    type   MEM_ARRAY  is  array(31 DOWNTO 0) of std_logic_vector(23 downto 0);

    signal mem_dx :  MEM_ARRAY := (Others => (Others => '0'));
    signal mem_sx :  MEM_ARRAY := (Others => (Others => '0'));

    signal counter_dx : integer := 0;
    signal counter_sx : integer := 0;

    signal sum_dx :     std_logic_vector(29 DOWNTO 0) := (Others => '0');
    signal sum_sx :     std_logic_vector(29 DOWNTO 0) := (Others => '0');

    signal average_dx : std_logic_vector(29 DOWNTO 0) := (Others => '0');
    signal average_sx : std_logic_vector(29 DOWNTO 0) := (Others => '0');
    
    signal s_axis_tready_int : std_logic := '1';
    signal m_axis_tdata_int : std_logic_vector (23 DOWNTO 0) := (Others => '0');
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tlast_temp  : std_logic := '0';
    signal new_data          : std_logic := '0';

    signal is_filter : std_logic := '0';

begin
    
    s_axis_tready <= s_axis_tready_int;
    m_axis_tvalid <= m_axis_tvalid_int;

    process (aclk,aresetn)

    begin   

        if aresetn = '1' then
            
            counter_dx <= 0;
            counter_sx <= 0;
            s_axis_tready <= '1';
            m_axis_tvalid <= '0';
            new_data <= '0';

        elsif rising_edge(aclk) then

            if filter_enable = '1' then
            is_filter <= not is_filter;
            end if;

            --slave--------------      
    --If data is valid from the master
            if s_axis_tvalid = '1' then
    --I check if the filter is enabled 
                new_data <= '1';
                if is_filter = '1' then
    --I check what channel is the data for
                    if s_axis_tlast = '1' then
                        if counter_dx = 32 then
                            sum_dx <= std_logic_vector(signed(sum_dx) - signed(mem_dx(0)));
                            mem_dx <= s_axis_tdata & mem_dx(31 downto 1);
                            sum_dx <= std_logic_vector(signed(sum_dx) + signed(mem_dx(31)));
                            average_dx <= std_logic_vector(signed(sum_dx)/32);
                            m_axis_tdata_int <= average_dx(23 DOWNTO 0);
                            m_axis_tlast_temp <= s_axis_tlast;
                        else
                            mem_dx(counter_dx) <= s_axis_tdata;
                            sum_dx <= std_logic_vector(signed(sum_dx) + signed(s_axis_tdata));
                            counter_dx  <= counter_dx + 1;
                            m_axis_tdata_int <= s_axis_tdata;
                            m_axis_tlast_temp <= s_axis_tlast;
                        end if;
                            
                    else
                        if counter_sx = 32 then
                            sum_sx <= std_logic_vector(signed(sum_sx) - signed(mem_sx(0)));
                            mem_sx <= s_axis_tdata & mem_sx(31 downto 1);
                            sum_sx <= std_logic_vector(signed(sum_sx) + signed(mem_sx(31)));
                            average_sx <= std_logic_vector(signed(sum_sx)/32);    
                            m_axis_tdata_int <= average_sx(23 DOWNTO 0);  
                            m_axis_tlast_temp <= s_axis_tlast;      
                        else 
                            mem_dx(counter_sx) <= s_axis_tdata;
                            sum_sx <= std_logic_vector(signed(sum_sx) + signed(s_axis_tdata));
                            counter_sx  <= counter_sx + 1;
                            m_axis_tdata_int <= s_axis_tdata;
                            m_axis_tlast_temp <= s_axis_tlast;
                        end if;
                    end if;
                else
                    m_axis_tdata_int <= s_axis_tdata;
                    m_axis_tlast_temp <= s_axis_tlast;
                end if;
            end if;
            --------------
            --- master-----

            --a cosa serve checkare is filter? Risposta: va messo, come per 'mute', la variabile 'is_filter' 
            --per fare la verifica del filtraggio e quindi abbiamo bisogno dell'if qui sotto per far cambiare is_filter quando viene
            --premuto il tasto del joystick

            -- if filter_enable = '1' then
            --     is_filter <= not is_filter;
            -- end if;
            
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