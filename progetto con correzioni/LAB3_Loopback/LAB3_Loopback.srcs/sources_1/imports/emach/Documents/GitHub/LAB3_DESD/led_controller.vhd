library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;



entity led_controller is 
    port (
        mute_enable : in std_logic;
        filter_enable : in std_logic;
        
        led_b : out std_logic_vector (7 downto 0);
        led_g : out std_logic_vector (7 downto 0);
        led_r : out std_logic_vector (7 downto 0);

        aclk  : in std_logic;
        reset : in std_logic
    );
end led_controller;

architecture Behavioral of led_controller is 
    
    signal led_on : std_logic_vector (7 downto 0) := (Others => '1');
    signal led_off : std_logic_vector (7 downto 0) := (others => '0');

    signal is_mute   : std_logic := '0';
    signal is_filter : std_logic := '0';

begin
        
    process (aclk, reset)
        
        begin

        if reset ='1' then 

            led_on <= ((others => '1') );
            led_off <= ((others => '0') );
            is_mute <= '0';
            is_filter <= '0';

        else 
            if rising_edge(aclk) then

                if mute_enable = '1' then
                    is_mute <= not is_mute;
                end if;

                if filter_enable = '1' then
                    is_filter <= not is_filter;
                end if;
                
                
                if is_mute = '1' then
                    led_r <= led_on;
                    led_g <= led_off;
                    led_b <= led_off;  
                
                else 
                    if is_filter = '1' then
                        led_r <= led_off;
                        led_g <= led_off;
                        led_b <= led_on;
                    else 
                        led_r <= led_off;
                        led_g <= led_on;
                        led_b <= led_off;
                    end if;
                end if;
            end if;
        end if;
    end process;    
end architecture;

          