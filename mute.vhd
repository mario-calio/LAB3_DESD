library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mute is

    port (
        -- S-AXIS --
        s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(23 downto 0);
        s_axis_tready	: out STD_LOGIC; 
        s_axis_tlast    : in STD_LOGIC; 
        
        -- M-AXIS --
        m_axis_tvalid	: out STD_LOGIC; 
		m_axis_tdata	: out STD_LOGIC_VECTOR(23 downto 0);
		m_axis_tready	: in STD_LOGIC;
        m_axis_tlast    : out STD_LOGIC;
       
        -- MUTE --
        mute_enable     : in STD_LOGIC;

        -- CLK & RST --
        aclk            : in STD_LOGIC;
        reset           : in STD_LOGIC
    );

end mute;


architecture Behavioral of mute is

    -- HANDLING INCOMING SIGNAL --
    signal muted_signal  : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
    signal unmuted_signal : STD_LOGIC_VECTOR(23 downto 0);

    -- NEW DATA FOR TX CHECK --
    signal new_data          : std_logic := '0';

    -- INTERNAL VARIABLES FOR AXI COMMUNICATION HANDLING --
    signal s_axis_tready_int : std_logic := '1';
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tlast_temp  : std_logic := '0';

    -- MUTE CHECK --
    signal is_mute : std_logic := '0';

    begin

        -- T_READY AND T_VALID ASSIGNMENT --
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

                -- DATA INCOMING FROM PREVIOUS BLOCK --
                if s_axis_tvalid = '1' and s_axis_tready_int = '1' then

                    unmuted_signal <= s_axis_tdata;
                    m_axis_tlast_temp <= s_axis_tlast;
                    new_data <= '1';

                end if;

                -- NEW DATA IS CHECKED AND READY TO BE TRANSFERED --
                if new_data = '1' and m_axis_tvalid_int = '0' then

                    if is_mute = '0' then
                    -- IF IS_MUTE OFF I TRANSFER SIGNAL AS IT IS --
                        m_axis_tdata <= unmuted_signal;
                        m_axis_tlast <= m_axis_tlast_temp;
                        
                    else
                    -- IF IS_MUTE ON I TRANSFER MUTED SIGNAL --
                        m_axis_tdata <= muted_signal;
                        m_axis_tlast <= m_axis_tlast_temp;

                    end if;

                    m_axis_tvalid_int <= '1';
                    new_data <= '0';

                end if;

                -- HANDSHAKE CHECK --
                if m_axis_tready = '1' and m_axis_tvalid_int = '1' then

                    m_axis_tvalid_int <= '0';

                end if;

            end if;

        end process;

end architecture;
