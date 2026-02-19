library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegister4 is
    Port (
        clk  : in  STD_LOGIC;
        rst  : in  STD_LOGIC;
        din  : in  STD_LOGIC;
        dout : out STD_LOGIC_VECTOR (3 downto 0)
    );
end ShiftRegister4;

architecture Simple of ShiftRegister4 is
    signal reg : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                reg <= "0000";
            else
                reg <= reg(2 downto 0) & din;
            end if;
        end if;
    end process;
    
    dout <= reg;
end Simple;