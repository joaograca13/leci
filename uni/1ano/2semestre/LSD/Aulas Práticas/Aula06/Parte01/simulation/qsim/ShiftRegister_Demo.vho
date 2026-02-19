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

-- DATE "03/31/2025 15:21:24"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShiftRegister4 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	din : IN std_logic;
	dout : OUT std_logic_vector(3 DOWNTO 0)
	);
END ShiftRegister4;

ARCHITECTURE structure OF ShiftRegister4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_din : std_logic;
SIGNAL ww_dout : std_logic_vector(3 DOWNTO 0);
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \din~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \reg~0_combout\ : std_logic;
SIGNAL \reg~1_combout\ : std_logic;
SIGNAL \reg~2_combout\ : std_logic;
SIGNAL \reg~3_combout\ : std_logic;
SIGNAL reg : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_din <= din;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

\dout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

\dout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

\dout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\din~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din,
	o => \din~input_o\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~0_combout\ = (\din~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~input_o\,
	datad => \rst~input_o\,
	combout => \reg~0_combout\);

\reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(0));

\reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~1_combout\ = (reg(0) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg(0),
	datad => \rst~input_o\,
	combout => \reg~1_combout\);

\reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(1));

\reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~2_combout\ = (reg(1) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg(1),
	datad => \rst~input_o\,
	combout => \reg~2_combout\);

\reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(2));

\reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~3_combout\ = (reg(2) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg(2),
	datad => \rst~input_o\,
	combout => \reg~3_combout\);

\reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(3));

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;
END structure;


