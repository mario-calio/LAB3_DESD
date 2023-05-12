library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity led_controller is 
    port (
        mute_enable : in std_logic;
        filter_enable :in std_logic;

        led_b : out std_logic_vector (7 downto 0);
        led_g : out std_logic_vector (7 downto 0);
        led_r : out std_logic_vector (7 downto 0)
    );
end led_controller;

architecture led_controller of led_controller is 
    
    signal led_on : std_logic_vector (7 downto 0) := (Others => '1');
    signal led_off : std_logic_vector (7 downto 0) := (others => '0');

begin
    
    process(mute_enable,filter_enable)

        begin   
            
            if mute_enable then 
                led_r <= led_on;
                led_g <= led_off;
                led_b <= led_off;
            else 
                if  filter_enable then
                    led_r <= led_off;
                    led_g <= led_off;
                    led_b <= led_on;
                else 
                    led_r <= led_off;
                    led_g <= led_on;
                    led_b <= led_off;
                end if;
            end if;
    end process;
    
end architecture;

          