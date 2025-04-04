library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity JK_FlipFlip is 
  PORT( J, K, CLK: in std_logic;
       Q, Qb: out std_logic);
  end JK_FlipFlop 

Architecture behavioral of JK_FlipFlip is 
begin
process(CLK)
variable tmp: std_logic;
begin
if(CLK='1' and CLK'event) then
if(J='0' and K='0') then
tmp:=tmp;
elsif(J='1' and K='1') then
tmp:= not tmp;
elsif(J='0' and K='1') then
tmp:='0';
else
tmp:='1';
end if;
end if;
Q<=tmp;
Qb<= not tmp;
end process;
end behavioral;
  
