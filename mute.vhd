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
    );

architecture mute of mute is 

signal muted_signal  : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
signal unmuted_signal : STD_LOGIC_VECTOR(23 downto 0);

begin

-- non penso serva usare alcun process dato che il blocco non usa nè clock né reset e usiamo
-- mute_enable per selezionare l'uscita. Altra cosa: penso che m_axis_tvalid (fissato ad 1) vada 
-- usato per forza perchè 'axis_dual_i2s' lo riceve come input, mentre s_axis_tready non è 
-- necessario se non viene usato come output in 'volume_controller'

------------- MAURONE FAMMI SAPERE CHE NE PENSI    ------------------

    unmuted_signal <= s_axis_tdata;

    if s_axis_tready = '1' and s_axis_tvalid ='1' -- CONDIZIONE DI VALIDITA' DEL SEGNALE IN INGRESSO
        if m_axis_tready = '1' and m_axis_tvalid = '1' -- CONDIZIONE DI VALIDITA' DEL SEGNALE DI USCITA
            with mute_enable select m_axis_tdata <=
                muted_signal when '1',
                unmuted_signal when '0';
        end if;
    end if;

end architecture;