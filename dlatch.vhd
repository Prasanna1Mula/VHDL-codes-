library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Latch is
    Port ( EN : in  STD_LOGIC;
           DATA : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end D_Latch;

architecture Behavioral of D_Latch is

begin
process(EN, DATA)
begin 

if (EN = '1') then 
Y <= DATA;
end if;
end process;
end Behavioral;



-- TEST Bench code 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_d_latch IS
END tb_d_latch;
 
ARCHITECTURE behavior OF tb_d_latch IS 
 
    
 
    COMPONENT D_Latch
    PORT(
         EN : IN  std_logic;
         DATA : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   
   signal EN : std_logic := '0';
   signal DATA : std_logic := '0';
   signal Y : std_logic;
   
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	
   uut: D_Latch PORT MAP (
          EN => EN,
          DATA => DATA,
          Y => Y
        );
    process 
        begin 

-- Case 1 Enable Low, DATA changes 

        EN = 0;
        DATA >= 0; wait for 10ns;
        DATA >= 1; wait for 10ns;
        DATA >= 0; wait for 10ns;

-- Case 2 Enable High, DATA Changes 

        EN = 1;
        DATA >= 0; wait for 10ns;
        DATA >= 1; wait for 10ns;
        DATA >= 0; wait for 10ns;

-- Case 3 Enable low, DATA Changes 
        EN = 0;
        DATA >= 1; wait for 10ns;
        DATA >= 0; wait for 10ns;

--Case 4 Enable high, DATA Changes
        EN = 1;
        DATA >= 0; wait for 10ns;
        DATA >= 1; wait for 10ns;

        wait;
    end process;
end;