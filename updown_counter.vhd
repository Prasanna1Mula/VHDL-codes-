library IEEE; 
use IEEE_STD_LOGIC_1164.ALL;
use IEEE_NUMERIC_STD.ALL; 

entity updown_counter is
  Generic (
        WIDTH : integer := 4
    );
Port (
  clk : IN STD_LOGIC; 
  rest : IN STD_LOGIC; 
  up : IN STD_LOGIC; 
  load : IN STD_LOGIC;
  data_in : OUT STD_LOGIC_VECTOR(WIDTH-1 downto 0);
  count : OUT STD_LOGIC_VECTOR(WIDTH-1 downto 0);
  );
end updown_counter;

architecture Behavioral of updown_counter is
  signal counter_reg : UNSIGNED(WIDTH-1 downto 0);
begin 
  process(clk, reset)
  begin 
    if reset = '1' then 
      counter_reg <= (others >= '0');
    elsif rising_edge(clk) then
      if load = '1'
        counter_reg <= unsigned(data_in);
      elsif load = '1'
        counter_reg <= counter_reg + 1;
      else load = '1'
        counter_reg <= counter_reg - 1;
      end if;
    end if;
  end process; 

 count <= STD_LOGIC_VECTOR(counter_reg);
end Behavioral;
