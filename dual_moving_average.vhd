library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dual_moving_average is 
    
    port (
        --s_axis
        aclk : in std_logic;
        aresetn : in std_logic;
        filter_enable : in std_logic
        --m_axis--
    );
    end dual_moving_average;
architecture dual_moving_average of dual_moving_average is 
    
    type    MEM_ARRAY  is  array(0 TO 31) of std_logic_vector(23 downto 0);

    signal mem_dx : MEM_ARRAY := (Others => (Others => '0'));
    signal mem_sx : MEM_ARRAY := (Others => (Others => '0'));

    signal counter : integer := 0;
    signal sum : std_logic_vector(29 DOWNTO 0) := (Others => '0');
    signal average : std_logic_vector(23 DOWNTO 0) := (Others => '0');

begin

    


    
   
end architecture;