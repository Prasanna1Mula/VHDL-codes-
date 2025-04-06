library IEEE;
use IEEE_STD_LOGIC_1164.ALL;

entity TFlipFlop is;
Port ( T : in STD_LOGIC ; 
      CLOCK : in STD_LOGIC ;
      Q : out STD_LOGIC )
  end TFlipFlop;

  architecture Behavioral of TFlipFlop is
  signal tmp <= STD_LOGIC;
  begin
  process(CLOCK)
  begin
  if CLOCK'event and CLOCK='1' then 
  if T='0' then 
  tmp <= tmp ; 
  elsif T='1' then 
  tmp <= not (tmp);
  end if;
  end if;
  end process; 
  Q <= tmp;
  end Behavioral; 
