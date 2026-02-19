library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Semaforos_top is
    port(CLOCK_50    : in  std_logic;
          KEY            : in  std_logic_vector(0 downto 0);
          SW            : in  std_logic_vector(0 downto 0);
          LEDR        : out std_logic_vector(17 downto 0));
end Semaforos_top;

architecture Shell of Semaforos_top is

   signal s_clk1Hz 	  : std_logic;
   signal s_pulsedOut  : std_logic;
   signal s_newTime1   : std_logic;
   signal s_timeVal1   : std_logic_vector(7 downto 0);
   signal s_timeExp1   : std_logic;
   signal s_newTime2   : std_logic;
   signal s_timeVal2   : std_logic_vector(7 downto 0);
	

    begin
    clk_div_1hz : entity work.clkDivider(RTL)
        generic map(divFactor => 50000000)
        port map(clkIn             => CLOCK_50,
                    clkOut         => s_clk1Hz);

    Debounce_unit : entity work.DebounceUnit(Behavioral)
        generic map(
            kHzClkFreq      => 50000, 
            mSecMinInWidth  => 100,
            inPolarity      => '0',
            outPolarity     => '1'
        );
		  port map(
            refClk          => CLOCK_50,
            dirtyIn         => KEY(0), 
            pulsedOut       => s_pulsedOut 
        );
      Timer1 : entity work.Timer1(Behavioral)
        port map(
            reset    => s_pulsedOut,
            clk      => s_clk1Hz,
            newTime1 => s_newTime1,
            timeVal1 => s_timeVal1,
            timeExp1 => s_timeExp1
        );
		 Timer2 : entity work.Timer2(Behavioral)
		  port map(
            reset    => s_pulsedOut,
            clk      => s_clk1Hz,
            newTime2 => s_newTime2,
            timeVal2 => s_timeVal2,
        );
--		  Traffic_FSM : entity work.Trafic_FSM(Behavorial)
--		   port map(	  

	end begin;
end Shell;