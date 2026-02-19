library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegN is
    generic ( N : integer := 4 );  
    port (
        clk : in  STD_LOGIC;  
        rst : in  STD_LOGIC;  
        D   : in  STD_LOGIC_VECTOR(N-1 downto 0); 
        Q   : out STD_LOGIC_VECTOR(N-1 downto 0)   
    );
end RegN;

architecture Behavioral of RegN is
    signal reg_value : STD_LOGIC_VECTOR(N-1 downto 0); 
begin
    process(clk, rst)
    begin
        if rst = '1' then
            reg_value <= (others => '0');  
        elsif rising_edge(clk) then
            reg_value <= D;  
        end if;
    end process;

    Q <= reg_value;  
end Behavioral;