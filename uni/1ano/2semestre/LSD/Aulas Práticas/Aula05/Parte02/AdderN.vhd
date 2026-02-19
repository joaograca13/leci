library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AdderN is
    generic ( N : integer := 4 ); 
    port (
        A    : in  STD_LOGIC_VECTOR(N-1 downto 0);
        B    : in  STD_LOGIC_VECTOR(N-1 downto 0);
        S    : out STD_LOGIC_VECTOR(N-1 downto 0);
        Cout : out STD_LOGIC  
    );
end AdderN;

architecture Behavioral of AdderN is
begin
    process(A, B)
        variable temp : STD_LOGIC_VECTOR(N downto 0); 
    begin
        temp := ('0' & A) + ('0' & B);  
        S    <= temp(N-1 downto 0); 
        Cout <= temp(N); 
    end process;
end Behavioral;
