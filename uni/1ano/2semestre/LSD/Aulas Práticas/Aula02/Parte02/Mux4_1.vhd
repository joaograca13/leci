library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4_1 is
    Port (
        dataln0   : in  STD_LOGIC;                     
        dataln1   : in  STD_LOGIC;                     
        dataln2   : in  STD_LOGIC;                     
        dataln3   : in  STD_LOGIC;                     
        SEL 		: in  STD_LOGIC_VECTOR(1 downto 0); 
        dataOut   : out STD_LOGIC);
end Mux4_1;

architecture Behavioral of Mux4_1 is
begin
    process (dataln0, dataln1, dataln2, dataln3, SEL)
    begin
        case SEL is
            when "00" =>
                dataOut <= dataln0;
            when "01" =>
                dataOut <= dataln1;
            when "10" =>
                dataOut <= dataln2;
            when "11" =>
                dataOut <= dataln3;
            when others =>
                dataOut <= 'X';  
        end case;
    end process;
end Behavioral;
