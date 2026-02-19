library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TrafficLightsFSM is
    port(reset       : in  std_logic;
         clk         : in  std_logic;
         intermit    : in  std_logic;
         newTime     : out std_logic;
         timeVal     : out std_logic_vector(7 downto 0);
         timeExp     : in  std_logic;
         yBlink      : out std_logic;
         red1        : out std_logic;
         yellow1     : out std_logic;
         green1      : out std_logic;
         red2        : out std_logic;
         yellow2     : out std_logic;
         green2      : out std_logic;
         red3        : out std_logic;
         yellow3     : out std_logic;
         green3      : out std_logic);
end TrafficLightsFSM;

architecture Behavioral of TrafficLightsFSM is

    -- Tempos S1/S2 
    constant GREEN_PRINCIPAL_TIME   : std_logic_vector(7 downto 0) := "00001001"; -- 9 s
    constant YELLOW_PRINCIPAL_TIME  : std_logic_vector(7 downto 0) := "00000011"; -- 3 s
    constant RED_PRINCIPAL_TIME     : std_logic_vector(7 downto 0) := "00001001"; -- 9 s

    -- Tempos S3 
    constant GREEN_LATERAL_TIME     : std_logic_vector(7 downto 0) := "00000110"; -- 6 s
    constant YELLOW_LATERAL_TIME    : std_logic_vector(7 downto 0) := "00000011"; -- 3 s 
    constant RED_LATERAL_TIME       : std_logic_vector(7 downto 0) := "00001100"; -- 12 s

    -- Tempos para estados de transição e intermitência
    constant INTERMIT_MIN_TIME      : std_logic_vector(7 downto 0) := "00000110"; -- 6 s 
    constant YELLOW_TIME_PER        : std_logic_vector(7 downto 0) := "00000100"; -- 4 s 
    constant RED_ALL_TIME           : std_logic_vector(7 downto 0) := RED_LATERAL_TIME;

    type TState is (TInit, TIntermit,
                         TRedAll_to_Principal, -- Todos vermelhos antes de Green Principal
                         TGreenPrincipal, TYellowPrincipal,
                         TRedAll_to_Lateral,   -- Todos vermelhos antes de Green Lateral
                         TGreenLateral, TYellowLateral,
                         TYellow_per);

    signal s_currentState, s_nextState  : TState := TInit;
    signal s_stateChanged : std_logic := '1';

begin
    sync_proc : process(clk)
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                s_currentState <= TInit;
                s_stateChanged <= '1';
            else
                if (s_currentState /= s_nextState) then
                    s_stateChanged <= '1';
                else
                    s_stateChanged <= '0';
                end if;
                s_currentState  <= s_nextState;
            end if;
        end if;
    end process;

    newTime <= s_stateChanged;

    comb_proc : process(s_currentState, intermit, timeExp)
    begin
        red1    <= '0';
        yellow1 <= '0';
        green1  <= '0';
        red2    <= '0';
        yellow2 <= '0';
        green2  <= '0';
        red3    <= '0';
        yellow3 <= '0';
        green3  <= '0';
        yBlink  <= '0';
        timeVal <= (others => '0');

        case (s_currentState) is
        when TInit =>
            s_nextState <= TIntermit;

        when TIntermit =>
            yellow1 <= '1';
            yellow2 <= '1';
            yellow3 <= '1';
            yBlink  <= '1';
            timeVal <= INTERMIT_MIN_TIME;

            if ((intermit = '0') and (timeExp = '1')) then
                s_nextState <= TYellow_per;
            else
                s_nextState <= TIntermit;
            end if;

        when TYellow_per =>
            yellow1 <= '1';
            yellow2 <= '1';
            yellow3 <= '1';
            yBlink  <= '0';
            timeVal <= YELLOW_TIME_PER;

            if (timeExp = '1') then
                s_nextState <= TRedAll_to_Principal;
            else
                s_nextState <= TYellow_per;
            end if;

        when TRedAll_to_Principal => -- All lights are red for safety (before Green Principal)
            red1    <= '1';
            red2    <= '1';
            red3    <= '1';
            timeVal <= RED_ALL_TIME; -- Usando o tempo mais longo para segurança

            if (timeExp = '1') then
                if (intermit = '1') then
                    s_nextState <= TIntermit;
                else
                    s_nextState <= TGreenPrincipal;
                end if;
            else
                s_nextState <= TRedAll_to_Principal;
            end if;

        when TGreenPrincipal => -- S1 and S2 are Green, S3 is Red
            green1  <= '1';
            green2  <= '1';
            red3    <= '1';
            timeVal <= GREEN_PRINCIPAL_TIME;

            if (intermit = '1') or (timeExp = '1') then
                s_nextState <= TYellowPrincipal;
            else
                s_nextState <= TGreenPrincipal;
            end if;

        when TYellowPrincipal => -- S1 and S2 are Yellow, S3 is Red
            yellow1 <= '1';
            yellow2 <= '1';
            red3    <= '1';
            timeVal <= YELLOW_PRINCIPAL_TIME;

            if (timeExp = '1') then
                if (intermit = '1') then
                    s_nextState <= TIntermit;
                else
                    s_nextState <= TRedAll_to_Lateral; -- Go to all red before lateral
                end if;
            else
                s_nextState <= TYellowPrincipal;
            end if;

        when TRedAll_to_Lateral => -- All lights are red for safety (before Green Lateral)
            red1    <= '1';
            red2    <= '1';
            red3    <= '1';
            timeVal <= RED_ALL_TIME; -- Usando o tempo mais longo para segurança

            if (timeExp = '1') then
                if (intermit = '1') then
                    s_nextState <= TIntermit;
                else
                    s_nextState <= TGreenLateral;
                end if;
            else
                s_nextState <= TRedAll_to_Lateral;
            end if;

        when TGreenLateral => -- S3 is Green, S1 and S2 are Red
            red1    <= '1';
            red2    <= '1';
            green3  <= '1';
            timeVal <= GREEN_LATERAL_TIME;

            if (intermit = '1') or (timeExp = '1') then
                s_nextState <= TYellowLateral;
            else
                s_nextState <= TGreenLateral;
            end if;

        when TYellowLateral => -- S3 is Yellow, S1 and S2 are Red
            red1    <= '1';
            red2    <= '1';
            yellow3 <= '1';
            timeVal <= YELLOW_LATERAL_TIME;

            if (timeExp = '1') then
                if (intermit = '1') then
                    s_nextState <= TIntermit;
                else
                    s_nextState <= TRedAll_to_Principal; -- Go to all red before principal
                end if;
            else
                s_nextState <= TYellowLateral;
            end if;

        end case;
    end process;
end Behavioral;
