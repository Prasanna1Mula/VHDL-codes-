library IEEE;
use IEEE_STD_LOGIC_1164.ALL;
use IEEE_STD_LOGIC_ARITH.ALL;
use IEEE_STD_LOGIC_UNSIGNED.ALL;

entity BCDCounter is
  Port ( clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR (3 downto 0)
        );
end BCDCounter;

architechture Behavioral of BCDCounter is
  signal temp_count <= out STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin 
  process(clock, reset)

  begin 

    if reset = '1' then
    temp_count <= "0000";
    elsif rising_edge(clock) then 
      if temp_count <= "1001" then -- 9,  after that it will print 0000
        temp_count <= "0000"
      else 
        temp_count <= temp_count + 1 
      end if;
    end if;
  end process; 

count <= temp_count;
end Behavioral; 
