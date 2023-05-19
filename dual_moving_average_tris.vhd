library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.math_real.all;
use IEEE.numeric_std.all;

entity dual_moving_average is

    generic (
		FILTER_DEPTH    : integer := 32
        );

    port (
        --saxis----
        s_axis_tvalid : in std_logic;
        s_axis_tdata : in std_logic_vector(23 downto 0);
        s_axis_tready : out std_logic; ---- ci sono casi in cui s_axis_tready è '0'?---
        s_axis_tlast : in std_logic;
        -----------
        filter_enable : in std_logic;
        --maxis-------
        m_axis_tvalid : out std_logic; ---- ci sono casi in cui m_axis_tvalid è '0'?---
        m_axis_tdata : out std_logic_vector(23 downto 0);
        m_axis_tready : in std_logic;
        m_axis_tlast : out std_logic;
        -------------
        aclk : in std_logic;
        reset : in std_logic;

        --debug
        debug_1 : out std_logic_vector(29 downto 0);
        debug_2 : out std_logic_vector(29 downto 0);
        debug_3 : out std_logic_vector(29 downto 0);
        debug_4 : out std_logic_vector(29 downto 0);
        debug_5 : out std_logic;
        debug_6 : out std_logic;
        debug_7 : out std_logic;
        debug_8 : out signed (10 downto 0);
        debug_9 : out std_logic;
        debug_10 : out signed (23 downto 0);
        debug_11 : out signed (23 downto 0);
        debug_12 : out signed (23 downto 0);
        debug_13 : out signed (23 downto 0)
    );
end dual_moving_average;
architecture Behavioral of dual_moving_average is

    type MEM_ARRAY is array(FILTER_DEPTH - 1 downto 0) of signed(23 downto 0);

    signal mem_dx : MEM_ARRAY := (others => (others => '0'));
    signal mem_sx : MEM_ARRAY := (others => (others => '0'));

    signal average_dx : std_logic_vector(30 DOWNTO 0) := (Others => '0');
    signal average_sx : std_logic_vector(30 DOWNTO 0) := (Others => '0');
    
    signal sum_dx :     std_logic_vector(30 DOWNTO 0) := (Others => '0'); 
    signal sum_sx :     std_logic_vector(30 DOWNTO 0) := (Others => '0');

    signal output_data : std_logic_vector(30 downto 0) := (others => '0');

    signal new_data : std_logic := '0';

    signal s_axis_tready_int : std_logic := '1';
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tlast_temp : std_logic := '0';
    signal is_mute : std_logic := '0';

    signal is_filter : std_logic := '0';
    signal is_computing : std_logic := '0';

    
    signal counter : integer := 5;

begin

    debug_1 <= sum_dx;
    debug_2 <= sum_sx;
    -- debug_3 <= average_dx;
    -- debug_4 <= average_sx;
    debug_5 <= is_filter;
    debug_6 <= m_axis_tlast_temp;
    debug_7 <= new_data;
    debug_8 <= to_signed(counter, 11);
    debug_9 <= is_computing;
    debug_10 <= mem_sx (0);
    debug_11 <= mem_sx (mem_sx'HIGH);
    debug_12 <= mem_dx (0);
    debug_13 <= mem_dx (mem_dx'HIGH);
    
    
    s_axis_tready <= s_axis_tready_int;
    m_axis_tvalid <= m_axis_tvalid_int;

    process (aclk)
    begin
            if reset = '1' then
                new_data <= '0';

            elsif rising_edge (aclk) then

                if filter_enable = '1' then
                    is_filter <= not is_filter;
                end if;

                if s_axis_tvalid = '1' and s_axis_tready_int = '1' then

                    if is_filter = '1' then
                        if s_axis_tlast = '1' then

                            mem_dx <= signed(s_axis_tdata) & mem_dx(FILTER_DEPTH - 1 downto 1);
                            sum_dx <= std_logic_vector(mem_dx(0)+mem_dx(1)+mem_dx(2)+mem_dx(3)+mem_dx(4)+mem_dx(5)+mem_dx(6)+mem_dx(7)+mem_dx(8)+mem_dx(9)+mem_dx(10)+mem_dx(11)+mem_dx(12)+mem_dx(13)+mem_dx(14)+mem_dx(15)+mem_dx(16)+mem_dx(17)+mem_dx(18)+mem_dx(19)+mem_dx(20)+mem_dx(21)+mem_dx(22)+mem_dx(23)+mem_dx(24)+mem_dx(25)+mem_dx(26)+mem_dx(27)+mem_dx(28)+mem_dx(29)+mem_dx(30)+mem_dx(31));
                            output_data <= sum_dx;
                            counter <= 5;
                            is_computing <= '1';

                        elsif s_axis_tlast = '0' then
                            mem_sx <= signed(s_axis_tdata) & mem_sx(FILTER_DEPTH - 1 downto 1);
                            sum_sx <= std_logic_vector(mem_sx(0)+mem_sx(1)+mem_sx(2)+mem_sx(3)+mem_sx(4)+mem_sx(5)+mem_sx(6)+mem_sx(7)+mem_sx(8)+mem_sx(9)+mem_sx(10)+mem_sx(11)+mem_sx(12)+mem_sx(13)+mem_sx(14)+mem_sx(15)+mem_sx(16)+mem_sx(17)+mem_sx(18)+mem_sx(19)+mem_sx(20)+mem_sx(21)+mem_sx(22)+mem_sx(23)+mem_sx(24)+mem_sx(25)+mem_sx(26)+mem_sx(27)+mem_sx(28)+mem_sx(29)+mem_sx(30)+mem_sx(31));
                            output_data <= sum_sx;
                            counter <= 5;
                            is_computing <= '1';
                        end if;
                    
                    else

                        output_data <= s_axis_tdata;
                        m_axis_tlast_temp <= s_axis_tlast;
                        new_data <= '1';

                    end if;

                end if;

                if new_data = '1' and m_axis_tvalid_int = '0' then

                        m_axis_tdata <= output_data(23 downto 0);
                        m_axis_tlast <= m_axis_tlast_temp;

                        m_axis_tvalid_int <= '1';
                        new_data <= '0';

                end if;

                    if m_axis_tready = '1' and m_axis_tvalid_int = '1' then
                        m_axis_tvalid_int <= '0';
                    end if;


                --computing part
                    if is_computing = '1' then
                        s_axis_tready_int <= '0';
                        
                        if counter /= 0 then

                            output_data <= output_data(output_data'HIGH) & output_data(output_data'HIGH downto 1);

                            counter <= counter - 1;

                        elsif counter = 0 then
                            new_data <= '1';
                            is_computing <= '0';
                        end if;

                    else
                        s_axis_tready_int <= '1';
                        
                    end if;
            end if;
    end process;
end architecture;