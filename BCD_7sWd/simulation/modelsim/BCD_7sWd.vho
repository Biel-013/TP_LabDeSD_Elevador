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

-- DATE "07/03/2024 11:11:56"

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

ENTITY 	Bcd_7sWd IS
    PORT (
	BCD_Entrada : IN std_logic_vector(6 DOWNTO 0);
	BCD_Saida : OUT std_logic_vector(20 DOWNTO 0)
	);
END Bcd_7sWd;

-- Design Ports Information
-- BCD_Saida[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[7]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[8]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[9]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[10]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[11]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[12]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[13]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[14]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[15]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[16]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[17]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[18]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[19]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Saida[20]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD_Entrada[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_Entrada[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_Entrada[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_Entrada[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_Entrada[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_Entrada[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_Entrada[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Bcd_7sWd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BCD_Entrada : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD_Saida : std_logic_vector(20 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[47]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \BCD_Entrada~combout\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_BCD_Entrada <= BCD_Entrada;
BCD_Saida <= ww_BCD_Saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X38_Y8_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\BCD_Entrada~combout\(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\BCD_Entrada~combout\(5) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\BCD_Entrada~combout\(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X38_Y8_N22
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\BCD_Entrada~combout\(6) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\BCD_Entrada~combout\(6) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\BCD_Entrada~combout\(6) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Entrada~combout\(6),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X37_Y8_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X37_Y7_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X37_Y7_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X37_Y7_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X36_Y7_N8
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X36_Y7_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X58_Y5_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\BCD_Entrada~combout\(6) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\BCD_Entrada~combout\(6) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\BCD_Entrada~combout\(6) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Entrada~combout\(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X59_Y5_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~30_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X60_Y5_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X60_Y5_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~36_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~37_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~37_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X60_Y5_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X60_Y5_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~44_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X60_Y5_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X60_Y5_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X60_Y5_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y5_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y4_N6
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X38_Y8_N26
\Mod0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X38_Y8_N4
\Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \BCD_Entrada~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \BCD_Entrada~combout\(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X38_Y8_N2
\Mod0|auto_generated|divider|divider|StageOut[22]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X37_Y8_N10
\Mod0|auto_generated|divider|divider|StageOut[21]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (\BCD_Entrada~combout\(3) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD_Entrada~combout\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X37_Y7_N2
\Mod0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X37_Y7_N12
\Mod0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X37_Y8_N14
\Mod0|auto_generated|divider|divider|StageOut[29]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X37_Y8_N16
\Mod0|auto_generated|divider|divider|StageOut[28]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD_Entrada~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD_Entrada~combout\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X36_Y7_N24
\Mod0|auto_generated|divider|divider|StageOut[35]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \BCD_Entrada~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \BCD_Entrada~combout\(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\);

-- Location: LCCOMB_X37_Y7_N16
\Mod0|auto_generated|divider|divider|StageOut[39]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\);

-- Location: LCCOMB_X36_Y7_N26
\Mod0|auto_generated|divider|divider|StageOut[37]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\);

-- Location: LCCOMB_X36_Y7_N20
\Mod0|auto_generated|divider|divider|StageOut[36]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X36_Y7_N0
\Mod0|auto_generated|divider|divider|StageOut[45]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\);

-- Location: LCCOMB_X37_Y7_N4
\Mod0|auto_generated|divider|divider|StageOut[47]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[47]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[47]~64_combout\);

-- Location: LCCOMB_X58_Y5_N18
\Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X59_Y5_N16
\Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\BCD_Entrada~combout\(5) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X59_Y5_N12
\Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\BCD_Entrada~combout\(4) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X59_Y5_N10
\Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\BCD_Entrada~combout\(3) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Entrada~combout\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X59_Y5_N30
\Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X61_Y5_N16
\Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\BCD_Entrada~combout\(3) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD_Entrada~combout\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X61_Y5_N14
\Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD_Entrada~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \BCD_Entrada~combout\(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X60_Y5_N0
\Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X60_Y5_N2
\Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X60_Y5_N4
\Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \BCD_Entrada~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \BCD_Entrada~combout\(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X60_Y5_N6
\Div0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X60_Y5_N8
\Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \BCD_Entrada~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \BCD_Entrada~combout\(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X60_Y5_N30
\Div0|auto_generated|divider|divider|StageOut[25]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \BCD_Entrada~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \BCD_Entrada~combout\(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X59_Y5_N0
\Div0|auto_generated|divider|divider|StageOut[28]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X38_Y8_N14
\Mod0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\BCD_Entrada~combout\(6))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \BCD_Entrada~combout\(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X59_Y5_N28
\Div0|auto_generated|divider|divider|StageOut[23]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\BCD_Entrada~combout\(5))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(5),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X61_Y5_N0
\Div0|auto_generated|divider|divider|StageOut[27]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\BCD_Entrada~combout\(3)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \BCD_Entrada~combout\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD_Entrada[2]~I\ : cycloneii_io
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
	padio => ww_BCD_Entrada(2),
	combout => \BCD_Entrada~combout\(2));

-- Location: LCCOMB_X37_Y8_N4
\Mod0|auto_generated|divider|divider|StageOut[36]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \BCD_Entrada~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \BCD_Entrada~combout\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD_Entrada[6]~I\ : cycloneii_io
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
	padio => ww_BCD_Entrada(6),
	combout => \BCD_Entrada~combout\(6));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD_Entrada[4]~I\ : cycloneii_io
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
	padio => ww_BCD_Entrada(4),
	combout => \BCD_Entrada~combout\(4));

-- Location: LCCOMB_X38_Y8_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \BCD_Entrada~combout\(4) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\BCD_Entrada~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Entrada~combout\(4),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X38_Y8_N24
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X38_Y8_N0
\Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \BCD_Entrada~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \BCD_Entrada~combout\(6),
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X38_Y8_N30
\Mod0|auto_generated|divider|divider|StageOut[23]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X38_Y8_N8
\Mod0|auto_generated|divider|divider|StageOut[22]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \BCD_Entrada~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \BCD_Entrada~combout\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD_Entrada[3]~I\ : cycloneii_io
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
	padio => ww_BCD_Entrada(3),
	combout => \BCD_Entrada~combout\(3));

-- Location: LCCOMB_X37_Y8_N0
\Mod0|auto_generated|divider|divider|StageOut[21]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\BCD_Entrada~combout\(3) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD_Entrada~combout\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X37_Y8_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X37_Y8_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X37_Y8_N26
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X37_Y8_N28
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X37_Y7_N8
\Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD_Entrada[5]~I\ : cycloneii_io
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
	padio => ww_BCD_Entrada(5),
	combout => \BCD_Entrada~combout\(5));

-- Location: LCCOMB_X38_Y8_N16
\Mod0|auto_generated|divider|divider|StageOut[31]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\BCD_Entrada~combout\(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \BCD_Entrada~combout\(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\);

-- Location: LCCOMB_X38_Y8_N10
\Mod0|auto_generated|divider|divider|StageOut[30]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\BCD_Entrada~combout\(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: LCCOMB_X37_Y8_N12
\Mod0|auto_generated|divider|divider|StageOut[29]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (\BCD_Entrada~combout\(3) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD_Entrada~combout\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X37_Y8_N18
\Mod0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD_Entrada~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD_Entrada~combout\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X37_Y7_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X37_Y7_N26
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X37_Y7_N28
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X37_Y7_N14
\Mod0|auto_generated|divider|divider|StageOut[40]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\);

-- Location: LCCOMB_X37_Y7_N0
\Mod0|auto_generated|divider|divider|StageOut[39]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\);

-- Location: LCCOMB_X37_Y7_N30
\Mod0|auto_generated|divider|divider|StageOut[38]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\);

-- Location: LCCOMB_X37_Y8_N8
\Mod0|auto_generated|divider|divider|StageOut[37]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\BCD_Entrada~combout\(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(3),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD_Entrada[1]~I\ : cycloneii_io
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
	padio => ww_BCD_Entrada(1),
	combout => \BCD_Entrada~combout\(1));

-- Location: LCCOMB_X36_Y7_N2
\Mod0|auto_generated|divider|divider|StageOut[35]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \BCD_Entrada~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \BCD_Entrada~combout\(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\);

-- Location: LCCOMB_X36_Y7_N4
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X36_Y7_N6
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X36_Y7_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X36_Y7_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X36_Y7_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X36_Y7_N30
\Mod0|auto_generated|divider|divider|StageOut[44]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\);

-- Location: LCCOMB_X36_Y4_N8
\Mod0|auto_generated|divider|divider|StageOut[43]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BCD_Entrada~combout\(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \BCD_Entrada~combout\(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD_Entrada[0]~I\ : cycloneii_io
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
	padio => ww_BCD_Entrada(0),
	combout => \BCD_Entrada~combout\(0));

-- Location: LCCOMB_X36_Y4_N18
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & \BCD_Entrada~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datad => \BCD_Entrada~combout\(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X37_Y7_N10
\Mod0|auto_generated|divider|divider|StageOut[38]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\);

-- Location: LCCOMB_X36_Y7_N28
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[47]~64_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[47]~64_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X37_Y7_N6
\Mod0|auto_generated|divider|divider|StageOut[40]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\);

-- Location: LCCOMB_X36_Y7_N22
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X37_Y8_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\BCD_Entrada~combout\(0) & (!\BCD_Entrada~combout\(1) & (!\BCD_Entrada~combout\(3) & !\BCD_Entrada~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(0),
	datab => \BCD_Entrada~combout\(1),
	datac => \BCD_Entrada~combout\(3),
	datad => \BCD_Entrada~combout\(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X38_Y8_N12
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\BCD_Entrada~combout\(5) & (!\BCD_Entrada~combout\(4) & (\Equal0~0_combout\ & !\BCD_Entrada~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(5),
	datab => \BCD_Entrada~combout\(4),
	datac => \Equal0~0_combout\,
	datad => \BCD_Entrada~combout\(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X36_Y7_N18
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X36_Y4_N12
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\Equal0~1_combout\ & ((\Mux6~0_combout\) # ((!\Mux0~0_combout\) # (!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X36_Y4_N30
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ $ (\BCD_Entrada~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datad => \BCD_Entrada~combout\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X36_Y4_N0
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\Equal0~1_combout\ & ((\Mux5~0_combout\) # ((!\Mux0~0_combout\) # (!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X36_Y4_N10
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # (!\BCD_Entrada~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datad => \BCD_Entrada~combout\(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X36_Y4_N28
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\Equal0~1_combout\ & ((\Mux4~0_combout\) # ((!\Mux0~0_combout\) # (!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X36_Y4_N14
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & \BCD_Entrada~combout\(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & \BCD_Entrada~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datad => \BCD_Entrada~combout\(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X36_Y4_N16
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\Equal0~1_combout\ & ((\Mux3~0_combout\) # ((!\Mux0~0_combout\) # (!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X36_Y4_N26
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\BCD_Entrada~combout\(0)) # ((\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datad => \BCD_Entrada~combout\(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X36_Y4_N4
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\Equal0~1_combout\ & ((\Mux2~0_combout\) # ((!\Mux0~0_combout\) # (!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X36_Y4_N6
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & \BCD_Entrada~combout\(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & \BCD_Entrada~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datad => \BCD_Entrada~combout\(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X36_Y4_N24
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\Equal0~1_combout\ & ((\Mux1~0_combout\) # ((!\Mux0~0_combout\) # (!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X36_Y4_N2
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((!\BCD_Entrada~combout\(0)) # (!\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ $ ((\Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datad => \BCD_Entrada~combout\(0),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X36_Y4_N20
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (((\Equal0~1_combout\) # (!\Mux0~0_combout\)) # (!\Mux0~2_combout\)) # (!\Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X58_Y5_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \BCD_Entrada~combout\(4) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\BCD_Entrada~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(4),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X58_Y5_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\BCD_Entrada~combout\(5) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\BCD_Entrada~combout\(5) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\BCD_Entrada~combout\(5) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Entrada~combout\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X58_Y5_N26
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X59_Y5_N2
\Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X59_Y5_N14
\Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X59_Y5_N8
\Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\BCD_Entrada~combout\(3) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Entrada~combout\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X59_Y5_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~32_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X59_Y5_N22
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~29_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~29_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X58_Y5_N16
\Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\BCD_Entrada~combout\(6) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Entrada~combout\(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X59_Y5_N24
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y5_N26
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X59_Y5_N4
\Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X59_Y5_N6
\Div0|auto_generated|divider|divider|StageOut[22]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\BCD_Entrada~combout\(4))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Entrada~combout\(4),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X61_Y5_N18
\Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X61_Y5_N12
\Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD_Entrada~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \BCD_Entrada~combout\(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X60_Y5_N26
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y5_N28
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y4_N0
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X63_Y4_N2
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X63_Y4_N4
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X63_Y4_N8
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X63_Y4_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X63_Y4_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X63_Y4_N28
\Mod1|auto_generated|divider|divider|StageOut[45]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\);

-- Location: LCCOMB_X63_Y4_N30
\Mod1|auto_generated|divider|divider|StageOut[43]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\);

-- Location: LCCOMB_X63_Y4_N16
\Mod1|auto_generated|divider|divider|StageOut[44]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\);

-- Location: LCCOMB_X64_Y4_N0
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\)))) # (!\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\ $ (((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X63_Y4_N14
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\) # ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X64_Y4_N26
\Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\Equal0~1_combout\ & ((\Mux13~0_combout\) # (\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Mux13~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X64_Y4_N28
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (!\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X64_Y4_N22
\Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!\Equal0~1_combout\ & ((\Mux12~0_combout\) # (\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Mux12~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X64_Y4_N16
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\)))) # (!\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (!\Equal0~1_combout\ & ((\Mux11~0_combout\) # (\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Mux11~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X64_Y4_N4
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\) # ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\)))) # (!\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\ $ 
-- (((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X64_Y4_N30
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (!\Equal0~1_combout\ & ((\Mux10~0_combout\) # (\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Mux10~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X64_Y4_N8
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ((\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X64_Y4_N18
\Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (!\Equal0~1_combout\ & ((\Mux9~0_combout\) # (\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X64_Y4_N12
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\ $ (!\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X64_Y4_N14
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\Equal0~1_combout\ & ((\Mux7~0_combout\) # (\Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X64_Y4_N24
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\)))) # (!\Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\ $ 
-- (\Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[43]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[44]~1_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X64_Y4_N10
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Equal0~1_combout\) # ((\Mux7~0_combout\) # (!\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X63_Y4_N18
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X63_Y4_N20
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X63_Y4_N22
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X63_Y4_N24
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y4_N26
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y4_N20
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\Equal0~1_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mux20~0_combout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[0]~I\ : cycloneii_io
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
	padio => ww_BCD_Saida(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[1]~I\ : cycloneii_io
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
	padio => ww_BCD_Saida(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[2]~I\ : cycloneii_io
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
	padio => ww_BCD_Saida(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[3]~I\ : cycloneii_io
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
	padio => ww_BCD_Saida(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[4]~I\ : cycloneii_io
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
	padio => ww_BCD_Saida(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[5]~I\ : cycloneii_io
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
	padio => ww_BCD_Saida(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[6]~I\ : cycloneii_io
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
	datain => \Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[7]~I\ : cycloneii_io
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
	datain => \Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(7));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[8]~I\ : cycloneii_io
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
	datain => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(8));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[9]~I\ : cycloneii_io
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
	datain => \Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(9));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[10]~I\ : cycloneii_io
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
	datain => \Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(10));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[11]~I\ : cycloneii_io
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
	datain => \Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(11));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[12]~I\ : cycloneii_io
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
	datain => \Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(12));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[13]~I\ : cycloneii_io
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
	datain => \Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(13));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[14]~I\ : cycloneii_io
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
	datain => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(14));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[15]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(15));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[16]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(16));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[17]~I\ : cycloneii_io
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
	datain => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(17));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[18]~I\ : cycloneii_io
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
	datain => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(18));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[19]~I\ : cycloneii_io
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
	datain => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(19));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD_Saida[20]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD_Saida(20));
END structure;


