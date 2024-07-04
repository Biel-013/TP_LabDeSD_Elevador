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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/24/2024 09:19:01"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Temporizador IS
    PORT (
	TEMP_Clock : IN std_logic;
	TEMP_Start : IN std_logic;
	TEMP_Reset : IN std_logic;
	TEMP_SigOUT : OUT std_logic
	);
END Temporizador;

-- Design Ports Information
-- TEMP_SigOUT	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMP_Start	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TEMP_Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TEMP_Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Temporizador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TEMP_Clock : std_logic;
SIGNAL ww_TEMP_Start : std_logic;
SIGNAL ww_TEMP_Reset : std_logic;
SIGNAL ww_TEMP_SigOUT : std_logic;
SIGNAL \TEMP_Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TEMP_Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Contador[3]~14_combout\ : std_logic;
SIGNAL \TEMP_Clock~combout\ : std_logic;
SIGNAL \TEMP_Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Contador[0]~8_combout\ : std_logic;
SIGNAL \TEMP_Reset~combout\ : std_logic;
SIGNAL \TEMP_Reset~clkctrl_outclk\ : std_logic;
SIGNAL \TEMP_Start~combout\ : std_logic;
SIGNAL \TEMP_SigOUT~1_combout\ : std_logic;
SIGNAL \Contador[1]~10_combout\ : std_logic;
SIGNAL \TEMP_SigOUT~0_combout\ : std_logic;
SIGNAL \TEMP_SigOUT~3_combout\ : std_logic;
SIGNAL \Contador[0]~9\ : std_logic;
SIGNAL \Contador[1]~11\ : std_logic;
SIGNAL \Contador[2]~12_combout\ : std_logic;
SIGNAL \Contador[2]~13\ : std_logic;
SIGNAL \Contador[3]~15\ : std_logic;
SIGNAL \Contador[4]~16_combout\ : std_logic;
SIGNAL \Contador[4]~17\ : std_logic;
SIGNAL \Contador[5]~18_combout\ : std_logic;
SIGNAL \Contador[5]~19\ : std_logic;
SIGNAL \Contador[6]~20_combout\ : std_logic;
SIGNAL \Contador[6]~21\ : std_logic;
SIGNAL \Contador[7]~22_combout\ : std_logic;
SIGNAL \TEMP_SigOUT~2_combout\ : std_logic;
SIGNAL \TEMP_SigOUT~reg0_regout\ : std_logic;
SIGNAL Contador : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_TEMP_Start~combout\ : std_logic;

BEGIN

ww_TEMP_Clock <= TEMP_Clock;
ww_TEMP_Start <= TEMP_Start;
ww_TEMP_Reset <= TEMP_Reset;
TEMP_SigOUT <= ww_TEMP_SigOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\TEMP_Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \TEMP_Clock~combout\);

\TEMP_Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \TEMP_Reset~combout\);
\ALT_INV_TEMP_Start~combout\ <= NOT \TEMP_Start~combout\;

-- Location: LCFF_X31_Y35_N21
\Contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TEMP_Clock~clkctrl_outclk\,
	datain => \Contador[3]~14_combout\,
	aclr => \TEMP_Reset~clkctrl_outclk\,
	sclr => \ALT_INV_TEMP_Start~combout\,
	ena => \TEMP_SigOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Contador(3));

-- Location: LCCOMB_X31_Y35_N20
\Contador[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Contador[3]~14_combout\ = (Contador(3) & (!\Contador[2]~13\)) # (!Contador(3) & ((\Contador[2]~13\) # (GND)))
-- \Contador[3]~15\ = CARRY((!\Contador[2]~13\) # (!Contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Contador(3),
	datad => VCC,
	cin => \Contador[2]~13\,
	combout => \Contador[3]~14_combout\,
	cout => \Contador[3]~15\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMP_Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TEMP_Clock,
	combout => \TEMP_Clock~combout\);

-- Location: CLKCTRL_G3
\TEMP_Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \TEMP_Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \TEMP_Clock~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y35_N14
\Contador[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Contador[0]~8_combout\ = Contador(0) $ (VCC)
-- \Contador[0]~9\ = CARRY(Contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Contador(0),
	datad => VCC,
	combout => \Contador[0]~8_combout\,
	cout => \Contador[0]~9\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMP_Reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TEMP_Reset,
	combout => \TEMP_Reset~combout\);

-- Location: CLKCTRL_G1
\TEMP_Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \TEMP_Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \TEMP_Reset~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMP_Start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TEMP_Start,
	combout => \TEMP_Start~combout\);

-- Location: LCCOMB_X31_Y35_N8
\TEMP_SigOUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP_SigOUT~1_combout\ = (!Contador(3) & (!Contador(6) & (!Contador(5) & Contador(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Contador(3),
	datab => Contador(6),
	datac => Contador(5),
	datad => Contador(4),
	combout => \TEMP_SigOUT~1_combout\);

-- Location: LCCOMB_X31_Y35_N16
\Contador[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Contador[1]~10_combout\ = (Contador(1) & (!\Contador[0]~9\)) # (!Contador(1) & ((\Contador[0]~9\) # (GND)))
-- \Contador[1]~11\ = CARRY((!\Contador[0]~9\) # (!Contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Contador(1),
	datad => VCC,
	cin => \Contador[0]~9\,
	combout => \Contador[1]~10_combout\,
	cout => \Contador[1]~11\);

-- Location: LCFF_X31_Y35_N17
\Contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TEMP_Clock~clkctrl_outclk\,
	datain => \Contador[1]~10_combout\,
	aclr => \TEMP_Reset~clkctrl_outclk\,
	sclr => \ALT_INV_TEMP_Start~combout\,
	ena => \TEMP_SigOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Contador(1));

-- Location: LCCOMB_X31_Y35_N6
\TEMP_SigOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP_SigOUT~0_combout\ = (\TEMP_Start~combout\ & (Contador(2) & (Contador(1) & !Contador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP_Start~combout\,
	datab => Contador(2),
	datac => Contador(1),
	datad => Contador(0),
	combout => \TEMP_SigOUT~0_combout\);

-- Location: LCCOMB_X31_Y35_N2
\TEMP_SigOUT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP_SigOUT~3_combout\ = ((!\TEMP_SigOUT~0_combout\) # (!\TEMP_SigOUT~1_combout\)) # (!Contador(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Contador(7),
	datac => \TEMP_SigOUT~1_combout\,
	datad => \TEMP_SigOUT~0_combout\,
	combout => \TEMP_SigOUT~3_combout\);

-- Location: LCFF_X31_Y35_N15
\Contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TEMP_Clock~clkctrl_outclk\,
	datain => \Contador[0]~8_combout\,
	aclr => \TEMP_Reset~clkctrl_outclk\,
	sclr => \ALT_INV_TEMP_Start~combout\,
	ena => \TEMP_SigOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Contador(0));

-- Location: LCCOMB_X31_Y35_N18
\Contador[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Contador[2]~12_combout\ = (Contador(2) & (\Contador[1]~11\ $ (GND))) # (!Contador(2) & (!\Contador[1]~11\ & VCC))
-- \Contador[2]~13\ = CARRY((Contador(2) & !\Contador[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(2),
	datad => VCC,
	cin => \Contador[1]~11\,
	combout => \Contador[2]~12_combout\,
	cout => \Contador[2]~13\);

-- Location: LCFF_X31_Y35_N19
\Contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TEMP_Clock~clkctrl_outclk\,
	datain => \Contador[2]~12_combout\,
	aclr => \TEMP_Reset~clkctrl_outclk\,
	sclr => \ALT_INV_TEMP_Start~combout\,
	ena => \TEMP_SigOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Contador(2));

-- Location: LCCOMB_X31_Y35_N22
\Contador[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Contador[4]~16_combout\ = (Contador(4) & (\Contador[3]~15\ $ (GND))) # (!Contador(4) & (!\Contador[3]~15\ & VCC))
-- \Contador[4]~17\ = CARRY((Contador(4) & !\Contador[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(4),
	datad => VCC,
	cin => \Contador[3]~15\,
	combout => \Contador[4]~16_combout\,
	cout => \Contador[4]~17\);

-- Location: LCFF_X31_Y35_N23
\Contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TEMP_Clock~clkctrl_outclk\,
	datain => \Contador[4]~16_combout\,
	aclr => \TEMP_Reset~clkctrl_outclk\,
	sclr => \ALT_INV_TEMP_Start~combout\,
	ena => \TEMP_SigOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Contador(4));

-- Location: LCCOMB_X31_Y35_N24
\Contador[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Contador[5]~18_combout\ = (Contador(5) & (!\Contador[4]~17\)) # (!Contador(5) & ((\Contador[4]~17\) # (GND)))
-- \Contador[5]~19\ = CARRY((!\Contador[4]~17\) # (!Contador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(5),
	datad => VCC,
	cin => \Contador[4]~17\,
	combout => \Contador[5]~18_combout\,
	cout => \Contador[5]~19\);

-- Location: LCFF_X31_Y35_N25
\Contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TEMP_Clock~clkctrl_outclk\,
	datain => \Contador[5]~18_combout\,
	aclr => \TEMP_Reset~clkctrl_outclk\,
	sclr => \ALT_INV_TEMP_Start~combout\,
	ena => \TEMP_SigOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Contador(5));

-- Location: LCCOMB_X31_Y35_N26
\Contador[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Contador[6]~20_combout\ = (Contador(6) & (\Contador[5]~19\ $ (GND))) # (!Contador(6) & (!\Contador[5]~19\ & VCC))
-- \Contador[6]~21\ = CARRY((Contador(6) & !\Contador[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(6),
	datad => VCC,
	cin => \Contador[5]~19\,
	combout => \Contador[6]~20_combout\,
	cout => \Contador[6]~21\);

-- Location: LCFF_X31_Y35_N27
\Contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TEMP_Clock~clkctrl_outclk\,
	datain => \Contador[6]~20_combout\,
	aclr => \TEMP_Reset~clkctrl_outclk\,
	sclr => \ALT_INV_TEMP_Start~combout\,
	ena => \TEMP_SigOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Contador(6));

-- Location: LCCOMB_X31_Y35_N28
\Contador[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Contador[7]~22_combout\ = \Contador[6]~21\ $ (Contador(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Contador(7),
	cin => \Contador[6]~21\,
	combout => \Contador[7]~22_combout\);

-- Location: LCFF_X31_Y35_N29
\Contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TEMP_Clock~clkctrl_outclk\,
	datain => \Contador[7]~22_combout\,
	aclr => \TEMP_Reset~clkctrl_outclk\,
	sclr => \ALT_INV_TEMP_Start~combout\,
	ena => \TEMP_SigOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Contador(7));

-- Location: LCCOMB_X31_Y35_N12
\TEMP_SigOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP_SigOUT~2_combout\ = (\TEMP_SigOUT~reg0_regout\) # ((\TEMP_SigOUT~0_combout\ & (Contador(7) & \TEMP_SigOUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP_SigOUT~0_combout\,
	datab => Contador(7),
	datac => \TEMP_SigOUT~reg0_regout\,
	datad => \TEMP_SigOUT~1_combout\,
	combout => \TEMP_SigOUT~2_combout\);

-- Location: LCFF_X31_Y35_N13
\TEMP_SigOUT~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TEMP_Clock~clkctrl_outclk\,
	datain => \TEMP_SigOUT~2_combout\,
	aclr => \TEMP_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TEMP_SigOUT~reg0_regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMP_SigOUT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TEMP_SigOUT~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMP_SigOUT);
END structure;


