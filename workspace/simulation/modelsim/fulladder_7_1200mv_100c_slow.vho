-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "12/19/2017 14:10:35"

-- 
-- Device: Altera EP4CE30F23I7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fulladder IS
    PORT (
	pin_name4 : OUT std_logic;
	pin_name1 : IN std_logic;
	pin_name5 : OUT std_logic;
	pin_name2 : IN std_logic;
	pin_name3 : IN std_logic
	);
END fulladder;

-- Design Ports Information
-- pin_name4	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name5	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fulladder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL \pin_name2~input_o\ : std_logic;
SIGNAL \pin_name3~input_o\ : std_logic;
SIGNAL \pin_name4~output_o\ : std_logic;
SIGNAL \pin_name5~output_o\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;

BEGIN

pin_name4 <= ww_pin_name4;
ww_pin_name1 <= pin_name1;
pin_name5 <= ww_pin_name5;
ww_pin_name2 <= pin_name2;
ww_pin_name3 <= pin_name3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X61_Y43_N16
\pin_name4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name4~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\pin_name5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_name1~input_o\,
	devoe => ww_devoe,
	o => \pin_name5~output_o\);

-- Location: IOIBUF_X0_Y7_N15
\pin_name1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => \pin_name1~input_o\);

-- Location: IOIBUF_X65_Y43_N22
\pin_name2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2,
	o => \pin_name2~input_o\);

-- Location: IOIBUF_X45_Y43_N15
\pin_name3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name3,
	o => \pin_name3~input_o\);

ww_pin_name4 <= \pin_name4~output_o\;

ww_pin_name5 <= \pin_name5~output_o\;
END structure;


