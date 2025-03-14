library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_1x8 is
    Port ( d : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           s2 : in  STD_LOGIC;
           y0 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC;
           y4 : out  STD_LOGIC;
           y5 : out  STD_LOGIC;
           y6 : out  STD_LOGIC;
           y7 : out  STD_LOGIC);
end demux_1x8;

architecture Behavioral of demux_1x8 is

begin
process(d,s0,s1,s2)
begin
if(s0='0' and s1='0' and s2='0')
then y0<=d;
else y0<='0';
end if;
if(s0='0' and s1='0' and s2='1')
then y1<=d;
else y1<='0';
end if;
if(s0='0' and s1='1' and s2='0')
then y2<=d;
else y2<='0';
end if;
if(s0='0' and s1='1' and s2='1')
then y3<=d;
else y3<='0';
end if;
if(s0='1' and s1='0' and s2='0')
then y4<=d;
else y4<='0';
end if;
if(s0='1' and s1='0' and s2='1')
then y5<=d;
else y5<='0';
end if;
if(s0='1' and s1='1' and s2='0')
then y6<=d;
else y6<='0';
end if;
if(s0='1' and s1='1' and s2='1')
then y0<=d;
else y0<='0';
end if;
end process;

end Behavioral;
