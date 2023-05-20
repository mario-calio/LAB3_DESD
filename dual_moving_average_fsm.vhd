library IEEE;
    use IEEE.STD_LOGIC_1164.all;
    use IEEE.math_real.all;
    use IEEE.numeric_std.all;

entity dual_moving_average is 

    generic (
		FILTER_DEPTH		    : integer := 32;
        N_VALUE                 : integer := 6 -- 2^N for average purposes
        );
    
    port (
        
        aclk : in std_logic;
        aresetn : in std_logic;
        filter_enable : in std_logic;

        -- For serial??? (slv mode) communication with I2S--

        s_axis_tvalid : in std_logic;
        s_axis_tlast : in std_logic;
        s_axis_tdata : in std_logic_vector(23 DOWNTO 0);
        s_axis_tready : out std_logic;

        -- For serial??? (master mode) communication with balance controller --

        m_axis_tvalid : out std_logic;
        m_axis_tlast : out std_logic;
        m_axis_tdata : out std_logic_vector(23 DOWNTO 0);
        m_axis_tready : in std_logic;

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
    
    type   MEM_ARRAY  is  array(FILTER_DEPTH-1 DOWNTO 0) of std_logic_vector(23 downto 0);
    type   state_type is (WAITING, GET_LEFT, GET_RIGHT, COMPUTING_LEFT, COMPUTING_RIGHT, OUTPUT_LEFT, OUTPUT_RIGHT);

    signal state : state_type := WAITING; 

    -- STATE VARIABLES --
    --signal is_computing : std_logic := '0';
    signal is_filtering : std_logic := '0';
    signal new_data     : std_logic := '0';
    

    signal mem_dx :  MEM_ARRAY := (Others => (Others => '0'));
    signal mem_sx :  MEM_ARRAY := (Others => (Others => '0'));

    signal counter_dx : integer range 0 to FILTER_DEPTH := 0;
    signal counter_sx : integer range 0 to FILTER_DEPTH := 0;

    signal sum_dx :     signed(29 DOWNTO 0) := (Others => '0'); --fix this with generics
    signal sum_sx :     signed(29 DOWNTO 0) := (Others => '0'); --why is this std_logc_vect?
    signal output_temp : signed(29 DOWNTO 0) := (Others => '0');

    signal average_dx : signed(29 DOWNTO 0) := (Others => '0');
    signal average_sx : signed(29 DOWNTO 0) := (Others => '0');
    
    signal s_axis_tready_int : std_logic := '1';
    signal m_axis_tdata_int_right  : std_logic_vector (23 DOWNTO 0) := (Others => '0');
    signal m_axis_tdata_int_left : std_logic_vector (23 DOWNTO 0) := (Others => '0');
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tlast_int  : std_logic := '0';

    constant counter_const : integer := integer(log2(real(FILTER_DEPTH)));
    signal counter : integer := 0;

begin
    
    
    
    debug_1 <= sum_dx;
    debug_2 <= sum_sx;
    debug_3 <= output_temp;
    -- debug_4 <= average_sx;
    debug_5 <= is_filtering;
    --debug_6 <= m_axis_tlast_temp;
    --debug_7 <= new_data;
    debug_8 <= to_signed(counter, 11);
    --debug_9 <= is_computing;
    debug_10 <= mem_sx (0);
    debug_11 <= mem_sx (mem_sx'HIGH);
    debug_12 <= mem_dx (0);
    debug_13 <= mem_dx (mem_dx'HIGH);



   s_axis_tready <= s_axis_tready_int;
   m_axis_tvalid <= m_axis_tvalid_int;
   -- non conviene selezionare direttamente gli out?

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

        elsif rising_edge(aclk) then

            if filter_enable = '1' then
                is_filtering <= not is_filtering;
            end if;

            case (state) is
                
                when WAITING =>
                -- possibile reset di variabili qui
                
                    if s_axis_tlast = '0' then
                        state <= GET_LEFT;
                    else
                        state <= GET_RIGHT;
                    end if;

                when GET_LEFT =>
                    
                    if s_axis_tvalid = '1' and s_axis_tready_int = '1' then 
                        
                        if is_filtering = '1' then
                            mem_sx <= s_axis_tdata & mem_sx(FILTER_DEPTH-1 downto 1);
                            sum_sx <= sum_sx + signed(s_axis_tdata) - signed(mem_sx(0));  
                            output_temp <= sum_sx;
                            counter <= counter_const;
                            state <= COMPUTING_LEFT;
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
                    
                when COMPUTING_LEFT =>

                    if counter /= 0 then

                        output_temp <= output_temp(output_temp'HIGH) & output_temp(output_temp'HIGH downto 1);
    
                        counter <= counter - 1;
    
                    elsif counter = 0 then
                        
                        m_axis_tdata_int_left <= output_temp (23 downto 0);
                        state <= OUTPUT_LEFT;

                    end if;
                    
                
                when COMPUTING_RIGHT =>

                    if counter /= 0 then
                        output_temp <= output_temp(output_temp'HIGH) & output_temp(output_temp'HIGH downto 1);
    
                        counter <= counter - 1;
    
                    elsif counter = 0 then
                        
                        m_axis_tdata_int_right <= output_temp (23 downto 0);
                        state <= OUTPUT_LEFT;

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

    
    -- STATE_VARIABLES: process (aclk,aresetn) 
    -- begin

        

    --     if filter_enable = '1' then
    --         is_filtering = '1';
    --     else
    --         is_filtering = '0';
    --         counter_dx <= 0;
    --         counter_sx <= 0;
    --     end if;

    --     if s_axis_tvalid = '1' & s_axis_tready_int = '1' then 
    --         if s_axis_tlast = '0' then 
    --             state <= GET_LEFT;
    --         elsif s_axis_tlast = '1' then
    --             state <= GET_RIGHT;
    --         end if;
    --     end if;

    --     if s_axis_tready_int = '0' & is_filtering = '1' then
    --             state <= COMPUTING_AVG;
    --     elsif new_data = '1' & m_axis_tvalid_int = '0' then
    --             state <= SENDING;
    --     else
    --         state <= WAITING;
    --     end if;

    -- end process;

           
end architecture;