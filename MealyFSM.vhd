library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mealy_fsm is 
  Port ( 
    clk : in std_logic;
    reset : in std_logic;
    input_signal : in std_logic;
    output_signal : out std_logic; 
    );
end mealy_fsm;

architecture Behavioral of mealy_fsm is 
  type state_type is (S0, S1, S2);
  signal current_state, next_state : state_type;
begin 
  -- State register 
  process(clk, reset) 
  begin 
    if reset = '1' then
      current_state <= S0;
    elsif rising_edge(clk) then 
      current_state <= next_state;
    end if;
  end process;

  -- Next State and output Logic 
  process(current_state, input_signal)
  begin
    case current_state is 
      when S0 =>
        if input_signal = '1' then 
          next_state <= S1;
          output_signal <= '0';
        end if;


      when S1 => 
          if input_signal = '0' then 
            next_state <= S2;
            output_signal <= '0';
          else
            next_state <= S1;
            output_signal <= '0';
          end if; 

        when S2 => 
           if input_signal = '1' then 
             next_state <= S1;
            output_signal <= '1';
          else 
            next_state <= S0;
            output_signal <= '0';
    end case;
  end process;
end Behavioral;
            
    
