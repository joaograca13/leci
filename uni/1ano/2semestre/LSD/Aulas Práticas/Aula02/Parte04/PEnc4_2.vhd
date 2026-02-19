library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Penc4_2 is
    Port (
        decodedIn : in STD_LOGIC_VECTOR(3 downto 0);
        encodedOut : out STD_LOGIC_VECTOR(1 downto 0);
        validOut : out STD_LOGIC);
end Penc4_2;

architecture Behavioral of Penc4_2 is
begin
    process(decodedIn)
    begin
        if decodedIn(3) = '1' then
            encodedOut <= "11";
            validOut <= '1';
        elsif decodedIn(2) = '1' then
            encodedOut <= "10";
            validOut <= '1';
        elsif decodedIn(1) = '1' then
            encodedOut <= "01";
            validOut <= '1';
        elsif decodedIn(0) = '1' then
            encodedOut <= "00";
            validOut <= '1';
        else
            encodedOut <= "00";
            validOut <= '0';
        end if;
    end process;

end Behavioral;
