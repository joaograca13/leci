library IEEE;
use IEEE.STD_logic_1164.ALL;

entity ProgramaLuzes1 is
	port (input : in std_logic_vector(3 downto 0);
			LEDR : out std_logic_vector(3 downto 0);
			LEDG : out std_logic_vector(3 downto 0));
end entity ProgramaLuzes1;

architecture Behavorial of ProgramaLuzes1 is
begin
	process (input)
	begin
		if input = "0001" then
			LEDR <= "1111";
			LEDG <= "1111";
		else
			LEDR <= "0000";
			LEDG <= "0000";
		end if;
	end process;
end architecture Behavorial;