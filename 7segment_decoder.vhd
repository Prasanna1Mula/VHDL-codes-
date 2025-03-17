library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_segment_decoder is
    Port ( clk : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0) 
			  );
end seven_segment_decoder;

architecture Behavioral of seven_segment_decoder is
	signal digit : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal counter : INTEGER := 0;
	begin
	
	process (clk, reset) 
	
	begin 
	
		if reset = '1' then
		digit <= "0000"; 
		counter <= 0;
        elsif rising_edge(clk) then
            if counter = 50000000 then
				    counter <= 0;	 
				if digit <= "1001" then
				digit <= "0000";
				else 
				digit <= digit + 1;
				end if; 
			else 
				counter <= counter + 1;
				end if;
			end if;
		end process; 
		
	-- 7 segement decoder  
	process(digit) 
	begin 
		case digit is
			when "0000" => seg <= "1000000";
			when "0001" => seg <= "1111001";
			when "0010" => seg <= "0100100";
			when "0011" => seg <= "0110000";
			when "0100" => seg <= "0110001";
			when "0101" => seg <= "0010010";
			when "0110" => seg <= "1000010";
			when "0111" => seg <= "1111000";
			when "1000" => seg <= "1000000";
			when "1001" => seg <= "0010000";
			when others => seg <= "1111111";
			
		end case;
	end process;
	an <= "1100";
end Behavioral;
