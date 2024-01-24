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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/23/2024 15:00:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          example_mixed
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY example_mixed_vhd_vec_tst IS
END example_mixed_vhd_vec_tst;
ARCHITECTURE example_mixed_arch OF example_mixed_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f : STD_LOGIC;
SIGNAL w1 : STD_LOGIC;
SIGNAL w2 : STD_LOGIC;
SIGNAL w3 : STD_LOGIC;
SIGNAL w4 : STD_LOGIC;
SIGNAL x2 : STD_LOGIC;
COMPONENT example_mixed
	PORT (
	f : OUT STD_LOGIC;
	w1 : IN STD_LOGIC;
	w2 : IN STD_LOGIC;
	w3 : IN STD_LOGIC;
	w4 : IN STD_LOGIC;
	x2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : example_mixed
	PORT MAP (
-- list connections between master ports and signals
	f => f,
	w1 => w1,
	w2 => w2,
	w3 => w3,
	w4 => w4,
	x2 => x2
	);

-- w1
t_prcs_w1: PROCESS
BEGIN
	w1 <= '0';
	WAIT FOR 20000 ps;
	w1 <= '1';
	WAIT FOR 40000 ps;
	w1 <= '0';
WAIT;
END PROCESS t_prcs_w1;

-- w2
t_prcs_w2: PROCESS
BEGIN
	w2 <= '0';
	WAIT FOR 80000 ps;
	w2 <= '1';
	WAIT FOR 40000 ps;
	w2 <= '0';
WAIT;
END PROCESS t_prcs_w2;

-- w3
t_prcs_w3: PROCESS
BEGIN
	w3 <= '0';
	WAIT FOR 50000 ps;
	w3 <= '1';
	WAIT FOR 50000 ps;
	w3 <= '0';
WAIT;
END PROCESS t_prcs_w3;

-- w4
t_prcs_w4: PROCESS
BEGIN
	w4 <= '0';
	WAIT FOR 30000 ps;
	w4 <= '1';
	WAIT FOR 50000 ps;
	w4 <= '0';
WAIT;
END PROCESS t_prcs_w4;

-- x2
t_prcs_x2: PROCESS
BEGIN
	x2 <= '0';
	WAIT FOR 80000 ps;
	x2 <= '1';
	WAIT FOR 60000 ps;
	x2 <= '0';
WAIT;
END PROCESS t_prcs_x2;
END example_mixed_arch;
