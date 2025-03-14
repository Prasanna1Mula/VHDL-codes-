library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end HalfAdder;

architecture Behavioral of HalfAdder is

begin

S <= A xor B;
C <= A and B;

end Behavioral;
