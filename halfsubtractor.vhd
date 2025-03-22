library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity HalfSubtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bo : out  STD_LOGIC;
           dif : out STD_LOGIC); 
end HalfSubtractor;

architecture Behavioral of HalfSubtractor is

begin

dif <= a xor b; 
bo <= (not a) and b;

end Behavioral;