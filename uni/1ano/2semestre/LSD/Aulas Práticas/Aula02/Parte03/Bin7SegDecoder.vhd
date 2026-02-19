library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Bin7SegDecoder is
    Port (
        binInput : in  STD_LOGIC_VECTOR(3 downto 0); -- Entrada binária
        enable   : in  STD_LOGIC;                    -- Entrada de enable
        decOut_n : out STD_LOGIC_VECTOR(6 downto 0)  -- Saída para display 7 segmentos (ativa em 0)
    );
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
    process(binInput, enable)
    begin
        if enable = '0' then
            decOut_n <= "1111111";  -- Desliga todos os segmentos
        else
            case binInput is
                when "0000" => decOut_n <= "1000000"; -- 0
                when "0001" => decOut_n <= "1111001"; -- 1
                when "0010" => decOut_n <= "0100100"; -- 2
                when "0011" => decOut_n <= "0110000"; -- 3
                when "0100" => decOut_n <= "0011001"; -- 4
                when "0101" => decOut_n <= "0010010"; -- 5
                when "0110" => decOut_n <= "0000010"; -- 6
                when "0111" => decOut_n <= "1111000"; -- 7
                when "1000" => decOut_n <= "0000000"; -- 8
                when "1001" => decOut_n <= "0010000"; -- 9
                when "1010" => decOut_n <= "0001000"; -- A
                when "1011" => decOut_n <= "0000011"; -- b
                when "1100" => decOut_n <= "1000110"; -- C
                when "1101" => decOut_n <= "0100001"; -- d
                when "1110" => decOut_n <= "0000110"; -- E
                when "1111" => decOut_n <= "0001110"; -- F
                when others => decOut_n <= "1111111"; -- Desliga em caso indefinido
            end case;
        end if;
    end process;
end Behavioral;
