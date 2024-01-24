-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/23/2024 15:00:50"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	example_mixed IS
    PORT (
	f : OUT std_logic;
	w1 : IN std_logic;
	w2 : IN std_logic;
	w3 : IN std_logic;
	w4 : IN std_logic;
	x2 : IN std_logic
	);
END example_mixed;

-- Design Ports Information
-- f	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w3	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w4	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF example_mixed IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_w1 : std_logic;
SIGNAL ww_w2 : std_logic;
SIGNAL ww_w3 : std_logic;
SIGNAL ww_w4 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \w1~input_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \w2~input_o\ : std_logic;
SIGNAL \w4~input_o\ : std_logic;
SIGNAL \w3~input_o\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \ALT_INV_w4~input_o\ : std_logic;
SIGNAL \ALT_INV_w2~input_o\ : std_logic;
SIGNAL \ALT_INV_x2~input_o\ : std_logic;
SIGNAL \ALT_INV_w3~input_o\ : std_logic;
SIGNAL \ALT_INV_w1~input_o\ : std_logic;

BEGIN

f <= ww_f;
ww_w1 <= w1;
ww_w2 <= w2;
ww_w3 <= w3;
ww_w4 <= w4;
ww_x2 <= x2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_w4~input_o\ <= NOT \w4~input_o\;
\ALT_INV_w2~input_o\ <= NOT \w2~input_o\;
\ALT_INV_x2~input_o\ <= NOT \x2~input_o\;
\ALT_INV_w3~input_o\ <= NOT \w3~input_o\;
\ALT_INV_w1~input_o\ <= NOT \w1~input_o\;

-- Location: IOOBUF_X89_Y23_N22
\f~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3~0_combout\,
	devoe => ww_devoe,
	o => ww_f);

-- Location: IOIBUF_X89_Y21_N4
\w1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1,
	o => \w1~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\x2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\w2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2,
	o => \w2~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\w4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w4,
	o => \w4~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\w3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w3,
	o => \w3~input_o\);

-- Location: LABCELL_X88_Y21_N0
\inst|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = ( \w4~input_o\ & ( \w3~input_o\ & ( ((\w2~input_o\) # (\x2~input_o\)) # (\w1~input_o\) ) ) ) # ( !\w4~input_o\ & ( \w3~input_o\ & ( (\w1~input_o\ & ((!\x2~input_o\) # (\w2~input_o\))) ) ) ) # ( \w4~input_o\ & ( !\w3~input_o\ & ( 
-- (\w2~input_o\ & ((!\x2~input_o\) # (\w1~input_o\))) ) ) ) # ( !\w4~input_o\ & ( !\w3~input_o\ & ( (\w1~input_o\ & (\x2~input_o\ & \w2~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000011010000110101000101010001010111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w1~input_o\,
	datab => \ALT_INV_x2~input_o\,
	datac => \ALT_INV_w2~input_o\,
	datae => \ALT_INV_w4~input_o\,
	dataf => \ALT_INV_w3~input_o\,
	combout => \inst|inst3~0_combout\);

-- Location: LABCELL_X17_Y38_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


