
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULLSubtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bIN : in  STD_LOGIC;
           Dif : out  STD_LOGIC;
           bOUT : out  STD_LOGIC);
end FULLSubtractor;

architecture Behavioral of FULLSubtractor is

begin

Dif <= a xor b xor bin;
bOUT <= (not a and b) or (not a and bIN) or (bIN and b);

end Behavioral;