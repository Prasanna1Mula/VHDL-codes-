library IEEE;
use IEEE_STD_LOGIC_1164.ALL;

entity SRLatch is 
  Port ( S : in STD_LOGIC
        R : in STD_LOGIC 
        Q : out STD_LOGIC 
        Qbar : out STD_LOGIC 
        );
  end SRLatch;

  Architechture Behavioral of SRLatch is
  signal si, r1 : bit; 
begin 
  Q <= S nand Qbar;
  R <= R nand Q;
end Behavioral 
