library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sipo is
  port ( 
  clk, clear : in STD_LOGIC;
  Input_Data : in STD_LOGIC;
  Q : out STD_LOGIC_VECTOR(3 downto 0);
  );
  end sipo 

architecture behavioral of sipo is

begin 

process(clk)
begin 
if clear='1' then 
Q <= "0000";
elsif (CLK'event and CLK='1') then 
Q(3 downto 1) <= Q(2 downto 0);
Q(0) <= Input-Data;
end if;
end process;
end behavioral;
