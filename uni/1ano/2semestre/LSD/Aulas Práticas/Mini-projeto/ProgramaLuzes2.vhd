library IEEE;
use IEEE.STD_logic_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity ProgramaLuzes2 is
	generic(divFactor : positive := 2);
		port (input : in std_logic_vector(3 downto 0);
				clkin : in std_logic;
				clkout : in std_logic;
				LEDR : out std_logic_vector(3 downto 0);
				LEDG : out std_logic_vector(3 downto 0));
end entity ProgramaLuzes2;

architecture Behavorial of ProgramaLuzes2 is
	subtype TCounter is natural range 0 to divFactor - 1;
	signal s_divCounter : TCounter := 0;
begin
	process (input)
	begin
		if input = "0010" then
			LEDR <= "1111";
			LEDG <= "0000";
		else
			LEDR <= "0000";
			LEDG <= "0000";
		end if;
	end process;
	
	assert(divFactor >= 2);
	process(clkIn)
	 begin
		 if (rising_edge(clkIn)) then
			 if (s_divCounter >= (divFactor - 1)) then
				s_divCounter <= 0;
			  else
				 if (s_divCounter = (divFactor / 2 - 1)) then
				 end if;
			 s_divCounter <= s_divCounter + 1;
			 end if;
		 end if;
	 end process;
end architecture Behavorial;