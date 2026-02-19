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

-- DATE "11/05/2024 12:50:46"

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

ENTITY 	Mux16_1 IS
    PORT (
	y : OUT std_logic;
	I15 : IN std_logic;
	S3 : IN std_logic;
	I7 : IN std_logic;
	S2 : IN std_logic;
	I11 : IN std_logic;
	I3 : IN std_logic;
	S1 : IN std_logic;
	I13 : IN std_logic;
	I5 : IN std_logic;
	I9 : IN std_logic;
	I1 : IN std_logic;
	S0 : IN std_logic;
	I14 : IN std_logic;
	I6 : IN std_logic;
	I10 : IN std_logic;
	I2 : IN std_logic;
	I12 : IN std_logic;
	I4 : IN std_logic;
	I8 : IN std_logic;
	I0 : IN std_logic
	);
END Mux16_1;

-- Design Ports Information
-- y	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I5	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I9	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I13	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I10	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I6	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I14	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I4	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I8	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I12	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I11	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I7	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I15	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mux16_1 IS
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
SIGNAL ww_I15 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_I7 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_I11 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_I13 : std_logic;
SIGNAL ww_I5 : std_logic;
SIGNAL ww_I9 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_I14 : std_logic;
SIGNAL ww_I6 : std_logic;
SIGNAL ww_I10 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I12 : std_logic;
SIGNAL ww_I4 : std_logic;
SIGNAL ww_I8 : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \I7~input_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \S3~input_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \box15|inst2~7_combout\ : std_logic;
SIGNAL \I11~input_o\ : std_logic;
SIGNAL \I15~input_o\ : std_logic;
SIGNAL \box15|inst2~8_combout\ : std_logic;
SIGNAL \I10~input_o\ : std_logic;
SIGNAL \I6~input_o\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \box15|inst2~2_combout\ : std_logic;
SIGNAL \I14~input_o\ : std_logic;
SIGNAL \box15|inst2~3_combout\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \I4~input_o\ : std_logic;
SIGNAL \I8~input_o\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \box15|inst2~4_combout\ : std_logic;
SIGNAL \I12~input_o\ : std_logic;
SIGNAL \box15|inst2~5_combout\ : std_logic;
SIGNAL \box15|inst2~6_combout\ : std_logic;
SIGNAL \I5~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \I9~input_o\ : std_logic;
SIGNAL \box15|inst2~0_combout\ : std_logic;
SIGNAL \I13~input_o\ : std_logic;
SIGNAL \box15|inst2~1_combout\ : std_logic;
SIGNAL \box15|inst2~9_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

y <= ww_y;
ww_I15 <= I15;
ww_S3 <= S3;
ww_I7 <= I7;
ww_S2 <= S2;
ww_I11 <= I11;
ww_I3 <= I3;
ww_S1 <= S1;
ww_I13 <= I13;
ww_I5 <= I5;
ww_I9 <= I9;
ww_I1 <= I1;
ww_S0 <= S0;
ww_I14 <= I14;
ww_I6 <= I6;
ww_I10 <= I10;
ww_I2 <= I2;
ww_I12 <= I12;
ww_I4 <= I4;
ww_I8 <= I8;
ww_I0 <= I0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N23
\y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \box15|inst2~9_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOIBUF_X23_Y24_N8
\I7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I7,
	o => \I7~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\S2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\S3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S3,
	o => \S3~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\I3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: LCCOMB_X28_Y8_N12
\box15|inst2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~7_combout\ = (\S2~input_o\ & ((\I7~input_o\) # ((\S3~input_o\)))) # (!\S2~input_o\ & (((!\S3~input_o\ & \I3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I7~input_o\,
	datab => \S2~input_o\,
	datac => \S3~input_o\,
	datad => \I3~input_o\,
	combout => \box15|inst2~7_combout\);

-- Location: IOIBUF_X28_Y0_N1
\I11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I11,
	o => \I11~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\I15~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I15,
	o => \I15~input_o\);

-- Location: LCCOMB_X28_Y8_N6
\box15|inst2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~8_combout\ = (\box15|inst2~7_combout\ & (((\I15~input_o\)) # (!\S3~input_o\))) # (!\box15|inst2~7_combout\ & (\S3~input_o\ & (\I11~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \box15|inst2~7_combout\,
	datab => \S3~input_o\,
	datac => \I11~input_o\,
	datad => \I15~input_o\,
	combout => \box15|inst2~8_combout\);

-- Location: IOIBUF_X34_Y9_N8
\I10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I10,
	o => \I10~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\I6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I6,
	o => \I6~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\I2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: LCCOMB_X28_Y8_N20
\box15|inst2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~2_combout\ = (\S3~input_o\ & (((\S2~input_o\)))) # (!\S3~input_o\ & ((\S2~input_o\ & (\I6~input_o\)) # (!\S2~input_o\ & ((\I2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I6~input_o\,
	datab => \I2~input_o\,
	datac => \S3~input_o\,
	datad => \S2~input_o\,
	combout => \box15|inst2~2_combout\);

-- Location: IOIBUF_X34_Y12_N22
\I14~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I14,
	o => \I14~input_o\);

-- Location: LCCOMB_X28_Y8_N22
\box15|inst2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~3_combout\ = (\box15|inst2~2_combout\ & (((\I14~input_o\) # (!\S3~input_o\)))) # (!\box15|inst2~2_combout\ & (\I10~input_o\ & (\S3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I10~input_o\,
	datab => \box15|inst2~2_combout\,
	datac => \S3~input_o\,
	datad => \I14~input_o\,
	combout => \box15|inst2~3_combout\);

-- Location: IOIBUF_X23_Y24_N15
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\S1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\I4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I4,
	o => \I4~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\I8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I8,
	o => \I8~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\I0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LCCOMB_X33_Y8_N8
\box15|inst2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~4_combout\ = (\S2~input_o\ & (((\S3~input_o\)))) # (!\S2~input_o\ & ((\S3~input_o\ & (\I8~input_o\)) # (!\S3~input_o\ & ((\I0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I8~input_o\,
	datab => \S2~input_o\,
	datac => \S3~input_o\,
	datad => \I0~input_o\,
	combout => \box15|inst2~4_combout\);

-- Location: IOIBUF_X34_Y9_N15
\I12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I12,
	o => \I12~input_o\);

-- Location: LCCOMB_X28_Y8_N24
\box15|inst2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~5_combout\ = (\S2~input_o\ & ((\box15|inst2~4_combout\ & ((\I12~input_o\))) # (!\box15|inst2~4_combout\ & (\I4~input_o\)))) # (!\S2~input_o\ & (((\box15|inst2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4~input_o\,
	datab => \S2~input_o\,
	datac => \box15|inst2~4_combout\,
	datad => \I12~input_o\,
	combout => \box15|inst2~5_combout\);

-- Location: LCCOMB_X28_Y8_N18
\box15|inst2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~6_combout\ = (\S0~input_o\ & (((\S1~input_o\)))) # (!\S0~input_o\ & ((\S1~input_o\ & (\box15|inst2~3_combout\)) # (!\S1~input_o\ & ((\box15|inst2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \box15|inst2~3_combout\,
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \box15|inst2~5_combout\,
	combout => \box15|inst2~6_combout\);

-- Location: IOIBUF_X7_Y0_N1
\I5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I5,
	o => \I5~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\I1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\I9~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I9,
	o => \I9~input_o\);

-- Location: LCCOMB_X28_Y8_N0
\box15|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~0_combout\ = (\S3~input_o\ & (((\I9~input_o\) # (\S2~input_o\)))) # (!\S3~input_o\ & (\I1~input_o\ & ((!\S2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1~input_o\,
	datab => \S3~input_o\,
	datac => \I9~input_o\,
	datad => \S2~input_o\,
	combout => \box15|inst2~0_combout\);

-- Location: IOIBUF_X34_Y10_N8
\I13~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I13,
	o => \I13~input_o\);

-- Location: LCCOMB_X28_Y8_N10
\box15|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~1_combout\ = (\box15|inst2~0_combout\ & (((\I13~input_o\) # (!\S2~input_o\)))) # (!\box15|inst2~0_combout\ & (\I5~input_o\ & ((\S2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I5~input_o\,
	datab => \box15|inst2~0_combout\,
	datac => \I13~input_o\,
	datad => \S2~input_o\,
	combout => \box15|inst2~1_combout\);

-- Location: LCCOMB_X28_Y8_N8
\box15|inst2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \box15|inst2~9_combout\ = (\box15|inst2~6_combout\ & ((\box15|inst2~8_combout\) # ((!\S0~input_o\)))) # (!\box15|inst2~6_combout\ & (((\S0~input_o\ & \box15|inst2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \box15|inst2~8_combout\,
	datab => \box15|inst2~6_combout\,
	datac => \S0~input_o\,
	datad => \box15|inst2~1_combout\,
	combout => \box15|inst2~9_combout\);

ww_y <= \y~output_o\;
END structure;


