library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegisterN is
    Generic (
        size : integer := 4
    );
    Port (
        clk  : in  STD_LOGIC;
        rst  : in  STD_LOGIC;
        din  : in  STD_LOGIC;
        dout : out STD_LOGIC_VECTOR (size-1 downto 0)
    );
end ShiftRegisterN;

architecture Simple of ShiftRegisterN is
    signal reg : STD_LOGIC_VECTOR (size-1 downto 0) := (others => '0');
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                reg <= (others => '0');
            else
                reg <= reg(size-2 downto 0) & din;
            end if;
        end if;
    end process;
    
    dout <= reg;
end Simple;
