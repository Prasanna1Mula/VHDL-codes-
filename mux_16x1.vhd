library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_16X1_I is
    Port ( inputs : in  STD_LOGIC_VECTOR(15 downto 0);
           sel : in  STD_LOGIC_VECTOR(3 downto 0);
           outputs : out  STD_LOGIC);
end MUX_16X1_I;

architecture Behavioral of MUX_16X1_I is

begin
	process(inputs, sel)
	begin
		case sel is 
			when "0000" => outputs <= inputs(0);
			when "0001" => outputs <= inputs(1);
			when "0010" => outputs <= inputs(2);
			when "0011" => outputs <= inputs(3);
			when "0100" => outputs <= inputs(4);
			when "0101" => outputs <= inputs(5);
			when "0110" => outputs <= inputs(6);
			when "0111" => outputs <= inputs(7);
			when "1000" => outputs <= inputs(8);
			when "1001" => outputs <= inputs(9);
			when "1010" => outputs <= inputs(10);
			when "1011" => outputs <= inputs(11);
			when "1100" => outputs <= inputs(12);
			when "1101" => outputs <= inputs(13);
			when "1110" => outputs <= inputs(14);
			when "1111" => outputs <= inputs(15);
			when others => outputs <= '0';
		end case;
	end process;
end Behavioral;
