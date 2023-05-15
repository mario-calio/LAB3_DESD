library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mute is
    port (
        --saxis----
        s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(23 downto 0);
        s_axis_tready	: out STD_LOGIC; ---- ci sono casi in cui s_axis_tready è '0'?---
        -----------
        mute_enable     : in STD_LOGIC;
        --maxis-------
        m_axis_tvalid	: out STD_LOGIC; ---- ci sono casi in cui m_axis_tvalid è '0'?---
		m_axis_tdata	: out STD_LOGIC_VECTOR(23 downto 0);
		m_axis_tready	: in STD_LOGIC;
        -------------
        aclk            : in STD_LOGIC;
        reset           : in STD_LOGIC

    
    );
end mute;


architecture Behavioral of mute is

    signal muted_signal  : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
    signal unmuted_signal : STD_LOGIC_VECTOR(23 downto 0);

    signal new_data          : std_logic := '0';

    signal s_axis_tready_int : std_logic := '1';
    signal m_axis_tvalid_int : std_logic := '0';

    signal is_mute : std_logic := '0';

    begin

   
        s_axis_tready <= s_axis_tready_int;
        m_axis_tvalid <= m_axis_tvalid_int;


        process(aclk)
        begin
            if reset = '1' then
                new_data <= '0';

            elsif rising_edge (aclk) then

                if mute_enable = '1' then
                    is_mute <= not is_mute;
                end if;

                if s_axis_tvalid = '1' and s_axis_tready_int = '1' then
                    unmuted_signal <= s_axis_tdata;
                    new_data <= '1';

                end if;

                if new_data = '1' and m_axis_tvalid_int = '0' then

                    if is_mute = '0' then
                        m_axis_tdata <= unmuted_signal;
                    else
                        m_axis_tdata <= muted_signal;
                    end if;

                    m_axis_tvalid <= '1';
                    new_data <= '0';

                end if;

                if m_axis_tready = '1' and m_axis_tvalid_int = '1' then
                    m_axis_tvalid <= '0';
                end if;

            end if;

        end process;


end architecture;
