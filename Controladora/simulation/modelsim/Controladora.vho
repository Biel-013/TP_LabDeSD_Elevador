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

-- DATE "06/26/2024 12:09:14"

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

ENTITY 	Controladora IS
    PORT (
	FSM_Clock : IN std_logic;
	FSM_Reset : IN std_logic;
	FSM_Emergencia : IN std_logic;
	FSM_Obstrucao : IN std_logic;
	FSM_Sobrepeso_SigIN : IN std_logic;
	FSM_PortaAberta : IN std_logic;
	FSM_PortaFechada : IN std_logic;
	FSM_FilaAndar_SigIN : IN std_logic;
	FSM_CompAndar_Maior : IN std_logic;
	FSM_CompAndar_Menor : IN std_logic;
	FSM_CompAndar_Igual : IN std_logic;
	FSM_Temp_SigIN : IN std_logic;
	FSM_Emerg_SigIN : IN std_logic;
	FSM_RegAndar_Load : OUT std_logic;
	FSM_FilaAndar_Add : OUT std_logic;
	FSM_FilaAndar_Remove : OUT std_logic;
	FSM_Temp_Start : OUT std_logic;
	FSM_Temp_Reset : OUT std_logic;
	FSM_Emerg_Start : OUT std_logic;
	FSM_Emerg_SigOUT : OUT std_logic;
	FSM_Motor_Subir : OUT std_logic;
	FSM_Motor_Descer : OUT std_logic;
	FSM_Motor_Porta : OUT std_logic
	);
END Controladora;

-- Design Ports Information
-- FSM_RegAndar_Load	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_FilaAndar_Add	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_FilaAndar_Remove	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_Temp_Start	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_Temp_Reset	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_Emerg_Start	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_Emerg_SigOUT	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_Motor_Subir	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_Motor_Descer	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_Motor_Porta	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FSM_Emergencia	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_CompAndar_Maior	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_CompAndar_Igual	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_Temp_SigIN	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_Obstrucao	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_PortaAberta	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_Clock	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_Reset	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_CompAndar_Menor	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_Sobrepeso_SigIN	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_PortaFechada	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_FilaAndar_SigIN	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_Emerg_SigIN	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Controladora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_FSM_Clock : std_logic;
SIGNAL ww_FSM_Reset : std_logic;
SIGNAL ww_FSM_Emergencia : std_logic;
SIGNAL ww_FSM_Obstrucao : std_logic;
SIGNAL ww_FSM_Sobrepeso_SigIN : std_logic;
SIGNAL ww_FSM_PortaAberta : std_logic;
SIGNAL ww_FSM_PortaFechada : std_logic;
SIGNAL ww_FSM_FilaAndar_SigIN : std_logic;
SIGNAL ww_FSM_CompAndar_Maior : std_logic;
SIGNAL ww_FSM_CompAndar_Menor : std_logic;
SIGNAL ww_FSM_CompAndar_Igual : std_logic;
SIGNAL ww_FSM_Temp_SigIN : std_logic;
SIGNAL ww_FSM_Emerg_SigIN : std_logic;
SIGNAL ww_FSM_RegAndar_Load : std_logic;
SIGNAL ww_FSM_FilaAndar_Add : std_logic;
SIGNAL ww_FSM_FilaAndar_Remove : std_logic;
SIGNAL ww_FSM_Temp_Start : std_logic;
SIGNAL ww_FSM_Temp_Reset : std_logic;
SIGNAL ww_FSM_Emerg_Start : std_logic;
SIGNAL ww_FSM_Emerg_SigOUT : std_logic;
SIGNAL ww_FSM_Motor_Subir : std_logic;
SIGNAL ww_FSM_Motor_Descer : std_logic;
SIGNAL ww_FSM_Motor_Porta : std_logic;
SIGNAL \FSM_Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector16~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector17~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector25~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \FSM_Obstrucao~combout\ : std_logic;
SIGNAL \FSM_Clock~combout\ : std_logic;
SIGNAL \FSM_CompAndar_Menor~combout\ : std_logic;
SIGNAL \FSM_Emergencia~combout\ : std_logic;
SIGNAL \FSM_CompAndar_Igual~combout\ : std_logic;
SIGNAL \FSM_PortaFechada~combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \FSM_CompAndar_Maior~combout\ : std_logic;
SIGNAL \Next_STATE.S4_552~combout\ : std_logic;
SIGNAL \FSM_Reset~combout\ : std_logic;
SIGNAL \FSM_Reset~clkctrl_outclk\ : std_logic;
SIGNAL \STATE.S4~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Next_STATE.S5_514~combout\ : std_logic;
SIGNAL \STATE.S5~regout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Next_STATE.S7_438~combout\ : std_logic;
SIGNAL \STATE.S7~regout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Next_STATE.S3_590~combout\ : std_logic;
SIGNAL \STATE.S3~regout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \FSM_Emerg_SigIN~combout\ : std_logic;
SIGNAL \FSM_FilaAndar_SigIN~combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Next_STATE.S6_476~combout\ : std_logic;
SIGNAL \STATE.S6~regout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Next_STATE.S1_666~combout\ : std_logic;
SIGNAL \STATE.S1~regout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Next_STATE.S2_628~combout\ : std_logic;
SIGNAL \STATE.S2~regout\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \Selector17~5_combout\ : std_logic;
SIGNAL \FSM_Sobrepeso_SigIN~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~6_combout\ : std_logic;
SIGNAL \Selector17~6clkctrl_outclk\ : std_logic;
SIGNAL \Next_STATE.S8_400~combout\ : std_logic;
SIGNAL \STATE.S8~regout\ : std_logic;
SIGNAL \Next_STATE.S0_704~combout\ : std_logic;
SIGNAL \STATE.S0~0_combout\ : std_logic;
SIGNAL \STATE.S0~regout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~2clkctrl_outclk\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \FSM_FilaAndar_Add$latch~combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \FSM_FilaAndar_Remove$latch~combout\ : std_logic;
SIGNAL \FSM_PortaAberta~combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~5_combout\ : std_logic;
SIGNAL \FSM_Temp_SigIN~combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \FSM_Temp_Start$latch~combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \FSM_Temp_Reset$latch~combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \FSM_Emerg_Start$latch~combout\ : std_logic;
SIGNAL \FSM_Emerg_Start~1_combout\ : std_logic;
SIGNAL \FSM_Emerg_SigOUT$latch~combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Selector16~4clkctrl_outclk\ : std_logic;
SIGNAL \FSM_Motor_Subir$latch~combout\ : std_logic;
SIGNAL \FSM_Motor_Descer$latch~combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \FSM_Motor_Porta$latch~combout\ : std_logic;

BEGIN

ww_FSM_Clock <= FSM_Clock;
ww_FSM_Reset <= FSM_Reset;
ww_FSM_Emergencia <= FSM_Emergencia;
ww_FSM_Obstrucao <= FSM_Obstrucao;
ww_FSM_Sobrepeso_SigIN <= FSM_Sobrepeso_SigIN;
ww_FSM_PortaAberta <= FSM_PortaAberta;
ww_FSM_PortaFechada <= FSM_PortaFechada;
ww_FSM_FilaAndar_SigIN <= FSM_FilaAndar_SigIN;
ww_FSM_CompAndar_Maior <= FSM_CompAndar_Maior;
ww_FSM_CompAndar_Menor <= FSM_CompAndar_Menor;
ww_FSM_CompAndar_Igual <= FSM_CompAndar_Igual;
ww_FSM_Temp_SigIN <= FSM_Temp_SigIN;
ww_FSM_Emerg_SigIN <= FSM_Emerg_SigIN;
FSM_RegAndar_Load <= ww_FSM_RegAndar_Load;
FSM_FilaAndar_Add <= ww_FSM_FilaAndar_Add;
FSM_FilaAndar_Remove <= ww_FSM_FilaAndar_Remove;
FSM_Temp_Start <= ww_FSM_Temp_Start;
FSM_Temp_Reset <= ww_FSM_Temp_Reset;
FSM_Emerg_Start <= ww_FSM_Emerg_Start;
FSM_Emerg_SigOUT <= ww_FSM_Emerg_SigOUT;
FSM_Motor_Subir <= ww_FSM_Motor_Subir;
FSM_Motor_Descer <= ww_FSM_Motor_Descer;
FSM_Motor_Porta <= ww_FSM_Motor_Porta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FSM_Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FSM_Reset~combout\);

\Selector16~4clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector16~4_combout\);

\Selector17~6clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector17~6_combout\);

\Selector25~2clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector25~2_combout\);

-- Location: LCCOMB_X29_Y35_N14
\Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\STATE.S7~regout\) # ((\STATE.S6~regout\) # ((\STATE.S5~regout\ & !\FSM_CompAndar_Maior~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S7~regout\,
	datab => \STATE.S5~regout\,
	datac => \FSM_CompAndar_Maior~combout\,
	datad => \STATE.S6~regout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X32_Y35_N30
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\STATE.S3~regout\ & (\FSM_Temp_SigIN~combout\ & (!\FSM_Emergencia~combout\))) # (!\STATE.S3~regout\ & (((\FSM_PortaAberta~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Temp_SigIN~combout\,
	datab => \STATE.S3~regout\,
	datac => \FSM_Emergencia~combout\,
	datad => \FSM_PortaAberta~combout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X31_Y35_N30
\Selector21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\FSM_Emergencia~combout\) # ((!\STATE.S4~regout\ & (!\STATE.S5~regout\ & !\STATE.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Emergencia~combout\,
	datab => \STATE.S4~regout\,
	datac => \STATE.S5~regout\,
	datad => \STATE.S1~regout\,
	combout => \Selector21~2_combout\);

-- Location: LCCOMB_X31_Y35_N4
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\FSM_PortaFechada~combout\ & (!\FSM_Emergencia~combout\ & \STATE.S4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_PortaFechada~combout\,
	datac => \FSM_Emergencia~combout\,
	datad => \STATE.S4~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X30_Y35_N28
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\STATE.S4~regout\) # ((\STATE.S2~regout\) # (\STATE.S3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.S4~regout\,
	datac => \STATE.S2~regout\,
	datad => \STATE.S3~regout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X29_Y35_N10
\Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\FSM_Emergencia~combout\ & (((\STATE.S1~regout\) # (\Selector14~0_combout\)) # (!\Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Emergencia~combout\,
	datab => \Selector24~0_combout\,
	datac => \STATE.S1~regout\,
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X31_Y35_N6
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\FSM_Emergencia~combout\ & ((\STATE.S3~regout\) # ((\STATE.S1~regout\ & \process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S1~regout\,
	datab => \FSM_Emergencia~combout\,
	datac => \process_1~0_combout\,
	datad => \STATE.S3~regout\,
	combout => \Selector6~0_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_Obstrucao~I\ : cycloneii_io
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
	padio => ww_FSM_Obstrucao,
	combout => \FSM_Obstrucao~combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_Clock~I\ : cycloneii_io
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
	padio => ww_FSM_Clock,
	combout => \FSM_Clock~combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_CompAndar_Menor~I\ : cycloneii_io
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
	padio => ww_FSM_CompAndar_Menor,
	combout => \FSM_CompAndar_Menor~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_Emergencia~I\ : cycloneii_io
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
	padio => ww_FSM_Emergencia,
	combout => \FSM_Emergencia~combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_CompAndar_Igual~I\ : cycloneii_io
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
	padio => ww_FSM_CompAndar_Igual,
	combout => \FSM_CompAndar_Igual~combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_PortaFechada~I\ : cycloneii_io
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
	padio => ww_FSM_PortaFechada,
	combout => \FSM_PortaFechada~combout\);

-- Location: LCCOMB_X30_Y35_N22
\Selector17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\FSM_FilaAndar_SigIN~combout\) # (((\FSM_Emergencia~combout\) # (!\FSM_CompAndar_Igual~combout\)) # (!\FSM_PortaFechada~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_FilaAndar_SigIN~combout\,
	datab => \FSM_PortaFechada~combout\,
	datac => \FSM_CompAndar_Igual~combout\,
	datad => \FSM_Emergencia~combout\,
	combout => \Selector17~3_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_CompAndar_Maior~I\ : cycloneii_io
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
	padio => ww_FSM_CompAndar_Maior,
	combout => \FSM_CompAndar_Maior~combout\);

-- Location: LCCOMB_X31_Y35_N28
\Next_STATE.S4_552\ : cycloneii_lcell_comb
-- Equation(s):
-- \Next_STATE.S4_552~combout\ = (GLOBAL(\Selector17~6clkctrl_outclk\) & (\Selector6~0_combout\)) # (!GLOBAL(\Selector17~6clkctrl_outclk\) & ((\Next_STATE.S4_552~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Next_STATE.S4_552~combout\,
	datac => \Selector17~6clkctrl_outclk\,
	combout => \Next_STATE.S4_552~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_Reset~I\ : cycloneii_io
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
	padio => ww_FSM_Reset,
	combout => \FSM_Reset~combout\);

-- Location: CLKCTRL_G3
\FSM_Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM_Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM_Reset~clkctrl_outclk\);

-- Location: LCFF_X31_Y35_N29
\STATE.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FSM_Clock~combout\,
	datain => \Next_STATE.S4_552~combout\,
	aclr => \FSM_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE.S4~regout\);

-- Location: LCCOMB_X29_Y35_N0
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\FSM_PortaFechada~combout\ & (\STATE.S4~regout\ & !\FSM_Emergencia~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_PortaFechada~combout\,
	datac => \STATE.S4~regout\,
	datad => \FSM_Emergencia~combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X29_Y35_N6
\Next_STATE.S5_514\ : cycloneii_lcell_comb
-- Equation(s):
-- \Next_STATE.S5_514~combout\ = (GLOBAL(\Selector17~6clkctrl_outclk\) & ((\Selector7~0_combout\))) # (!GLOBAL(\Selector17~6clkctrl_outclk\) & (\Next_STATE.S5_514~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Next_STATE.S5_514~combout\,
	datac => \Selector7~0_combout\,
	datad => \Selector17~6clkctrl_outclk\,
	combout => \Next_STATE.S5_514~combout\);

-- Location: LCFF_X29_Y35_N7
\STATE.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FSM_Clock~combout\,
	datain => \Next_STATE.S5_514~combout\,
	aclr => \FSM_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE.S5~regout\);

-- Location: LCCOMB_X29_Y35_N30
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\FSM_Emergencia~combout\ & (\FSM_CompAndar_Maior~combout\ & \STATE.S5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Emergencia~combout\,
	datab => \FSM_CompAndar_Maior~combout\,
	datad => \STATE.S5~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X29_Y35_N12
\Next_STATE.S7_438\ : cycloneii_lcell_comb
-- Equation(s):
-- \Next_STATE.S7_438~combout\ = (GLOBAL(\Selector17~6clkctrl_outclk\) & ((\Selector9~0_combout\))) # (!GLOBAL(\Selector17~6clkctrl_outclk\) & (\Next_STATE.S7_438~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Next_STATE.S7_438~combout\,
	datac => \Selector9~0_combout\,
	datad => \Selector17~6clkctrl_outclk\,
	combout => \Next_STATE.S7_438~combout\);

-- Location: LCFF_X29_Y35_N13
\STATE.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FSM_Clock~combout\,
	datain => \Next_STATE.S7_438~combout\,
	aclr => \FSM_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE.S7~regout\);

-- Location: LCCOMB_X30_Y35_N30
\Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\FSM_Emergencia~combout\) # ((\FSM_CompAndar_Igual~combout\) # ((!\STATE.S6~regout\ & !\STATE.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S6~regout\,
	datab => \FSM_Emergencia~combout\,
	datac => \FSM_CompAndar_Igual~combout\,
	datad => \STATE.S7~regout\,
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X31_Y35_N22
\Next_STATE.S3_590\ : cycloneii_lcell_comb
-- Equation(s):
-- \Next_STATE.S3_590~combout\ = (GLOBAL(\Selector17~6clkctrl_outclk\) & (\Selector23~4_combout\)) # (!GLOBAL(\Selector17~6clkctrl_outclk\) & ((\Next_STATE.S3_590~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~4_combout\,
	datac => \Selector17~6clkctrl_outclk\,
	datad => \Next_STATE.S3_590~combout\,
	combout => \Next_STATE.S3_590~combout\);

-- Location: LCFF_X31_Y35_N23
\STATE.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FSM_Clock~combout\,
	datain => \Next_STATE.S3_590~combout\,
	aclr => \FSM_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE.S3~regout\);

-- Location: LCCOMB_X32_Y35_N4
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\FSM_Temp_SigIN~combout\) # ((\FSM_Emergencia~combout\) # (!\STATE.S3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Temp_SigIN~combout\,
	datac => \FSM_Emergencia~combout\,
	datad => \STATE.S3~regout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X31_Y35_N16
\Selector17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = (\Selector17~2_combout\ & (\Selector21~0_combout\ & ((\Selector17~3_combout\) # (!\STATE.S1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S1~regout\,
	datab => \Selector17~3_combout\,
	datac => \Selector17~2_combout\,
	datad => \Selector21~0_combout\,
	combout => \Selector17~4_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_Emerg_SigIN~I\ : cycloneii_io
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
	padio => ww_FSM_Emerg_SigIN,
	combout => \FSM_Emerg_SigIN~combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_FilaAndar_SigIN~I\ : cycloneii_io
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
	padio => ww_FSM_FilaAndar_SigIN,
	combout => \FSM_FilaAndar_SigIN~combout\);

-- Location: LCCOMB_X30_Y35_N24
\process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\FSM_PortaFechada~combout\ & ((!\FSM_CompAndar_Igual~combout\) # (!\FSM_FilaAndar_SigIN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_FilaAndar_SigIN~combout\,
	datac => \FSM_CompAndar_Igual~combout\,
	datad => \FSM_PortaFechada~combout\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X29_Y35_N20
\Next_STATE.S6_476\ : cycloneii_lcell_comb
-- Equation(s):
-- \Next_STATE.S6_476~combout\ = (GLOBAL(\Selector17~6clkctrl_outclk\) & (\Selector8~0_combout\)) # (!GLOBAL(\Selector17~6clkctrl_outclk\) & ((\Next_STATE.S6_476~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Next_STATE.S6_476~combout\,
	datad => \Selector17~6clkctrl_outclk\,
	combout => \Next_STATE.S6_476~combout\);

-- Location: LCFF_X29_Y35_N21
\STATE.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FSM_Clock~combout\,
	datain => \Next_STATE.S6_476~combout\,
	aclr => \FSM_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE.S6~regout\);

-- Location: LCCOMB_X29_Y35_N2
\Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\FSM_Emergencia~combout\) # ((!\STATE.S6~regout\ & !\STATE.S7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_Emergencia~combout\,
	datac => \STATE.S6~regout\,
	datad => \STATE.S7~regout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X29_Y35_N8
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\FSM_CompAndar_Igual~combout\ & (!\FSM_CompAndar_Maior~combout\ & (!\FSM_Emergencia~combout\ & \STATE.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_CompAndar_Igual~combout\,
	datab => \FSM_CompAndar_Maior~combout\,
	datac => \FSM_Emergencia~combout\,
	datad => \STATE.S5~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X29_Y35_N22
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ((\Selector3~0_combout\) # (!\STATE.S0~regout\)) # (!\Selector21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector21~1_combout\,
	datac => \STATE.S0~regout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X30_Y35_N10
\Next_STATE.S1_666\ : cycloneii_lcell_comb
-- Equation(s):
-- \Next_STATE.S1_666~combout\ = (GLOBAL(\Selector17~6clkctrl_outclk\) & (\Selector3~1_combout\)) # (!GLOBAL(\Selector17~6clkctrl_outclk\) & ((\Next_STATE.S1_666~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~1_combout\,
	datac => \Next_STATE.S1_666~combout\,
	datad => \Selector17~6clkctrl_outclk\,
	combout => \Next_STATE.S1_666~combout\);

-- Location: LCFF_X30_Y35_N11
\STATE.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FSM_Clock~combout\,
	datain => \Next_STATE.S1_666~combout\,
	aclr => \FSM_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE.S1~regout\);

-- Location: LCCOMB_X31_Y35_N18
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((!\FSM_Emergencia~combout\ & (!\process_1~0_combout\ & \STATE.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \FSM_Emergencia~combout\,
	datac => \process_1~0_combout\,
	datad => \STATE.S1~regout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X31_Y35_N14
\Next_STATE.S2_628\ : cycloneii_lcell_comb
-- Equation(s):
-- \Next_STATE.S2_628~combout\ = (GLOBAL(\Selector17~6clkctrl_outclk\) & (\Selector4~1_combout\)) # (!GLOBAL(\Selector17~6clkctrl_outclk\) & ((\Next_STATE.S2_628~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~1_combout\,
	datac => \Next_STATE.S2_628~combout\,
	datad => \Selector17~6clkctrl_outclk\,
	combout => \Next_STATE.S2_628~combout\);

-- Location: LCFF_X31_Y35_N15
\STATE.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FSM_Clock~combout\,
	datain => \Next_STATE.S2_628~combout\,
	aclr => \FSM_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE.S2~regout\);

-- Location: LCCOMB_X32_Y35_N14
\Selector23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = (!\FSM_Emergencia~combout\ & \STATE.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM_Emergencia~combout\,
	datad => \STATE.S2~regout\,
	combout => \Selector23~4_combout\);

-- Location: LCCOMB_X32_Y35_N24
\Selector17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~5_combout\ = (\FSM_PortaAberta~combout\ & (((!\STATE.S8~regout\)) # (!\FSM_Emerg_SigIN~combout\))) # (!\FSM_PortaAberta~combout\ & (!\Selector23~4_combout\ & ((!\STATE.S8~regout\) # (!\FSM_Emerg_SigIN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_PortaAberta~combout\,
	datab => \FSM_Emerg_SigIN~combout\,
	datac => \Selector23~4_combout\,
	datad => \STATE.S8~regout\,
	combout => \Selector17~5_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_Sobrepeso_SigIN~I\ : cycloneii_io
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
	padio => ww_FSM_Sobrepeso_SigIN,
	combout => \FSM_Sobrepeso_SigIN~combout\);

-- Location: LCCOMB_X31_Y35_N24
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\FSM_Obstrucao~combout\) # ((\FSM_PortaFechada~combout\) # ((\FSM_Emergencia~combout\) # (!\STATE.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Obstrucao~combout\,
	datab => \FSM_PortaFechada~combout\,
	datac => \FSM_Emergencia~combout\,
	datad => \STATE.S4~regout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X30_Y35_N16
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\FSM_CompAndar_Maior~combout\ & (!\FSM_Emergencia~combout\ & (\STATE.S5~regout\ & !\FSM_CompAndar_Igual~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_CompAndar_Maior~combout\,
	datab => \FSM_Emergencia~combout\,
	datac => \STATE.S5~regout\,
	datad => \FSM_CompAndar_Igual~combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X31_Y35_N8
\Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\FSM_CompAndar_Menor~combout\ & ((\FSM_Sobrepeso_SigIN~combout\) # ((\Selector17~0_combout\)))) # (!\FSM_CompAndar_Menor~combout\ & (!\Selector8~0_combout\ & ((\FSM_Sobrepeso_SigIN~combout\) # (\Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_CompAndar_Menor~combout\,
	datab => \FSM_Sobrepeso_SigIN~combout\,
	datac => \Selector17~0_combout\,
	datad => \Selector8~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X32_Y35_N22
\Selector17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~6_combout\ = (\Selector17~4_combout\ & (\Selector17~5_combout\ & \Selector17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector17~4_combout\,
	datac => \Selector17~5_combout\,
	datad => \Selector17~1_combout\,
	combout => \Selector17~6_combout\);

-- Location: CLKCTRL_G8
\Selector17~6clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector17~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector17~6clkctrl_outclk\);

-- Location: LCCOMB_X29_Y35_N24
\Next_STATE.S8_400\ : cycloneii_lcell_comb
-- Equation(s):
-- \Next_STATE.S8_400~combout\ = (GLOBAL(\Selector17~6clkctrl_outclk\) & (\Selector14~1_combout\)) # (!GLOBAL(\Selector17~6clkctrl_outclk\) & ((\Next_STATE.S8_400~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~1_combout\,
	datab => \Next_STATE.S8_400~combout\,
	datad => \Selector17~6clkctrl_outclk\,
	combout => \Next_STATE.S8_400~combout\);

-- Location: LCFF_X29_Y35_N25
\STATE.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FSM_Clock~combout\,
	datain => \Next_STATE.S8_400~combout\,
	aclr => \FSM_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE.S8~regout\);

-- Location: LCCOMB_X30_Y35_N2
\Next_STATE.S0_704\ : cycloneii_lcell_comb
-- Equation(s):
-- \Next_STATE.S0_704~combout\ = (GLOBAL(\Selector17~6clkctrl_outclk\) & ((\STATE.S8~regout\))) # (!GLOBAL(\Selector17~6clkctrl_outclk\) & (\Next_STATE.S0_704~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Next_STATE.S0_704~combout\,
	datab => \STATE.S8~regout\,
	datad => \Selector17~6clkctrl_outclk\,
	combout => \Next_STATE.S0_704~combout\);

-- Location: LCCOMB_X30_Y35_N18
\STATE.S0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STATE.S0~0_combout\ = !\Next_STATE.S0_704~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Next_STATE.S0_704~combout\,
	combout => \STATE.S0~0_combout\);

-- Location: LCFF_X30_Y35_N19
\STATE.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FSM_Clock~combout\,
	datain => \STATE.S0~0_combout\,
	aclr => \FSM_Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STATE.S0~regout\);

-- Location: LCCOMB_X30_Y35_N0
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ((!\FSM_Emergencia~combout\ & \STATE.S1~regout\)) # (!\STATE.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.S0~regout\,
	datac => \FSM_Emergencia~combout\,
	datad => \STATE.S1~regout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X30_Y35_N8
\Selector25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\Selector25~0_combout\) # ((\Selector25~1_combout\ & (!\FSM_Emergencia~combout\ & \FSM_CompAndar_Igual~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~1_combout\,
	datab => \FSM_Emergencia~combout\,
	datac => \FSM_CompAndar_Igual~combout\,
	datad => \Selector25~0_combout\,
	combout => \Selector25~2_combout\);

-- Location: CLKCTRL_G11
\Selector25~2clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector25~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector25~2clkctrl_outclk\);

-- Location: LCCOMB_X30_Y35_N26
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\STATE.S1~regout\) # (!\STATE.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.S0~regout\,
	datad => \STATE.S1~regout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X30_Y35_N4
\FSM_FilaAndar_Add$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_FilaAndar_Add$latch~combout\ = (GLOBAL(\Selector25~2clkctrl_outclk\) & ((\Selector12~0_combout\))) # (!GLOBAL(\Selector25~2clkctrl_outclk\) & (\FSM_FilaAndar_Add$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_FilaAndar_Add$latch~combout\,
	datac => \Selector25~2clkctrl_outclk\,
	datad => \Selector12~0_combout\,
	combout => \FSM_FilaAndar_Add$latch~combout\);

-- Location: LCCOMB_X29_Y35_N26
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\STATE.S5~regout\ & (!\STATE.S6~regout\ & !\STATE.S7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S5~regout\,
	datac => \STATE.S6~regout\,
	datad => \STATE.S7~regout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X29_Y35_N4
\FSM_FilaAndar_Remove$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_FilaAndar_Remove$latch~combout\ = (GLOBAL(\Selector25~2clkctrl_outclk\) & ((!\Selector24~0_combout\))) # (!GLOBAL(\Selector25~2clkctrl_outclk\) & (\FSM_FilaAndar_Remove$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_FilaAndar_Remove$latch~combout\,
	datac => \Selector25~2clkctrl_outclk\,
	datad => \Selector24~0_combout\,
	combout => \FSM_FilaAndar_Remove$latch~combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_PortaAberta~I\ : cycloneii_io
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
	padio => ww_FSM_PortaAberta,
	combout => \FSM_PortaAberta~combout\);

-- Location: LCCOMB_X31_Y35_N10
\Selector23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (!\FSM_Emergencia~combout\ & ((\STATE.S3~regout\) # ((\STATE.S2~regout\ & \FSM_PortaAberta~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S2~regout\,
	datab => \FSM_Emergencia~combout\,
	datac => \STATE.S3~regout\,
	datad => \FSM_PortaAberta~combout\,
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X31_Y35_N12
\Selector23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~5_combout\ = (\Selector23~2_combout\) # ((!\STATE.S0~regout\ & (!\STATE.S3~regout\ & !\STATE.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S0~regout\,
	datab => \STATE.S3~regout\,
	datac => \Selector23~2_combout\,
	datad => \STATE.S2~regout\,
	combout => \Selector23~5_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_Temp_SigIN~I\ : cycloneii_io
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
	padio => ww_FSM_Temp_SigIN,
	combout => \FSM_Temp_SigIN~combout\);

-- Location: LCCOMB_X31_Y35_N26
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\STATE.S2~regout\) # ((\STATE.S3~regout\ & ((\FSM_Temp_SigIN~combout\) # (!\FSM_Obstrucao~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Obstrucao~combout\,
	datab => \FSM_Temp_SigIN~combout\,
	datac => \STATE.S2~regout\,
	datad => \STATE.S3~regout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X31_Y35_N20
\FSM_Temp_Start$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_Temp_Start$latch~combout\ = (\Selector23~5_combout\ & ((\Selector15~0_combout\))) # (!\Selector23~5_combout\ & (\FSM_Temp_Start$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~5_combout\,
	datac => \FSM_Temp_Start$latch~combout\,
	datad => \Selector15~0_combout\,
	combout => \FSM_Temp_Start$latch~combout\);

-- Location: LCCOMB_X31_Y35_N0
\Selector23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (!\STATE.S0~regout\ & (!\STATE.S2~regout\ & !\STATE.S3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S0~regout\,
	datac => \STATE.S2~regout\,
	datad => \STATE.S3~regout\,
	combout => \Selector23~3_combout\);

-- Location: LCCOMB_X32_Y35_N12
\Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\Selector23~3_combout\) # ((\Selector22~0_combout\ & ((\Selector23~4_combout\) # (\STATE.S3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \Selector23~3_combout\,
	datac => \Selector23~4_combout\,
	datad => \STATE.S3~regout\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X32_Y35_N28
\FSM_Temp_Reset$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_Temp_Reset$latch~combout\ = (\Selector22~1_combout\ & (!\STATE.S2~regout\)) # (!\Selector22~1_combout\ & ((\FSM_Temp_Reset$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S2~regout\,
	datab => \Selector22~1_combout\,
	datad => \FSM_Temp_Reset$latch~combout\,
	combout => \FSM_Temp_Reset$latch~combout\);

-- Location: LCCOMB_X32_Y35_N20
\Selector21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = (\Selector21~2_combout\ & (!\Selector23~4_combout\ & (\Selector21~1_combout\ & \Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~2_combout\,
	datab => \Selector23~4_combout\,
	datac => \Selector21~1_combout\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~3_combout\);

-- Location: LCCOMB_X32_Y35_N18
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\STATE.S0~regout\ & (!\STATE.S8~regout\ & ((\FSM_Emergencia~combout\) # (!\STATE.S3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S0~regout\,
	datab => \STATE.S3~regout\,
	datac => \STATE.S8~regout\,
	datad => \FSM_Emergencia~combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X32_Y35_N26
\FSM_Emerg_Start$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_Emerg_Start$latch~combout\ = (\Selector21~3_combout\ & ((\Selector20~0_combout\))) # (!\Selector21~3_combout\ & (\FSM_Emerg_Start$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_Emerg_Start$latch~combout\,
	datac => \Selector21~3_combout\,
	datad => \Selector20~0_combout\,
	combout => \FSM_Emerg_Start$latch~combout\);

-- Location: LCCOMB_X30_Y35_N12
\FSM_Emerg_Start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_Emerg_Start~1_combout\ = (\STATE.S8~regout\) # (!\STATE.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.S8~regout\,
	datac => \STATE.S0~regout\,
	combout => \FSM_Emerg_Start~1_combout\);

-- Location: LCCOMB_X29_Y35_N18
\FSM_Emerg_SigOUT$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_Emerg_SigOUT$latch~combout\ = (\FSM_Emerg_Start~1_combout\ & (\STATE.S8~regout\)) # (!\FSM_Emerg_Start~1_combout\ & ((\FSM_Emerg_SigOUT$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S8~regout\,
	datac => \FSM_Emerg_Start~1_combout\,
	datad => \FSM_Emerg_SigOUT$latch~combout\,
	combout => \FSM_Emerg_SigOUT$latch~combout\);

-- Location: LCCOMB_X30_Y35_N14
\Selector16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = ((\STATE.S8~regout\) # (!\Selector21~1_combout\)) # (!\STATE.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.S0~regout\,
	datac => \STATE.S8~regout\,
	datad => \Selector21~1_combout\,
	combout => \Selector16~4_combout\);

-- Location: CLKCTRL_G9
\Selector16~4clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector16~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector16~4clkctrl_outclk\);

-- Location: LCCOMB_X29_Y35_N28
\FSM_Motor_Subir$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_Motor_Subir$latch~combout\ = (GLOBAL(\Selector16~4clkctrl_outclk\) & ((\STATE.S7~regout\))) # (!GLOBAL(\Selector16~4clkctrl_outclk\) & (\FSM_Motor_Subir$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_Motor_Subir$latch~combout\,
	datac => \Selector16~4clkctrl_outclk\,
	datad => \STATE.S7~regout\,
	combout => \FSM_Motor_Subir$latch~combout\);

-- Location: LCCOMB_X29_Y35_N16
\FSM_Motor_Descer$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_Motor_Descer$latch~combout\ = (GLOBAL(\Selector16~4clkctrl_outclk\) & ((\STATE.S6~regout\))) # (!GLOBAL(\Selector16~4clkctrl_outclk\) & (\FSM_Motor_Descer$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Motor_Descer$latch~combout\,
	datac => \STATE.S6~regout\,
	datad => \Selector16~4clkctrl_outclk\,
	combout => \FSM_Motor_Descer$latch~combout\);

-- Location: LCCOMB_X31_Y35_N2
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\STATE.S4~regout\ & (((!\FSM_Emergencia~combout\)))) # (!\STATE.S4~regout\ & ((\STATE.S2~regout\ & ((!\FSM_Emergencia~combout\))) # (!\STATE.S2~regout\ & (\FSM_Emerg_Start~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.S4~regout\,
	datab => \FSM_Emerg_Start~1_combout\,
	datac => \FSM_Emergencia~combout\,
	datad => \STATE.S2~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X30_Y35_N6
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\STATE.S2~regout\) # (\STATE.S8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STATE.S2~regout\,
	datad => \STATE.S8~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X30_Y35_N20
\FSM_Motor_Porta$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM_Motor_Porta$latch~combout\ = (\Selector1~0_combout\ & ((\Selector0~0_combout\))) # (!\Selector1~0_combout\ & (\FSM_Motor_Porta$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~0_combout\,
	datac => \FSM_Motor_Porta$latch~combout\,
	datad => \Selector0~0_combout\,
	combout => \FSM_Motor_Porta$latch~combout\);

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_RegAndar_Load~I\ : cycloneii_io
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
	padio => ww_FSM_RegAndar_Load);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_FilaAndar_Add~I\ : cycloneii_io
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
	datain => \FSM_FilaAndar_Add$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FSM_FilaAndar_Add);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_FilaAndar_Remove~I\ : cycloneii_io
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
	datain => \FSM_FilaAndar_Remove$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FSM_FilaAndar_Remove);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_Temp_Start~I\ : cycloneii_io
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
	datain => \FSM_Temp_Start$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FSM_Temp_Start);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_Temp_Reset~I\ : cycloneii_io
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
	datain => \FSM_Temp_Reset$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FSM_Temp_Reset);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_Emerg_Start~I\ : cycloneii_io
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
	datain => \FSM_Emerg_Start$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FSM_Emerg_Start);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_Emerg_SigOUT~I\ : cycloneii_io
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
	datain => \FSM_Emerg_SigOUT$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FSM_Emerg_SigOUT);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_Motor_Subir~I\ : cycloneii_io
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
	datain => \FSM_Motor_Subir$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FSM_Motor_Subir);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_Motor_Descer~I\ : cycloneii_io
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
	datain => \FSM_Motor_Descer$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FSM_Motor_Descer);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FSM_Motor_Porta~I\ : cycloneii_io
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
	datain => \FSM_Motor_Porta$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FSM_Motor_Porta);
END structure;


