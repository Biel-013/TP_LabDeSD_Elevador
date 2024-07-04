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

-- DATE "06/22/2024 03:23:44"

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

ENTITY 	Fileira IS
    PORT (
	FLR_Clock : IN std_logic;
	FLR_Reset : IN std_logic;
	FLR_Adicionar : IN std_logic;
	FLR_Retirar : IN std_logic;
	FLR_DataIN : IN std_logic_vector(7 DOWNTO 0);
	FLR_DataOUT : OUT std_logic_vector(7 DOWNTO 0);
	FLR_SigOUT : OUT std_logic
	);
END Fileira;

-- Design Ports Information
-- FLR_DataOUT[0]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FLR_DataOUT[1]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FLR_DataOUT[2]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FLR_DataOUT[3]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FLR_DataOUT[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FLR_DataOUT[5]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FLR_DataOUT[6]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FLR_DataOUT[7]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FLR_SigOUT	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FLR_DataIN[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_DataIN[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_DataIN[3]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_DataIN[2]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_DataIN[5]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_DataIN[4]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_DataIN[7]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_DataIN[6]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_Adicionar	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FLR_Retirar	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Fileira IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_FLR_Clock : std_logic;
SIGNAL ww_FLR_Reset : std_logic;
SIGNAL ww_FLR_Adicionar : std_logic;
SIGNAL ww_FLR_Retirar : std_logic;
SIGNAL ww_FLR_DataIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FLR_DataOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FLR_SigOUT : std_logic;
SIGNAL \FLR_Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FLR_Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \fileira_v[1][3]~regout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \fim[1]~0_combout\ : std_logic;
SIGNAL \FLR_Clock~combout\ : std_logic;
SIGNAL \FLR_Retirar~combout\ : std_logic;
SIGNAL \FLR_Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \FLR_Reset~combout\ : std_logic;
SIGNAL \FLR_Reset~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \fileira_v[0][5]~feeder_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \FLR_Adicionar~combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \fileira_v[2][4]~regout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \fileira_v[2][2]~regout\ : std_logic;
SIGNAL \fileira_v[2][3]~regout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \fileira_v[2][1]~feeder_combout\ : std_logic;
SIGNAL \fileira_v[2][1]~regout\ : std_logic;
SIGNAL \fileira_v[2][0]~feeder_combout\ : std_logic;
SIGNAL \fileira_v[2][0]~regout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \fim[0]~1_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \fileira_v[0][5]~regout\ : std_logic;
SIGNAL \fileira_v[0][4]~regout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \fileira_v[0][2]~regout\ : std_logic;
SIGNAL \fileira_v[0][3]~feeder_combout\ : std_logic;
SIGNAL \fileira_v[0][3]~regout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \fileira_v[0][6]~regout\ : std_logic;
SIGNAL \fileira_v[0][7]~regout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \fileira_v[3][7]~regout\ : std_logic;
SIGNAL \fileira_v[3][6]~feeder_combout\ : std_logic;
SIGNAL \fileira_v[3][6]~regout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \fileira_v[3][3]~regout\ : std_logic;
SIGNAL \fileira_v[3][2]~regout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \fileira_v[3][5]~regout\ : std_logic;
SIGNAL \fileira_v[3][4]~regout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \count[20]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \inicio[1]~0_combout\ : std_logic;
SIGNAL \inicio[1]~1_combout\ : std_logic;
SIGNAL \inicio[0]~3_combout\ : std_logic;
SIGNAL \fileira_v[1][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \fileira_v[1][0]~regout\ : std_logic;
SIGNAL \fileira_v[0][0]~feeder_combout\ : std_logic;
SIGNAL \fileira_v[0][0]~regout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \inicio[1]~2_combout\ : std_logic;
SIGNAL \fileira_v[3][0]~regout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \fileira_v[3][1]~regout\ : std_logic;
SIGNAL \fileira_v[1][1]~regout\ : std_logic;
SIGNAL \fileira_v[0][1]~regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \fileira_v[1][2]~regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \fileira_v[1][4]~regout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \fileira_v[1][5]~regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \fileira_v[2][5]~regout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \fileira_v[2][6]~regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \fileira_v[1][6]~regout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \fileira_v[1][7]~regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \fileira_v[2][7]~regout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL inicio : std_logic_vector(31 DOWNTO 0);
SIGNAL fim : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \FLR_DataIN~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Equal5~2_combout\ : std_logic;

BEGIN

ww_FLR_Clock <= FLR_Clock;
ww_FLR_Reset <= FLR_Reset;
ww_FLR_Adicionar <= FLR_Adicionar;
ww_FLR_Retirar <= FLR_Retirar;
ww_FLR_DataIN <= FLR_DataIN;
FLR_DataOUT <= ww_FLR_DataOUT;
FLR_SigOUT <= ww_FLR_SigOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FLR_Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FLR_Clock~combout\);

\FLR_Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FLR_Reset~combout\);
\ALT_INV_Equal5~2_combout\ <= NOT \Equal5~2_combout\;

-- Location: LCCOMB_X57_Y35_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((count(2) $ (\inicio[1]~1_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((count(2) & ((\inicio[1]~1_combout\) # (!\Add1~3\))) # (!count(2) & (\inicio[1]~1_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X57_Y35_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (count(3) & ((\inicio[1]~1_combout\ & (\Add1~5\ & VCC)) # (!\inicio[1]~1_combout\ & (!\Add1~5\)))) # (!count(3) & ((\inicio[1]~1_combout\ & (!\Add1~5\)) # (!\inicio[1]~1_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((count(3) & (!\inicio[1]~1_combout\ & !\Add1~5\)) # (!count(3) & ((!\Add1~5\) # (!\inicio[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X57_Y35_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((count(8) $ (\inicio[1]~1_combout\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((count(8) & ((\inicio[1]~1_combout\) # (!\Add1~15\))) # (!count(8) & (\inicio[1]~1_combout\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X57_Y34_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((count(26) $ (\inicio[1]~1_combout\ $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((count(26) & ((\inicio[1]~1_combout\) # (!\Add1~51\))) # (!count(26) & (\inicio[1]~1_combout\ & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X57_Y34_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (count(29) & ((\inicio[1]~1_combout\ & (\Add1~57\ & VCC)) # (!\inicio[1]~1_combout\ & (!\Add1~57\)))) # (!count(29) & ((\inicio[1]~1_combout\ & (!\Add1~57\)) # (!\inicio[1]~1_combout\ & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((count(29) & (!\inicio[1]~1_combout\ & !\Add1~57\)) # (!count(29) & ((!\Add1~57\) # (!\inicio[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCFF_X60_Y35_N29
\fileira_v[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(3),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[1][3]~regout\);

-- Location: LCFF_X58_Y35_N9
\fim[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \fim[1]~0_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => fim(1));

-- Location: LCFF_X57_Y34_N27
\count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~58_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(29));

-- Location: LCFF_X57_Y34_N21
\count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~52_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(26));

-- Location: LCCOMB_X56_Y35_N20
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!count(17) & (!count(15) & (!count(16) & !count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(15),
	datac => count(16),
	datad => count(18),
	combout => \LessThan1~3_combout\);

-- Location: LCFF_X57_Y35_N17
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~16_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCFF_X57_Y35_N7
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~6_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCFF_X57_Y35_N5
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~4_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X59_Y35_N26
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\FLR_DataIN~combout\(0) & (\fileira_v[0][0]~regout\ & (\FLR_DataIN~combout\(1) $ (!\fileira_v[0][1]~regout\)))) # (!\FLR_DataIN~combout\(0) & (!\fileira_v[0][0]~regout\ & (\FLR_DataIN~combout\(1) $ (!\fileira_v[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(0),
	datab => \FLR_DataIN~combout\(1),
	datac => \fileira_v[0][0]~regout\,
	datad => \fileira_v[0][1]~regout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X59_Y35_N6
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\FLR_DataIN~combout\(2) & (!\FLR_DataIN~combout\(3) & (!\FLR_DataIN~combout\(1) & !\FLR_DataIN~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(2),
	datab => \FLR_DataIN~combout\(3),
	datac => \FLR_DataIN~combout\(1),
	datad => \FLR_DataIN~combout\(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X59_Y35_N16
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\FLR_DataIN~combout\(7) & (\fileira_v[2][7]~regout\ & (\FLR_DataIN~combout\(6) $ (!\fileira_v[2][6]~regout\)))) # (!\FLR_DataIN~combout\(7) & (!\fileira_v[2][7]~regout\ & (\FLR_DataIN~combout\(6) $ (!\fileira_v[2][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(7),
	datab => \fileira_v[2][7]~regout\,
	datac => \FLR_DataIN~combout\(6),
	datad => \fileira_v[2][6]~regout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X61_Y35_N4
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\FLR_DataIN~combout\(1) & (\fileira_v[3][1]~regout\ & (\fileira_v[3][0]~regout\ $ (!\FLR_DataIN~combout\(0))))) # (!\FLR_DataIN~combout\(1) & (!\fileira_v[3][1]~regout\ & (\fileira_v[3][0]~regout\ $ (!\FLR_DataIN~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(1),
	datab => \fileira_v[3][1]~regout\,
	datac => \fileira_v[3][0]~regout\,
	datad => \FLR_DataIN~combout\(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X60_Y35_N0
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\FLR_DataIN~combout\(0) & (\fileira_v[1][0]~regout\ & (\FLR_DataIN~combout\(1) $ (!\fileira_v[1][1]~regout\)))) # (!\FLR_DataIN~combout\(0) & (!\fileira_v[1][0]~regout\ & (\FLR_DataIN~combout\(1) $ (!\fileira_v[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(0),
	datab => \FLR_DataIN~combout\(1),
	datac => \fileira_v[1][0]~regout\,
	datad => \fileira_v[1][1]~regout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X60_Y35_N28
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\FLR_DataIN~combout\(2) & (\fileira_v[1][2]~regout\ & (\FLR_DataIN~combout\(3) $ (!\fileira_v[1][3]~regout\)))) # (!\FLR_DataIN~combout\(2) & (!\fileira_v[1][2]~regout\ & (\FLR_DataIN~combout\(3) $ (!\fileira_v[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(2),
	datab => \FLR_DataIN~combout\(3),
	datac => \fileira_v[1][3]~regout\,
	datad => \fileira_v[1][2]~regout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X60_Y35_N8
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\FLR_DataIN~combout\(5) & (\fileira_v[1][5]~regout\ & (\FLR_DataIN~combout\(4) $ (!\fileira_v[1][4]~regout\)))) # (!\FLR_DataIN~combout\(5) & (!\fileira_v[1][5]~regout\ & (\FLR_DataIN~combout\(4) $ (!\fileira_v[1][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(5),
	datab => \FLR_DataIN~combout\(4),
	datac => \fileira_v[1][5]~regout\,
	datad => \fileira_v[1][4]~regout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X60_Y35_N4
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\FLR_DataIN~combout\(6) & (\fileira_v[1][6]~regout\ & (\FLR_DataIN~combout\(7) $ (!\fileira_v[1][7]~regout\)))) # (!\FLR_DataIN~combout\(6) & (!\fileira_v[1][6]~regout\ & (\FLR_DataIN~combout\(7) $ (!\fileira_v[1][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(6),
	datab => \FLR_DataIN~combout\(7),
	datac => \fileira_v[1][7]~regout\,
	datad => \fileira_v[1][6]~regout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X59_Y35_N24
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~2_combout\ & (\Equal1~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X58_Y35_N8
\fim[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fim[1]~0_combout\ = fim(1) $ (((fim(0) & \Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fim(0),
	datac => fim(1),
	datad => \Decoder0~7_combout\,
	combout => \fim[1]~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_Clock~I\ : cycloneii_io
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
	padio => ww_FLR_Clock,
	combout => \FLR_Clock~combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_Retirar~I\ : cycloneii_io
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
	padio => ww_FLR_Retirar,
	combout => \FLR_Retirar~combout\);

-- Location: CLKCTRL_G3
\FLR_Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FLR_Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FLR_Clock~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y35_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count(0) $ (VCC)
-- \Add1~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_Reset~I\ : cycloneii_io
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
	padio => ww_FLR_Reset,
	combout => \FLR_Reset~combout\);

-- Location: CLKCTRL_G1
\FLR_Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FLR_Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FLR_Reset~clkctrl_outclk\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_DataIN[7]~I\ : cycloneii_io
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
	padio => ww_FLR_DataIN(7),
	combout => \FLR_DataIN~combout\(7));

-- Location: LCCOMB_X57_Y35_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count(1) & ((\inicio[1]~1_combout\ & (\Add1~1\ & VCC)) # (!\inicio[1]~1_combout\ & (!\Add1~1\)))) # (!count(1) & ((\inicio[1]~1_combout\ & (!\Add1~1\)) # (!\inicio[1]~1_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((count(1) & (!\inicio[1]~1_combout\ & !\Add1~1\)) # (!count(1) & ((!\Add1~1\) # (!\inicio[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X57_Y35_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((count(4) $ (\inicio[1]~1_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((count(4) & ((\inicio[1]~1_combout\) # (!\Add1~7\))) # (!count(4) & (\inicio[1]~1_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X57_Y35_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (count(5) & ((\inicio[1]~1_combout\ & (\Add1~9\ & VCC)) # (!\inicio[1]~1_combout\ & (!\Add1~9\)))) # (!count(5) & ((\inicio[1]~1_combout\ & (!\Add1~9\)) # (!\inicio[1]~1_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((count(5) & (!\inicio[1]~1_combout\ & !\Add1~9\)) # (!count(5) & ((!\Add1~9\) # (!\inicio[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X57_Y35_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((count(6) $ (\inicio[1]~1_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((count(6) & ((\inicio[1]~1_combout\) # (!\Add1~11\))) # (!count(6) & (\inicio[1]~1_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X57_Y35_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\inicio[1]~1_combout\ & ((count(7) & (\Add1~13\ & VCC)) # (!count(7) & (!\Add1~13\)))) # (!\inicio[1]~1_combout\ & ((count(7) & (!\Add1~13\)) # (!count(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\inicio[1]~1_combout\ & (!count(7) & !\Add1~13\)) # (!\inicio[1]~1_combout\ & ((!\Add1~13\) # (!count(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCFF_X57_Y35_N15
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~14_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X57_Y35_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\inicio[1]~1_combout\ & ((count(9) & (\Add1~17\ & VCC)) # (!count(9) & (!\Add1~17\)))) # (!\inicio[1]~1_combout\ & ((count(9) & (!\Add1~17\)) # (!count(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\inicio[1]~1_combout\ & (!count(9) & !\Add1~17\)) # (!\inicio[1]~1_combout\ & ((!\Add1~17\) # (!count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCFF_X57_Y35_N19
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~18_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X57_Y35_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\inicio[1]~1_combout\ $ (count(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\inicio[1]~1_combout\ & ((count(10)) # (!\Add1~19\))) # (!\inicio[1]~1_combout\ & (count(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCFF_X57_Y35_N21
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~20_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X57_Y35_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\inicio[1]~1_combout\ & ((count(11) & (\Add1~21\ & VCC)) # (!count(11) & (!\Add1~21\)))) # (!\inicio[1]~1_combout\ & ((count(11) & (!\Add1~21\)) # (!count(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\inicio[1]~1_combout\ & (!count(11) & !\Add1~21\)) # (!\inicio[1]~1_combout\ & ((!\Add1~21\) # (!count(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCFF_X57_Y35_N23
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~22_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X57_Y35_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((count(12) $ (\inicio[1]~1_combout\ $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((count(12) & ((\inicio[1]~1_combout\) # (!\Add1~23\))) # (!count(12) & (\inicio[1]~1_combout\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X57_Y35_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\inicio[1]~1_combout\ & ((count(13) & (\Add1~25\ & VCC)) # (!count(13) & (!\Add1~25\)))) # (!\inicio[1]~1_combout\ & ((count(13) & (!\Add1~25\)) # (!count(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\inicio[1]~1_combout\ & (!count(13) & !\Add1~25\)) # (!\inicio[1]~1_combout\ & ((!\Add1~25\) # (!count(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCFF_X57_Y35_N27
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~26_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X57_Y35_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\inicio[1]~1_combout\ $ (count(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\inicio[1]~1_combout\ & ((count(14)) # (!\Add1~27\))) # (!\inicio[1]~1_combout\ & (count(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCFF_X57_Y35_N29
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~28_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCCOMB_X57_Y35_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\inicio[1]~1_combout\ & ((count(15) & (\Add1~29\ & VCC)) # (!count(15) & (!\Add1~29\)))) # (!\inicio[1]~1_combout\ & ((count(15) & (!\Add1~29\)) # (!count(15) & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\inicio[1]~1_combout\ & (!count(15) & !\Add1~29\)) # (!\inicio[1]~1_combout\ & ((!\Add1~29\) # (!count(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCFF_X57_Y35_N31
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~30_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X57_Y34_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\inicio[1]~1_combout\ $ (count(16) $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\inicio[1]~1_combout\ & ((count(16)) # (!\Add1~31\))) # (!\inicio[1]~1_combout\ & (count(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCFF_X57_Y34_N1
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~32_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X57_Y34_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\inicio[1]~1_combout\ & ((count(17) & (\Add1~33\ & VCC)) # (!count(17) & (!\Add1~33\)))) # (!\inicio[1]~1_combout\ & ((count(17) & (!\Add1~33\)) # (!count(17) & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\inicio[1]~1_combout\ & (!count(17) & !\Add1~33\)) # (!\inicio[1]~1_combout\ & ((!\Add1~33\) # (!count(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCFF_X57_Y34_N3
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~34_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LCCOMB_X57_Y34_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\inicio[1]~1_combout\ $ (count(18) $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\inicio[1]~1_combout\ & ((count(18)) # (!\Add1~35\))) # (!\inicio[1]~1_combout\ & (count(18) & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCFF_X57_Y34_N5
\count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~36_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LCCOMB_X57_Y34_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\inicio[1]~1_combout\ & ((count(19) & (\Add1~37\ & VCC)) # (!count(19) & (!\Add1~37\)))) # (!\inicio[1]~1_combout\ & ((count(19) & (!\Add1~37\)) # (!count(19) & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\inicio[1]~1_combout\ & (!count(19) & !\Add1~37\)) # (!\inicio[1]~1_combout\ & ((!\Add1~37\) # (!count(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCFF_X57_Y34_N7
\count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~38_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LCCOMB_X57_Y34_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\inicio[1]~1_combout\ $ (count(20) $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\inicio[1]~1_combout\ & ((count(20)) # (!\Add1~39\))) # (!\inicio[1]~1_combout\ & (count(20) & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCFF_X57_Y34_N9
\count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~40_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LCCOMB_X57_Y34_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\inicio[1]~1_combout\ & ((count(21) & (\Add1~41\ & VCC)) # (!count(21) & (!\Add1~41\)))) # (!\inicio[1]~1_combout\ & ((count(21) & (!\Add1~41\)) # (!count(21) & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\inicio[1]~1_combout\ & (!count(21) & !\Add1~41\)) # (!\inicio[1]~1_combout\ & ((!\Add1~41\) # (!count(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCFF_X57_Y34_N11
\count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~42_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LCCOMB_X57_Y34_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\inicio[1]~1_combout\ $ (count(22) $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\inicio[1]~1_combout\ & ((count(22)) # (!\Add1~43\))) # (!\inicio[1]~1_combout\ & (count(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCFF_X57_Y34_N13
\count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~44_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LCCOMB_X57_Y34_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\inicio[1]~1_combout\ & ((count(23) & (\Add1~45\ & VCC)) # (!count(23) & (!\Add1~45\)))) # (!\inicio[1]~1_combout\ & ((count(23) & (!\Add1~45\)) # (!count(23) & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((\inicio[1]~1_combout\ & (!count(23) & !\Add1~45\)) # (!\inicio[1]~1_combout\ & ((!\Add1~45\) # (!count(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inicio[1]~1_combout\,
	datab => count(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCFF_X57_Y34_N15
\count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~46_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LCCOMB_X57_Y34_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((count(24) $ (\inicio[1]~1_combout\ $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((count(24) & ((\inicio[1]~1_combout\) # (!\Add1~47\))) # (!count(24) & (\inicio[1]~1_combout\ & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X57_Y34_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (count(25) & ((\inicio[1]~1_combout\ & (\Add1~49\ & VCC)) # (!\inicio[1]~1_combout\ & (!\Add1~49\)))) # (!count(25) & ((\inicio[1]~1_combout\ & (!\Add1~49\)) # (!\inicio[1]~1_combout\ & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((count(25) & (!\inicio[1]~1_combout\ & !\Add1~49\)) # (!count(25) & ((!\Add1~49\) # (!\inicio[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X57_Y34_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (count(27) & ((\inicio[1]~1_combout\ & (\Add1~53\ & VCC)) # (!\inicio[1]~1_combout\ & (!\Add1~53\)))) # (!count(27) & ((\inicio[1]~1_combout\ & (!\Add1~53\)) # (!\inicio[1]~1_combout\ & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((count(27) & (!\inicio[1]~1_combout\ & !\Add1~53\)) # (!count(27) & ((!\Add1~53\) # (!\inicio[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCFF_X57_Y34_N23
\count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~54_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(27));

-- Location: LCCOMB_X57_Y34_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((count(28) $ (\inicio[1]~1_combout\ $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((count(28) & ((\inicio[1]~1_combout\) # (!\Add1~55\))) # (!count(28) & (\inicio[1]~1_combout\ & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X57_Y34_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((count(30) $ (\inicio[1]~1_combout\ $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((count(30) & ((\inicio[1]~1_combout\) # (!\Add1~59\))) # (!count(30) & (\inicio[1]~1_combout\ & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => \inicio[1]~1_combout\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCFF_X57_Y34_N29
\count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~60_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(30));

-- Location: LCFF_X57_Y34_N25
\count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~56_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(28));

-- Location: LCCOMB_X56_Y34_N0
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!count(29) & (!count(27) & (!count(30) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(27),
	datac => count(30),
	datad => count(28),
	combout => \LessThan1~0_combout\);

-- Location: LCFF_X57_Y34_N19
\count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~50_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LCFF_X57_Y34_N17
\count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~48_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(24));

-- Location: LCCOMB_X56_Y35_N24
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!count(26) & (!count(25) & (!count(23) & !count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(25),
	datac => count(23),
	datad => count(24),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y35_N10
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!count(19) & (!count(21) & (!count(20) & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(21),
	datac => count(20),
	datad => count(22),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X56_Y35_N18
\LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~3_combout\ & (\LessThan1~0_combout\ & (\LessThan1~1_combout\ & \LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X57_Y34_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = count(31) $ (\Add1~61\ $ (\inicio[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(31),
	datad => \inicio[1]~1_combout\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCFF_X57_Y34_N31
\count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~62_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(31));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_DataIN[5]~I\ : cycloneii_io
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
	padio => ww_FLR_DataIN(5),
	combout => \FLR_DataIN~combout\(5));

-- Location: LCCOMB_X58_Y35_N12
\fileira_v[0][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fileira_v[0][5]~feeder_combout\ = \FLR_DataIN~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLR_DataIN~combout\(5),
	combout => \fileira_v[0][5]~feeder_combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_DataIN[4]~I\ : cycloneii_io
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
	padio => ww_FLR_DataIN(4),
	combout => \FLR_DataIN~combout\(4));

-- Location: LCCOMB_X59_Y35_N2
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!\FLR_DataIN~combout\(6) & (!\FLR_DataIN~combout\(7) & (!\FLR_DataIN~combout\(5) & !\FLR_DataIN~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(6),
	datab => \FLR_DataIN~combout\(7),
	datac => \FLR_DataIN~combout\(5),
	datad => \FLR_DataIN~combout\(4),
	combout => \Equal4~1_combout\);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_Adicionar~I\ : cycloneii_io
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
	padio => ww_FLR_Adicionar,
	combout => \FLR_Adicionar~combout\);

-- Location: LCCOMB_X60_Y35_N18
\Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (fim(1) & (\Decoder0~0_combout\ & (\Decoder0~2_combout\ & !fim(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fim(1),
	datab => \Decoder0~0_combout\,
	datac => \Decoder0~2_combout\,
	datad => fim(0),
	combout => \Decoder0~3_combout\);

-- Location: LCFF_X59_Y35_N31
\fileira_v[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(4),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[2][4]~regout\);

-- Location: LCCOMB_X58_Y35_N4
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\fileira_v[2][5]~regout\ & (\FLR_DataIN~combout\(5) & (\FLR_DataIN~combout\(4) $ (!\fileira_v[2][4]~regout\)))) # (!\fileira_v[2][5]~regout\ & (!\FLR_DataIN~combout\(5) & (\FLR_DataIN~combout\(4) $ (!\fileira_v[2][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fileira_v[2][5]~regout\,
	datab => \FLR_DataIN~combout\(5),
	datac => \FLR_DataIN~combout\(4),
	datad => \fileira_v[2][4]~regout\,
	combout => \Equal2~2_combout\);

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_DataIN[2]~I\ : cycloneii_io
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
	padio => ww_FLR_DataIN(2),
	combout => \FLR_DataIN~combout\(2));

-- Location: LCFF_X61_Y35_N9
\fileira_v[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(2),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[2][2]~regout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_DataIN[3]~I\ : cycloneii_io
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
	padio => ww_FLR_DataIN(3),
	combout => \FLR_DataIN~combout\(3));

-- Location: LCFF_X61_Y35_N29
\fileira_v[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(3),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[2][3]~regout\);

-- Location: LCCOMB_X61_Y35_N6
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\FLR_DataIN~combout\(2) & (\fileira_v[2][2]~regout\ & (\FLR_DataIN~combout\(3) $ (!\fileira_v[2][3]~regout\)))) # (!\FLR_DataIN~combout\(2) & (!\fileira_v[2][2]~regout\ & (\FLR_DataIN~combout\(3) $ (!\fileira_v[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(2),
	datab => \fileira_v[2][2]~regout\,
	datac => \FLR_DataIN~combout\(3),
	datad => \fileira_v[2][3]~regout\,
	combout => \Equal2~1_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_DataIN[1]~I\ : cycloneii_io
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
	padio => ww_FLR_DataIN(1),
	combout => \FLR_DataIN~combout\(1));

-- Location: LCCOMB_X61_Y35_N16
\fileira_v[2][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fileira_v[2][1]~feeder_combout\ = \FLR_DataIN~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLR_DataIN~combout\(1),
	combout => \fileira_v[2][1]~feeder_combout\);

-- Location: LCFF_X61_Y35_N17
\fileira_v[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \fileira_v[2][1]~feeder_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[2][1]~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_DataIN[0]~I\ : cycloneii_io
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
	padio => ww_FLR_DataIN(0),
	combout => \FLR_DataIN~combout\(0));

-- Location: LCCOMB_X61_Y35_N12
\fileira_v[2][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fileira_v[2][0]~feeder_combout\ = \FLR_DataIN~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLR_DataIN~combout\(0),
	combout => \fileira_v[2][0]~feeder_combout\);

-- Location: LCFF_X61_Y35_N13
\fileira_v[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \fileira_v[2][0]~feeder_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[2][0]~regout\);

-- Location: LCCOMB_X61_Y35_N20
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\FLR_DataIN~combout\(0) & (\fileira_v[2][0]~regout\ & (\FLR_DataIN~combout\(1) $ (!\fileira_v[2][1]~regout\)))) # (!\FLR_DataIN~combout\(0) & (!\fileira_v[2][0]~regout\ & (\FLR_DataIN~combout\(1) $ (!\fileira_v[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(0),
	datab => \FLR_DataIN~combout\(1),
	datac => \fileira_v[2][1]~regout\,
	datad => \fileira_v[2][0]~regout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X58_Y35_N10
\Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\ & (\Equal2~2_combout\ & (\Equal2~1_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X58_Y35_N24
\Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\FLR_Adicionar~combout\ & (!\Equal2~4_combout\ & ((!\Equal4~1_combout\) # (!\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal4~1_combout\,
	datac => \FLR_Adicionar~combout\,
	datad => \Equal2~4_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X59_Y35_N18
\Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\Equal1~4_combout\ & (\Decoder0~0_combout\ & (!\Equal3~4_combout\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Decoder0~0_combout\,
	datac => \Equal3~4_combout\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X58_Y35_N2
\fim[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fim[0]~1_combout\ = fim(0) $ (\Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fim(0),
	datad => \Decoder0~7_combout\,
	combout => \fim[0]~1_combout\);

-- Location: LCFF_X58_Y35_N3
\fim[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \fim[0]~1_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => fim(0));

-- Location: LCCOMB_X58_Y35_N28
\Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!fim(1) & (\Decoder0~2_combout\ & (!fim(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fim(1),
	datab => \Decoder0~2_combout\,
	datac => fim(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCFF_X58_Y35_N13
\fileira_v[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \fileira_v[0][5]~feeder_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[0][5]~regout\);

-- Location: LCFF_X59_Y35_N29
\fileira_v[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(4),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[0][4]~regout\);

-- Location: LCCOMB_X58_Y35_N0
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\FLR_DataIN~combout\(4) & (\fileira_v[0][4]~regout\ & (\FLR_DataIN~combout\(5) $ (!\fileira_v[0][5]~regout\)))) # (!\FLR_DataIN~combout\(4) & (!\fileira_v[0][4]~regout\ & (\FLR_DataIN~combout\(5) $ (!\fileira_v[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(4),
	datab => \FLR_DataIN~combout\(5),
	datac => \fileira_v[0][5]~regout\,
	datad => \fileira_v[0][4]~regout\,
	combout => \Equal0~2_combout\);

-- Location: LCFF_X58_Y35_N21
\fileira_v[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(2),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[0][2]~regout\);

-- Location: LCCOMB_X58_Y35_N22
\fileira_v[0][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fileira_v[0][3]~feeder_combout\ = \FLR_DataIN~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLR_DataIN~combout\(3),
	combout => \fileira_v[0][3]~feeder_combout\);

-- Location: LCFF_X58_Y35_N23
\fileira_v[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \fileira_v[0][3]~feeder_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[0][3]~regout\);

-- Location: LCCOMB_X58_Y35_N14
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\FLR_DataIN~combout\(2) & (\fileira_v[0][2]~regout\ & (\FLR_DataIN~combout\(3) $ (!\fileira_v[0][3]~regout\)))) # (!\FLR_DataIN~combout\(2) & (!\fileira_v[0][2]~regout\ & (\FLR_DataIN~combout\(3) $ (!\fileira_v[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(2),
	datab => \FLR_DataIN~combout\(3),
	datac => \fileira_v[0][2]~regout\,
	datad => \fileira_v[0][3]~regout\,
	combout => \Equal0~1_combout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FLR_DataIN[6]~I\ : cycloneii_io
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
	padio => ww_FLR_DataIN(6),
	combout => \FLR_DataIN~combout\(6));

-- Location: LCFF_X59_Y35_N17
\fileira_v[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(6),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[0][6]~regout\);

-- Location: LCFF_X59_Y35_N13
\fileira_v[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(7),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[0][7]~regout\);

-- Location: LCCOMB_X59_Y35_N4
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\FLR_DataIN~combout\(6) & (\fileira_v[0][6]~regout\ & (\FLR_DataIN~combout\(7) $ (!\fileira_v[0][7]~regout\)))) # (!\FLR_DataIN~combout\(6) & (!\fileira_v[0][6]~regout\ & (\FLR_DataIN~combout\(7) $ (!\fileira_v[0][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(6),
	datab => \FLR_DataIN~combout\(7),
	datac => \fileira_v[0][6]~regout\,
	datad => \fileira_v[0][7]~regout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X58_Y35_N26
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X59_Y35_N22
\Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\Equal0~4_combout\ & ((count(31)) # ((\LessThan1~8_combout\ & \LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~8_combout\,
	datab => \LessThan1~4_combout\,
	datac => count(31),
	datad => \Equal0~4_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X60_Y35_N14
\Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (fim(1) & (\Decoder0~0_combout\ & (\Decoder0~2_combout\ & fim(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fim(1),
	datab => \Decoder0~0_combout\,
	datac => \Decoder0~2_combout\,
	datad => fim(0),
	combout => \Decoder0~6_combout\);

-- Location: LCFF_X60_Y35_N27
\fileira_v[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(7),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[3][7]~regout\);

-- Location: LCCOMB_X61_Y35_N24
\fileira_v[3][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fileira_v[3][6]~feeder_combout\ = \FLR_DataIN~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLR_DataIN~combout\(6),
	combout => \fileira_v[3][6]~feeder_combout\);

-- Location: LCFF_X61_Y35_N25
\fileira_v[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \fileira_v[3][6]~feeder_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[3][6]~regout\);

-- Location: LCCOMB_X60_Y35_N26
\Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (\FLR_DataIN~combout\(6) & (\fileira_v[3][6]~regout\ & (\FLR_DataIN~combout\(7) $ (!\fileira_v[3][7]~regout\)))) # (!\FLR_DataIN~combout\(6) & (!\fileira_v[3][6]~regout\ & (\FLR_DataIN~combout\(7) $ (!\fileira_v[3][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(6),
	datab => \FLR_DataIN~combout\(7),
	datac => \fileira_v[3][7]~regout\,
	datad => \fileira_v[3][6]~regout\,
	combout => \Equal3~3_combout\);

-- Location: LCFF_X61_Y35_N3
\fileira_v[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(3),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[3][3]~regout\);

-- Location: LCFF_X61_Y35_N23
\fileira_v[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(2),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[3][2]~regout\);

-- Location: LCCOMB_X61_Y35_N10
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\FLR_DataIN~combout\(2) & (\fileira_v[3][2]~regout\ & (\fileira_v[3][3]~regout\ $ (!\FLR_DataIN~combout\(3))))) # (!\FLR_DataIN~combout\(2) & (!\fileira_v[3][2]~regout\ & (\fileira_v[3][3]~regout\ $ (!\FLR_DataIN~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(2),
	datab => \fileira_v[3][3]~regout\,
	datac => \FLR_DataIN~combout\(3),
	datad => \fileira_v[3][2]~regout\,
	combout => \Equal3~1_combout\);

-- Location: LCFF_X61_Y35_N19
\fileira_v[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(5),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[3][5]~regout\);

-- Location: LCFF_X61_Y35_N1
\fileira_v[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(4),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[3][4]~regout\);

-- Location: LCCOMB_X61_Y35_N18
\Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\FLR_DataIN~combout\(5) & (\fileira_v[3][5]~regout\ & (\FLR_DataIN~combout\(4) $ (!\fileira_v[3][4]~regout\)))) # (!\FLR_DataIN~combout\(5) & (!\fileira_v[3][5]~regout\ & (\FLR_DataIN~combout\(4) $ (!\fileira_v[3][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_DataIN~combout\(5),
	datab => \FLR_DataIN~combout\(4),
	datac => \fileira_v[3][5]~regout\,
	datad => \fileira_v[3][4]~regout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X60_Y35_N10
\Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~0_combout\ & (\Equal3~3_combout\ & (\Equal3~1_combout\ & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X59_Y35_N28
\Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\Equal1~4_combout\ & (!\Equal3~4_combout\ & \Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal3~4_combout\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X58_Y35_N6
\count[20]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~0_combout\ = (\inicio[1]~1_combout\) # ((\Decoder0~2_combout\ & \Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~2_combout\,
	datac => \inicio[1]~1_combout\,
	datad => \Decoder0~0_combout\,
	combout => \count[20]~0_combout\);

-- Location: LCFF_X57_Y35_N1
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCFF_X57_Y35_N3
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~2_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X56_Y35_N2
\LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!count(8) & (!count(9) & (!count(7) & !count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(9),
	datac => count(7),
	datad => count(10),
	combout => \LessThan1~6_combout\);

-- Location: LCFF_X57_Y35_N25
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~24_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCCOMB_X56_Y35_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!count(13) & (!count(14) & (!count(11) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(14),
	datac => count(11),
	datad => count(12),
	combout => \LessThan1~5_combout\);

-- Location: LCFF_X57_Y35_N9
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~8_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCFF_X57_Y35_N13
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~12_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCFF_X57_Y35_N11
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \Add1~10_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCCOMB_X56_Y35_N0
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!count(3) & (!count(4) & (!count(6) & !count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => count(6),
	datad => count(5),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X56_Y35_N14
\LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (!count(2) & (\LessThan1~6_combout\ & (\LessThan1~5_combout\ & \LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \LessThan1~6_combout\,
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X56_Y35_N12
\inicio[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inicio[1]~0_combout\ = (!count(0) & (\LessThan1~8_combout\ & \LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => \LessThan1~8_combout\,
	datad => \LessThan1~4_combout\,
	combout => \inicio[1]~0_combout\);

-- Location: LCCOMB_X56_Y35_N6
\inicio[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inicio[1]~1_combout\ = (\FLR_Retirar~combout\ & (!count(31) & ((count(1)) # (!\inicio[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLR_Retirar~combout\,
	datab => count(1),
	datac => count(31),
	datad => \inicio[1]~0_combout\,
	combout => \inicio[1]~1_combout\);

-- Location: LCCOMB_X58_Y35_N18
\inicio[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inicio[0]~3_combout\ = \inicio[1]~1_combout\ $ (inicio(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio[1]~1_combout\,
	datac => inicio(0),
	combout => \inicio[0]~3_combout\);

-- Location: LCFF_X58_Y35_N19
\inicio[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \inicio[0]~3_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => inicio(0));

-- Location: LCCOMB_X60_Y35_N20
\fileira_v[1][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fileira_v[1][0]~feeder_combout\ = \FLR_DataIN~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLR_DataIN~combout\(0),
	combout => \fileira_v[1][0]~feeder_combout\);

-- Location: LCCOMB_X60_Y35_N24
\Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!fim(1) & (\Decoder0~2_combout\ & (fim(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fim(1),
	datab => \Decoder0~2_combout\,
	datac => fim(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCFF_X60_Y35_N21
\fileira_v[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \fileira_v[1][0]~feeder_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[1][0]~regout\);

-- Location: LCCOMB_X59_Y35_N8
\fileira_v[0][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fileira_v[0][0]~feeder_combout\ = \FLR_DataIN~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLR_DataIN~combout\(0),
	combout => \fileira_v[0][0]~feeder_combout\);

-- Location: LCFF_X59_Y35_N9
\fileira_v[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \fileira_v[0][0]~feeder_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[0][0]~regout\);

-- Location: LCCOMB_X60_Y35_N30
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (inicio(1) & (inicio(0))) # (!inicio(1) & ((inicio(0) & (\fileira_v[1][0]~regout\)) # (!inicio(0) & ((\fileira_v[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inicio(1),
	datab => inicio(0),
	datac => \fileira_v[1][0]~regout\,
	datad => \fileira_v[0][0]~regout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X58_Y35_N16
\inicio[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inicio[1]~2_combout\ = inicio(1) $ (((\inicio[1]~1_combout\ & inicio(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio[1]~1_combout\,
	datac => inicio(1),
	datad => inicio(0),
	combout => \inicio[1]~2_combout\);

-- Location: LCFF_X58_Y35_N17
\inicio[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	datain => \inicio[1]~2_combout\,
	aclr => \FLR_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => inicio(1));

-- Location: LCFF_X61_Y35_N15
\fileira_v[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(0),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[3][0]~regout\);

-- Location: LCCOMB_X61_Y35_N14
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\fileira_v[3][0]~regout\)) # (!inicio(1)))) # (!\Mux7~0_combout\ & (inicio(1) & ((\fileira_v[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => inicio(1),
	datac => \fileira_v[3][0]~regout\,
	datad => \fileira_v[2][0]~regout\,
	combout => \Mux7~1_combout\);

-- Location: LCFF_X61_Y35_N27
\fileira_v[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(1),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[3][1]~regout\);

-- Location: LCFF_X60_Y35_N13
\fileira_v[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(1),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[1][1]~regout\);

-- Location: LCFF_X59_Y35_N7
\fileira_v[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(1),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[0][1]~regout\);

-- Location: LCCOMB_X60_Y35_N12
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (inicio(1) & (inicio(0))) # (!inicio(1) & ((inicio(0) & (\fileira_v[1][1]~regout\)) # (!inicio(0) & ((\fileira_v[0][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inicio(1),
	datab => inicio(0),
	datac => \fileira_v[1][1]~regout\,
	datad => \fileira_v[0][1]~regout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X61_Y35_N26
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (inicio(1) & ((\Mux6~0_combout\ & ((\fileira_v[3][1]~regout\))) # (!\Mux6~0_combout\ & (\fileira_v[2][1]~regout\)))) # (!inicio(1) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fileira_v[2][1]~regout\,
	datab => inicio(1),
	datac => \fileira_v[3][1]~regout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCFF_X60_Y35_N23
\fileira_v[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(2),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[1][2]~regout\);

-- Location: LCCOMB_X61_Y35_N8
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (inicio(0) & (inicio(1))) # (!inicio(0) & ((inicio(1) & (\fileira_v[2][2]~regout\)) # (!inicio(1) & ((\fileira_v[0][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inicio(0),
	datab => inicio(1),
	datac => \fileira_v[2][2]~regout\,
	datad => \fileira_v[0][2]~regout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X61_Y35_N22
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (inicio(0) & ((\Mux5~0_combout\ & ((\fileira_v[3][2]~regout\))) # (!\Mux5~0_combout\ & (\fileira_v[1][2]~regout\)))) # (!inicio(0) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inicio(0),
	datab => \fileira_v[1][2]~regout\,
	datac => \fileira_v[3][2]~regout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X59_Y35_N20
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (inicio(1) & (((inicio(0))))) # (!inicio(1) & ((inicio(0) & (\fileira_v[1][3]~regout\)) # (!inicio(0) & ((\fileira_v[0][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fileira_v[1][3]~regout\,
	datab => inicio(1),
	datac => inicio(0),
	datad => \fileira_v[0][3]~regout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X61_Y35_N2
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\fileira_v[3][3]~regout\)) # (!inicio(1)))) # (!\Mux4~0_combout\ & (inicio(1) & ((\fileira_v[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => inicio(1),
	datac => \fileira_v[3][3]~regout\,
	datad => \fileira_v[2][3]~regout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X59_Y35_N30
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (inicio(0) & (((inicio(1))))) # (!inicio(0) & ((inicio(1) & ((\fileira_v[2][4]~regout\))) # (!inicio(1) & (\fileira_v[0][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inicio(0),
	datab => \fileira_v[0][4]~regout\,
	datac => \fileira_v[2][4]~regout\,
	datad => inicio(1),
	combout => \Mux3~0_combout\);

-- Location: LCFF_X60_Y35_N3
\fileira_v[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(4),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[1][4]~regout\);

-- Location: LCCOMB_X60_Y35_N2
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\fileira_v[3][4]~regout\) # ((!inicio(0))))) # (!\Mux3~0_combout\ & (((\fileira_v[1][4]~regout\ & inicio(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \fileira_v[3][4]~regout\,
	datac => \fileira_v[1][4]~regout\,
	datad => inicio(0),
	combout => \Mux3~1_combout\);

-- Location: LCFF_X60_Y35_N9
\fileira_v[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(5),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[1][5]~regout\);

-- Location: LCCOMB_X59_Y35_N0
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (inicio(0) & ((inicio(1)) # ((\fileira_v[1][5]~regout\)))) # (!inicio(0) & (!inicio(1) & ((\fileira_v[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inicio(0),
	datab => inicio(1),
	datac => \fileira_v[1][5]~regout\,
	datad => \fileira_v[0][5]~regout\,
	combout => \Mux2~0_combout\);

-- Location: LCFF_X59_Y35_N3
\fileira_v[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(5),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[2][5]~regout\);

-- Location: LCCOMB_X58_Y35_N30
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (inicio(1) & ((\Mux2~0_combout\ & (\fileira_v[3][5]~regout\)) # (!\Mux2~0_combout\ & ((\fileira_v[2][5]~regout\))))) # (!inicio(1) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inicio(1),
	datab => \fileira_v[3][5]~regout\,
	datac => \Mux2~0_combout\,
	datad => \fileira_v[2][5]~regout\,
	combout => \Mux2~1_combout\);

-- Location: LCFF_X59_Y35_N11
\fileira_v[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(6),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[2][6]~regout\);

-- Location: LCCOMB_X59_Y35_N10
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (inicio(0) & (((inicio(1))))) # (!inicio(0) & ((inicio(1) & ((\fileira_v[2][6]~regout\))) # (!inicio(1) & (\fileira_v[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fileira_v[0][6]~regout\,
	datab => inicio(0),
	datac => \fileira_v[2][6]~regout\,
	datad => inicio(1),
	combout => \Mux1~0_combout\);

-- Location: LCFF_X60_Y35_N7
\fileira_v[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(6),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[1][6]~regout\);

-- Location: LCCOMB_X60_Y35_N6
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\fileira_v[3][6]~regout\)) # (!inicio(0)))) # (!\Mux1~0_combout\ & (inicio(0) & (\fileira_v[1][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => inicio(0),
	datac => \fileira_v[1][6]~regout\,
	datad => \fileira_v[3][6]~regout\,
	combout => \Mux1~1_combout\);

-- Location: LCFF_X60_Y35_N5
\fileira_v[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(7),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[1][7]~regout\);

-- Location: LCCOMB_X59_Y35_N12
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (inicio(0) & ((\fileira_v[1][7]~regout\) # ((inicio(1))))) # (!inicio(0) & (((\fileira_v[0][7]~regout\ & !inicio(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inicio(0),
	datab => \fileira_v[1][7]~regout\,
	datac => \fileira_v[0][7]~regout\,
	datad => inicio(1),
	combout => \Mux0~0_combout\);

-- Location: LCFF_X59_Y35_N15
\fileira_v[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FLR_Clock~clkctrl_outclk\,
	sdata => \FLR_DataIN~combout\(7),
	aclr => \FLR_Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fileira_v[2][7]~regout\);

-- Location: LCCOMB_X59_Y35_N14
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\fileira_v[3][7]~regout\) # ((!inicio(1))))) # (!\Mux0~0_combout\ & (((\fileira_v[2][7]~regout\ & inicio(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fileira_v[3][7]~regout\,
	datab => \Mux0~0_combout\,
	datac => \fileira_v[2][7]~regout\,
	datad => inicio(1),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X60_Y35_N16
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\Mux3~1_combout\ & (!\Mux1~1_combout\ & (!\Mux2~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X61_Y35_N30
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\Mux6~1_combout\ & (!\Mux5~1_combout\ & (!\Mux7~1_combout\ & !\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X61_Y35_N0
\Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\Equal5~1_combout\ & \Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~1_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal5~2_combout\);

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FLR_DataOUT[0]~I\ : cycloneii_io
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
	datain => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FLR_DataOUT(0));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FLR_DataOUT[1]~I\ : cycloneii_io
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
	datain => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FLR_DataOUT(1));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FLR_DataOUT[2]~I\ : cycloneii_io
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
	datain => \Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FLR_DataOUT(2));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FLR_DataOUT[3]~I\ : cycloneii_io
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
	datain => \Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FLR_DataOUT(3));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FLR_DataOUT[4]~I\ : cycloneii_io
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
	datain => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FLR_DataOUT(4));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FLR_DataOUT[5]~I\ : cycloneii_io
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
	datain => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FLR_DataOUT(5));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FLR_DataOUT[6]~I\ : cycloneii_io
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
	datain => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FLR_DataOUT(6));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FLR_DataOUT[7]~I\ : cycloneii_io
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
	datain => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FLR_DataOUT(7));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FLR_SigOUT~I\ : cycloneii_io
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
	datain => \ALT_INV_Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FLR_SigOUT);
END structure;


