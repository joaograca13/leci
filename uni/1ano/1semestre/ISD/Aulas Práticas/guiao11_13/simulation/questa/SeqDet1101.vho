-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "12/03/2024 12:28:19"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SeqDet1101 IS
    PORT (
	y : OUT std_logic;
	Q1 : IN std_logic;
	Q0 : IN std_logic;
	x : IN std_logic;
	clk : IN std_logic
	);
END SeqDet1101;

-- Design Ports Information
-- y	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDet1101 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y~output_o\ : std_logic;
SIGNAL \Q0~input_o\ : std_logic;
SIGNAL \Q1~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

y <= ww_y;
ww_Q1 <= Q1;
ww_Q0 <= Q0;
ww_x <= x;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~0_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\Q0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q0,
	o => \Q0~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\Q1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q1,
	o => \Q1~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\x~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X1_Y6_N10
\inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (\Q1~input_o\ & ((\x~input_o\) # (!\Q0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~input_o\,
	datac => \Q1~input_o\,
	datad => \x~input_o\,
	combout => \inst6~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y6_N6
inst14 : cycloneive_lcell_comb
-- Equation(s):
-- \inst14~combout\ = (GLOBAL(\clk~inputclkctrl_outclk\) & (\inst6~0_combout\)) # (!GLOBAL(\clk~inputclkctrl_outclk\) & ((\inst14~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~0_combout\,
	datac => \clk~inputclkctrl_outclk\,
	datad => \inst14~combout\,
	combout => \inst14~combout\);

-- Location: LCCOMB_X1_Y6_N12
inst7 : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\Q0~input_o\ & (!\Q1~input_o\ & \x~input_o\)) # (!\Q0~input_o\ & (\Q1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~input_o\,
	datac => \Q1~input_o\,
	datad => \x~input_o\,
	combout => \inst7~combout\);

-- Location: LCCOMB_X1_Y6_N24
inst15 : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~combout\ = (GLOBAL(\clk~inputclkctrl_outclk\) & (\inst7~combout\)) # (!GLOBAL(\clk~inputclkctrl_outclk\) & ((\inst15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~combout\,
	datac => \clk~inputclkctrl_outclk\,
	datad => \inst15~combout\,
	combout => \inst15~combout\);

-- Location: LCCOMB_X1_Y6_N16
\inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\inst14~combout\ & (\inst15~combout\ & \x~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14~combout\,
	datab => \inst15~combout\,
	datad => \x~input_o\,
	combout => \inst8~0_combout\);

ww_y <= \y~output_o\;
END structure;


