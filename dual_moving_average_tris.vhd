library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use IEEE.numeric_std.all;

entity dual_moving_average is
    port (
        --saxis----
        s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(23 downto 0);
        s_axis_tready	: out STD_LOGIC; ---- ci sono casi in cui s_axis_tready è '0'?---
        s_axis_tlast    : in STD_LOGIC; 
        -----------
        filter_enable     : in STD_LOGIC;
        --maxis-------
        m_axis_tvalid	: out STD_LOGIC; ---- ci sono casi in cui m_axis_tvalid è '0'?---
		m_axis_tdata	: out STD_LOGIC_VECTOR(23 downto 0);
		m_axis_tready	: in STD_LOGIC;
        m_axis_tlast    : out STD_LOGIC;
        -------------
        aclk            : in STD_LOGIC;
        reset           : in STD_LOGIC;

        --debug
        debug_1 : out std_logic_vector(29 DOWNTO 0); 
        debug_2 : out std_logic_vector(29 DOWNTO 0);
        debug_3 : out std_logic_vector(29 DOWNTO 0); 
        debug_4 : out std_logic_vector(29 DOWNTO 0);
        debug_5 : out std_logic;
        debug_6 : out std_logic;
        debug_7 : out std_logic;
        debug_8 : out signed (10 downto 0);
        debug_9 : out std_logic

    
    );
end dual_moving_average;


architecture Behavioral of dual_moving_average is

    signal output_data  : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');

    signal new_data          : std_logic := '0';

    signal s_axis_tready_int : std_logic := '1';
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tlast_temp  : std_logic := '0';
    signal is_mute : std_logic := '0';

    signal is_filter : std_logic := '0';

    begin

        -- debug_1 <= sum_dx;
        -- debug_2 <= sum_sx;
        -- debug_3 <= average_dx;
        -- debug_4 <= average_sx;
        -- debug_5 <= is_filter;
        -- debug_6 <= m_axis_tlast_temp;
        -- debug_7 <= new_data;
        -- debug_8 <= to_signed(counter, 11);
        -- debug_9 <= is_computing;

   
        s_axis_tready <= s_axis_tready_int;
        m_axis_tvalid <= m_axis_tvalid_int;
        process(aclk)
        begin
            if reset = '1' then
                new_data <= '0';

            elsif rising_edge (aclk) then

                if filter_enable = '1' then
                    is_filter <= not is_filter;
                end if;



                if s_axis_tvalid = '1' and s_axis_tready_int = '1' then

                    if is_filter = '1' then

                    else

                        output_data <= s_axis_tdata;
                        m_axis_tlast_temp <= s_axis_tlast;
                        new_data <= '1';

                    end if;

                end if;

                if new_data = '1' and m_axis_tvalid_int = '0' then

                    m_axis_tdata <= output_data;
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
