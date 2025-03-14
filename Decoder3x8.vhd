library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder3x8 is

Port (g1,g2,c,b,a : IN STD_LOGIC;
      Y: OUT STD_LOGIC_VECTOR(0 TO 7));
end decoder3x8;

architecture decoder3x8 of decoder3x8 is

signal S: std_logic_vector(2 downto 0);

begin

       S <= C&B&A;
		 process(g1,g2,S)
		 begin
		   if g2='1' then Y<="11111111";
			elsif g1='0' then Y<="11111111";
			elsif g1='1' and g2='0' and S="000" then Y<="01111111";
			elsif g1='1' and g2='0' and S="001" then Y<="00111111";
			elsif g1='1' and g2='0' and S="010" then Y<="00011111";
			elsif g1='1' and g2='0' and S="011" then Y<="11101111";
			elsif g1='1' and g2='0' and S="100" then Y<="11110111";
			elsif g1='1' and g2='0' and S="101" then Y<="11111011";
			elsif g1='1' and g2='0' and S="110" then Y<="11111101";
			elsif g1='1' and g2='0' and S="111" then Y<="11111110";
			else Y<="00000000";
			end if;
			
		end process;


end architecture decoder3x8;
