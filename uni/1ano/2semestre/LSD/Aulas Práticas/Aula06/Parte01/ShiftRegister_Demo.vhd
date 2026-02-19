library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ShiftRegister_Demo is
    Port (
        CLOCK_50 : in  STD_LOGIC;
        rst      : in  STD_LOGIC;
        din      : in  STD_LOGIC;
        dout     : out STD_LOGIC_VECTOR (7 downto 0)
    );
end ShiftRegister_Demo;

architecture Behavioral of ShiftRegister_Demo is
    component ShiftRegisterN
        Generic (
            size : integer := 4
        );
        Port (
            clk  : in  STD_LOGIC;
            rst  : in  STD_LOGIC;
            din  : in  STD_LOGIC;
            dout : out STD_LOGIC_VECTOR (size-1 downto 0)
        );
    end component;

    component ClockDivider is
        Generic (
            divFactor : integer := 50000000
        );
        Port (
            clkIn  : in  STD_LOGIC;
            clkOut : out STD_LOGIC
        );
    end component;

    signal clk_1Hz : STD_LOGIC;

begin
    ClockDiv : ClockDivider
        generic map (divFactor => 50000000)
        port map (
            clkIn  => CLOCK_50,
            clkOut => clk_1Hz
        );
    
    ShiftReg : ShiftRegisterN
        generic map (size => 8)
        port map (
            clk  => clk_1Hz,
            rst  => rst,
            din  => din,
            dout => dout
        );

end Behavioral;
