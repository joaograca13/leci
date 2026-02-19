library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2_1 is
    Port (
        dataln0   : in  STD_LOGIC;  
        dataln1   : in  STD_LOGIC;  
        SEL 		: in  STD_LOGIC;  
        dataOut   : out STD_LOGIC);
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin
    process (dataln0, dataln1, SEL)
    begin
        if SEL = '0' then
            dataOut <= dataln0;
        else
            dataOut <= dataln1;
        end if;
    end process;
end Behavioral;
