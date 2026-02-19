library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec2_4En is
    port(inputs : in std_logic_vector (1 downto 0);
         outputs : out std_logic_vector(3 downto 0));
end Dec2_4En;

architecture Behavioral of dec2_4En is 
begin
    process(inputs)
     begin
        case inputs is
            when "00" =>
                outputs <= "0001";
            when "01" =>
                outputs <= "0010";
            when "10" =>
                outputs <= "0011";
            when "11" =>
                outputs <= "0100";
         end case;
    end process;
end Behavioral;