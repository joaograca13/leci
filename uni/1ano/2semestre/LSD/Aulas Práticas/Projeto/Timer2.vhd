library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer2 is
    port(reset        : in  std_logic;
          clk         : in  std_logic;
          newTime2    : in  std_logic;
          timeVal2    : in  std_logic_vector(7 downto 0);
          timeExp2    : out std_logic);
end Timer2;

architecture Behavioral of Timer2 is

    signal s_counter2 : unsigned(7 downto 0) := (others => '1');
    signal s_cntZero2 : std_logic := '0';

begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                s_counter2 <= (others => '1');
                s_cntZero2 <= '0';
            elsif (newTime = '1') then
                s_counter2 <= unsigned(timeVal2) - 1;
                s_cntZero2 <= '0';
            else
                if (s_counter2 = "00000000") then
                    s_cntZero2 <= '1';
                else
                    s_counter2 <= s_counter2  - 1;
                    s_cntZero2 <= '0';
                end if;
            end if;
        end if;
    end process;

    timeExp2 <= s_cntZero2;
end Behavioral;
