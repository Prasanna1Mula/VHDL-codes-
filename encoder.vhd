library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder is
    Port ( d0 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d3 : in  STD_LOGIC;
           a : out  STD_LOGIC;
           b : out  STD_LOGIC);
end encoder;

architecture encoder of encoder is

begin

		a<=d2 or d3;
		b<=d1 or d3;` 

end encoder;
