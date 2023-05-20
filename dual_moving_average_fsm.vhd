library IEEE;
    use IEEE.STD_LOGIC_1164.all;
    use IEEE.math_real.all;
    use IEEE.numeric_std.all;

entity dual_moving_average is 

    generic (
		FILTER_DEPTH		    : integer := 32
        );
    
    port (
        
        aclk : in std_logic;
        aresetn : in std_logic;
        filter_enable : in std_logic;

        -- Slave

        s_axis_tvalid : in std_logic;
        s_axis_tlast : in std_logic;
        s_axis_tdata : in std_logic_vector(23 DOWNTO 0);
        s_axis_tready : out std_logic;

        -- Master

        m_axis_tvalid : out std_logic;
        m_axis_tlast : out std_logic;
        m_axis_tdata : out std_logic_vector(23 DOWNTO 0);
        m_axis_tready : in std_logic;
    );
    
    end dual_moving_average;
    
architecture Behavioral of dual_moving_average is 

    constant counter_const : integer := integer(log2(real(FILTER_DEPTH))); -- We use this constant to deal with the changing generic

    type   MEM_ARRAY  is  array(FILTER_DEPTH-1 DOWNTO 0) of std_logic_vector(23 downto 0); -- We use a matrix to store the data
    
    type   state_type is (WAITING, GET_LEFT, GET_RIGHT, COMPUTING_LEFT, COMPUTING_RIGHT, OUTPUT_LEFT, OUTPUT_RIGHT); -- We use a state machine to deal with axi protocol
    signal state : state_type := WAITING; 

    signal is_filtering : std_logic := '0'; -- Flag used to understand if the filter is active or not   

    signal mem_dx :  MEM_ARRAY := (Others => (Others => '0')); -- We use two different memories for left and right channel

    signal sum_dx :     signed(24+counter_const DOWNTO 0) := (Others => '0'); -- Auxiliary signal used to sum all the arrays in the memory
    signal sum_sx :     signed(24+counter_const DOWNTO 0) := (Others => '0'); -- Same thing for the left channel
    signal output_temp : signed(24+counter_const DOWNTO 0) := (Others => '0');
    signal counter : integer := 0; -- We use this counter to calulate the average below

    
    -- Intermediate signals --

    signal s_axis_tready_int : std_logic := '1';
    signal m_axis_tdata_int_right  : std_logic_vector (23 DOWNTO 0) := (Others => '0');
    signal m_axis_tdata_int_left : std_logic_vector (23 DOWNTO 0) := (Others => '0');
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tlast_int  : std_logic := '0';

begin

   s_axis_tready <= s_axis_tready_int;
   m_axis_tvalid <= m_axis_tvalid_int;

    with state select s_axis_tready_int <=
        '0' when  WAITING, 
        '1' when  GET_LEFT,
        '1' when  GET_RIGHT,
        '0' when  COMPUTING_LEFT,
        '0' when  COMPUTING_RIGHT,
        '0' when  OUTPUT_LEFT,
        '0' when  OUTPUT_RIGHT;            
    
    with state select m_axis_tlast <=
        '0' when OUTPUT_LEFT,
        '1' when OUTPUT_RIGHT,
        'X' when others;
    
    with state select m_axis_tvalid_int <=
        '1' when OUTPUT_LEFT,
        '1' when OUTPUT_RIGHT,
        '0' when others;
    
    with state select m_axis_tdata <=
        m_axis_tdata_int_left when OUTPUT_LEFT,
        m_axis_tdata_int_right when OUTPUT_RIGHT,
        ((others => '0')) when others; 
        
    FSM : process (aclk,aresetn)

    begin  

        if aresetn = '0' then
            
            state <= WAITING;
            is_filtering <= '0';

        elsif rising_edge(aclk) then

            if filter_enable = '1' then
                is_filtering <= not is_filtering;
            end if;

            case (state) is
                
                when WAITING =>
                
                    if s_axis_tlast = '0' then
                        state <= GET_LEFT;
                    else
                        state <= GET_RIGHT;
                    end if;

                when GET_LEFT =>
                    
                    if s_axis_tvalid = '1' and s_axis_tready_int = '1' then 
                        
                        if is_filtering = '1' then
                            mem_sx <= s_axis_tdata & mem_sx(FILTER_DEPTH-1 downto 1);    -- We put the first data in the 32-th spot and shift the memory

                    -- Below, we sum the last data and subtract the first to arrive.
                    -- To be fair it's not right untill the 32-th cycle,
                    -- but we figured it was ok since the time at which this mistake solves itself is little.
                        
                            sum_sx <= sum_sx + signed(s_axis_tdata) - signed(mem_sx(0));
                            output_temp <= sum_sx;
                                                                                         
                            counter <= counter_const;
                            state <= COMPUTING_LEFT; -- In computing we compute the average of the sum
                        else
                            m_axis_tdata_int_left <= s_axis_tdata;
                            state <= OUTPUT_LEFT;
                        end if;

                    end if;

                when GET_RIGHT =>
                    
                    if s_axis_tvalid = '1' and s_axis_tready_int = '1' then 
                    
                        if is_filtering = '1' then
                            mem_dx <= s_axis_tdata & mem_dx(FILTER_DEPTH - 1 downto 1);
                            sum_dx <= sum_dx + signed(s_axis_tdata) - signed(mem_dx(0));
                            output_temp <= sum_dx;
                            counter <= counter_const;
                            state <= COMPUTING_RIGHT;
                        else
                            m_axis_tdata_int_right <= s_axis_tdata;
                            state <= OUTPUT_RIGHT;
                        end if;
                        
                    end if;
                    
                when COMPUTING_LEFT => -- We average by shifting the array right every cycle for counter times

                    if counter /= 0 then

                        output_temp <= output_temp(output_temp'HIGH) & output_temp(output_temp'HIGH downto 1); 
    
                        counter <= counter - 1;
    
                    elsif counter = 0 then
                        
                        m_axis_tdata_int_left <= std_logic_vector(output_temp (23 downto 0));
                        state <= OUTPUT_LEFT;

                    end if;
                    
                
                when COMPUTING_RIGHT =>

                    if counter /= 0 then
                        output_temp <= output_temp(output_temp'HIGH) & output_temp(output_temp'HIGH downto 1);
    
                        counter <= counter - 1;
    
                    elsif counter = 0 then
                        
                        m_axis_tdata_int_right <= std_logic_vector(output_temp (23 downto 0));
                        state <= OUTPUT_RIGHT;

                    end if;

                when OUTPUT_LEFT =>

                    if m_axis_tvalid_int = '1' and m_axis_tready = '1' then
                        state <= GET_RIGHT;
                    end if;
                
                when OUTPUT_RIGHT =>

                    if m_axis_tvalid_int = '1' and m_axis_tready = '1' then
                        state <= GET_LEFT;
                    end if;   

                end case;

        end if;

    end process;
           
end architecture;