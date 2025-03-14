library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dflipflop is
    Port ( PR : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_L : out  STD_LOGIC);
end dflipflop;

architecture Behavioral of dflipflop is

signal tq,tqb:std_logic;

begin
 
		process(PR,CLR,CLK)
		begin
		if PR='0' and CLR='1' then tq<='1';tqb<='0';
		elsif PR='1' and CLR='0' then tq<='0';tqb<='1';
		elsif PR='0' and CLR='1' and CLK'event and CLK='1' then tq<=D;tqb<=not D;
		elsif PR='1' and CLR='1' and CLK='0' then tq<=tq;tqb<=tqb;
		end if;
		
		end process;
		
		Q<=tq;
		Q_L<=tqb;


end Behavioral;
