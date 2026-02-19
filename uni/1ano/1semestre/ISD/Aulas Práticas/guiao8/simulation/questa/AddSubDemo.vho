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

-- DATE "11/12/2024 12:57:03"

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

ENTITY 	AddSub4 IS
    PORT (
	count : OUT std_logic;
	a3 : IN std_logic;
	b3 : IN std_logic;
	add_sub : IN std_logic;
	a2 : IN std_logic;
	b2 : IN std_logic;
	a1 : IN std_logic;
	b1 : IN std_logic;
	a0 : IN std_logic;
	b0 : IN std_logic;
	ouF : OUT std_logic;
	s0 : OUT std_logic;
	pin_name3 : OUT std_logic;
	pin_name2 : OUT std_logic;
	pin_name1 : OUT std_logic
	);
END AddSub4;

-- Design Ports Information
-- count	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ouF	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_sub	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AddSub4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_count : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_add_sub : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_ouF : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL \count~output_o\ : std_logic;
SIGNAL \ouF~output_o\ : std_logic;
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \pin_name3~output_o\ : std_logic;
SIGNAL \pin_name2~output_o\ : std_logic;
SIGNAL \pin_name1~output_o\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \add_sub~input_o\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst|yau2~0_combout\ : std_logic;
SIGNAL \inst3|yau2~0_combout\ : std_logic;
SIGNAL \inst2|yau2~0_combout\ : std_logic;
SIGNAL \inst1|yau2~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

count <= ww_count;
ww_a3 <= a3;
ww_b3 <= b3;
ww_add_sub <= add_sub;
ww_a2 <= a2;
ww_b2 <= b2;
ww_a1 <= a1;
ww_b1 <= b1;
ww_a0 <= a0;
ww_b0 <= b0;
ouF <= ww_ouF;
s0 <= ww_s0;
pin_name3 <= ww_pin_name3;
pin_name2 <= ww_pin_name2;
pin_name1 <= ww_pin_name1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\count~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst2~0_combout\,
	devoe => ww_devoe,
	o => \count~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\ouF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~combout\,
	devoe => ww_devoe,
	o => \ouF~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\s0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|yau2~0_combout\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\pin_name3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|yau2~0_combout\,
	devoe => ww_devoe,
	o => \pin_name3~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\pin_name2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|yau2~0_combout\,
	devoe => ww_devoe,
	o => \pin_name2~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\pin_name1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|yau2~combout\,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\a3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\b3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\add_sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add_sub,
	o => \add_sub~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\b2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\a2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\a1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\b1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\b0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\a0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: LCCOMB_X6_Y4_N16
\inst|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = (\b0~input_o\ & ((\a0~input_o\))) # (!\b0~input_o\ & (\add_sub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub~input_o\,
	datac => \b0~input_o\,
	datad => \a0~input_o\,
	combout => \inst|inst2~0_combout\);

-- Location: LCCOMB_X6_Y4_N10
\inst1|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2~0_combout\ = (\a1~input_o\ & ((\inst|inst2~0_combout\) # (\b1~input_o\ $ (\add_sub~input_o\)))) # (!\a1~input_o\ & (\inst|inst2~0_combout\ & (\b1~input_o\ $ (\add_sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1~input_o\,
	datab => \b1~input_o\,
	datac => \add_sub~input_o\,
	datad => \inst|inst2~0_combout\,
	combout => \inst1|inst2~0_combout\);

-- Location: LCCOMB_X6_Y4_N12
\inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2~0_combout\ = (\a2~input_o\ & ((\inst1|inst2~0_combout\) # (\b2~input_o\ $ (\add_sub~input_o\)))) # (!\a2~input_o\ & (\inst1|inst2~0_combout\ & (\b2~input_o\ $ (\add_sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \a2~input_o\,
	datac => \add_sub~input_o\,
	datad => \inst1|inst2~0_combout\,
	combout => \inst2|inst2~0_combout\);

-- Location: LCCOMB_X6_Y4_N14
\inst3|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst2~0_combout\ = (\a3~input_o\ & ((\inst2|inst2~0_combout\) # (\b3~input_o\ $ (\add_sub~input_o\)))) # (!\a3~input_o\ & (\inst2|inst2~0_combout\ & (\b3~input_o\ $ (\add_sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \b3~input_o\,
	datac => \add_sub~input_o\,
	datad => \inst2|inst2~0_combout\,
	combout => \inst3|inst2~0_combout\);

-- Location: LCCOMB_X6_Y4_N24
inst5 : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\a3~input_o\ & (!\inst2|inst2~0_combout\ & (\b3~input_o\ $ (\add_sub~input_o\)))) # (!\a3~input_o\ & (\inst2|inst2~0_combout\ & (\b3~input_o\ $ (!\add_sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \b3~input_o\,
	datac => \add_sub~input_o\,
	datad => \inst2|inst2~0_combout\,
	combout => \inst5~combout\);

-- Location: LCCOMB_X6_Y4_N0
\inst|yau2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|yau2~0_combout\ = \b0~input_o\ $ (\a0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b0~input_o\,
	datad => \a0~input_o\,
	combout => \inst|yau2~0_combout\);

-- Location: LCCOMB_X6_Y4_N26
\inst3|yau2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|yau2~0_combout\ = \a3~input_o\ $ (\b3~input_o\ $ (\add_sub~input_o\ $ (\inst2|inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \b3~input_o\,
	datac => \add_sub~input_o\,
	datad => \inst2|inst2~0_combout\,
	combout => \inst3|yau2~0_combout\);

-- Location: LCCOMB_X6_Y4_N28
\inst2|yau2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|yau2~0_combout\ = \b2~input_o\ $ (\a2~input_o\ $ (\add_sub~input_o\ $ (\inst1|inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \a2~input_o\,
	datac => \add_sub~input_o\,
	datad => \inst1|inst2~0_combout\,
	combout => \inst2|yau2~0_combout\);

-- Location: LCCOMB_X6_Y4_N6
\inst1|yau2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|yau2~combout\ = \a1~input_o\ $ (\b1~input_o\ $ (\add_sub~input_o\ $ (\inst|inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1~input_o\,
	datab => \b1~input_o\,
	datac => \add_sub~input_o\,
	datad => \inst|inst2~0_combout\,
	combout => \inst1|yau2~combout\);

ww_count <= \count~output_o\;

ww_ouF <= \ouF~output_o\;

ww_s0 <= \s0~output_o\;

ww_pin_name3 <= \pin_name3~output_o\;

ww_pin_name2 <= \pin_name2~output_o\;

ww_pin_name1 <= \pin_name1~output_o\;
END structure;


