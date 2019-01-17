-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/30/2018 16:53:51"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pdm_synth IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	MIDI_IN : IN std_logic;
	Mod_out : BUFFER std_logic
	);
END pdm_synth;

-- Design Ports Information
-- Mod_out	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIDI_IN	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pdm_synth IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_MIDI_IN : std_logic;
SIGNAL ww_Mod_out : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \U1|U1|Add0~33_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~34\ : std_logic;
SIGNAL \U1|U1|Add0~37_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~38\ : std_logic;
SIGNAL \U1|U1|Add0~41_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~42\ : std_logic;
SIGNAL \U1|U1|Add0~45_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~46\ : std_logic;
SIGNAL \U1|U1|Add0~49_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~50\ : std_logic;
SIGNAL \U1|U1|Add0~53_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~54\ : std_logic;
SIGNAL \U1|U1|Add0~57_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~58\ : std_logic;
SIGNAL \U1|U1|Add0~29_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[7]~5_combout\ : std_logic;
SIGNAL \U1|U1|Add0~30\ : std_logic;
SIGNAL \U1|U1|Add0~69_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~70\ : std_logic;
SIGNAL \U1|U1|Add0~25_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[9]~4_combout\ : std_logic;
SIGNAL \U1|U1|Add0~26\ : std_logic;
SIGNAL \U1|U1|Add0~61_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~62\ : std_logic;
SIGNAL \U1|U1|Add0~21_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[11]~3_combout\ : std_logic;
SIGNAL \U1|U1|COUNT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|Add0~22\ : std_logic;
SIGNAL \U1|U1|Add0~17_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[12]~2_combout\ : std_logic;
SIGNAL \U1|U1|Add0~18\ : std_logic;
SIGNAL \U1|U1|Add0~65_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~66\ : std_logic;
SIGNAL \U1|U1|Add0~73_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~74\ : std_logic;
SIGNAL \U1|U1|Add0~77_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~78\ : std_logic;
SIGNAL \U1|U1|Add0~81_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~82\ : std_logic;
SIGNAL \U1|U1|Add0~13_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[17]~1_combout\ : std_logic;
SIGNAL \U1|U1|Add0~14\ : std_logic;
SIGNAL \U1|U1|Add0~9_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[18]~0_combout\ : std_logic;
SIGNAL \U1|U1|COUNT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|Add0~10\ : std_logic;
SIGNAL \U1|U1|Add0~85_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~86\ : std_logic;
SIGNAL \U1|U1|Add0~89_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|Add0~90\ : std_logic;
SIGNAL \U1|U1|Add0~93_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~94\ : std_logic;
SIGNAL \U1|U1|Add0~97_sumout\ : std_logic;
SIGNAL \U1|U1|Add0~98\ : std_logic;
SIGNAL \U1|U1|Add0~101_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[23]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|Add0~102\ : std_logic;
SIGNAL \U1|U1|Add0~1_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U1|Add0~2\ : std_logic;
SIGNAL \U1|U1|Add0~5_sumout\ : std_logic;
SIGNAL \U1|U1|COUNT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|COUNT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|U1|COUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|COUNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|U1|LO_CLK~0_combout\ : std_logic;
SIGNAL \U1|U1|LO_CLK~q\ : std_logic;
SIGNAL \MIDI_IN~input_o\ : std_logic;
SIGNAL \MIDI_IN~_wirecell_combout\ : std_logic;
SIGNAL \U1|eodec~5_combout\ : std_logic;
SIGNAL \U1|eodec~0_combout\ : std_logic;
SIGNAL \U1|Add0~2\ : std_logic;
SIGNAL \U1|Add0~65_sumout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|process_0~1_combout\ : std_logic;
SIGNAL \U1|eodec~3_combout\ : std_logic;
SIGNAL \U1|Add0~58\ : std_logic;
SIGNAL \U1|Add0~29_sumout\ : std_logic;
SIGNAL \U1|dec_cnt[31]~0_combout\ : std_logic;
SIGNAL \U1|dec_cnt[31]~1_combout\ : std_logic;
SIGNAL \U1|Add0~30\ : std_logic;
SIGNAL \U1|Add0~33_sumout\ : std_logic;
SIGNAL \U1|Add0~34\ : std_logic;
SIGNAL \U1|Add0~37_sumout\ : std_logic;
SIGNAL \U1|eodec~1_combout\ : std_logic;
SIGNAL \U1|eodec~4_combout\ : std_logic;
SIGNAL \U1|eodec~7_combout\ : std_logic;
SIGNAL \U1|Add0~66\ : std_logic;
SIGNAL \U1|Add0~73_sumout\ : std_logic;
SIGNAL \U1|Add0~74\ : std_logic;
SIGNAL \U1|Add0~77_sumout\ : std_logic;
SIGNAL \U1|Add0~78\ : std_logic;
SIGNAL \U1|Add0~81_sumout\ : std_logic;
SIGNAL \U1|Add0~82\ : std_logic;
SIGNAL \U1|Add0~85_sumout\ : std_logic;
SIGNAL \U1|Add0~86\ : std_logic;
SIGNAL \U1|Add0~89_sumout\ : std_logic;
SIGNAL \U1|Add0~90\ : std_logic;
SIGNAL \U1|Add0~93_sumout\ : std_logic;
SIGNAL \U1|Add0~94\ : std_logic;
SIGNAL \U1|Add0~97_sumout\ : std_logic;
SIGNAL \U1|Add0~98\ : std_logic;
SIGNAL \U1|Add0~61_sumout\ : std_logic;
SIGNAL \U1|Add0~62\ : std_logic;
SIGNAL \U1|Add0~57_sumout\ : std_logic;
SIGNAL \U1|Add0~38\ : std_logic;
SIGNAL \U1|Add0~53_sumout\ : std_logic;
SIGNAL \U1|dec_cnt[31]~2_combout\ : std_logic;
SIGNAL \U1|eodec~2_combout\ : std_logic;
SIGNAL \U1|eodec~8_combout\ : std_logic;
SIGNAL \U1|Add0~101_sumout\ : std_logic;
SIGNAL \U1|dec_cnt[0]~3_combout\ : std_logic;
SIGNAL \U1|Add0~102\ : std_logic;
SIGNAL \U1|Add0~105_sumout\ : std_logic;
SIGNAL \U1|Add0~106\ : std_logic;
SIGNAL \U1|Add0~113_sumout\ : std_logic;
SIGNAL \U1|Add0~114\ : std_logic;
SIGNAL \U1|Add0~109_sumout\ : std_logic;
SIGNAL \U1|Add0~110\ : std_logic;
SIGNAL \U1|Add0~117_sumout\ : std_logic;
SIGNAL \U1|Add0~118\ : std_logic;
SIGNAL \U1|Add0~121_sumout\ : std_logic;
SIGNAL \U1|Add0~122\ : std_logic;
SIGNAL \U1|Add0~125_sumout\ : std_logic;
SIGNAL \U1|Add0~126\ : std_logic;
SIGNAL \U1|Add0~41_sumout\ : std_logic;
SIGNAL \U1|Add0~42\ : std_logic;
SIGNAL \U1|Add0~45_sumout\ : std_logic;
SIGNAL \U1|Add0~46\ : std_logic;
SIGNAL \U1|Add0~49_sumout\ : std_logic;
SIGNAL \U1|Add0~50\ : std_logic;
SIGNAL \U1|Add0~5_sumout\ : std_logic;
SIGNAL \U1|Add0~6\ : std_logic;
SIGNAL \U1|Add0~13_sumout\ : std_logic;
SIGNAL \U1|Add0~14\ : std_logic;
SIGNAL \U1|Add0~9_sumout\ : std_logic;
SIGNAL \U1|Add0~10\ : std_logic;
SIGNAL \U1|Add0~17_sumout\ : std_logic;
SIGNAL \U1|Add0~18\ : std_logic;
SIGNAL \U1|Add0~21_sumout\ : std_logic;
SIGNAL \U1|Add0~22\ : std_logic;
SIGNAL \U1|Add0~25_sumout\ : std_logic;
SIGNAL \U1|Add0~26\ : std_logic;
SIGNAL \U1|Add0~69_sumout\ : std_logic;
SIGNAL \U1|Add0~70\ : std_logic;
SIGNAL \U1|Add0~1_sumout\ : std_logic;
SIGNAL \U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|MIDI_DATA~0_combout\ : std_logic;
SIGNAL \U1|MIDI_DATA[21]~feeder_combout\ : std_logic;
SIGNAL \U1|MIDI_DATA[20]~feeder_combout\ : std_logic;
SIGNAL \U1|MIDI_DATA[4]~feeder_combout\ : std_logic;
SIGNAL \U1|NOTE_NUM[7]~0_combout\ : std_logic;
SIGNAL \U1|Equal28~1_combout\ : std_logic;
SIGNAL \U1|Equal28~0_combout\ : std_logic;
SIGNAL \U1|eodec~6_combout\ : std_logic;
SIGNAL \U1|eodec~q\ : std_logic;
SIGNAL \U1|NOTE_NUM[7]~2_combout\ : std_logic;
SIGNAL \U1|NOTE_NUM[7]~1_combout\ : std_logic;
SIGNAL \U1|NOTE_NUM[7]~3_combout\ : std_logic;
SIGNAL \U1|Equal28~2_combout\ : std_logic;
SIGNAL \U1|NOTE_ENABLE~combout\ : std_logic;
SIGNAL \U2|process_0~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux8~3_combout\ : std_logic;
SIGNAL \U2|U1|Mux8~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux8~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux8~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux8~4_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[6]~33_combout\ : std_logic;
SIGNAL \U2|U1|Mux9~3_combout\ : std_logic;
SIGNAL \U2|U1|Mux9~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux9~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux9~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux9~4_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[5]~37_combout\ : std_logic;
SIGNAL \U2|U1|Mux10~3_combout\ : std_logic;
SIGNAL \U2|U1|Mux10~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux10~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux10~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux10~4_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[4]~41_combout\ : std_logic;
SIGNAL \U2|U1|Mux11~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux11~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux11~3_combout\ : std_logic;
SIGNAL \U2|U1|Mux11~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux11~4_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[3]~45_combout\ : std_logic;
SIGNAL \U2|U1|Mux12~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux12~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux12~3_combout\ : std_logic;
SIGNAL \U2|U1|Mux12~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux12~4_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[2]~49_combout\ : std_logic;
SIGNAL \U2|U1|Mux13~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux13~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux13~3_combout\ : std_logic;
SIGNAL \U2|U1|Mux13~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux13~4_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[1]~53_combout\ : std_logic;
SIGNAL \U2|U1|Mux14~3_combout\ : std_logic;
SIGNAL \U2|U1|Mux14~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux14~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux14~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux14~4_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[0]~57_combout\ : std_logic;
SIGNAL \U2|U2|Add0~101_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[0]~59_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[0]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[0]~58_combout\ : std_logic;
SIGNAL \U2|U2|Add0~102\ : std_logic;
SIGNAL \U2|U2|Add0~97_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[1]~55_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[1]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[1]~54_combout\ : std_logic;
SIGNAL \U2|U2|Add0~98\ : std_logic;
SIGNAL \U2|U2|Add0~93_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[2]~51_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[2]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[2]~50_combout\ : std_logic;
SIGNAL \U2|U2|Add0~94\ : std_logic;
SIGNAL \U2|U2|Add0~89_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[3]~47_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[3]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[3]~46_combout\ : std_logic;
SIGNAL \U2|U2|Add0~90\ : std_logic;
SIGNAL \U2|U2|Add0~57_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[4]~43_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[4]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[4]~42_combout\ : std_logic;
SIGNAL \U2|U2|Add0~58\ : std_logic;
SIGNAL \U2|U2|Add0~53_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[5]~39_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[5]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[5]~38_combout\ : std_logic;
SIGNAL \U2|U2|Add0~54\ : std_logic;
SIGNAL \U2|U2|Add0~49_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[6]~35_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[6]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[6]~34_combout\ : std_logic;
SIGNAL \U2|U1|Mux6~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux6~7_combout\ : std_logic;
SIGNAL \U2|U1|Mux6~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux6~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux6~3_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[8]~25_combout\ : std_logic;
SIGNAL \U2|U1|Mux7~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux7~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux7~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux7~3_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[7]~29_combout\ : std_logic;
SIGNAL \U2|U2|Add0~50\ : std_logic;
SIGNAL \U2|U2|Add0~77_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[7]~31_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[7]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[7]~30_combout\ : std_logic;
SIGNAL \U2|U2|Add0~78\ : std_logic;
SIGNAL \U2|U2|Add0~45_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[8]~27_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[8]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[8]~26_combout\ : std_logic;
SIGNAL \U2|U2|Equal0~4_combout\ : std_logic;
SIGNAL \U2|U1|Mux0~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux2~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux2~1_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[12]~9_combout\ : std_logic;
SIGNAL \U2|U1|Mux3~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux3~2_combout\ : std_logic;
SIGNAL \U2|U1|Mux3~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux3~3_combout\ : std_logic;
SIGNAL \U2|U1|Mux4~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux4~1_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[10]~17_combout\ : std_logic;
SIGNAL \U2|U1|Mux5~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux5~1_combout\ : std_logic;
SIGNAL \U2|U2|Add0~46\ : std_logic;
SIGNAL \U2|U2|Add0~73_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[9]~21_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[9]~23_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[9]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[9]~22_combout\ : std_logic;
SIGNAL \U2|U2|Add0~74\ : std_logic;
SIGNAL \U2|U2|Add0~69_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[10]~19_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[10]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[10]~18_combout\ : std_logic;
SIGNAL \U2|U2|Add0~70\ : std_logic;
SIGNAL \U2|U2|Add0~65_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[11]~13_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[11]~15_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[11]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[11]~14_combout\ : std_logic;
SIGNAL \U2|U2|Add0~66\ : std_logic;
SIGNAL \U2|U2|Add0~61_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[12]~11_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[12]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[12]~10_combout\ : std_logic;
SIGNAL \U2|U1|Mux1~0_combout\ : std_logic;
SIGNAL \U2|U1|Mux1~1_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[13]~5_combout\ : std_logic;
SIGNAL \U2|U2|Add0~62\ : std_logic;
SIGNAL \U2|U2|Add0~85_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[13]~7_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[13]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[13]~6_combout\ : std_logic;
SIGNAL \U2|U1|Mux0~1_combout\ : std_logic;
SIGNAL \U2|U1|Mux0~2_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[14]~1_combout\ : std_logic;
SIGNAL \U2|U2|Add0~86\ : std_logic;
SIGNAL \U2|U2|Add0~81_sumout\ : std_logic;
SIGNAL \U2|U2|COUNT[14]~3_combout\ : std_logic;
SIGNAL \U2|U2|COUNT[14]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|COUNT[14]~2_combout\ : std_logic;
SIGNAL \U2|U2|Add0~82\ : std_logic;
SIGNAL \U2|U2|Add0~9_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~10\ : std_logic;
SIGNAL \U2|U2|Add0~13_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~14\ : std_logic;
SIGNAL \U2|U2|Add0~17_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~18\ : std_logic;
SIGNAL \U2|U2|Add0~21_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~22\ : std_logic;
SIGNAL \U2|U2|Add0~1_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~2\ : std_logic;
SIGNAL \U2|U2|Add0~25_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~26\ : std_logic;
SIGNAL \U2|U2|Add0~29_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~30\ : std_logic;
SIGNAL \U2|U2|Add0~33_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~34\ : std_logic;
SIGNAL \U2|U2|Add0~37_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~38\ : std_logic;
SIGNAL \U2|U2|Add0~41_sumout\ : std_logic;
SIGNAL \U2|U2|Add0~42\ : std_logic;
SIGNAL \U2|U2|Add0~5_sumout\ : std_logic;
SIGNAL \U2|U2|Equal0~0_combout\ : std_logic;
SIGNAL \U2|U2|Equal0~1_combout\ : std_logic;
SIGNAL \U2|U2|Equal0~2_combout\ : std_logic;
SIGNAL \U2|U2|Equal0~3_combout\ : std_logic;
SIGNAL \U2|U2|Equal0~5_combout\ : std_logic;
SIGNAL \U2|U2|LO_CLK~0_combout\ : std_logic;
SIGNAL \U2|U2|LO_CLK~q\ : std_logic;
SIGNAL \U2|U3|Add0~21_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[0]~12_combout\ : std_logic;
SIGNAL \U2|U3|Add0~22\ : std_logic;
SIGNAL \U2|U3|Add0~9_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[1]~9_combout\ : std_logic;
SIGNAL \U2|U3|Add0~10\ : std_logic;
SIGNAL \U2|U3|Add0~13_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[2]~10_combout\ : std_logic;
SIGNAL \U2|U3|Add0~14\ : std_logic;
SIGNAL \U2|U3|Add0~5_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[3]~8_combout\ : std_logic;
SIGNAL \U2|U3|Add0~6\ : std_logic;
SIGNAL \U2|U3|Add0~17_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[4]~11_combout\ : std_logic;
SIGNAL \U2|U3|Add0~18\ : std_logic;
SIGNAL \U2|U3|Add0~110\ : std_logic;
SIGNAL \U2|U3|Add0~29_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[6]~14_combout\ : std_logic;
SIGNAL \U2|U3|Add0~30\ : std_logic;
SIGNAL \U2|U3|Add0~25_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[7]~13_combout\ : std_logic;
SIGNAL \U2|U3|Add0~26\ : std_logic;
SIGNAL \U2|U3|Add0~1_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[8]~6_combout\ : std_logic;
SIGNAL \U2|U3|Add0~2\ : std_logic;
SIGNAL \U2|U3|Add0~113_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[9]~35_combout\ : std_logic;
SIGNAL \U2|U3|Add0~114\ : std_logic;
SIGNAL \U2|U3|Add0~37_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[10]~16_combout\ : std_logic;
SIGNAL \U2|U3|Add0~38\ : std_logic;
SIGNAL \U2|U3|Add0~85_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[11]~28_combout\ : std_logic;
SIGNAL \U2|U3|Add0~86\ : std_logic;
SIGNAL \U2|U3|Add0~90\ : std_logic;
SIGNAL \U2|U3|Add0~93_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[13]~30_combout\ : std_logic;
SIGNAL \U2|U3|Add0~94\ : std_logic;
SIGNAL \U2|U3|Add0~97_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[14]~31_combout\ : std_logic;
SIGNAL \U2|U3|Add0~98\ : std_logic;
SIGNAL \U2|U3|Add0~101_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[15]~32_combout\ : std_logic;
SIGNAL \U2|U3|Add0~102\ : std_logic;
SIGNAL \U2|U3|Add0~105_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[16]~33_combout\ : std_logic;
SIGNAL \U2|U3|Add0~106\ : std_logic;
SIGNAL \U2|U3|Add0~61_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[17]~22_combout\ : std_logic;
SIGNAL \U2|U3|Add0~62\ : std_logic;
SIGNAL \U2|U3|Add0~65_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[18]~23_combout\ : std_logic;
SIGNAL \U2|U3|Add0~66\ : std_logic;
SIGNAL \U2|U3|Add0~69_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[19]~24_combout\ : std_logic;
SIGNAL \U2|U3|Add0~70\ : std_logic;
SIGNAL \U2|U3|Add0~73_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[20]~25_combout\ : std_logic;
SIGNAL \U2|U3|Add0~74\ : std_logic;
SIGNAL \U2|U3|Add0~77_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[21]~26_combout\ : std_logic;
SIGNAL \U2|U3|Add0~78\ : std_logic;
SIGNAL \U2|U3|Add0~81_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[22]~27_combout\ : std_logic;
SIGNAL \U2|U3|Add0~82\ : std_logic;
SIGNAL \U2|U3|Add0~41_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[23]~17_combout\ : std_logic;
SIGNAL \U2|U3|Add0~42\ : std_logic;
SIGNAL \U2|U3|Add0~45_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[24]~18_combout\ : std_logic;
SIGNAL \U2|U3|Add0~46\ : std_logic;
SIGNAL \U2|U3|Add0~49_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[25]~19_combout\ : std_logic;
SIGNAL \U2|U3|Add0~50\ : std_logic;
SIGNAL \U2|U3|Add0~53_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[26]~20_combout\ : std_logic;
SIGNAL \U2|U3|Add0~54\ : std_logic;
SIGNAL \U2|U3|Add0~57_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[27]~21_combout\ : std_logic;
SIGNAL \U2|U3|Add0~58\ : std_logic;
SIGNAL \U2|U3|Add0~117_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[28]~36_combout\ : std_logic;
SIGNAL \U2|U3|Add0~118\ : std_logic;
SIGNAL \U2|U3|Add0~121_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[29]~37_combout\ : std_logic;
SIGNAL \U2|U3|Add0~122\ : std_logic;
SIGNAL \U2|U3|Add0~125_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[30]~38_combout\ : std_logic;
SIGNAL \U2|U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|U3|Add0~126\ : std_logic;
SIGNAL \U2|U3|Add0~33_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[31]~15_combout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[8]~7_combout\ : std_logic;
SIGNAL \U2|U3|Add0~89_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[12]~29_combout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[8]~2_combout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[8]~1_combout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[8]~3_combout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[8]~4_combout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[8]~0_combout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[8]~5_combout\ : std_logic;
SIGNAL \U2|U3|Add0~109_sumout\ : std_logic;
SIGNAL \U2|U3|SIGCNT[5]~34_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~10_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~11_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~13_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~12_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~6_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~14_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~15_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~16_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~5_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~0_combout\ : std_logic;
SIGNAL \U2|U3|Mux0~4_combout\ : std_logic;
SIGNAL \U1|MIDI_DATA\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U2|U2|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U1|U1|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U1|dec_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U2|U3|SIGCNT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|NOTE_NUM\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|U3|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT\ : std_logic_vector(25 DOWNTO 15);
SIGNAL \U1|ALT_INV_MIDI_DATA\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U2|U3|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT[23]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MIDI_IN~input_o\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \U1|ALT_INV_NOTE_NUM\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|U2|ALT_INV_COUNT[0]~57_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[1]~53_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[2]~49_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[3]~45_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[13]~5_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[14]~1_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[7]~29_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[9]~21_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[10]~17_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[11]~13_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[12]~9_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[4]~41_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[5]~37_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[6]~33_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[8]~25_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|ALT_INV_NOTE_ENABLE~combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~16_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~15_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~14_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~11_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux6~7_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_eodec~8_combout\ : std_logic;
SIGNAL \U1|ALT_INV_dec_cnt[31]~1_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U2|U2|ALT_INV_COUNT[0]~58_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[0]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[1]~54_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[1]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[2]~50_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[2]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[3]~46_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[3]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[13]~6_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[13]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[14]~2_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[14]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[7]~30_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[7]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[9]~22_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[9]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[10]~18_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[10]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[11]~14_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[11]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[12]~10_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[12]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[4]~42_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[4]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[5]~38_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[5]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[6]~34_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[6]~_emulated_q\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[8]~26_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_COUNT[8]~_emulated_q\ : std_logic;
SIGNAL \U1|ALT_INV_eodec~5_combout\ : std_logic;
SIGNAL \U1|ALT_INV_dec_cnt[31]~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_eodec~4_combout\ : std_logic;
SIGNAL \U1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_dec_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|ALT_INV_eodec~3_combout\ : std_logic;
SIGNAL \U1|ALT_INV_eodec~2_combout\ : std_logic;
SIGNAL \U1|ALT_INV_eodec~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_eodec~0_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_LO_CLK~q\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[30]~38_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[29]~37_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[28]~36_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[9]~35_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[5]~34_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[16]~33_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[15]~32_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[14]~31_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[13]~30_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[12]~29_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[11]~28_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[22]~27_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[21]~26_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[20]~25_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[19]~24_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[18]~23_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[17]~22_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[27]~21_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[26]~20_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[25]~19_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[24]~18_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[23]~17_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[10]~16_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[31]~15_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_NOTE_NUM[7]~3_combout\ : std_logic;
SIGNAL \U1|ALT_INV_NOTE_NUM[7]~2_combout\ : std_logic;
SIGNAL \U1|ALT_INV_NOTE_NUM[7]~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_NOTE_NUM[7]~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_eodec~q\ : std_logic;
SIGNAL \U1|ALT_INV_Equal28~2_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal28~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal28~0_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~10_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[6]~14_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[7]~13_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[0]~12_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[4]~11_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[2]~10_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[1]~9_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[3]~8_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[8]~7_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[8]~6_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[8]~5_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[8]~4_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[8]~3_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[8]~2_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[8]~1_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_SIGCNT[8]~0_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_LO_CLK~q\ : std_logic;
SIGNAL \U2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Add0~41_sumout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_MIDI_IN <= MIDI_IN;
Mod_out <= ww_Mod_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U2|U3|ALT_INV_Add0~37_sumout\ <= NOT \U2|U3|Add0~37_sumout\;
\U2|U3|ALT_INV_Add0~33_sumout\ <= NOT \U2|U3|Add0~33_sumout\;
\U2|U2|ALT_INV_COUNT\(24) <= NOT \U2|U2|COUNT\(24);
\U2|U2|ALT_INV_COUNT\(23) <= NOT \U2|U2|COUNT\(23);
\U2|U2|ALT_INV_COUNT\(22) <= NOT \U2|U2|COUNT\(22);
\U2|U2|ALT_INV_COUNT\(21) <= NOT \U2|U2|COUNT\(21);
\U2|U2|ALT_INV_COUNT\(20) <= NOT \U2|U2|COUNT\(20);
\U2|U2|ALT_INV_COUNT\(18) <= NOT \U2|U2|COUNT\(18);
\U2|U2|ALT_INV_COUNT\(17) <= NOT \U2|U2|COUNT\(17);
\U2|U2|ALT_INV_COUNT\(16) <= NOT \U2|U2|COUNT\(16);
\U2|U2|ALT_INV_COUNT\(15) <= NOT \U2|U2|COUNT\(15);
\U2|U2|ALT_INV_COUNT\(25) <= NOT \U2|U2|COUNT\(25);
\U2|U2|ALT_INV_COUNT\(19) <= NOT \U2|U2|COUNT\(19);
\U1|ALT_INV_MIDI_DATA\(15) <= NOT \U1|MIDI_DATA\(15);
\U1|ALT_INV_MIDI_DATA\(14) <= NOT \U1|MIDI_DATA\(14);
\U1|ALT_INV_MIDI_DATA\(7) <= NOT \U1|MIDI_DATA\(7);
\U1|ALT_INV_MIDI_DATA\(6) <= NOT \U1|MIDI_DATA\(6);
\U1|ALT_INV_MIDI_DATA\(5) <= NOT \U1|MIDI_DATA\(5);
\U1|ALT_INV_MIDI_DATA\(4) <= NOT \U1|MIDI_DATA\(4);
\U1|ALT_INV_MIDI_DATA\(3) <= NOT \U1|MIDI_DATA\(3);
\U1|ALT_INV_MIDI_DATA\(0) <= NOT \U1|MIDI_DATA\(0);
\U1|ALT_INV_MIDI_DATA\(1) <= NOT \U1|MIDI_DATA\(1);
\U1|ALT_INV_MIDI_DATA\(2) <= NOT \U1|MIDI_DATA\(2);
\U1|ALT_INV_MIDI_DATA\(21) <= NOT \U1|MIDI_DATA\(21);
\U1|ALT_INV_MIDI_DATA\(23) <= NOT \U1|MIDI_DATA\(23);
\U1|ALT_INV_MIDI_DATA\(20) <= NOT \U1|MIDI_DATA\(20);
\U1|ALT_INV_MIDI_DATA\(22) <= NOT \U1|MIDI_DATA\(22);
\U1|ALT_INV_MIDI_DATA\(18) <= NOT \U1|MIDI_DATA\(18);
\U1|ALT_INV_MIDI_DATA\(17) <= NOT \U1|MIDI_DATA\(17);
\U1|ALT_INV_MIDI_DATA\(16) <= NOT \U1|MIDI_DATA\(16);
\U1|ALT_INV_MIDI_DATA\(19) <= NOT \U1|MIDI_DATA\(19);
\U2|U3|ALT_INV_Add0~29_sumout\ <= NOT \U2|U3|Add0~29_sumout\;
\U2|U3|ALT_INV_Add0~25_sumout\ <= NOT \U2|U3|Add0~25_sumout\;
\U2|U3|ALT_INV_Add0~21_sumout\ <= NOT \U2|U3|Add0~21_sumout\;
\U2|U3|ALT_INV_Add0~17_sumout\ <= NOT \U2|U3|Add0~17_sumout\;
\U2|U3|ALT_INV_Add0~13_sumout\ <= NOT \U2|U3|Add0~13_sumout\;
\U2|U3|ALT_INV_Add0~9_sumout\ <= NOT \U2|U3|Add0~9_sumout\;
\U2|U3|ALT_INV_Add0~5_sumout\ <= NOT \U2|U3|Add0~5_sumout\;
\U2|U3|ALT_INV_Add0~1_sumout\ <= NOT \U2|U3|Add0~1_sumout\;
\U2|U3|ALT_INV_Mux0~6_combout\ <= NOT \U2|U3|Mux0~6_combout\;
\U2|U3|ALT_INV_Mux0~0_combout\ <= NOT \U2|U3|Mux0~0_combout\;
\U1|U1|ALT_INV_COUNT[11]~DUPLICATE_q\ <= NOT \U1|U1|COUNT[11]~DUPLICATE_q\;
\U1|U1|ALT_INV_COUNT[12]~DUPLICATE_q\ <= NOT \U1|U1|COUNT[12]~DUPLICATE_q\;
\U1|U1|ALT_INV_COUNT[18]~DUPLICATE_q\ <= NOT \U1|U1|COUNT[18]~DUPLICATE_q\;
\U1|U1|ALT_INV_COUNT[23]~DUPLICATE_q\ <= NOT \U1|U1|COUNT[23]~DUPLICATE_q\;
\U1|U1|ALT_INV_COUNT[20]~DUPLICATE_q\ <= NOT \U1|U1|COUNT[20]~DUPLICATE_q\;
\U1|U1|ALT_INV_COUNT[15]~DUPLICATE_q\ <= NOT \U1|U1|COUNT[15]~DUPLICATE_q\;
\U1|U1|ALT_INV_COUNT[1]~DUPLICATE_q\ <= NOT \U1|U1|COUNT[1]~DUPLICATE_q\;
\U1|U1|ALT_INV_COUNT[0]~DUPLICATE_q\ <= NOT \U1|U1|COUNT[0]~DUPLICATE_q\;
\U1|U1|ALT_INV_COUNT[25]~DUPLICATE_q\ <= NOT \U1|U1|COUNT[25]~DUPLICATE_q\;
\ALT_INV_MIDI_IN~input_o\ <= NOT \MIDI_IN~input_o\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\U1|ALT_INV_NOTE_NUM\(6) <= NOT \U1|NOTE_NUM\(6);
\U1|ALT_INV_NOTE_NUM\(5) <= NOT \U1|NOTE_NUM\(5);
\U1|ALT_INV_NOTE_NUM\(0) <= NOT \U1|NOTE_NUM\(0);
\U1|ALT_INV_NOTE_NUM\(1) <= NOT \U1|NOTE_NUM\(1);
\U1|ALT_INV_NOTE_NUM\(2) <= NOT \U1|NOTE_NUM\(2);
\U1|ALT_INV_NOTE_NUM\(3) <= NOT \U1|NOTE_NUM\(3);
\U1|ALT_INV_NOTE_NUM\(4) <= NOT \U1|NOTE_NUM\(4);
\U1|ALT_INV_NOTE_NUM\(7) <= NOT \U1|NOTE_NUM\(7);
\U2|U2|ALT_INV_COUNT[0]~57_combout\ <= NOT \U2|U2|COUNT[0]~57_combout\;
\U2|U2|ALT_INV_COUNT[1]~53_combout\ <= NOT \U2|U2|COUNT[1]~53_combout\;
\U2|U2|ALT_INV_COUNT[2]~49_combout\ <= NOT \U2|U2|COUNT[2]~49_combout\;
\U2|U2|ALT_INV_COUNT[3]~45_combout\ <= NOT \U2|U2|COUNT[3]~45_combout\;
\U2|U2|ALT_INV_COUNT[13]~5_combout\ <= NOT \U2|U2|COUNT[13]~5_combout\;
\U2|U2|ALT_INV_COUNT[14]~1_combout\ <= NOT \U2|U2|COUNT[14]~1_combout\;
\U2|U2|ALT_INV_COUNT[7]~29_combout\ <= NOT \U2|U2|COUNT[7]~29_combout\;
\U2|U2|ALT_INV_COUNT[9]~21_combout\ <= NOT \U2|U2|COUNT[9]~21_combout\;
\U2|U2|ALT_INV_COUNT[10]~17_combout\ <= NOT \U2|U2|COUNT[10]~17_combout\;
\U2|U2|ALT_INV_COUNT[11]~13_combout\ <= NOT \U2|U2|COUNT[11]~13_combout\;
\U2|U2|ALT_INV_COUNT[12]~9_combout\ <= NOT \U2|U2|COUNT[12]~9_combout\;
\U2|U2|ALT_INV_COUNT[4]~41_combout\ <= NOT \U2|U2|COUNT[4]~41_combout\;
\U2|U2|ALT_INV_COUNT[5]~37_combout\ <= NOT \U2|U2|COUNT[5]~37_combout\;
\U2|U2|ALT_INV_COUNT[6]~33_combout\ <= NOT \U2|U2|COUNT[6]~33_combout\;
\U2|U2|ALT_INV_COUNT[8]~25_combout\ <= NOT \U2|U2|COUNT[8]~25_combout\;
\U2|U3|ALT_INV_SIGCNT\(30) <= NOT \U2|U3|SIGCNT\(30);
\U2|U3|ALT_INV_SIGCNT\(29) <= NOT \U2|U3|SIGCNT\(29);
\U2|U3|ALT_INV_SIGCNT\(28) <= NOT \U2|U3|SIGCNT\(28);
\U2|U3|ALT_INV_SIGCNT\(9) <= NOT \U2|U3|SIGCNT\(9);
\U2|U3|ALT_INV_SIGCNT\(5) <= NOT \U2|U3|SIGCNT\(5);
\U2|U3|ALT_INV_SIGCNT\(16) <= NOT \U2|U3|SIGCNT\(16);
\U2|U3|ALT_INV_SIGCNT\(15) <= NOT \U2|U3|SIGCNT\(15);
\U2|U3|ALT_INV_SIGCNT\(14) <= NOT \U2|U3|SIGCNT\(14);
\U2|U3|ALT_INV_SIGCNT\(13) <= NOT \U2|U3|SIGCNT\(13);
\U2|U3|ALT_INV_SIGCNT\(12) <= NOT \U2|U3|SIGCNT\(12);
\U2|U3|ALT_INV_SIGCNT\(11) <= NOT \U2|U3|SIGCNT\(11);
\U2|U3|ALT_INV_SIGCNT\(22) <= NOT \U2|U3|SIGCNT\(22);
\U2|U3|ALT_INV_SIGCNT\(21) <= NOT \U2|U3|SIGCNT\(21);
\U2|U3|ALT_INV_SIGCNT\(20) <= NOT \U2|U3|SIGCNT\(20);
\U2|U3|ALT_INV_SIGCNT\(19) <= NOT \U2|U3|SIGCNT\(19);
\U2|U3|ALT_INV_SIGCNT\(18) <= NOT \U2|U3|SIGCNT\(18);
\U2|U3|ALT_INV_SIGCNT\(17) <= NOT \U2|U3|SIGCNT\(17);
\U2|U3|ALT_INV_SIGCNT\(27) <= NOT \U2|U3|SIGCNT\(27);
\U2|U3|ALT_INV_SIGCNT\(26) <= NOT \U2|U3|SIGCNT\(26);
\U2|U3|ALT_INV_SIGCNT\(25) <= NOT \U2|U3|SIGCNT\(25);
\U2|U3|ALT_INV_SIGCNT\(24) <= NOT \U2|U3|SIGCNT\(24);
\U2|U3|ALT_INV_SIGCNT\(23) <= NOT \U2|U3|SIGCNT\(23);
\U2|U3|ALT_INV_SIGCNT\(10) <= NOT \U2|U3|SIGCNT\(10);
\U2|U3|ALT_INV_SIGCNT\(31) <= NOT \U2|U3|SIGCNT\(31);
\U1|ALT_INV_NOTE_ENABLE~combout\ <= NOT \U1|NOTE_ENABLE~combout\;
\U2|U3|ALT_INV_SIGCNT\(6) <= NOT \U2|U3|SIGCNT\(6);
\U2|U3|ALT_INV_SIGCNT\(7) <= NOT \U2|U3|SIGCNT\(7);
\U2|U3|ALT_INV_SIGCNT\(0) <= NOT \U2|U3|SIGCNT\(0);
\U2|U3|ALT_INV_SIGCNT\(4) <= NOT \U2|U3|SIGCNT\(4);
\U2|U3|ALT_INV_SIGCNT\(2) <= NOT \U2|U3|SIGCNT\(2);
\U2|U3|ALT_INV_SIGCNT\(1) <= NOT \U2|U3|SIGCNT\(1);
\U2|U3|ALT_INV_SIGCNT\(3) <= NOT \U2|U3|SIGCNT\(3);
\U2|U3|ALT_INV_SIGCNT\(8) <= NOT \U2|U3|SIGCNT\(8);
\U2|U3|ALT_INV_Mux0~16_combout\ <= NOT \U2|U3|Mux0~16_combout\;
\U2|U3|ALT_INV_Mux0~15_combout\ <= NOT \U2|U3|Mux0~15_combout\;
\U2|U3|ALT_INV_Mux0~14_combout\ <= NOT \U2|U3|Mux0~14_combout\;
\U2|U3|ALT_INV_Mux0~13_combout\ <= NOT \U2|U3|Mux0~13_combout\;
\U2|U3|ALT_INV_Mux0~12_combout\ <= NOT \U2|U3|Mux0~12_combout\;
\U2|U3|ALT_INV_Mux0~11_combout\ <= NOT \U2|U3|Mux0~11_combout\;
\U2|U1|ALT_INV_Mux6~7_combout\ <= NOT \U2|U1|Mux6~7_combout\;
\U2|U1|ALT_INV_Mux14~3_combout\ <= NOT \U2|U1|Mux14~3_combout\;
\U2|U1|ALT_INV_Mux14~2_combout\ <= NOT \U2|U1|Mux14~2_combout\;
\U2|U1|ALT_INV_Mux14~1_combout\ <= NOT \U2|U1|Mux14~1_combout\;
\U2|U1|ALT_INV_Mux14~0_combout\ <= NOT \U2|U1|Mux14~0_combout\;
\U2|U1|ALT_INV_Mux13~3_combout\ <= NOT \U2|U1|Mux13~3_combout\;
\U2|U1|ALT_INV_Mux13~2_combout\ <= NOT \U2|U1|Mux13~2_combout\;
\U2|U1|ALT_INV_Mux13~1_combout\ <= NOT \U2|U1|Mux13~1_combout\;
\U2|U1|ALT_INV_Mux13~0_combout\ <= NOT \U2|U1|Mux13~0_combout\;
\U2|U1|ALT_INV_Mux12~3_combout\ <= NOT \U2|U1|Mux12~3_combout\;
\U2|U1|ALT_INV_Mux12~2_combout\ <= NOT \U2|U1|Mux12~2_combout\;
\U2|U1|ALT_INV_Mux12~1_combout\ <= NOT \U2|U1|Mux12~1_combout\;
\U2|U1|ALT_INV_Mux12~0_combout\ <= NOT \U2|U1|Mux12~0_combout\;
\U2|U1|ALT_INV_Mux11~3_combout\ <= NOT \U2|U1|Mux11~3_combout\;
\U2|U1|ALT_INV_Mux11~2_combout\ <= NOT \U2|U1|Mux11~2_combout\;
\U2|U1|ALT_INV_Mux11~1_combout\ <= NOT \U2|U1|Mux11~1_combout\;
\U2|U1|ALT_INV_Mux11~0_combout\ <= NOT \U2|U1|Mux11~0_combout\;
\U2|U1|ALT_INV_Mux1~1_combout\ <= NOT \U2|U1|Mux1~1_combout\;
\U2|U1|ALT_INV_Mux1~0_combout\ <= NOT \U2|U1|Mux1~0_combout\;
\U2|U1|ALT_INV_Mux0~2_combout\ <= NOT \U2|U1|Mux0~2_combout\;
\U2|U1|ALT_INV_Mux0~1_combout\ <= NOT \U2|U1|Mux0~1_combout\;
\U2|U1|ALT_INV_Mux7~2_combout\ <= NOT \U2|U1|Mux7~2_combout\;
\U2|U1|ALT_INV_Mux7~1_combout\ <= NOT \U2|U1|Mux7~1_combout\;
\U2|U1|ALT_INV_Mux7~0_combout\ <= NOT \U2|U1|Mux7~0_combout\;
\U2|U1|ALT_INV_Mux5~1_combout\ <= NOT \U2|U1|Mux5~1_combout\;
\U2|U1|ALT_INV_Mux5~0_combout\ <= NOT \U2|U1|Mux5~0_combout\;
\U2|U1|ALT_INV_Mux4~1_combout\ <= NOT \U2|U1|Mux4~1_combout\;
\U2|U1|ALT_INV_Mux4~0_combout\ <= NOT \U2|U1|Mux4~0_combout\;
\U2|U1|ALT_INV_Mux3~3_combout\ <= NOT \U2|U1|Mux3~3_combout\;
\U2|U1|ALT_INV_Mux3~2_combout\ <= NOT \U2|U1|Mux3~2_combout\;
\U2|U1|ALT_INV_Mux3~1_combout\ <= NOT \U2|U1|Mux3~1_combout\;
\U2|U1|ALT_INV_Mux3~0_combout\ <= NOT \U2|U1|Mux3~0_combout\;
\U2|U1|ALT_INV_Mux2~1_combout\ <= NOT \U2|U1|Mux2~1_combout\;
\U2|U1|ALT_INV_Mux2~0_combout\ <= NOT \U2|U1|Mux2~0_combout\;
\U2|U1|ALT_INV_Mux0~0_combout\ <= NOT \U2|U1|Mux0~0_combout\;
\U2|U1|ALT_INV_Mux10~3_combout\ <= NOT \U2|U1|Mux10~3_combout\;
\U2|U1|ALT_INV_Mux10~2_combout\ <= NOT \U2|U1|Mux10~2_combout\;
\U2|U1|ALT_INV_Mux10~1_combout\ <= NOT \U2|U1|Mux10~1_combout\;
\U2|U1|ALT_INV_Mux10~0_combout\ <= NOT \U2|U1|Mux10~0_combout\;
\U2|U1|ALT_INV_Mux9~3_combout\ <= NOT \U2|U1|Mux9~3_combout\;
\U2|U1|ALT_INV_Mux9~2_combout\ <= NOT \U2|U1|Mux9~2_combout\;
\U2|U1|ALT_INV_Mux9~1_combout\ <= NOT \U2|U1|Mux9~1_combout\;
\U2|U1|ALT_INV_Mux9~0_combout\ <= NOT \U2|U1|Mux9~0_combout\;
\U2|U1|ALT_INV_Mux8~3_combout\ <= NOT \U2|U1|Mux8~3_combout\;
\U2|U1|ALT_INV_Mux8~2_combout\ <= NOT \U2|U1|Mux8~2_combout\;
\U2|U1|ALT_INV_Mux8~1_combout\ <= NOT \U2|U1|Mux8~1_combout\;
\U2|U1|ALT_INV_Mux8~0_combout\ <= NOT \U2|U1|Mux8~0_combout\;
\U2|U1|ALT_INV_Mux6~2_combout\ <= NOT \U2|U1|Mux6~2_combout\;
\U2|U1|ALT_INV_Mux6~1_combout\ <= NOT \U2|U1|Mux6~1_combout\;
\U2|U1|ALT_INV_Mux6~0_combout\ <= NOT \U2|U1|Mux6~0_combout\;
\U1|ALT_INV_eodec~8_combout\ <= NOT \U1|eodec~8_combout\;
\U1|ALT_INV_dec_cnt[31]~1_combout\ <= NOT \U1|dec_cnt[31]~1_combout\;
\U1|U1|ALT_INV_Equal0~4_combout\ <= NOT \U1|U1|Equal0~4_combout\;
\U1|U1|ALT_INV_Equal0~3_combout\ <= NOT \U1|U1|Equal0~3_combout\;
\U1|U1|ALT_INV_Equal0~2_combout\ <= NOT \U1|U1|Equal0~2_combout\;
\U1|U1|ALT_INV_Equal0~1_combout\ <= NOT \U1|U1|Equal0~1_combout\;
\U1|U1|ALT_INV_Equal0~0_combout\ <= NOT \U1|U1|Equal0~0_combout\;
\U1|U1|ALT_INV_COUNT\(7) <= NOT \U1|U1|COUNT\(7);
\U1|U1|ALT_INV_COUNT\(9) <= NOT \U1|U1|COUNT\(9);
\U1|U1|ALT_INV_COUNT\(11) <= NOT \U1|U1|COUNT\(11);
\U1|U1|ALT_INV_COUNT\(12) <= NOT \U1|U1|COUNT\(12);
\U1|U1|ALT_INV_COUNT\(17) <= NOT \U1|U1|COUNT\(17);
\U1|U1|ALT_INV_COUNT\(18) <= NOT \U1|U1|COUNT\(18);
\U2|U2|ALT_INV_COUNT[0]~58_combout\ <= NOT \U2|U2|COUNT[0]~58_combout\;
\U2|U2|ALT_INV_COUNT[0]~_emulated_q\ <= NOT \U2|U2|COUNT[0]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[1]~54_combout\ <= NOT \U2|U2|COUNT[1]~54_combout\;
\U2|U2|ALT_INV_COUNT[1]~_emulated_q\ <= NOT \U2|U2|COUNT[1]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[2]~50_combout\ <= NOT \U2|U2|COUNT[2]~50_combout\;
\U2|U2|ALT_INV_COUNT[2]~_emulated_q\ <= NOT \U2|U2|COUNT[2]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[3]~46_combout\ <= NOT \U2|U2|COUNT[3]~46_combout\;
\U2|U2|ALT_INV_COUNT[3]~_emulated_q\ <= NOT \U2|U2|COUNT[3]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[13]~6_combout\ <= NOT \U2|U2|COUNT[13]~6_combout\;
\U2|U2|ALT_INV_COUNT[13]~_emulated_q\ <= NOT \U2|U2|COUNT[13]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[14]~2_combout\ <= NOT \U2|U2|COUNT[14]~2_combout\;
\U2|U2|ALT_INV_COUNT[14]~_emulated_q\ <= NOT \U2|U2|COUNT[14]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[7]~30_combout\ <= NOT \U2|U2|COUNT[7]~30_combout\;
\U2|U2|ALT_INV_COUNT[7]~_emulated_q\ <= NOT \U2|U2|COUNT[7]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[9]~22_combout\ <= NOT \U2|U2|COUNT[9]~22_combout\;
\U2|U2|ALT_INV_COUNT[9]~_emulated_q\ <= NOT \U2|U2|COUNT[9]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[10]~18_combout\ <= NOT \U2|U2|COUNT[10]~18_combout\;
\U2|U2|ALT_INV_COUNT[10]~_emulated_q\ <= NOT \U2|U2|COUNT[10]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[11]~14_combout\ <= NOT \U2|U2|COUNT[11]~14_combout\;
\U2|U2|ALT_INV_COUNT[11]~_emulated_q\ <= NOT \U2|U2|COUNT[11]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[12]~10_combout\ <= NOT \U2|U2|COUNT[12]~10_combout\;
\U2|U2|ALT_INV_COUNT[12]~_emulated_q\ <= NOT \U2|U2|COUNT[12]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[4]~42_combout\ <= NOT \U2|U2|COUNT[4]~42_combout\;
\U2|U2|ALT_INV_COUNT[4]~_emulated_q\ <= NOT \U2|U2|COUNT[4]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[5]~38_combout\ <= NOT \U2|U2|COUNT[5]~38_combout\;
\U2|U2|ALT_INV_COUNT[5]~_emulated_q\ <= NOT \U2|U2|COUNT[5]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[6]~34_combout\ <= NOT \U2|U2|COUNT[6]~34_combout\;
\U2|U2|ALT_INV_COUNT[6]~_emulated_q\ <= NOT \U2|U2|COUNT[6]~_emulated_q\;
\U2|U2|ALT_INV_COUNT[8]~26_combout\ <= NOT \U2|U2|COUNT[8]~26_combout\;
\U2|U2|ALT_INV_COUNT[8]~_emulated_q\ <= NOT \U2|U2|COUNT[8]~_emulated_q\;
\U1|ALT_INV_eodec~5_combout\ <= NOT \U1|eodec~5_combout\;
\U1|ALT_INV_dec_cnt[31]~0_combout\ <= NOT \U1|dec_cnt[31]~0_combout\;
\U1|ALT_INV_eodec~4_combout\ <= NOT \U1|eodec~4_combout\;
\U1|ALT_INV_process_0~2_combout\ <= NOT \U1|process_0~2_combout\;
\U1|ALT_INV_process_0~1_combout\ <= NOT \U1|process_0~1_combout\;
\U1|ALT_INV_process_0~0_combout\ <= NOT \U1|process_0~0_combout\;
\U1|ALT_INV_dec_cnt\(0) <= NOT \U1|dec_cnt\(0);
\U1|ALT_INV_eodec~3_combout\ <= NOT \U1|eodec~3_combout\;
\U1|ALT_INV_eodec~2_combout\ <= NOT \U1|eodec~2_combout\;
\U1|ALT_INV_dec_cnt\(31) <= NOT \U1|dec_cnt\(31);
\U1|ALT_INV_eodec~1_combout\ <= NOT \U1|eodec~1_combout\;
\U1|ALT_INV_eodec~0_combout\ <= NOT \U1|eodec~0_combout\;
\U1|U1|ALT_INV_LO_CLK~q\ <= NOT \U1|U1|LO_CLK~q\;
\U2|U3|ALT_INV_SIGCNT[30]~38_combout\ <= NOT \U2|U3|SIGCNT[30]~38_combout\;
\U2|U3|ALT_INV_SIGCNT[29]~37_combout\ <= NOT \U2|U3|SIGCNT[29]~37_combout\;
\U2|U3|ALT_INV_SIGCNT[28]~36_combout\ <= NOT \U2|U3|SIGCNT[28]~36_combout\;
\U2|U3|ALT_INV_SIGCNT[9]~35_combout\ <= NOT \U2|U3|SIGCNT[9]~35_combout\;
\U2|U3|ALT_INV_SIGCNT[5]~34_combout\ <= NOT \U2|U3|SIGCNT[5]~34_combout\;
\U2|U3|ALT_INV_SIGCNT[16]~33_combout\ <= NOT \U2|U3|SIGCNT[16]~33_combout\;
\U2|U3|ALT_INV_SIGCNT[15]~32_combout\ <= NOT \U2|U3|SIGCNT[15]~32_combout\;
\U2|U3|ALT_INV_SIGCNT[14]~31_combout\ <= NOT \U2|U3|SIGCNT[14]~31_combout\;
\U2|U3|ALT_INV_SIGCNT[13]~30_combout\ <= NOT \U2|U3|SIGCNT[13]~30_combout\;
\U2|U3|ALT_INV_SIGCNT[12]~29_combout\ <= NOT \U2|U3|SIGCNT[12]~29_combout\;
\U2|U3|ALT_INV_SIGCNT[11]~28_combout\ <= NOT \U2|U3|SIGCNT[11]~28_combout\;
\U2|U3|ALT_INV_SIGCNT[22]~27_combout\ <= NOT \U2|U3|SIGCNT[22]~27_combout\;
\U2|U3|ALT_INV_SIGCNT[21]~26_combout\ <= NOT \U2|U3|SIGCNT[21]~26_combout\;
\U2|U3|ALT_INV_SIGCNT[20]~25_combout\ <= NOT \U2|U3|SIGCNT[20]~25_combout\;
\U2|U3|ALT_INV_SIGCNT[19]~24_combout\ <= NOT \U2|U3|SIGCNT[19]~24_combout\;
\U2|U3|ALT_INV_SIGCNT[18]~23_combout\ <= NOT \U2|U3|SIGCNT[18]~23_combout\;
\U2|U3|ALT_INV_SIGCNT[17]~22_combout\ <= NOT \U2|U3|SIGCNT[17]~22_combout\;
\U2|U3|ALT_INV_SIGCNT[27]~21_combout\ <= NOT \U2|U3|SIGCNT[27]~21_combout\;
\U2|U3|ALT_INV_SIGCNT[26]~20_combout\ <= NOT \U2|U3|SIGCNT[26]~20_combout\;
\U2|U3|ALT_INV_SIGCNT[25]~19_combout\ <= NOT \U2|U3|SIGCNT[25]~19_combout\;
\U2|U3|ALT_INV_SIGCNT[24]~18_combout\ <= NOT \U2|U3|SIGCNT[24]~18_combout\;
\U2|U3|ALT_INV_SIGCNT[23]~17_combout\ <= NOT \U2|U3|SIGCNT[23]~17_combout\;
\U2|U3|ALT_INV_SIGCNT[10]~16_combout\ <= NOT \U2|U3|SIGCNT[10]~16_combout\;
\U2|U3|ALT_INV_SIGCNT[31]~15_combout\ <= NOT \U2|U3|SIGCNT[31]~15_combout\;
\U2|U2|ALT_INV_Equal0~5_combout\ <= NOT \U2|U2|Equal0~5_combout\;
\U2|U2|ALT_INV_Equal0~4_combout\ <= NOT \U2|U2|Equal0~4_combout\;
\U2|U2|ALT_INV_Equal0~3_combout\ <= NOT \U2|U2|Equal0~3_combout\;
\U2|U2|ALT_INV_Equal0~2_combout\ <= NOT \U2|U2|Equal0~2_combout\;
\U2|U2|ALT_INV_Equal0~1_combout\ <= NOT \U2|U2|Equal0~1_combout\;
\U2|U2|ALT_INV_Equal0~0_combout\ <= NOT \U2|U2|Equal0~0_combout\;
\U1|ALT_INV_NOTE_NUM[7]~3_combout\ <= NOT \U1|NOTE_NUM[7]~3_combout\;
\U1|ALT_INV_NOTE_NUM[7]~2_combout\ <= NOT \U1|NOTE_NUM[7]~2_combout\;
\U1|ALT_INV_NOTE_NUM[7]~1_combout\ <= NOT \U1|NOTE_NUM[7]~1_combout\;
\U1|ALT_INV_NOTE_NUM[7]~0_combout\ <= NOT \U1|NOTE_NUM[7]~0_combout\;
\U1|ALT_INV_eodec~q\ <= NOT \U1|eodec~q\;
\U1|ALT_INV_Equal28~2_combout\ <= NOT \U1|Equal28~2_combout\;
\U1|ALT_INV_Equal28~1_combout\ <= NOT \U1|Equal28~1_combout\;
\U1|ALT_INV_Equal28~0_combout\ <= NOT \U1|Equal28~0_combout\;
\U2|U3|ALT_INV_Mux0~10_combout\ <= NOT \U2|U3|Mux0~10_combout\;
\U2|U3|ALT_INV_SIGCNT[6]~14_combout\ <= NOT \U2|U3|SIGCNT[6]~14_combout\;
\U2|U3|ALT_INV_SIGCNT[7]~13_combout\ <= NOT \U2|U3|SIGCNT[7]~13_combout\;
\U2|U3|ALT_INV_SIGCNT[0]~12_combout\ <= NOT \U2|U3|SIGCNT[0]~12_combout\;
\U2|U3|ALT_INV_SIGCNT[4]~11_combout\ <= NOT \U2|U3|SIGCNT[4]~11_combout\;
\U2|U3|ALT_INV_SIGCNT[2]~10_combout\ <= NOT \U2|U3|SIGCNT[2]~10_combout\;
\U2|U3|ALT_INV_SIGCNT[1]~9_combout\ <= NOT \U2|U3|SIGCNT[1]~9_combout\;
\U2|U3|ALT_INV_SIGCNT[3]~8_combout\ <= NOT \U2|U3|SIGCNT[3]~8_combout\;
\U2|U3|ALT_INV_SIGCNT[8]~7_combout\ <= NOT \U2|U3|SIGCNT[8]~7_combout\;
\U2|U3|ALT_INV_SIGCNT[8]~6_combout\ <= NOT \U2|U3|SIGCNT[8]~6_combout\;
\U2|U3|ALT_INV_LessThan0~0_combout\ <= NOT \U2|U3|LessThan0~0_combout\;
\U2|U3|ALT_INV_SIGCNT[8]~5_combout\ <= NOT \U2|U3|SIGCNT[8]~5_combout\;
\U2|U3|ALT_INV_SIGCNT[8]~4_combout\ <= NOT \U2|U3|SIGCNT[8]~4_combout\;
\U2|U3|ALT_INV_SIGCNT[8]~3_combout\ <= NOT \U2|U3|SIGCNT[8]~3_combout\;
\U2|U3|ALT_INV_SIGCNT[8]~2_combout\ <= NOT \U2|U3|SIGCNT[8]~2_combout\;
\U2|U3|ALT_INV_SIGCNT[8]~1_combout\ <= NOT \U2|U3|SIGCNT[8]~1_combout\;
\U2|U3|ALT_INV_SIGCNT[8]~0_combout\ <= NOT \U2|U3|SIGCNT[8]~0_combout\;
\U2|U2|ALT_INV_LO_CLK~q\ <= NOT \U2|U2|LO_CLK~q\;
\U2|ALT_INV_process_0~0_combout\ <= NOT \U2|process_0~0_combout\;
\U2|U3|ALT_INV_Mux0~5_combout\ <= NOT \U2|U3|Mux0~5_combout\;
\U2|U1|ALT_INV_Mux6~3_combout\ <= NOT \U2|U1|Mux6~3_combout\;
\U2|U1|ALT_INV_Mux8~4_combout\ <= NOT \U2|U1|Mux8~4_combout\;
\U2|U1|ALT_INV_Mux9~4_combout\ <= NOT \U2|U1|Mux9~4_combout\;
\U2|U1|ALT_INV_Mux10~4_combout\ <= NOT \U2|U1|Mux10~4_combout\;
\U2|U1|ALT_INV_Mux7~3_combout\ <= NOT \U2|U1|Mux7~3_combout\;
\U2|U1|ALT_INV_Mux11~4_combout\ <= NOT \U2|U1|Mux11~4_combout\;
\U2|U1|ALT_INV_Mux12~4_combout\ <= NOT \U2|U1|Mux12~4_combout\;
\U2|U1|ALT_INV_Mux13~4_combout\ <= NOT \U2|U1|Mux13~4_combout\;
\U2|U1|ALT_INV_Mux14~4_combout\ <= NOT \U2|U1|Mux14~4_combout\;
\U1|ALT_INV_MIDI_DATA\(13) <= NOT \U1|MIDI_DATA\(13);
\U1|ALT_INV_MIDI_DATA\(11) <= NOT \U1|MIDI_DATA\(11);
\U1|ALT_INV_MIDI_DATA\(12) <= NOT \U1|MIDI_DATA\(12);
\U1|ALT_INV_MIDI_DATA\(10) <= NOT \U1|MIDI_DATA\(10);
\U1|U1|ALT_INV_Add0~29_sumout\ <= NOT \U1|U1|Add0~29_sumout\;
\U1|U1|ALT_INV_Add0~25_sumout\ <= NOT \U1|U1|Add0~25_sumout\;
\U1|U1|ALT_INV_Add0~21_sumout\ <= NOT \U1|U1|Add0~21_sumout\;
\U1|U1|ALT_INV_Add0~17_sumout\ <= NOT \U1|U1|Add0~17_sumout\;
\U1|U1|ALT_INV_Add0~13_sumout\ <= NOT \U1|U1|Add0~13_sumout\;
\U1|U1|ALT_INV_Add0~9_sumout\ <= NOT \U1|U1|Add0~9_sumout\;
\U2|U2|ALT_INV_Add0~101_sumout\ <= NOT \U2|U2|Add0~101_sumout\;
\U2|U2|ALT_INV_Add0~97_sumout\ <= NOT \U2|U2|Add0~97_sumout\;
\U2|U2|ALT_INV_Add0~93_sumout\ <= NOT \U2|U2|Add0~93_sumout\;
\U2|U2|ALT_INV_Add0~89_sumout\ <= NOT \U2|U2|Add0~89_sumout\;
\U2|U2|ALT_INV_Add0~85_sumout\ <= NOT \U2|U2|Add0~85_sumout\;
\U2|U2|ALT_INV_Add0~81_sumout\ <= NOT \U2|U2|Add0~81_sumout\;
\U2|U2|ALT_INV_Add0~77_sumout\ <= NOT \U2|U2|Add0~77_sumout\;
\U2|U2|ALT_INV_Add0~73_sumout\ <= NOT \U2|U2|Add0~73_sumout\;
\U2|U2|ALT_INV_Add0~69_sumout\ <= NOT \U2|U2|Add0~69_sumout\;
\U2|U2|ALT_INV_Add0~65_sumout\ <= NOT \U2|U2|Add0~65_sumout\;
\U2|U2|ALT_INV_Add0~61_sumout\ <= NOT \U2|U2|Add0~61_sumout\;
\U2|U2|ALT_INV_Add0~57_sumout\ <= NOT \U2|U2|Add0~57_sumout\;
\U2|U2|ALT_INV_Add0~53_sumout\ <= NOT \U2|U2|Add0~53_sumout\;
\U2|U2|ALT_INV_Add0~49_sumout\ <= NOT \U2|U2|Add0~49_sumout\;
\U2|U2|ALT_INV_Add0~45_sumout\ <= NOT \U2|U2|Add0~45_sumout\;
\U1|ALT_INV_MIDI_DATA\(9) <= NOT \U1|MIDI_DATA\(9);
\U1|ALT_INV_Add0~101_sumout\ <= NOT \U1|Add0~101_sumout\;
\U1|ALT_INV_Add0~53_sumout\ <= NOT \U1|Add0~53_sumout\;
\U1|U1|ALT_INV_COUNT\(23) <= NOT \U1|U1|COUNT\(23);
\U1|U1|ALT_INV_COUNT\(22) <= NOT \U1|U1|COUNT\(22);
\U1|U1|ALT_INV_COUNT\(21) <= NOT \U1|U1|COUNT\(21);
\U1|U1|ALT_INV_COUNT\(20) <= NOT \U1|U1|COUNT\(20);
\U1|U1|ALT_INV_COUNT\(19) <= NOT \U1|U1|COUNT\(19);
\U1|U1|ALT_INV_COUNT\(16) <= NOT \U1|U1|COUNT\(16);
\U1|U1|ALT_INV_COUNT\(15) <= NOT \U1|U1|COUNT\(15);
\U1|U1|ALT_INV_COUNT\(14) <= NOT \U1|U1|COUNT\(14);
\U1|U1|ALT_INV_COUNT\(8) <= NOT \U1|U1|COUNT\(8);
\U1|U1|ALT_INV_COUNT\(13) <= NOT \U1|U1|COUNT\(13);
\U1|U1|ALT_INV_COUNT\(10) <= NOT \U1|U1|COUNT\(10);
\U1|U1|ALT_INV_COUNT\(6) <= NOT \U1|U1|COUNT\(6);
\U1|U1|ALT_INV_COUNT\(5) <= NOT \U1|U1|COUNT\(5);
\U1|U1|ALT_INV_COUNT\(4) <= NOT \U1|U1|COUNT\(4);
\U1|U1|ALT_INV_COUNT\(3) <= NOT \U1|U1|COUNT\(3);
\U1|U1|ALT_INV_COUNT\(2) <= NOT \U1|U1|COUNT\(2);
\U1|U1|ALT_INV_COUNT\(1) <= NOT \U1|U1|COUNT\(1);
\U1|U1|ALT_INV_COUNT\(0) <= NOT \U1|U1|COUNT\(0);
\U1|U1|ALT_INV_COUNT\(25) <= NOT \U1|U1|COUNT\(25);
\U1|U1|ALT_INV_COUNT\(24) <= NOT \U1|U1|COUNT\(24);
\U1|ALT_INV_MIDI_DATA\(8) <= NOT \U1|MIDI_DATA\(8);
\U1|ALT_INV_dec_cnt\(6) <= NOT \U1|dec_cnt\(6);
\U1|ALT_INV_dec_cnt\(5) <= NOT \U1|dec_cnt\(5);
\U1|ALT_INV_dec_cnt\(4) <= NOT \U1|dec_cnt\(4);
\U1|ALT_INV_dec_cnt\(2) <= NOT \U1|dec_cnt\(2);
\U1|ALT_INV_dec_cnt\(3) <= NOT \U1|dec_cnt\(3);
\U1|ALT_INV_dec_cnt\(1) <= NOT \U1|dec_cnt\(1);
\U1|ALT_INV_dec_cnt\(25) <= NOT \U1|dec_cnt\(25);
\U1|ALT_INV_dec_cnt\(24) <= NOT \U1|dec_cnt\(24);
\U1|ALT_INV_dec_cnt\(23) <= NOT \U1|dec_cnt\(23);
\U1|ALT_INV_dec_cnt\(22) <= NOT \U1|dec_cnt\(22);
\U1|ALT_INV_dec_cnt\(21) <= NOT \U1|dec_cnt\(21);
\U1|ALT_INV_dec_cnt\(20) <= NOT \U1|dec_cnt\(20);
\U1|ALT_INV_dec_cnt\(19) <= NOT \U1|dec_cnt\(19);
\U1|ALT_INV_dec_cnt\(16) <= NOT \U1|dec_cnt\(16);
\U1|ALT_INV_dec_cnt\(18) <= NOT \U1|dec_cnt\(18);
\U1|ALT_INV_dec_cnt\(26) <= NOT \U1|dec_cnt\(26);
\U1|ALT_INV_dec_cnt\(27) <= NOT \U1|dec_cnt\(27);
\U1|ALT_INV_dec_cnt\(9) <= NOT \U1|dec_cnt\(9);
\U1|ALT_INV_dec_cnt\(8) <= NOT \U1|dec_cnt\(8);
\U1|ALT_INV_dec_cnt\(7) <= NOT \U1|dec_cnt\(7);
\U1|ALT_INV_dec_cnt\(30) <= NOT \U1|dec_cnt\(30);
\U1|ALT_INV_dec_cnt\(29) <= NOT \U1|dec_cnt\(29);
\U1|ALT_INV_dec_cnt\(28) <= NOT \U1|dec_cnt\(28);
\U1|ALT_INV_dec_cnt\(15) <= NOT \U1|dec_cnt\(15);
\U1|ALT_INV_dec_cnt\(14) <= NOT \U1|dec_cnt\(14);
\U1|ALT_INV_dec_cnt\(13) <= NOT \U1|dec_cnt\(13);
\U1|ALT_INV_dec_cnt\(11) <= NOT \U1|dec_cnt\(11);
\U1|ALT_INV_dec_cnt\(12) <= NOT \U1|dec_cnt\(12);
\U1|ALT_INV_dec_cnt\(10) <= NOT \U1|dec_cnt\(10);
\U1|ALT_INV_dec_cnt\(17) <= NOT \U1|dec_cnt\(17);
\U2|U3|ALT_INV_Add0~125_sumout\ <= NOT \U2|U3|Add0~125_sumout\;
\U2|U3|ALT_INV_Add0~121_sumout\ <= NOT \U2|U3|Add0~121_sumout\;
\U2|U3|ALT_INV_Add0~117_sumout\ <= NOT \U2|U3|Add0~117_sumout\;
\U2|U3|ALT_INV_Add0~113_sumout\ <= NOT \U2|U3|Add0~113_sumout\;
\U2|U3|ALT_INV_Add0~109_sumout\ <= NOT \U2|U3|Add0~109_sumout\;
\U2|U3|ALT_INV_Add0~105_sumout\ <= NOT \U2|U3|Add0~105_sumout\;
\U2|U3|ALT_INV_Add0~101_sumout\ <= NOT \U2|U3|Add0~101_sumout\;
\U2|U3|ALT_INV_Add0~97_sumout\ <= NOT \U2|U3|Add0~97_sumout\;
\U2|U3|ALT_INV_Add0~93_sumout\ <= NOT \U2|U3|Add0~93_sumout\;
\U2|U3|ALT_INV_Add0~89_sumout\ <= NOT \U2|U3|Add0~89_sumout\;
\U2|U3|ALT_INV_Add0~85_sumout\ <= NOT \U2|U3|Add0~85_sumout\;
\U2|U3|ALT_INV_Add0~81_sumout\ <= NOT \U2|U3|Add0~81_sumout\;
\U2|U3|ALT_INV_Add0~77_sumout\ <= NOT \U2|U3|Add0~77_sumout\;
\U2|U3|ALT_INV_Add0~73_sumout\ <= NOT \U2|U3|Add0~73_sumout\;
\U2|U3|ALT_INV_Add0~69_sumout\ <= NOT \U2|U3|Add0~69_sumout\;
\U2|U3|ALT_INV_Add0~65_sumout\ <= NOT \U2|U3|Add0~65_sumout\;
\U2|U3|ALT_INV_Add0~61_sumout\ <= NOT \U2|U3|Add0~61_sumout\;
\U2|U3|ALT_INV_Add0~57_sumout\ <= NOT \U2|U3|Add0~57_sumout\;
\U2|U3|ALT_INV_Add0~53_sumout\ <= NOT \U2|U3|Add0~53_sumout\;
\U2|U3|ALT_INV_Add0~49_sumout\ <= NOT \U2|U3|Add0~49_sumout\;
\U2|U3|ALT_INV_Add0~45_sumout\ <= NOT \U2|U3|Add0~45_sumout\;
\U2|U3|ALT_INV_Add0~41_sumout\ <= NOT \U2|U3|Add0~41_sumout\;

-- Location: IOOBUF_X52_Y45_N36
\Mod_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U3|Mux0~4_combout\,
	devoe => ww_devoe,
	o => ww_Mod_out);

-- Location: IOIBUF_X14_Y0_N18
\RST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X38_Y45_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G12
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X19_Y8_N30
\U1|U1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~33_sumout\ = SUM(( \U1|U1|COUNT\(0) ) + ( VCC ) + ( !VCC ))
-- \U1|U1|Add0~34\ = CARRY(( \U1|U1|COUNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(0),
	cin => GND,
	sumout => \U1|U1|Add0~33_sumout\,
	cout => \U1|U1|Add0~34\);

-- Location: FF_X19_Y8_N31
\U1|U1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~33_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(0));

-- Location: LABCELL_X19_Y8_N33
\U1|U1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~37_sumout\ = SUM(( \U1|U1|COUNT\(1) ) + ( VCC ) + ( \U1|U1|Add0~34\ ))
-- \U1|U1|Add0~38\ = CARRY(( \U1|U1|COUNT\(1) ) + ( VCC ) + ( \U1|U1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|ALT_INV_COUNT\(1),
	cin => \U1|U1|Add0~34\,
	sumout => \U1|U1|Add0~37_sumout\,
	cout => \U1|U1|Add0~38\);

-- Location: FF_X19_Y8_N35
\U1|U1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~37_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(1));

-- Location: LABCELL_X19_Y8_N36
\U1|U1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~41_sumout\ = SUM(( \U1|U1|COUNT\(2) ) + ( VCC ) + ( \U1|U1|Add0~38\ ))
-- \U1|U1|Add0~42\ = CARRY(( \U1|U1|COUNT\(2) ) + ( VCC ) + ( \U1|U1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(2),
	cin => \U1|U1|Add0~38\,
	sumout => \U1|U1|Add0~41_sumout\,
	cout => \U1|U1|Add0~42\);

-- Location: FF_X19_Y8_N38
\U1|U1|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~41_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(2));

-- Location: LABCELL_X19_Y8_N39
\U1|U1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~45_sumout\ = SUM(( \U1|U1|COUNT\(3) ) + ( VCC ) + ( \U1|U1|Add0~42\ ))
-- \U1|U1|Add0~46\ = CARRY(( \U1|U1|COUNT\(3) ) + ( VCC ) + ( \U1|U1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(3),
	cin => \U1|U1|Add0~42\,
	sumout => \U1|U1|Add0~45_sumout\,
	cout => \U1|U1|Add0~46\);

-- Location: FF_X19_Y8_N41
\U1|U1|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~45_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(3));

-- Location: LABCELL_X19_Y8_N42
\U1|U1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~49_sumout\ = SUM(( \U1|U1|COUNT\(4) ) + ( VCC ) + ( \U1|U1|Add0~46\ ))
-- \U1|U1|Add0~50\ = CARRY(( \U1|U1|COUNT\(4) ) + ( VCC ) + ( \U1|U1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U1|ALT_INV_COUNT\(4),
	cin => \U1|U1|Add0~46\,
	sumout => \U1|U1|Add0~49_sumout\,
	cout => \U1|U1|Add0~50\);

-- Location: FF_X19_Y8_N43
\U1|U1|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~49_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(4));

-- Location: LABCELL_X19_Y8_N45
\U1|U1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~53_sumout\ = SUM(( \U1|U1|COUNT\(5) ) + ( VCC ) + ( \U1|U1|Add0~50\ ))
-- \U1|U1|Add0~54\ = CARRY(( \U1|U1|COUNT\(5) ) + ( VCC ) + ( \U1|U1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(5),
	cin => \U1|U1|Add0~50\,
	sumout => \U1|U1|Add0~53_sumout\,
	cout => \U1|U1|Add0~54\);

-- Location: FF_X19_Y8_N47
\U1|U1|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~53_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(5));

-- Location: LABCELL_X19_Y8_N48
\U1|U1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~57_sumout\ = SUM(( \U1|U1|COUNT\(6) ) + ( VCC ) + ( \U1|U1|Add0~54\ ))
-- \U1|U1|Add0~58\ = CARRY(( \U1|U1|COUNT\(6) ) + ( VCC ) + ( \U1|U1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(6),
	cin => \U1|U1|Add0~54\,
	sumout => \U1|U1|Add0~57_sumout\,
	cout => \U1|U1|Add0~58\);

-- Location: FF_X19_Y8_N50
\U1|U1|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~57_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(6));

-- Location: LABCELL_X19_Y8_N51
\U1|U1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~29_sumout\ = SUM(( !\U1|U1|COUNT\(7) ) + ( VCC ) + ( \U1|U1|Add0~58\ ))
-- \U1|U1|Add0~30\ = CARRY(( !\U1|U1|COUNT\(7) ) + ( VCC ) + ( \U1|U1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U1|ALT_INV_COUNT\(7),
	cin => \U1|U1|Add0~58\,
	sumout => \U1|U1|Add0~29_sumout\,
	cout => \U1|U1|Add0~30\);

-- Location: LABCELL_X19_Y8_N3
\U1|U1|COUNT[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|COUNT[7]~5_combout\ = ( !\U1|U1|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|U1|ALT_INV_Add0~29_sumout\,
	combout => \U1|U1|COUNT[7]~5_combout\);

-- Location: FF_X19_Y8_N5
\U1|U1|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|COUNT[7]~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(7));

-- Location: LABCELL_X19_Y8_N54
\U1|U1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~69_sumout\ = SUM(( \U1|U1|COUNT\(8) ) + ( VCC ) + ( \U1|U1|Add0~30\ ))
-- \U1|U1|Add0~70\ = CARRY(( \U1|U1|COUNT\(8) ) + ( VCC ) + ( \U1|U1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(8),
	cin => \U1|U1|Add0~30\,
	sumout => \U1|U1|Add0~69_sumout\,
	cout => \U1|U1|Add0~70\);

-- Location: FF_X19_Y8_N56
\U1|U1|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~69_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(8));

-- Location: LABCELL_X19_Y8_N57
\U1|U1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~25_sumout\ = SUM(( !\U1|U1|COUNT\(9) ) + ( VCC ) + ( \U1|U1|Add0~70\ ))
-- \U1|U1|Add0~26\ = CARRY(( !\U1|U1|COUNT\(9) ) + ( VCC ) + ( \U1|U1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(9),
	cin => \U1|U1|Add0~70\,
	sumout => \U1|U1|Add0~25_sumout\,
	cout => \U1|U1|Add0~26\);

-- Location: LABCELL_X19_Y8_N9
\U1|U1|COUNT[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|COUNT[9]~4_combout\ = !\U1|U1|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U1|ALT_INV_Add0~25_sumout\,
	combout => \U1|U1|COUNT[9]~4_combout\);

-- Location: FF_X19_Y8_N11
\U1|U1|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|COUNT[9]~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(9));

-- Location: LABCELL_X19_Y7_N0
\U1|U1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~61_sumout\ = SUM(( \U1|U1|COUNT\(10) ) + ( VCC ) + ( \U1|U1|Add0~26\ ))
-- \U1|U1|Add0~62\ = CARRY(( \U1|U1|COUNT\(10) ) + ( VCC ) + ( \U1|U1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(10),
	cin => \U1|U1|Add0~26\,
	sumout => \U1|U1|Add0~61_sumout\,
	cout => \U1|U1|Add0~62\);

-- Location: FF_X19_Y7_N2
\U1|U1|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~61_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(10));

-- Location: LABCELL_X19_Y7_N3
\U1|U1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~21_sumout\ = SUM(( !\U1|U1|COUNT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|U1|Add0~62\ ))
-- \U1|U1|Add0~22\ = CARRY(( !\U1|U1|COUNT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|U1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U1|ALT_INV_COUNT[11]~DUPLICATE_q\,
	cin => \U1|U1|Add0~62\,
	sumout => \U1|U1|Add0~21_sumout\,
	cout => \U1|U1|Add0~22\);

-- Location: LABCELL_X19_Y8_N6
\U1|U1|COUNT[11]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|COUNT[11]~3_combout\ = ( !\U1|U1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|U1|ALT_INV_Add0~21_sumout\,
	combout => \U1|U1|COUNT[11]~3_combout\);

-- Location: FF_X19_Y8_N7
\U1|U1|COUNT[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|COUNT[11]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT[11]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y7_N6
\U1|U1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~17_sumout\ = SUM(( !\U1|U1|COUNT\(12) ) + ( VCC ) + ( \U1|U1|Add0~22\ ))
-- \U1|U1|Add0~18\ = CARRY(( !\U1|U1|COUNT\(12) ) + ( VCC ) + ( \U1|U1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(12),
	cin => \U1|U1|Add0~22\,
	sumout => \U1|U1|Add0~17_sumout\,
	cout => \U1|U1|Add0~18\);

-- Location: LABCELL_X19_Y8_N0
\U1|U1|COUNT[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|COUNT[12]~2_combout\ = ( !\U1|U1|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|U1|ALT_INV_Add0~17_sumout\,
	combout => \U1|U1|COUNT[12]~2_combout\);

-- Location: FF_X19_Y8_N1
\U1|U1|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|COUNT[12]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(12));

-- Location: LABCELL_X19_Y7_N9
\U1|U1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~65_sumout\ = SUM(( \U1|U1|COUNT\(13) ) + ( VCC ) + ( \U1|U1|Add0~18\ ))
-- \U1|U1|Add0~66\ = CARRY(( \U1|U1|COUNT\(13) ) + ( VCC ) + ( \U1|U1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(13),
	cin => \U1|U1|Add0~18\,
	sumout => \U1|U1|Add0~65_sumout\,
	cout => \U1|U1|Add0~66\);

-- Location: FF_X19_Y7_N11
\U1|U1|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~65_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(13));

-- Location: LABCELL_X19_Y7_N12
\U1|U1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~73_sumout\ = SUM(( \U1|U1|COUNT\(14) ) + ( VCC ) + ( \U1|U1|Add0~66\ ))
-- \U1|U1|Add0~74\ = CARRY(( \U1|U1|COUNT\(14) ) + ( VCC ) + ( \U1|U1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|ALT_INV_COUNT\(14),
	cin => \U1|U1|Add0~66\,
	sumout => \U1|U1|Add0~73_sumout\,
	cout => \U1|U1|Add0~74\);

-- Location: FF_X19_Y7_N14
\U1|U1|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~73_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(14));

-- Location: LABCELL_X19_Y7_N15
\U1|U1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~77_sumout\ = SUM(( \U1|U1|COUNT\(15) ) + ( VCC ) + ( \U1|U1|Add0~74\ ))
-- \U1|U1|Add0~78\ = CARRY(( \U1|U1|COUNT\(15) ) + ( VCC ) + ( \U1|U1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(15),
	cin => \U1|U1|Add0~74\,
	sumout => \U1|U1|Add0~77_sumout\,
	cout => \U1|U1|Add0~78\);

-- Location: FF_X19_Y7_N17
\U1|U1|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~77_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(15));

-- Location: LABCELL_X19_Y7_N18
\U1|U1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~81_sumout\ = SUM(( \U1|U1|COUNT\(16) ) + ( VCC ) + ( \U1|U1|Add0~78\ ))
-- \U1|U1|Add0~82\ = CARRY(( \U1|U1|COUNT\(16) ) + ( VCC ) + ( \U1|U1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(16),
	cin => \U1|U1|Add0~78\,
	sumout => \U1|U1|Add0~81_sumout\,
	cout => \U1|U1|Add0~82\);

-- Location: FF_X19_Y7_N19
\U1|U1|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~81_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(16));

-- Location: LABCELL_X19_Y7_N21
\U1|U1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~13_sumout\ = SUM(( !\U1|U1|COUNT\(17) ) + ( VCC ) + ( \U1|U1|Add0~82\ ))
-- \U1|U1|Add0~14\ = CARRY(( !\U1|U1|COUNT\(17) ) + ( VCC ) + ( \U1|U1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(17),
	cin => \U1|U1|Add0~82\,
	sumout => \U1|U1|Add0~13_sumout\,
	cout => \U1|U1|Add0~14\);

-- Location: LABCELL_X20_Y8_N54
\U1|U1|COUNT[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|COUNT[17]~1_combout\ = ( !\U1|U1|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|U1|ALT_INV_Add0~13_sumout\,
	combout => \U1|U1|COUNT[17]~1_combout\);

-- Location: FF_X20_Y8_N56
\U1|U1|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|COUNT[17]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(17));

-- Location: LABCELL_X19_Y7_N24
\U1|U1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~9_sumout\ = SUM(( !\U1|U1|COUNT[18]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|U1|Add0~14\ ))
-- \U1|U1|Add0~10\ = CARRY(( !\U1|U1|COUNT[18]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|U1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT[18]~DUPLICATE_q\,
	cin => \U1|U1|Add0~14\,
	sumout => \U1|U1|Add0~9_sumout\,
	cout => \U1|U1|Add0~10\);

-- Location: LABCELL_X20_Y8_N51
\U1|U1|COUNT[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|COUNT[18]~0_combout\ = ( !\U1|U1|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|U1|ALT_INV_Add0~9_sumout\,
	combout => \U1|U1|COUNT[18]~0_combout\);

-- Location: FF_X20_Y8_N52
\U1|U1|COUNT[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|COUNT[18]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT[18]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y7_N27
\U1|U1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~85_sumout\ = SUM(( \U1|U1|COUNT\(19) ) + ( VCC ) + ( \U1|U1|Add0~10\ ))
-- \U1|U1|Add0~86\ = CARRY(( \U1|U1|COUNT\(19) ) + ( VCC ) + ( \U1|U1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(19),
	cin => \U1|U1|Add0~10\,
	sumout => \U1|U1|Add0~85_sumout\,
	cout => \U1|U1|Add0~86\);

-- Location: FF_X19_Y7_N28
\U1|U1|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~85_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(19));

-- Location: LABCELL_X19_Y7_N30
\U1|U1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~89_sumout\ = SUM(( \U1|U1|COUNT[20]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|U1|Add0~86\ ))
-- \U1|U1|Add0~90\ = CARRY(( \U1|U1|COUNT[20]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|U1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT[20]~DUPLICATE_q\,
	cin => \U1|U1|Add0~86\,
	sumout => \U1|U1|Add0~89_sumout\,
	cout => \U1|U1|Add0~90\);

-- Location: FF_X19_Y7_N31
\U1|U1|COUNT[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~89_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT[20]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y7_N33
\U1|U1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~93_sumout\ = SUM(( \U1|U1|COUNT\(21) ) + ( VCC ) + ( \U1|U1|Add0~90\ ))
-- \U1|U1|Add0~94\ = CARRY(( \U1|U1|COUNT\(21) ) + ( VCC ) + ( \U1|U1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|ALT_INV_COUNT\(21),
	cin => \U1|U1|Add0~90\,
	sumout => \U1|U1|Add0~93_sumout\,
	cout => \U1|U1|Add0~94\);

-- Location: FF_X19_Y7_N35
\U1|U1|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~93_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(21));

-- Location: LABCELL_X19_Y7_N36
\U1|U1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~97_sumout\ = SUM(( \U1|U1|COUNT\(22) ) + ( VCC ) + ( \U1|U1|Add0~94\ ))
-- \U1|U1|Add0~98\ = CARRY(( \U1|U1|COUNT\(22) ) + ( VCC ) + ( \U1|U1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(22),
	cin => \U1|U1|Add0~94\,
	sumout => \U1|U1|Add0~97_sumout\,
	cout => \U1|U1|Add0~98\);

-- Location: FF_X19_Y7_N38
\U1|U1|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~97_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(22));

-- Location: LABCELL_X19_Y7_N39
\U1|U1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~101_sumout\ = SUM(( \U1|U1|COUNT[23]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|U1|Add0~98\ ))
-- \U1|U1|Add0~102\ = CARRY(( \U1|U1|COUNT[23]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|U1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U1|ALT_INV_COUNT[23]~DUPLICATE_q\,
	cin => \U1|U1|Add0~98\,
	sumout => \U1|U1|Add0~101_sumout\,
	cout => \U1|U1|Add0~102\);

-- Location: FF_X19_Y7_N40
\U1|U1|COUNT[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~101_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT[23]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y7_N42
\U1|U1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~1_sumout\ = SUM(( \U1|U1|COUNT\(24) ) + ( VCC ) + ( \U1|U1|Add0~102\ ))
-- \U1|U1|Add0~2\ = CARRY(( \U1|U1|COUNT\(24) ) + ( VCC ) + ( \U1|U1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U1|ALT_INV_COUNT\(24),
	cin => \U1|U1|Add0~102\,
	sumout => \U1|U1|Add0~1_sumout\,
	cout => \U1|U1|Add0~2\);

-- Location: FF_X19_Y7_N43
\U1|U1|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~1_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(24));

-- Location: FF_X20_Y8_N53
\U1|U1|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|COUNT[18]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(18));

-- Location: FF_X19_Y8_N8
\U1|U1|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|COUNT[11]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(11));

-- Location: FF_X19_Y8_N2
\U1|U1|COUNT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|COUNT[12]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT[12]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y8_N12
\U1|U1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Equal0~0_combout\ = ( \U1|U1|COUNT[12]~DUPLICATE_q\ & ( \U1|U1|COUNT\(17) & ( (\U1|U1|COUNT\(18) & (\U1|U1|COUNT\(11) & (\U1|U1|COUNT\(7) & \U1|U1|COUNT\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|ALT_INV_COUNT\(18),
	datab => \U1|U1|ALT_INV_COUNT\(11),
	datac => \U1|U1|ALT_INV_COUNT\(7),
	datad => \U1|U1|ALT_INV_COUNT\(9),
	datae => \U1|U1|ALT_INV_COUNT[12]~DUPLICATE_q\,
	dataf => \U1|U1|ALT_INV_COUNT\(17),
	combout => \U1|U1|Equal0~0_combout\);

-- Location: FF_X19_Y7_N47
\U1|U1|COUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~5_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(25));

-- Location: LABCELL_X19_Y7_N45
\U1|U1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Add0~5_sumout\ = SUM(( \U1|U1|COUNT\(25) ) + ( VCC ) + ( \U1|U1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|ALT_INV_COUNT\(25),
	cin => \U1|U1|Add0~2\,
	sumout => \U1|U1|Add0~5_sumout\);

-- Location: FF_X19_Y7_N46
\U1|U1|COUNT[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~5_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT[25]~DUPLICATE_q\);

-- Location: FF_X19_Y7_N16
\U1|U1|COUNT[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~77_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT[15]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y7_N48
\U1|U1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Equal0~2_combout\ = ( !\U1|U1|COUNT\(8) & ( !\U1|U1|COUNT\(13) & ( (!\U1|U1|COUNT\(10) & (!\U1|U1|COUNT\(14) & (!\U1|U1|COUNT[15]~DUPLICATE_q\ & !\U1|U1|COUNT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|ALT_INV_COUNT\(10),
	datab => \U1|U1|ALT_INV_COUNT\(14),
	datac => \U1|U1|ALT_INV_COUNT[15]~DUPLICATE_q\,
	datad => \U1|U1|ALT_INV_COUNT\(6),
	datae => \U1|U1|ALT_INV_COUNT\(8),
	dataf => \U1|U1|ALT_INV_COUNT\(13),
	combout => \U1|U1|Equal0~2_combout\);

-- Location: FF_X19_Y7_N41
\U1|U1|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~101_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(23));

-- Location: FF_X19_Y7_N32
\U1|U1|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~89_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT\(20));

-- Location: LABCELL_X19_Y7_N54
\U1|U1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Equal0~3_combout\ = ( !\U1|U1|COUNT\(19) & ( !\U1|U1|COUNT\(16) & ( (!\U1|U1|COUNT\(22) & (!\U1|U1|COUNT\(23) & (!\U1|U1|COUNT\(21) & !\U1|U1|COUNT\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|ALT_INV_COUNT\(22),
	datab => \U1|U1|ALT_INV_COUNT\(23),
	datac => \U1|U1|ALT_INV_COUNT\(21),
	datad => \U1|U1|ALT_INV_COUNT\(20),
	datae => \U1|U1|ALT_INV_COUNT\(19),
	dataf => \U1|U1|ALT_INV_COUNT\(16),
	combout => \U1|U1|Equal0~3_combout\);

-- Location: FF_X19_Y8_N32
\U1|U1|COUNT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~33_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT[0]~DUPLICATE_q\);

-- Location: FF_X19_Y8_N34
\U1|U1|COUNT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|U1|Add0~37_sumout\,
	clrn => \RST~input_o\,
	sclr => \U1|U1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|COUNT[1]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y8_N18
\U1|U1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Equal0~1_combout\ = ( !\U1|U1|COUNT[1]~DUPLICATE_q\ & ( !\U1|U1|COUNT\(4) & ( (!\U1|U1|COUNT\(5) & (!\U1|U1|COUNT\(3) & (!\U1|U1|COUNT\(2) & !\U1|U1|COUNT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|ALT_INV_COUNT\(5),
	datab => \U1|U1|ALT_INV_COUNT\(3),
	datac => \U1|U1|ALT_INV_COUNT\(2),
	datad => \U1|U1|ALT_INV_COUNT[0]~DUPLICATE_q\,
	datae => \U1|U1|ALT_INV_COUNT[1]~DUPLICATE_q\,
	dataf => \U1|U1|ALT_INV_COUNT\(4),
	combout => \U1|U1|Equal0~1_combout\);

-- Location: LABCELL_X19_Y8_N24
\U1|U1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|Equal0~4_combout\ = ( \U1|U1|Equal0~3_combout\ & ( \U1|U1|Equal0~1_combout\ & ( (!\U1|U1|COUNT\(24) & (\U1|U1|Equal0~0_combout\ & (!\U1|U1|COUNT[25]~DUPLICATE_q\ & \U1|U1|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|ALT_INV_COUNT\(24),
	datab => \U1|U1|ALT_INV_Equal0~0_combout\,
	datac => \U1|U1|ALT_INV_COUNT[25]~DUPLICATE_q\,
	datad => \U1|U1|ALT_INV_Equal0~2_combout\,
	datae => \U1|U1|ALT_INV_Equal0~3_combout\,
	dataf => \U1|U1|ALT_INV_Equal0~1_combout\,
	combout => \U1|U1|Equal0~4_combout\);

-- Location: MLABCELL_X23_Y6_N45
\U1|U1|LO_CLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|LO_CLK~0_combout\ = !\U1|U1|Equal0~4_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|ALT_INV_Equal0~4_combout\,
	combout => \U1|U1|LO_CLK~0_combout\);

-- Location: FF_X23_Y6_N47
\U1|U1|LO_CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U1|U1|LO_CLK~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|LO_CLK~q\);

-- Location: IOIBUF_X54_Y18_N44
\MIDI_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MIDI_IN,
	o => \MIDI_IN~input_o\);

-- Location: MLABCELL_X23_Y7_N36
\MIDI_IN~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIDI_IN~_wirecell_combout\ = !\MIDI_IN~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MIDI_IN~input_o\,
	combout => \MIDI_IN~_wirecell_combout\);

-- Location: MLABCELL_X23_Y8_N12
\U1|eodec~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|eodec~5_combout\ = ( \U1|dec_cnt\(5) & ( \U1|dec_cnt\(6) & ( (!\U1|dec_cnt\(3) & (!\U1|dec_cnt\(1) & (\U1|dec_cnt\(2) & \U1|dec_cnt\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(3),
	datab => \U1|ALT_INV_dec_cnt\(1),
	datac => \U1|ALT_INV_dec_cnt\(2),
	datad => \U1|ALT_INV_dec_cnt\(4),
	datae => \U1|ALT_INV_dec_cnt\(5),
	dataf => \U1|ALT_INV_dec_cnt\(6),
	combout => \U1|eodec~5_combout\);

-- Location: MLABCELL_X23_Y7_N24
\U1|eodec~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|eodec~0_combout\ = ( !\U1|dec_cnt\(11) & ( !\U1|dec_cnt\(13) & ( (!\U1|dec_cnt\(14) & (!\U1|dec_cnt\(10) & (!\U1|dec_cnt\(12) & !\U1|dec_cnt\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(14),
	datab => \U1|ALT_INV_dec_cnt\(10),
	datac => \U1|ALT_INV_dec_cnt\(12),
	datad => \U1|ALT_INV_dec_cnt\(15),
	datae => \U1|ALT_INV_dec_cnt\(11),
	dataf => \U1|ALT_INV_dec_cnt\(13),
	combout => \U1|eodec~0_combout\);

-- Location: LABCELL_X24_Y8_N51
\U1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~1_sumout\ = SUM(( \U1|dec_cnt\(17) ) + ( GND ) + ( \U1|Add0~70\ ))
-- \U1|Add0~2\ = CARRY(( \U1|dec_cnt\(17) ) + ( GND ) + ( \U1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(17),
	cin => \U1|Add0~70\,
	sumout => \U1|Add0~1_sumout\,
	cout => \U1|Add0~2\);

-- Location: LABCELL_X24_Y8_N54
\U1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~65_sumout\ = SUM(( \U1|dec_cnt\(18) ) + ( GND ) + ( \U1|Add0~2\ ))
-- \U1|Add0~66\ = CARRY(( \U1|dec_cnt\(18) ) + ( GND ) + ( \U1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(18),
	cin => \U1|Add0~2\,
	sumout => \U1|Add0~65_sumout\,
	cout => \U1|Add0~66\);

-- Location: MLABCELL_X23_Y8_N39
\U1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = ( !\U1|dec_cnt\(6) & ( (!\U1|dec_cnt\(4) & !\U1|dec_cnt\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_dec_cnt\(4),
	datad => \U1|ALT_INV_dec_cnt\(5),
	dataf => \U1|ALT_INV_dec_cnt\(6),
	combout => \U1|process_0~0_combout\);

-- Location: MLABCELL_X23_Y7_N39
\U1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|process_0~1_combout\ = ( \U1|process_0~0_combout\ & ( (!\U1|dec_cnt\(2) & (!\U1|dec_cnt\(3) & ((!\U1|dec_cnt\(1)) # (\U1|dec_cnt\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(1),
	datab => \U1|ALT_INV_dec_cnt\(2),
	datac => \U1|ALT_INV_dec_cnt\(3),
	datad => \U1|ALT_INV_dec_cnt\(0),
	dataf => \U1|ALT_INV_process_0~0_combout\,
	combout => \U1|process_0~1_combout\);

-- Location: LABCELL_X24_Y7_N36
\U1|eodec~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|eodec~3_combout\ = ( !\U1|dec_cnt\(20) & ( !\U1|dec_cnt\(22) & ( (!\U1|dec_cnt\(25) & (!\U1|dec_cnt\(24) & (!\U1|dec_cnt\(21) & !\U1|dec_cnt\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(25),
	datab => \U1|ALT_INV_dec_cnt\(24),
	datac => \U1|ALT_INV_dec_cnt\(21),
	datad => \U1|ALT_INV_dec_cnt\(23),
	datae => \U1|ALT_INV_dec_cnt\(20),
	dataf => \U1|ALT_INV_dec_cnt\(22),
	combout => \U1|eodec~3_combout\);

-- Location: LABCELL_X24_Y7_N21
\U1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~57_sumout\ = SUM(( \U1|dec_cnt\(27) ) + ( GND ) + ( \U1|Add0~62\ ))
-- \U1|Add0~58\ = CARRY(( \U1|dec_cnt\(27) ) + ( GND ) + ( \U1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(27),
	cin => \U1|Add0~62\,
	sumout => \U1|Add0~57_sumout\,
	cout => \U1|Add0~58\);

-- Location: LABCELL_X24_Y7_N24
\U1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~29_sumout\ = SUM(( \U1|dec_cnt\(28) ) + ( GND ) + ( \U1|Add0~58\ ))
-- \U1|Add0~30\ = CARRY(( \U1|dec_cnt\(28) ) + ( GND ) + ( \U1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_dec_cnt\(28),
	cin => \U1|Add0~58\,
	sumout => \U1|Add0~29_sumout\,
	cout => \U1|Add0~30\);

-- Location: MLABCELL_X23_Y8_N3
\U1|dec_cnt[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|dec_cnt[31]~0_combout\ = ( \U1|dec_cnt\(5) & ( \U1|dec_cnt\(6) & ( (!\U1|dec_cnt\(4) & (!\U1|dec_cnt\(3) $ ((!\U1|dec_cnt\(1))))) # (\U1|dec_cnt\(4) & (!\U1|dec_cnt\(3) & (!\U1|dec_cnt\(1) & !\U1|dec_cnt\(2)))) ) ) ) # ( !\U1|dec_cnt\(5) & ( 
-- \U1|dec_cnt\(6) & ( (!\U1|dec_cnt\(1) & (((!\U1|dec_cnt\(4))))) # (\U1|dec_cnt\(1) & (\U1|dec_cnt\(4) & ((\U1|dec_cnt\(2)) # (\U1|dec_cnt\(3))))) ) ) ) # ( \U1|dec_cnt\(5) & ( !\U1|dec_cnt\(6) & ( (!\U1|dec_cnt\(3) & (\U1|dec_cnt\(1) & ((!\U1|dec_cnt\(2)) 
-- # (\U1|dec_cnt\(4))))) # (\U1|dec_cnt\(3) & (\U1|dec_cnt\(2) & (!\U1|dec_cnt\(1) $ (!\U1|dec_cnt\(4))))) ) ) ) # ( !\U1|dec_cnt\(5) & ( !\U1|dec_cnt\(6) & ( (\U1|dec_cnt\(1) & (((\U1|dec_cnt\(2)) # (\U1|dec_cnt\(4))) # (\U1|dec_cnt\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001000100001011011000001110000110110100001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(3),
	datab => \U1|ALT_INV_dec_cnt\(1),
	datac => \U1|ALT_INV_dec_cnt\(4),
	datad => \U1|ALT_INV_dec_cnt\(2),
	datae => \U1|ALT_INV_dec_cnt\(5),
	dataf => \U1|ALT_INV_dec_cnt\(6),
	combout => \U1|dec_cnt[31]~0_combout\);

-- Location: MLABCELL_X23_Y7_N18
\U1|dec_cnt[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|dec_cnt[31]~1_combout\ = ( \U1|eodec~4_combout\ & ( ((!\U1|dec_cnt\(0)) # (!\U1|dec_cnt[31]~0_combout\)) # (\U1|process_0~1_combout\) ) ) # ( !\U1|eodec~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_process_0~1_combout\,
	datac => \U1|ALT_INV_dec_cnt\(0),
	datad => \U1|ALT_INV_dec_cnt[31]~0_combout\,
	dataf => \U1|ALT_INV_eodec~4_combout\,
	combout => \U1|dec_cnt[31]~1_combout\);

-- Location: FF_X24_Y7_N26
\U1|dec_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~29_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(28));

-- Location: LABCELL_X24_Y7_N27
\U1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~33_sumout\ = SUM(( \U1|dec_cnt\(29) ) + ( GND ) + ( \U1|Add0~30\ ))
-- \U1|Add0~34\ = CARRY(( \U1|dec_cnt\(29) ) + ( GND ) + ( \U1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(29),
	cin => \U1|Add0~30\,
	sumout => \U1|Add0~33_sumout\,
	cout => \U1|Add0~34\);

-- Location: FF_X24_Y7_N29
\U1|dec_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~33_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(29));

-- Location: LABCELL_X24_Y7_N30
\U1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~37_sumout\ = SUM(( \U1|dec_cnt\(30) ) + ( GND ) + ( \U1|Add0~34\ ))
-- \U1|Add0~38\ = CARRY(( \U1|dec_cnt\(30) ) + ( GND ) + ( \U1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_dec_cnt\(30),
	cin => \U1|Add0~34\,
	sumout => \U1|Add0~37_sumout\,
	cout => \U1|Add0~38\);

-- Location: FF_X24_Y7_N32
\U1|dec_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~37_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(30));

-- Location: LABCELL_X24_Y7_N48
\U1|eodec~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|eodec~1_combout\ = ( !\U1|dec_cnt\(9) & ( !\U1|dec_cnt\(28) & ( (!\U1|dec_cnt\(29) & (!\U1|dec_cnt\(8) & (!\U1|dec_cnt\(7) & !\U1|dec_cnt\(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(29),
	datab => \U1|ALT_INV_dec_cnt\(8),
	datac => \U1|ALT_INV_dec_cnt\(7),
	datad => \U1|ALT_INV_dec_cnt\(30),
	datae => \U1|ALT_INV_dec_cnt\(9),
	dataf => \U1|ALT_INV_dec_cnt\(28),
	combout => \U1|eodec~1_combout\);

-- Location: MLABCELL_X23_Y7_N6
\U1|eodec~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|eodec~4_combout\ = ( \U1|eodec~1_combout\ & ( (!\U1|dec_cnt\(17) & (\U1|eodec~2_combout\ & (\U1|eodec~0_combout\ & \U1|eodec~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(17),
	datab => \U1|ALT_INV_eodec~2_combout\,
	datac => \U1|ALT_INV_eodec~0_combout\,
	datad => \U1|ALT_INV_eodec~3_combout\,
	dataf => \U1|ALT_INV_eodec~1_combout\,
	combout => \U1|eodec~4_combout\);

-- Location: MLABCELL_X23_Y7_N12
\U1|eodec~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|eodec~7_combout\ = ( \U1|eodec~5_combout\ & ( (\U1|eodec~4_combout\ & (((\U1|process_0~1_combout\ & \MIDI_IN~input_o\)) # (\U1|dec_cnt\(0)))) ) ) # ( !\U1|eodec~5_combout\ & ( (\U1|process_0~1_combout\ & (\U1|eodec~4_combout\ & \MIDI_IN~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000101000001110000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(0),
	datab => \U1|ALT_INV_process_0~1_combout\,
	datac => \U1|ALT_INV_eodec~4_combout\,
	datad => \ALT_INV_MIDI_IN~input_o\,
	dataf => \U1|ALT_INV_eodec~5_combout\,
	combout => \U1|eodec~7_combout\);

-- Location: FF_X24_Y8_N56
\U1|dec_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~65_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(18));

-- Location: LABCELL_X24_Y8_N57
\U1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~73_sumout\ = SUM(( \U1|dec_cnt\(19) ) + ( GND ) + ( \U1|Add0~66\ ))
-- \U1|Add0~74\ = CARRY(( \U1|dec_cnt\(19) ) + ( GND ) + ( \U1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_dec_cnt\(19),
	cin => \U1|Add0~66\,
	sumout => \U1|Add0~73_sumout\,
	cout => \U1|Add0~74\);

-- Location: FF_X24_Y8_N59
\U1|dec_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~73_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(19));

-- Location: LABCELL_X24_Y7_N0
\U1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~77_sumout\ = SUM(( \U1|dec_cnt\(20) ) + ( GND ) + ( \U1|Add0~74\ ))
-- \U1|Add0~78\ = CARRY(( \U1|dec_cnt\(20) ) + ( GND ) + ( \U1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(20),
	cin => \U1|Add0~74\,
	sumout => \U1|Add0~77_sumout\,
	cout => \U1|Add0~78\);

-- Location: FF_X24_Y7_N2
\U1|dec_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~77_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(20));

-- Location: LABCELL_X24_Y7_N3
\U1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~81_sumout\ = SUM(( \U1|dec_cnt\(21) ) + ( GND ) + ( \U1|Add0~78\ ))
-- \U1|Add0~82\ = CARRY(( \U1|dec_cnt\(21) ) + ( GND ) + ( \U1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_dec_cnt\(21),
	cin => \U1|Add0~78\,
	sumout => \U1|Add0~81_sumout\,
	cout => \U1|Add0~82\);

-- Location: FF_X24_Y7_N5
\U1|dec_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~81_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(21));

-- Location: LABCELL_X24_Y7_N6
\U1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~85_sumout\ = SUM(( \U1|dec_cnt\(22) ) + ( GND ) + ( \U1|Add0~82\ ))
-- \U1|Add0~86\ = CARRY(( \U1|dec_cnt\(22) ) + ( GND ) + ( \U1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(22),
	cin => \U1|Add0~82\,
	sumout => \U1|Add0~85_sumout\,
	cout => \U1|Add0~86\);

-- Location: FF_X24_Y7_N8
\U1|dec_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~85_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(22));

-- Location: LABCELL_X24_Y7_N9
\U1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~89_sumout\ = SUM(( \U1|dec_cnt\(23) ) + ( GND ) + ( \U1|Add0~86\ ))
-- \U1|Add0~90\ = CARRY(( \U1|dec_cnt\(23) ) + ( GND ) + ( \U1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_dec_cnt\(23),
	cin => \U1|Add0~86\,
	sumout => \U1|Add0~89_sumout\,
	cout => \U1|Add0~90\);

-- Location: FF_X24_Y7_N11
\U1|dec_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~89_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(23));

-- Location: LABCELL_X24_Y7_N12
\U1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~93_sumout\ = SUM(( \U1|dec_cnt\(24) ) + ( GND ) + ( \U1|Add0~90\ ))
-- \U1|Add0~94\ = CARRY(( \U1|dec_cnt\(24) ) + ( GND ) + ( \U1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_dec_cnt\(24),
	cin => \U1|Add0~90\,
	sumout => \U1|Add0~93_sumout\,
	cout => \U1|Add0~94\);

-- Location: FF_X24_Y7_N14
\U1|dec_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~93_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(24));

-- Location: LABCELL_X24_Y7_N15
\U1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~97_sumout\ = SUM(( \U1|dec_cnt\(25) ) + ( GND ) + ( \U1|Add0~94\ ))
-- \U1|Add0~98\ = CARRY(( \U1|dec_cnt\(25) ) + ( GND ) + ( \U1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_dec_cnt\(25),
	cin => \U1|Add0~94\,
	sumout => \U1|Add0~97_sumout\,
	cout => \U1|Add0~98\);

-- Location: FF_X24_Y7_N17
\U1|dec_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~97_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(25));

-- Location: LABCELL_X24_Y7_N18
\U1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~61_sumout\ = SUM(( \U1|dec_cnt\(26) ) + ( GND ) + ( \U1|Add0~98\ ))
-- \U1|Add0~62\ = CARRY(( \U1|dec_cnt\(26) ) + ( GND ) + ( \U1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_dec_cnt\(26),
	cin => \U1|Add0~98\,
	sumout => \U1|Add0~61_sumout\,
	cout => \U1|Add0~62\);

-- Location: FF_X24_Y7_N20
\U1|dec_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~61_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(26));

-- Location: FF_X24_Y7_N23
\U1|dec_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~57_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(27));

-- Location: LABCELL_X24_Y7_N33
\U1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~53_sumout\ = SUM(( !\U1|dec_cnt\(31) ) + ( GND ) + ( \U1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_dec_cnt\(31),
	cin => \U1|Add0~38\,
	sumout => \U1|Add0~53_sumout\);

-- Location: LABCELL_X24_Y7_N42
\U1|dec_cnt[31]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|dec_cnt[31]~2_combout\ = ( \U1|dec_cnt[31]~1_combout\ & ( \U1|Add0~53_sumout\ & ( (!\U1|eodec~5_combout\ & (\U1|process_0~2_combout\ & (\MIDI_IN~input_o\))) # (\U1|eodec~5_combout\ & (((\U1|process_0~2_combout\ & \MIDI_IN~input_o\)) # 
-- (\U1|eodec~8_combout\))) ) ) ) # ( !\U1|dec_cnt[31]~1_combout\ & ( \U1|Add0~53_sumout\ ) ) # ( \U1|dec_cnt[31]~1_combout\ & ( !\U1|Add0~53_sumout\ ) ) # ( !\U1|dec_cnt[31]~1_combout\ & ( !\U1|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_eodec~5_combout\,
	datab => \U1|ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_MIDI_IN~input_o\,
	datad => \U1|ALT_INV_eodec~8_combout\,
	datae => \U1|ALT_INV_dec_cnt[31]~1_combout\,
	dataf => \U1|ALT_INV_Add0~53_sumout\,
	combout => \U1|dec_cnt[31]~2_combout\);

-- Location: FF_X24_Y7_N44
\U1|dec_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|dec_cnt[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(31));

-- Location: MLABCELL_X23_Y7_N42
\U1|eodec~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|eodec~2_combout\ = ( !\U1|dec_cnt\(19) & ( \U1|dec_cnt\(31) & ( (!\U1|dec_cnt\(27) & (!\U1|dec_cnt\(16) & (!\U1|dec_cnt\(18) & !\U1|dec_cnt\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(27),
	datab => \U1|ALT_INV_dec_cnt\(16),
	datac => \U1|ALT_INV_dec_cnt\(18),
	datad => \U1|ALT_INV_dec_cnt\(26),
	datae => \U1|ALT_INV_dec_cnt\(19),
	dataf => \U1|ALT_INV_dec_cnt\(31),
	combout => \U1|eodec~2_combout\);

-- Location: MLABCELL_X23_Y7_N57
\U1|eodec~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|eodec~8_combout\ = ( \U1|eodec~3_combout\ & ( \U1|eodec~1_combout\ & ( (\U1|eodec~0_combout\ & (\U1|dec_cnt\(0) & (\U1|eodec~2_combout\ & !\U1|dec_cnt\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_eodec~0_combout\,
	datab => \U1|ALT_INV_dec_cnt\(0),
	datac => \U1|ALT_INV_eodec~2_combout\,
	datad => \U1|ALT_INV_dec_cnt\(17),
	datae => \U1|ALT_INV_eodec~3_combout\,
	dataf => \U1|ALT_INV_eodec~1_combout\,
	combout => \U1|eodec~8_combout\);

-- Location: LABCELL_X24_Y8_N0
\U1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~101_sumout\ = SUM(( !\U1|dec_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \U1|Add0~102\ = CARRY(( !\U1|dec_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_dec_cnt\(0),
	cin => GND,
	sumout => \U1|Add0~101_sumout\,
	cout => \U1|Add0~102\);

-- Location: MLABCELL_X23_Y8_N48
\U1|dec_cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|dec_cnt[0]~3_combout\ = ( \U1|dec_cnt[31]~0_combout\ & ( \MIDI_IN~input_o\ & ( ((!\U1|Add0~101_sumout\) # (\U1|eodec~8_combout\)) # (\U1|process_0~2_combout\) ) ) ) # ( !\U1|dec_cnt[31]~0_combout\ & ( \MIDI_IN~input_o\ & ( ((!\U1|Add0~101_sumout\) # 
-- ((\U1|eodec~5_combout\ & \U1|eodec~8_combout\))) # (\U1|process_0~2_combout\) ) ) ) # ( \U1|dec_cnt[31]~0_combout\ & ( !\MIDI_IN~input_o\ & ( (!\U1|Add0~101_sumout\) # ((\U1|eodec~8_combout\ & ((!\U1|process_0~2_combout\) # (\U1|eodec~5_combout\)))) ) ) ) 
-- # ( !\U1|dec_cnt[31]~0_combout\ & ( !\MIDI_IN~input_o\ & ( (!\U1|Add0~101_sumout\) # ((\U1|eodec~5_combout\ & \U1|eodec~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111110000101111111111010101111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_process_0~2_combout\,
	datab => \U1|ALT_INV_eodec~5_combout\,
	datac => \U1|ALT_INV_eodec~8_combout\,
	datad => \U1|ALT_INV_Add0~101_sumout\,
	datae => \U1|ALT_INV_dec_cnt[31]~0_combout\,
	dataf => \ALT_INV_MIDI_IN~input_o\,
	combout => \U1|dec_cnt[0]~3_combout\);

-- Location: FF_X23_Y8_N50
\U1|dec_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|dec_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(0));

-- Location: LABCELL_X24_Y8_N3
\U1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~105_sumout\ = SUM(( \U1|dec_cnt\(1) ) + ( GND ) + ( \U1|Add0~102\ ))
-- \U1|Add0~106\ = CARRY(( \U1|dec_cnt\(1) ) + ( GND ) + ( \U1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(1),
	cin => \U1|Add0~102\,
	sumout => \U1|Add0~105_sumout\,
	cout => \U1|Add0~106\);

-- Location: FF_X24_Y8_N5
\U1|dec_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~105_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(1));

-- Location: LABCELL_X24_Y8_N6
\U1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~113_sumout\ = SUM(( \U1|dec_cnt\(2) ) + ( GND ) + ( \U1|Add0~106\ ))
-- \U1|Add0~114\ = CARRY(( \U1|dec_cnt\(2) ) + ( GND ) + ( \U1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_dec_cnt\(2),
	cin => \U1|Add0~106\,
	sumout => \U1|Add0~113_sumout\,
	cout => \U1|Add0~114\);

-- Location: FF_X24_Y8_N8
\U1|dec_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~113_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(2));

-- Location: LABCELL_X24_Y8_N9
\U1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~109_sumout\ = SUM(( \U1|dec_cnt\(3) ) + ( GND ) + ( \U1|Add0~114\ ))
-- \U1|Add0~110\ = CARRY(( \U1|dec_cnt\(3) ) + ( GND ) + ( \U1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(3),
	cin => \U1|Add0~114\,
	sumout => \U1|Add0~109_sumout\,
	cout => \U1|Add0~110\);

-- Location: FF_X24_Y8_N11
\U1|dec_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~109_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(3));

-- Location: LABCELL_X24_Y8_N12
\U1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~117_sumout\ = SUM(( \U1|dec_cnt\(4) ) + ( GND ) + ( \U1|Add0~110\ ))
-- \U1|Add0~118\ = CARRY(( \U1|dec_cnt\(4) ) + ( GND ) + ( \U1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(4),
	cin => \U1|Add0~110\,
	sumout => \U1|Add0~117_sumout\,
	cout => \U1|Add0~118\);

-- Location: FF_X24_Y8_N14
\U1|dec_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~117_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(4));

-- Location: LABCELL_X24_Y8_N15
\U1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~121_sumout\ = SUM(( \U1|dec_cnt\(5) ) + ( GND ) + ( \U1|Add0~118\ ))
-- \U1|Add0~122\ = CARRY(( \U1|dec_cnt\(5) ) + ( GND ) + ( \U1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_dec_cnt\(5),
	cin => \U1|Add0~118\,
	sumout => \U1|Add0~121_sumout\,
	cout => \U1|Add0~122\);

-- Location: FF_X24_Y8_N17
\U1|dec_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~121_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(5));

-- Location: LABCELL_X24_Y8_N18
\U1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~125_sumout\ = SUM(( \U1|dec_cnt\(6) ) + ( GND ) + ( \U1|Add0~122\ ))
-- \U1|Add0~126\ = CARRY(( \U1|dec_cnt\(6) ) + ( GND ) + ( \U1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_dec_cnt\(6),
	cin => \U1|Add0~122\,
	sumout => \U1|Add0~125_sumout\,
	cout => \U1|Add0~126\);

-- Location: FF_X24_Y8_N20
\U1|dec_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~125_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(6));

-- Location: LABCELL_X24_Y8_N21
\U1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~41_sumout\ = SUM(( \U1|dec_cnt\(7) ) + ( GND ) + ( \U1|Add0~126\ ))
-- \U1|Add0~42\ = CARRY(( \U1|dec_cnt\(7) ) + ( GND ) + ( \U1|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(7),
	cin => \U1|Add0~126\,
	sumout => \U1|Add0~41_sumout\,
	cout => \U1|Add0~42\);

-- Location: FF_X24_Y8_N23
\U1|dec_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~41_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(7));

-- Location: LABCELL_X24_Y8_N24
\U1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~45_sumout\ = SUM(( \U1|dec_cnt\(8) ) + ( GND ) + ( \U1|Add0~42\ ))
-- \U1|Add0~46\ = CARRY(( \U1|dec_cnt\(8) ) + ( GND ) + ( \U1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_dec_cnt\(8),
	cin => \U1|Add0~42\,
	sumout => \U1|Add0~45_sumout\,
	cout => \U1|Add0~46\);

-- Location: FF_X24_Y8_N26
\U1|dec_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~45_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(8));

-- Location: LABCELL_X24_Y8_N27
\U1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~49_sumout\ = SUM(( \U1|dec_cnt\(9) ) + ( GND ) + ( \U1|Add0~46\ ))
-- \U1|Add0~50\ = CARRY(( \U1|dec_cnt\(9) ) + ( GND ) + ( \U1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(9),
	cin => \U1|Add0~46\,
	sumout => \U1|Add0~49_sumout\,
	cout => \U1|Add0~50\);

-- Location: FF_X24_Y8_N29
\U1|dec_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~49_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(9));

-- Location: LABCELL_X24_Y8_N30
\U1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~5_sumout\ = SUM(( \U1|dec_cnt\(10) ) + ( GND ) + ( \U1|Add0~50\ ))
-- \U1|Add0~6\ = CARRY(( \U1|dec_cnt\(10) ) + ( GND ) + ( \U1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(10),
	cin => \U1|Add0~50\,
	sumout => \U1|Add0~5_sumout\,
	cout => \U1|Add0~6\);

-- Location: FF_X24_Y8_N32
\U1|dec_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~5_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(10));

-- Location: LABCELL_X24_Y8_N33
\U1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~13_sumout\ = SUM(( \U1|dec_cnt\(11) ) + ( GND ) + ( \U1|Add0~6\ ))
-- \U1|Add0~14\ = CARRY(( \U1|dec_cnt\(11) ) + ( GND ) + ( \U1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_dec_cnt\(11),
	cin => \U1|Add0~6\,
	sumout => \U1|Add0~13_sumout\,
	cout => \U1|Add0~14\);

-- Location: FF_X24_Y8_N35
\U1|dec_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~13_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(11));

-- Location: LABCELL_X24_Y8_N36
\U1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~9_sumout\ = SUM(( \U1|dec_cnt\(12) ) + ( GND ) + ( \U1|Add0~14\ ))
-- \U1|Add0~10\ = CARRY(( \U1|dec_cnt\(12) ) + ( GND ) + ( \U1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_dec_cnt\(12),
	cin => \U1|Add0~14\,
	sumout => \U1|Add0~9_sumout\,
	cout => \U1|Add0~10\);

-- Location: FF_X24_Y8_N38
\U1|dec_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~9_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(12));

-- Location: LABCELL_X24_Y8_N39
\U1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~17_sumout\ = SUM(( \U1|dec_cnt\(13) ) + ( GND ) + ( \U1|Add0~10\ ))
-- \U1|Add0~18\ = CARRY(( \U1|dec_cnt\(13) ) + ( GND ) + ( \U1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(13),
	cin => \U1|Add0~10\,
	sumout => \U1|Add0~17_sumout\,
	cout => \U1|Add0~18\);

-- Location: FF_X24_Y8_N41
\U1|dec_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~17_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(13));

-- Location: LABCELL_X24_Y8_N42
\U1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~21_sumout\ = SUM(( \U1|dec_cnt\(14) ) + ( GND ) + ( \U1|Add0~18\ ))
-- \U1|Add0~22\ = CARRY(( \U1|dec_cnt\(14) ) + ( GND ) + ( \U1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_dec_cnt\(14),
	cin => \U1|Add0~18\,
	sumout => \U1|Add0~21_sumout\,
	cout => \U1|Add0~22\);

-- Location: FF_X24_Y8_N44
\U1|dec_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~21_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(14));

-- Location: LABCELL_X24_Y8_N45
\U1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~25_sumout\ = SUM(( \U1|dec_cnt\(15) ) + ( GND ) + ( \U1|Add0~22\ ))
-- \U1|Add0~26\ = CARRY(( \U1|dec_cnt\(15) ) + ( GND ) + ( \U1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_dec_cnt\(15),
	cin => \U1|Add0~22\,
	sumout => \U1|Add0~25_sumout\,
	cout => \U1|Add0~26\);

-- Location: FF_X24_Y8_N47
\U1|dec_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~25_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(15));

-- Location: LABCELL_X24_Y8_N48
\U1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~69_sumout\ = SUM(( \U1|dec_cnt\(16) ) + ( GND ) + ( \U1|Add0~26\ ))
-- \U1|Add0~70\ = CARRY(( \U1|dec_cnt\(16) ) + ( GND ) + ( \U1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_dec_cnt\(16),
	cin => \U1|Add0~26\,
	sumout => \U1|Add0~69_sumout\,
	cout => \U1|Add0~70\);

-- Location: FF_X24_Y8_N50
\U1|dec_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~69_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(16));

-- Location: FF_X24_Y8_N53
\U1|dec_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|Add0~1_sumout\,
	sclr => \U1|eodec~7_combout\,
	ena => \U1|dec_cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dec_cnt\(17));

-- Location: MLABCELL_X23_Y7_N48
\U1|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|process_0~2_combout\ = ( \U1|eodec~1_combout\ & ( \U1|eodec~2_combout\ & ( (!\U1|dec_cnt\(17) & (\U1|process_0~1_combout\ & (\U1|eodec~0_combout\ & \U1|eodec~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_dec_cnt\(17),
	datab => \U1|ALT_INV_process_0~1_combout\,
	datac => \U1|ALT_INV_eodec~0_combout\,
	datad => \U1|ALT_INV_eodec~3_combout\,
	datae => \U1|ALT_INV_eodec~1_combout\,
	dataf => \U1|ALT_INV_eodec~2_combout\,
	combout => \U1|process_0~2_combout\);

-- Location: MLABCELL_X23_Y7_N0
\U1|MIDI_DATA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|MIDI_DATA~0_combout\ = ( \U1|dec_cnt[31]~0_combout\ & ( \U1|eodec~4_combout\ & ( (!\U1|process_0~1_combout\ & ((\U1|dec_cnt\(0)))) # (\U1|process_0~1_combout\ & (\MIDI_IN~input_o\)) ) ) ) # ( !\U1|dec_cnt[31]~0_combout\ & ( \U1|eodec~4_combout\ & ( 
-- (\MIDI_IN~input_o\ & \U1|process_0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MIDI_IN~input_o\,
	datac => \U1|ALT_INV_dec_cnt\(0),
	datad => \U1|ALT_INV_process_0~1_combout\,
	datae => \U1|ALT_INV_dec_cnt[31]~0_combout\,
	dataf => \U1|ALT_INV_eodec~4_combout\,
	combout => \U1|MIDI_DATA~0_combout\);

-- Location: FF_X23_Y7_N38
\U1|MIDI_DATA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \MIDI_IN~_wirecell_combout\,
	sclr => \U1|process_0~2_combout\,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(23));

-- Location: FF_X23_Y7_N5
\U1|MIDI_DATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(23),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(22));

-- Location: MLABCELL_X23_Y8_N30
\U1|MIDI_DATA[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|MIDI_DATA[21]~feeder_combout\ = \U1|MIDI_DATA\(22)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_MIDI_DATA\(22),
	combout => \U1|MIDI_DATA[21]~feeder_combout\);

-- Location: FF_X23_Y8_N32
\U1|MIDI_DATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|MIDI_DATA[21]~feeder_combout\,
	sclr => \U1|process_0~2_combout\,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(21));

-- Location: MLABCELL_X23_Y8_N9
\U1|MIDI_DATA[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|MIDI_DATA[20]~feeder_combout\ = ( \U1|MIDI_DATA\(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_MIDI_DATA\(21),
	combout => \U1|MIDI_DATA[20]~feeder_combout\);

-- Location: FF_X23_Y8_N11
\U1|MIDI_DATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|MIDI_DATA[20]~feeder_combout\,
	sclr => \U1|process_0~2_combout\,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(20));

-- Location: FF_X23_Y7_N56
\U1|MIDI_DATA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(20),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(19));

-- Location: FF_X23_Y7_N32
\U1|MIDI_DATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(19),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(18));

-- Location: FF_X23_Y7_N53
\U1|MIDI_DATA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(18),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(17));

-- Location: FF_X23_Y7_N50
\U1|MIDI_DATA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(17),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(16));

-- Location: FF_X18_Y5_N59
\U1|MIDI_DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(16),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(15));

-- Location: FF_X21_Y5_N14
\U1|MIDI_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(15),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(14));

-- Location: FF_X21_Y5_N41
\U1|MIDI_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(14),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(13));

-- Location: FF_X20_Y5_N8
\U1|MIDI_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(13),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(12));

-- Location: FF_X20_Y5_N59
\U1|MIDI_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(12),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(11));

-- Location: FF_X20_Y5_N4
\U1|MIDI_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(11),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(10));

-- Location: FF_X20_Y5_N20
\U1|MIDI_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(10),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(9));

-- Location: FF_X20_Y5_N17
\U1|MIDI_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(9),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(8));

-- Location: FF_X23_Y7_N59
\U1|MIDI_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(8),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(7));

-- Location: FF_X23_Y7_N47
\U1|MIDI_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(7),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(6));

-- Location: FF_X23_Y7_N29
\U1|MIDI_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(6),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(5));

-- Location: MLABCELL_X23_Y8_N6
\U1|MIDI_DATA[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|MIDI_DATA[4]~feeder_combout\ = \U1|MIDI_DATA\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_MIDI_DATA\(5),
	combout => \U1|MIDI_DATA[4]~feeder_combout\);

-- Location: FF_X23_Y8_N8
\U1|MIDI_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	d => \U1|MIDI_DATA[4]~feeder_combout\,
	sclr => \U1|process_0~2_combout\,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(4));

-- Location: FF_X23_Y8_N59
\U1|MIDI_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(4),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(3));

-- Location: FF_X23_Y8_N17
\U1|MIDI_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(3),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(2));

-- Location: FF_X23_Y8_N23
\U1|MIDI_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(2),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(1));

-- Location: FF_X23_Y8_N26
\U1|MIDI_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|MIDI_DATA\(1),
	sclr => \U1|process_0~2_combout\,
	sload => VCC,
	ena => \U1|MIDI_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MIDI_DATA\(0));

-- Location: MLABCELL_X23_Y8_N27
\U1|NOTE_NUM[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM[7]~0_combout\ = ( !\U1|MIDI_DATA\(1) & ( !\U1|MIDI_DATA\(0) & ( (!\U1|MIDI_DATA\(3) & (!\U1|MIDI_DATA\(4) & (!\U1|MIDI_DATA\(2) & !\U1|MIDI_DATA\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_MIDI_DATA\(3),
	datab => \U1|ALT_INV_MIDI_DATA\(4),
	datac => \U1|ALT_INV_MIDI_DATA\(2),
	datad => \U1|ALT_INV_MIDI_DATA\(5),
	datae => \U1|ALT_INV_MIDI_DATA\(1),
	dataf => \U1|ALT_INV_MIDI_DATA\(0),
	combout => \U1|NOTE_NUM[7]~0_combout\);

-- Location: MLABCELL_X23_Y7_N15
\U1|Equal28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal28~1_combout\ = ( \U1|MIDI_DATA\(20) & ( (!\U1|MIDI_DATA\(21) & \U1|MIDI_DATA\(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_MIDI_DATA\(21),
	datad => \U1|ALT_INV_MIDI_DATA\(23),
	dataf => \U1|ALT_INV_MIDI_DATA\(20),
	combout => \U1|Equal28~1_combout\);

-- Location: MLABCELL_X23_Y7_N33
\U1|Equal28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal28~0_combout\ = ( !\U1|MIDI_DATA\(19) & ( !\U1|MIDI_DATA\(17) & ( (!\U1|MIDI_DATA\(22) & (!\U1|MIDI_DATA\(18) & !\U1|MIDI_DATA\(16))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_MIDI_DATA\(22),
	datac => \U1|ALT_INV_MIDI_DATA\(18),
	datad => \U1|ALT_INV_MIDI_DATA\(16),
	datae => \U1|ALT_INV_MIDI_DATA\(19),
	dataf => \U1|ALT_INV_MIDI_DATA\(17),
	combout => \U1|Equal28~0_combout\);

-- Location: MLABCELL_X23_Y8_N18
\U1|eodec~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|eodec~6_combout\ = ( \U1|eodec~q\ & ( \U1|dec_cnt\(0) & ( (!\U1|process_0~1_combout\) # ((!\U1|eodec~4_combout\) # ((!\U1|eodec~5_combout\ & !\MIDI_IN~input_o\))) ) ) ) # ( !\U1|eodec~q\ & ( \U1|dec_cnt\(0) & ( (\U1|eodec~5_combout\ & 
-- (!\U1|process_0~1_combout\ & \U1|eodec~4_combout\)) ) ) ) # ( \U1|eodec~q\ & ( !\U1|dec_cnt\(0) & ( (!\U1|process_0~1_combout\) # ((!\U1|eodec~4_combout\) # (!\MIDI_IN~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110000000100000001001111111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_eodec~5_combout\,
	datab => \U1|ALT_INV_process_0~1_combout\,
	datac => \U1|ALT_INV_eodec~4_combout\,
	datad => \ALT_INV_MIDI_IN~input_o\,
	datae => \U1|ALT_INV_eodec~q\,
	dataf => \U1|ALT_INV_dec_cnt\(0),
	combout => \U1|eodec~6_combout\);

-- Location: FF_X23_Y8_N47
\U1|eodec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U1|ALT_INV_LO_CLK~q\,
	asdata => \U1|eodec~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|eodec~q\);

-- Location: MLABCELL_X23_Y8_N36
\U1|NOTE_NUM[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM[7]~2_combout\ = ( \U1|MIDI_DATA\(21) & ( (!\U1|MIDI_DATA\(20) & (!\U1|MIDI_DATA\(15) & !\U1|MIDI_DATA\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_MIDI_DATA\(20),
	datac => \U1|ALT_INV_MIDI_DATA\(15),
	datad => \U1|ALT_INV_MIDI_DATA\(14),
	dataf => \U1|ALT_INV_MIDI_DATA\(21),
	combout => \U1|NOTE_NUM[7]~2_combout\);

-- Location: MLABCELL_X23_Y7_N9
\U1|NOTE_NUM[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM[7]~1_combout\ = ( !\U1|MIDI_DATA\(6) & ( !\U1|MIDI_DATA\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_MIDI_DATA\(7),
	dataf => \U1|ALT_INV_MIDI_DATA\(6),
	combout => \U1|NOTE_NUM[7]~1_combout\);

-- Location: MLABCELL_X23_Y8_N54
\U1|NOTE_NUM[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM[7]~3_combout\ = ( \U1|NOTE_NUM[7]~2_combout\ & ( \U1|NOTE_NUM[7]~1_combout\ & ( (\U1|eodec~q\ & ((\U1|Equal28~0_combout\) # (\U1|NOTE_NUM[7]~0_combout\))) ) ) ) # ( !\U1|NOTE_NUM[7]~2_combout\ & ( \U1|NOTE_NUM[7]~1_combout\ & ( (\U1|eodec~q\ 
-- & (((\U1|Equal28~1_combout\ & \U1|Equal28~0_combout\)) # (\U1|NOTE_NUM[7]~0_combout\))) ) ) ) # ( \U1|NOTE_NUM[7]~2_combout\ & ( !\U1|NOTE_NUM[7]~1_combout\ & ( (\U1|Equal28~0_combout\ & \U1|eodec~q\) ) ) ) # ( !\U1|NOTE_NUM[7]~2_combout\ & ( 
-- !\U1|NOTE_NUM[7]~1_combout\ & ( (\U1|Equal28~1_combout\ & (\U1|Equal28~0_combout\ & \U1|eodec~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000111100000000010101110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM[7]~0_combout\,
	datab => \U1|ALT_INV_Equal28~1_combout\,
	datac => \U1|ALT_INV_Equal28~0_combout\,
	datad => \U1|ALT_INV_eodec~q\,
	datae => \U1|ALT_INV_NOTE_NUM[7]~2_combout\,
	dataf => \U1|ALT_INV_NOTE_NUM[7]~1_combout\,
	combout => \U1|NOTE_NUM[7]~3_combout\);

-- Location: MLABCELL_X23_Y7_N21
\U1|Equal28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal28~2_combout\ = ( \U1|Equal28~1_combout\ & ( \U1|Equal28~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_Equal28~0_combout\,
	dataf => \U1|ALT_INV_Equal28~1_combout\,
	combout => \U1|Equal28~2_combout\);

-- Location: LABCELL_X17_Y4_N39
\U1|NOTE_ENABLE\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_ENABLE~combout\ = ( \U1|Equal28~2_combout\ & ( (\U1|NOTE_NUM[7]~3_combout\) # (\U1|NOTE_ENABLE~combout\) ) ) # ( !\U1|Equal28~2_combout\ & ( (\U1|NOTE_ENABLE~combout\ & !\U1|NOTE_NUM[7]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_NOTE_ENABLE~combout\,
	datad => \U1|ALT_INV_NOTE_NUM[7]~3_combout\,
	dataf => \U1|ALT_INV_Equal28~2_combout\,
	combout => \U1|NOTE_ENABLE~combout\);

-- Location: LABCELL_X17_Y4_N51
\U2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|process_0~0_combout\ = ( \U1|NOTE_ENABLE~combout\ & ( !\RST~input_o\ ) ) # ( !\U1|NOTE_ENABLE~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_RST~input_o\,
	dataf => \U1|ALT_INV_NOTE_ENABLE~combout\,
	combout => \U2|process_0~0_combout\);

-- Location: LABCELL_X20_Y5_N57
\U1|NOTE_NUM[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM\(3) = ( \U1|NOTE_NUM[7]~3_combout\ & ( \U1|MIDI_DATA\(11) ) ) # ( !\U1|NOTE_NUM[7]~3_combout\ & ( \U1|NOTE_NUM\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_NOTE_NUM\(3),
	datad => \U1|ALT_INV_MIDI_DATA\(11),
	dataf => \U1|ALT_INV_NOTE_NUM[7]~3_combout\,
	combout => \U1|NOTE_NUM\(3));

-- Location: LABCELL_X20_Y5_N39
\U1|NOTE_NUM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM\(0) = ( \U1|NOTE_NUM[7]~3_combout\ & ( \U1|MIDI_DATA\(8) ) ) # ( !\U1|NOTE_NUM[7]~3_combout\ & ( \U1|NOTE_NUM\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_MIDI_DATA\(8),
	datad => \U1|ALT_INV_NOTE_NUM\(0),
	dataf => \U1|ALT_INV_NOTE_NUM[7]~3_combout\,
	combout => \U1|NOTE_NUM\(0));

-- Location: LABCELL_X20_Y5_N6
\U1|NOTE_NUM[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM\(4) = ( \U1|NOTE_NUM\(4) & ( (!\U1|NOTE_NUM[7]~3_combout\) # (\U1|MIDI_DATA\(12)) ) ) # ( !\U1|NOTE_NUM\(4) & ( (\U1|NOTE_NUM[7]~3_combout\ & \U1|MIDI_DATA\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_NOTE_NUM[7]~3_combout\,
	datad => \U1|ALT_INV_MIDI_DATA\(12),
	dataf => \U1|ALT_INV_NOTE_NUM\(4),
	combout => \U1|NOTE_NUM\(4));

-- Location: LABCELL_X20_Y5_N18
\U1|NOTE_NUM[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM\(1) = ( \U1|NOTE_NUM[7]~3_combout\ & ( \U1|MIDI_DATA\(9) ) ) # ( !\U1|NOTE_NUM[7]~3_combout\ & ( \U1|NOTE_NUM\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_NOTE_NUM\(1),
	datad => \U1|ALT_INV_MIDI_DATA\(9),
	dataf => \U1|ALT_INV_NOTE_NUM[7]~3_combout\,
	combout => \U1|NOTE_NUM\(1));

-- Location: LABCELL_X20_Y5_N3
\U1|NOTE_NUM[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM\(2) = ( \U1|NOTE_NUM[7]~3_combout\ & ( \U1|MIDI_DATA\(10) ) ) # ( !\U1|NOTE_NUM[7]~3_combout\ & ( \U1|NOTE_NUM\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datad => \U1|ALT_INV_MIDI_DATA\(10),
	dataf => \U1|ALT_INV_NOTE_NUM[7]~3_combout\,
	combout => \U1|NOTE_NUM\(2));

-- Location: LABCELL_X19_Y5_N39
\U2|U1|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux8~3_combout\ = ( !\U1|NOTE_NUM\(2) & ( (!\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(4) & !\U1|NOTE_NUM\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(4),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(2),
	combout => \U2|U1|Mux8~3_combout\);

-- Location: LABCELL_X19_Y5_N36
\U2|U1|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux8~1_combout\ = ( \U1|NOTE_NUM\(2) & ( (!\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(0)) # ((!\U1|NOTE_NUM\(4)) # (\U1|NOTE_NUM\(1))))) # (\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(0) $ (((!\U1|NOTE_NUM\(4)) # (!\U1|NOTE_NUM\(1)))))) ) ) # ( !\U1|NOTE_NUM\(2) & 
-- ( (!\U1|NOTE_NUM\(3) & (((!\U1|NOTE_NUM\(4))) # (\U1|NOTE_NUM\(0)))) # (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(0) & ((\U1|NOTE_NUM\(1)))) # (\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(4) & !\U1|NOTE_NUM\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001111100110101000111110011010111001101111101011100110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(4),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(2),
	combout => \U2|U1|Mux8~1_combout\);

-- Location: LABCELL_X19_Y5_N0
\U2|U1|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux8~2_combout\ = ( \U1|NOTE_NUM\(3) & ( ((!\U1|NOTE_NUM\(2) & ((\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(0)))) # (\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(1))))) # (\U1|NOTE_NUM\(4)) ) ) # ( !\U1|NOTE_NUM\(3) & ( (!\U1|NOTE_NUM\(2) & (((!\U1|NOTE_NUM\(4) & 
-- \U1|NOTE_NUM\(1))))) # (\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(4) $ (((\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111000011000010011100001101111111111100110111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(4),
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(3),
	combout => \U2|U1|Mux8~2_combout\);

-- Location: MLABCELL_X18_Y5_N48
\U1|NOTE_NUM[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM\(7) = ( \U1|MIDI_DATA\(15) & ( (\U1|NOTE_NUM[7]~3_combout\) # (\U1|NOTE_NUM\(7)) ) ) # ( !\U1|MIDI_DATA\(15) & ( (\U1|NOTE_NUM\(7) & !\U1|NOTE_NUM[7]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_NOTE_NUM\(7),
	datad => \U1|ALT_INV_NOTE_NUM[7]~3_combout\,
	dataf => \U1|ALT_INV_MIDI_DATA\(15),
	combout => \U1|NOTE_NUM\(7));

-- Location: LABCELL_X21_Y5_N36
\U1|NOTE_NUM[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM\(6) = ( \U1|MIDI_DATA\(14) & ( \U1|NOTE_NUM[7]~3_combout\ ) ) # ( \U1|MIDI_DATA\(14) & ( !\U1|NOTE_NUM[7]~3_combout\ & ( \U1|NOTE_NUM\(6) ) ) ) # ( !\U1|MIDI_DATA\(14) & ( !\U1|NOTE_NUM[7]~3_combout\ & ( \U1|NOTE_NUM\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_NOTE_NUM\(6),
	datae => \U1|ALT_INV_MIDI_DATA\(14),
	dataf => \U1|ALT_INV_NOTE_NUM[7]~3_combout\,
	combout => \U1|NOTE_NUM\(6));

-- Location: LABCELL_X21_Y5_N6
\U1|NOTE_NUM[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|NOTE_NUM\(5) = ( \U1|NOTE_NUM[7]~3_combout\ & ( \U1|MIDI_DATA\(13) ) ) # ( !\U1|NOTE_NUM[7]~3_combout\ & ( \U1|NOTE_NUM\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_MIDI_DATA\(13),
	datad => \U1|ALT_INV_NOTE_NUM\(5),
	dataf => \U1|ALT_INV_NOTE_NUM[7]~3_combout\,
	combout => \U1|NOTE_NUM\(5));

-- Location: LABCELL_X19_Y5_N3
\U2|U1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux8~0_combout\ = ( \U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(4) $ (((!\U1|NOTE_NUM\(0)) # (\U1|NOTE_NUM\(3)))))) # (\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(4) & ((!\U1|NOTE_NUM\(3)) # (\U1|NOTE_NUM\(0))))) ) ) # ( !\U1|NOTE_NUM\(1) & ( 
-- (!\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(4) & (!\U1|NOTE_NUM\(2))) # (\U1|NOTE_NUM\(4) & ((!\U1|NOTE_NUM\(3)))))) # (\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(3) $ (((!\U1|NOTE_NUM\(4)) # (\U1|NOTE_NUM\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001011000101101100101100010101101100001101000110110000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(4),
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux8~0_combout\);

-- Location: LABCELL_X19_Y5_N18
\U2|U1|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux8~4_combout\ = ( !\U1|NOTE_NUM\(6) & ( ((!\U1|NOTE_NUM\(7) & ((!\U1|NOTE_NUM\(5) & ((\U2|U1|Mux8~0_combout\))) # (\U1|NOTE_NUM\(5) & (\U2|U1|Mux8~1_combout\))))) ) ) # ( \U1|NOTE_NUM\(6) & ( ((!\U1|NOTE_NUM\(7) & ((!\U1|NOTE_NUM\(5) & 
-- ((\U2|U1|Mux8~2_combout\))) # (\U1|NOTE_NUM\(5) & (\U2|U1|Mux8~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|ALT_INV_Mux8~3_combout\,
	datab => \U2|U1|ALT_INV_Mux8~1_combout\,
	datac => \U2|U1|ALT_INV_Mux8~2_combout\,
	datad => \U1|ALT_INV_NOTE_NUM\(7),
	datae => \U1|ALT_INV_NOTE_NUM\(6),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	datag => \U2|U1|ALT_INV_Mux8~0_combout\,
	combout => \U2|U1|Mux8~4_combout\);

-- Location: LABCELL_X19_Y5_N45
\U2|U2|COUNT[6]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[6]~33_combout\ = ( \U2|U1|Mux8~4_combout\ & ( (\U2|process_0~0_combout\) # (\U2|U2|COUNT[6]~33_combout\) ) ) # ( !\U2|U1|Mux8~4_combout\ & ( (\U2|U2|COUNT[6]~33_combout\ & !\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[6]~33_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux8~4_combout\,
	combout => \U2|U2|COUNT[6]~33_combout\);

-- Location: MLABCELL_X18_Y5_N18
\U2|U1|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux9~3_combout\ = ( \U1|NOTE_NUM\(5) & ( (\U1|NOTE_NUM\(2) & (\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(3) & \U1|NOTE_NUM\(1)))) ) ) # ( !\U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(2) $ (((\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(0)))))) # 
-- (\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101001010000100110100101000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(2),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(3),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	combout => \U2|U1|Mux9~3_combout\);

-- Location: MLABCELL_X18_Y5_N3
\U2|U1|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux9~2_combout\ = ( \U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(2)) # ((!\U1|NOTE_NUM\(0) & \U1|NOTE_NUM\(1))))) # (\U1|NOTE_NUM\(3) & (\U1|NOTE_NUM\(0))) ) ) # ( !\U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(2) $ 
-- (!\U1|NOTE_NUM\(1))))) # (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(2))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(2)) # (!\U1|NOTE_NUM\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111010010000111111101001011010001110110011101000111011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(3),
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	combout => \U2|U1|Mux9~2_combout\);

-- Location: MLABCELL_X18_Y5_N39
\U2|U1|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux9~1_combout\ = ( \U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(2) & (((\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(3))) # (\U1|NOTE_NUM\(0)))) # (\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(3)) # ((!\U1|NOTE_NUM\(0) & !\U1|NOTE_NUM\(1))))) ) ) # ( !\U1|NOTE_NUM\(5) & ( 
-- (!\U1|NOTE_NUM\(0) & (((!\U1|NOTE_NUM\(2) & !\U1|NOTE_NUM\(3))) # (\U1|NOTE_NUM\(1)))) # (\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(2) $ (!\U1|NOTE_NUM\(3) $ (\U1|NOTE_NUM\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010011101011100101001110101101111110111111000111111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(3),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	combout => \U2|U1|Mux9~1_combout\);

-- Location: MLABCELL_X18_Y5_N0
\U2|U1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux9~0_combout\ = ( \U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(1) & (!\U1|NOTE_NUM\(3) $ (((\U1|NOTE_NUM\(2)) # (\U1|NOTE_NUM\(0)))))) # (\U1|NOTE_NUM\(1) & (((\U1|NOTE_NUM\(2))))) ) ) # ( !\U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(2) $ 
-- (((!\U1|NOTE_NUM\(3)) # (!\U1|NOTE_NUM\(1)))))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(1))) # (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(2)) # (\U1|NOTE_NUM\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001111101001010100111110100110010000001111111001000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(3),
	datac => \U1|ALT_INV_NOTE_NUM\(1),
	datad => \U1|ALT_INV_NOTE_NUM\(2),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	combout => \U2|U1|Mux9~0_combout\);

-- Location: MLABCELL_X18_Y5_N12
\U2|U1|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux9~4_combout\ = ( !\U1|NOTE_NUM\(4) & ( (((!\U1|NOTE_NUM\(6) & (\U2|U1|Mux9~0_combout\)) # (\U1|NOTE_NUM\(6) & ((\U2|U1|Mux9~1_combout\))))) # (\U1|NOTE_NUM\(7)) ) ) # ( \U1|NOTE_NUM\(4) & ( ((!\U1|NOTE_NUM\(6) & (((\U2|U1|Mux9~2_combout\)))) # 
-- (\U1|NOTE_NUM\(6) & (\U2|U1|Mux9~3_combout\))) # (\U1|NOTE_NUM\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101111101010101010111110111011101011111111111110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(7),
	datab => \U2|U1|ALT_INV_Mux9~3_combout\,
	datac => \U2|U1|ALT_INV_Mux9~2_combout\,
	datad => \U1|ALT_INV_NOTE_NUM\(6),
	datae => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U2|U1|ALT_INV_Mux9~1_combout\,
	datag => \U2|U1|ALT_INV_Mux9~0_combout\,
	combout => \U2|U1|Mux9~4_combout\);

-- Location: MLABCELL_X18_Y5_N9
\U2|U2|COUNT[5]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[5]~37_combout\ = ( \U2|U1|Mux9~4_combout\ & ( (\U2|process_0~0_combout\) # (\U2|U2|COUNT[5]~37_combout\) ) ) # ( !\U2|U1|Mux9~4_combout\ & ( (\U2|U2|COUNT[5]~37_combout\ & !\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[5]~37_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux9~4_combout\,
	combout => \U2|U2|COUNT[5]~37_combout\);

-- Location: LABCELL_X20_Y5_N33
\U2|U1|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux10~3_combout\ = ( \U1|NOTE_NUM\(6) & ( (!\U1|NOTE_NUM\(3)) # ((!\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(1) & !\U1|NOTE_NUM\(0)))) ) ) # ( !\U1|NOTE_NUM\(6) & ( ((!\U1|NOTE_NUM\(2) & (\U1|NOTE_NUM\(1))) # (\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(1) & 
-- \U1|NOTE_NUM\(0)))) # (\U1|NOTE_NUM\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101111101010111010111110111101010101010101110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(1),
	datad => \U1|ALT_INV_NOTE_NUM\(0),
	dataf => \U1|ALT_INV_NOTE_NUM\(6),
	combout => \U2|U1|Mux10~3_combout\);

-- Location: LABCELL_X19_Y5_N12
\U2|U1|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux10~1_combout\ = ( \U1|NOTE_NUM\(2) & ( (!\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(6) & (\U1|NOTE_NUM\(0))) # (\U1|NOTE_NUM\(6) & ((!\U1|NOTE_NUM\(1)))))) # (\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(6) $ (((\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(0)))))) ) ) # ( 
-- !\U1|NOTE_NUM\(2) & ( (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(6) $ (((\U1|NOTE_NUM\(1) & !\U1|NOTE_NUM\(3)))))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(6) & (!\U1|NOTE_NUM\(1))) # (\U1|NOTE_NUM\(6) & ((!\U1|NOTE_NUM\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111001110000110011100111000001011000110001110101100011000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(1),
	datac => \U1|ALT_INV_NOTE_NUM\(3),
	datad => \U1|ALT_INV_NOTE_NUM\(6),
	dataf => \U1|ALT_INV_NOTE_NUM\(2),
	combout => \U2|U1|Mux10~1_combout\);

-- Location: LABCELL_X19_Y5_N9
\U2|U1|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux10~2_combout\ = ( \U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(3)) # (!\U1|NOTE_NUM\(2) $ (!\U1|NOTE_NUM\(6))))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(2) & ((\U1|NOTE_NUM\(3)))) # (\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(6))))) ) ) # ( 
-- !\U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(6))) # (\U1|NOTE_NUM\(2) & (\U1|NOTE_NUM\(6) & \U1|NOTE_NUM\(3))))) # (\U1|NOTE_NUM\(0) & (((!\U1|NOTE_NUM\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001110000100101100111000010011011100011110101101110001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(2),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(6),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux10~2_combout\);

-- Location: LABCELL_X20_Y5_N9
\U2|U1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux10~0_combout\ = ( \U1|NOTE_NUM\(6) & ( (!\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(2) & \U1|NOTE_NUM\(1))) # (\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(2))))) # (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(2))) # 
-- (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(2)) # (\U1|NOTE_NUM\(1)))))) ) ) # ( !\U1|NOTE_NUM\(6) & ( (!\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(0) $ (((\U1|NOTE_NUM\(3) & !\U1|NOTE_NUM\(1)))))) # (\U1|NOTE_NUM\(2) & (((\U1|NOTE_NUM\(0) & !\U1|NOTE_NUM\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001111000000100100111100000000010110100101110001011010010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(6),
	combout => \U2|U1|Mux10~0_combout\);

-- Location: LABCELL_X19_Y5_N48
\U2|U1|Mux10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux10~4_combout\ = ( !\U1|NOTE_NUM\(4) & ( ((!\U1|NOTE_NUM\(7) & ((!\U1|NOTE_NUM\(5) & ((\U2|U1|Mux10~0_combout\))) # (\U1|NOTE_NUM\(5) & (\U2|U1|Mux10~1_combout\))))) ) ) # ( \U1|NOTE_NUM\(4) & ( ((!\U1|NOTE_NUM\(7) & ((!\U1|NOTE_NUM\(5) & 
-- ((\U2|U1|Mux10~2_combout\))) # (\U1|NOTE_NUM\(5) & (\U2|U1|Mux10~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|ALT_INV_Mux10~3_combout\,
	datab => \U2|U1|ALT_INV_Mux10~1_combout\,
	datac => \U2|U1|ALT_INV_Mux10~2_combout\,
	datad => \U1|ALT_INV_NOTE_NUM\(7),
	datae => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	datag => \U2|U1|ALT_INV_Mux10~0_combout\,
	combout => \U2|U1|Mux10~4_combout\);

-- Location: LABCELL_X19_Y5_N33
\U2|U2|COUNT[4]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[4]~41_combout\ = ( \U2|U1|Mux10~4_combout\ & ( (\U2|process_0~0_combout\) # (\U2|U2|COUNT[4]~41_combout\) ) ) # ( !\U2|U1|Mux10~4_combout\ & ( (\U2|U2|COUNT[4]~41_combout\ & !\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[4]~41_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux10~4_combout\,
	combout => \U2|U2|COUNT[4]~41_combout\);

-- Location: LABCELL_X20_Y4_N18
\U2|U1|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux11~1_combout\ = ( \U1|NOTE_NUM\(6) & ( (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(1) $ (((!\U1|NOTE_NUM\(3)) # (\U1|NOTE_NUM\(2)))))) # (\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(2) $ (((\U1|NOTE_NUM\(3)) # (\U1|NOTE_NUM\(1)))))) ) ) # ( !\U1|NOTE_NUM\(6) & 
-- ( (!\U1|NOTE_NUM\(1) & (!\U1|NOTE_NUM\(2) $ (((!\U1|NOTE_NUM\(0)) # (\U1|NOTE_NUM\(3)))))) # (\U1|NOTE_NUM\(1) & ((!\U1|NOTE_NUM\(2)) # ((\U1|NOTE_NUM\(0) & !\U1|NOTE_NUM\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110101100110011011010110011001011001100100110101100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(1),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(0),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(6),
	combout => \U2|U1|Mux11~1_combout\);

-- Location: LABCELL_X20_Y4_N30
\U2|U1|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux11~2_combout\ = ( \U1|NOTE_NUM\(6) & ( (!\U1|NOTE_NUM\(3) & (((\U1|NOTE_NUM\(0))))) # (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(0)) # (\U1|NOTE_NUM\(1)))) # (\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(1) $ (!\U1|NOTE_NUM\(0)))))) ) ) # 
-- ( !\U1|NOTE_NUM\(6) & ( (!\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(2) & ((\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(3))))) # (\U1|NOTE_NUM\(0) & (((!\U1|NOTE_NUM\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111110000000101011111000000100011110111100010001111011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(2),
	datab => \U1|ALT_INV_NOTE_NUM\(3),
	datac => \U1|ALT_INV_NOTE_NUM\(1),
	datad => \U1|ALT_INV_NOTE_NUM\(0),
	dataf => \U1|ALT_INV_NOTE_NUM\(6),
	combout => \U2|U1|Mux11~2_combout\);

-- Location: LABCELL_X20_Y4_N57
\U2|U1|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux11~3_combout\ = ( \U1|NOTE_NUM\(6) & ( (!\U1|NOTE_NUM\(1) & ((!\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(2)))) # (\U1|NOTE_NUM\(3) & ((\U1|NOTE_NUM\(2)) # (\U1|NOTE_NUM\(0)))))) # (\U1|NOTE_NUM\(1) & (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(0)) # 
-- (!\U1|NOTE_NUM\(2))))) ) ) # ( !\U1|NOTE_NUM\(6) & ( (!\U1|NOTE_NUM\(1) & (!\U1|NOTE_NUM\(3) $ (((!\U1|NOTE_NUM\(0) & !\U1|NOTE_NUM\(2)))))) # (\U1|NOTE_NUM\(1) & (!\U1|NOTE_NUM\(2) $ (((!\U1|NOTE_NUM\(0)) # (\U1|NOTE_NUM\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100011100101001110001110010110100111000011101010011100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(1),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(3),
	datad => \U1|ALT_INV_NOTE_NUM\(2),
	dataf => \U1|ALT_INV_NOTE_NUM\(6),
	combout => \U2|U1|Mux11~3_combout\);

-- Location: LABCELL_X20_Y4_N21
\U2|U1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux11~0_combout\ = ( \U1|NOTE_NUM\(0) & ( (!\U1|NOTE_NUM\(1) & (\U1|NOTE_NUM\(6) & ((!\U1|NOTE_NUM\(2)) # (!\U1|NOTE_NUM\(3))))) # (\U1|NOTE_NUM\(1) & (!\U1|NOTE_NUM\(3) $ (((!\U1|NOTE_NUM\(2) & \U1|NOTE_NUM\(6)))))) ) ) # ( !\U1|NOTE_NUM\(0) & ( 
-- (!\U1|NOTE_NUM\(6)) # ((!\U1|NOTE_NUM\(2) & ((\U1|NOTE_NUM\(3)))) # (\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(3)) # (\U1|NOTE_NUM\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111101111100111111110101011011000011000101101100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(1),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(6),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(0),
	combout => \U2|U1|Mux11~0_combout\);

-- Location: LABCELL_X20_Y4_N24
\U2|U1|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux11~4_combout\ = ( !\U1|NOTE_NUM\(4) & ( (!\U1|NOTE_NUM\(7) & ((!\U1|NOTE_NUM\(5) & (((\U2|U1|Mux11~0_combout\)))) # (\U1|NOTE_NUM\(5) & (\U2|U1|Mux11~1_combout\)))) ) ) # ( \U1|NOTE_NUM\(4) & ( ((!\U1|NOTE_NUM\(7) & ((!\U1|NOTE_NUM\(5) & 
-- (\U2|U1|Mux11~2_combout\)) # (\U1|NOTE_NUM\(5) & ((\U2|U1|Mux11~3_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100000000000010100000000000011011000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(5),
	datab => \U2|U1|ALT_INV_Mux11~1_combout\,
	datac => \U2|U1|ALT_INV_Mux11~2_combout\,
	datad => \U1|ALT_INV_NOTE_NUM\(7),
	datae => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U2|U1|ALT_INV_Mux11~3_combout\,
	datag => \U2|U1|ALT_INV_Mux11~0_combout\,
	combout => \U2|U1|Mux11~4_combout\);

-- Location: LABCELL_X20_Y4_N33
\U2|U2|COUNT[3]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[3]~45_combout\ = ( \U2|U1|Mux11~4_combout\ & ( (\U2|process_0~0_combout\) # (\U2|U2|COUNT[3]~45_combout\) ) ) # ( !\U2|U1|Mux11~4_combout\ & ( (\U2|U2|COUNT[3]~45_combout\ & !\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[3]~45_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux11~4_combout\,
	combout => \U2|U2|COUNT[3]~45_combout\);

-- Location: LABCELL_X20_Y5_N45
\U2|U1|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux12~1_combout\ = ( \U1|NOTE_NUM\(3) & ( (!\U1|NOTE_NUM\(5) & ((!\U1|NOTE_NUM\(0)) # ((!\U1|NOTE_NUM\(4))))) # (\U1|NOTE_NUM\(5) & ((!\U1|NOTE_NUM\(4) & (!\U1|NOTE_NUM\(0))) # (\U1|NOTE_NUM\(4) & ((\U1|NOTE_NUM\(6)))))) ) ) # ( !\U1|NOTE_NUM\(3) & 
-- ( (!\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(5)) # (!\U1|NOTE_NUM\(4) $ (\U1|NOTE_NUM\(6))))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(5) $ (\U1|NOTE_NUM\(6))) # (\U1|NOTE_NUM\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110110011111111011011001111111101000111010111110100011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(5),
	datac => \U1|ALT_INV_NOTE_NUM\(4),
	datad => \U1|ALT_INV_NOTE_NUM\(6),
	dataf => \U1|ALT_INV_NOTE_NUM\(3),
	combout => \U2|U1|Mux12~1_combout\);

-- Location: LABCELL_X20_Y5_N21
\U2|U1|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux12~2_combout\ = ( \U1|NOTE_NUM\(3) & ( (!\U1|NOTE_NUM\(6) & (!\U1|NOTE_NUM\(0) $ (((\U1|NOTE_NUM\(4)) # (\U1|NOTE_NUM\(5)))))) # (\U1|NOTE_NUM\(6) & (((\U1|NOTE_NUM\(5) & \U1|NOTE_NUM\(4))) # (\U1|NOTE_NUM\(0)))) ) ) # ( !\U1|NOTE_NUM\(3) & ( 
-- (!\U1|NOTE_NUM\(6) & ((!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(5) & \U1|NOTE_NUM\(4))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(4)))))) # (\U1|NOTE_NUM\(6) & ((!\U1|NOTE_NUM\(0)) # ((!\U1|NOTE_NUM\(5) & \U1|NOTE_NUM\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011010100011001101101010010010011001101111001001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(6),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(5),
	datad => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U1|ALT_INV_NOTE_NUM\(3),
	combout => \U2|U1|Mux12~2_combout\);

-- Location: LABCELL_X20_Y5_N48
\U2|U1|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux12~3_combout\ = ( \U1|NOTE_NUM\(0) & ( (!\U1|NOTE_NUM\(6) & ((!\U1|NOTE_NUM\(4) & ((\U1|NOTE_NUM\(3)))) # (\U1|NOTE_NUM\(4) & (\U1|NOTE_NUM\(5))))) # (\U1|NOTE_NUM\(6) & (!\U1|NOTE_NUM\(4) $ (((!\U1|NOTE_NUM\(5)) # (\U1|NOTE_NUM\(3)))))) ) ) # ( 
-- !\U1|NOTE_NUM\(0) & ( (!\U1|NOTE_NUM\(5) & ((!\U1|NOTE_NUM\(4) & (!\U1|NOTE_NUM\(6))) # (\U1|NOTE_NUM\(4) & ((!\U1|NOTE_NUM\(3)))))) # (\U1|NOTE_NUM\(5) & (!\U1|NOTE_NUM\(4) $ (((!\U1|NOTE_NUM\(6) & !\U1|NOTE_NUM\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110111100000100111011110000000011100011001110001110001100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(5),
	datab => \U1|ALT_INV_NOTE_NUM\(6),
	datac => \U1|ALT_INV_NOTE_NUM\(3),
	datad => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U1|ALT_INV_NOTE_NUM\(0),
	combout => \U2|U1|Mux12~3_combout\);

-- Location: LABCELL_X20_Y5_N0
\U2|U1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux12~0_combout\ = ( \U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(6) & ((\U1|NOTE_NUM\(3)) # (\U1|NOTE_NUM\(4))))) # (\U1|NOTE_NUM\(0) & (((!\U1|NOTE_NUM\(4)) # (\U1|NOTE_NUM\(3))))) ) ) # ( !\U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(6) & 
-- ((!\U1|NOTE_NUM\(4) & ((\U1|NOTE_NUM\(3)))) # (\U1|NOTE_NUM\(4) & (!\U1|NOTE_NUM\(0))))) # (\U1|NOTE_NUM\(6) & (((!\U1|NOTE_NUM\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110110101000010111011010100000111000101110110011100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(6),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(4),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	combout => \U2|U1|Mux12~0_combout\);

-- Location: LABCELL_X19_Y4_N6
\U2|U1|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux12~4_combout\ = ( !\U1|NOTE_NUM\(2) & ( (((!\U1|NOTE_NUM\(1) & ((\U2|U1|Mux12~0_combout\))) # (\U1|NOTE_NUM\(1) & (\U2|U1|Mux12~1_combout\)))) # (\U1|NOTE_NUM\(7)) ) ) # ( \U1|NOTE_NUM\(2) & ( (((!\U1|NOTE_NUM\(1) & (\U2|U1|Mux12~2_combout\)) # 
-- (\U1|NOTE_NUM\(1) & ((\U2|U1|Mux12~3_combout\))))) # (\U1|NOTE_NUM\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101111101011111010111110101111101110111011101110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(7),
	datab => \U2|U1|ALT_INV_Mux12~1_combout\,
	datac => \U2|U1|ALT_INV_Mux12~2_combout\,
	datad => \U2|U1|ALT_INV_Mux12~3_combout\,
	datae => \U1|ALT_INV_NOTE_NUM\(2),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	datag => \U2|U1|ALT_INV_Mux12~0_combout\,
	combout => \U2|U1|Mux12~4_combout\);

-- Location: LABCELL_X19_Y4_N3
\U2|U2|COUNT[2]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[2]~49_combout\ = ( \U2|U1|Mux12~4_combout\ & ( (\U2|U2|COUNT[2]~49_combout\) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux12~4_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U2|COUNT[2]~49_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U2|ALT_INV_COUNT[2]~49_combout\,
	dataf => \U2|U1|ALT_INV_Mux12~4_combout\,
	combout => \U2|U2|COUNT[2]~49_combout\);

-- Location: MLABCELL_X18_Y5_N51
\U2|U1|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux13~1_combout\ = ( \U1|NOTE_NUM\(0) & ( (!\U1|NOTE_NUM\(1) & (((!\U1|NOTE_NUM\(4) & \U1|NOTE_NUM\(2))) # (\U1|NOTE_NUM\(3)))) # (\U1|NOTE_NUM\(1) & (!\U1|NOTE_NUM\(4) $ (((\U1|NOTE_NUM\(2)))))) ) ) # ( !\U1|NOTE_NUM\(0) & ( !\U1|NOTE_NUM\(2) $ 
-- (((!\U1|NOTE_NUM\(4) $ (\U1|NOTE_NUM\(1))) # (\U1|NOTE_NUM\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010110111010010001011011100111010101101010011101010110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(4),
	datab => \U1|ALT_INV_NOTE_NUM\(3),
	datac => \U1|ALT_INV_NOTE_NUM\(1),
	datad => \U1|ALT_INV_NOTE_NUM\(2),
	dataf => \U1|ALT_INV_NOTE_NUM\(0),
	combout => \U2|U1|Mux13~1_combout\);

-- Location: MLABCELL_X18_Y5_N21
\U2|U1|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux13~2_combout\ = ( \U1|NOTE_NUM\(4) & ( (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(2) $ (((!\U1|NOTE_NUM\(3)) # (!\U1|NOTE_NUM\(1)))))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(1)))) # (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(2)) # 
-- (\U1|NOTE_NUM\(1)))))) ) ) # ( !\U1|NOTE_NUM\(4) & ( (!\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(3)) # ((\U1|NOTE_NUM\(2) & \U1|NOTE_NUM\(1))))) # (\U1|NOTE_NUM\(0) & (((\U1|NOTE_NUM\(3) & !\U1|NOTE_NUM\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000100110000111100010001110110010010110111011001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(2),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(3),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(4),
	combout => \U2|U1|Mux13~2_combout\);

-- Location: MLABCELL_X18_Y5_N42
\U2|U1|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux13~3_combout\ = ( \U1|NOTE_NUM\(0) & ( (!\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(2) $ (((\U1|NOTE_NUM\(4) & !\U1|NOTE_NUM\(1)))))) # (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(4)) # ((!\U1|NOTE_NUM\(2) & !\U1|NOTE_NUM\(1))))) ) ) # ( !\U1|NOTE_NUM\(0) & ( 
-- (!\U1|NOTE_NUM\(1) & (!\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(3))))) # (\U1|NOTE_NUM\(1) & (((!\U1|NOTE_NUM\(3)) # (\U1|NOTE_NUM\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000011101011110000001110011010111011001001101011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(2),
	datab => \U1|ALT_INV_NOTE_NUM\(4),
	datac => \U1|ALT_INV_NOTE_NUM\(1),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(0),
	combout => \U2|U1|Mux13~3_combout\);

-- Location: MLABCELL_X18_Y5_N36
\U2|U1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux13~0_combout\ = ( \U1|NOTE_NUM\(3) & ( ((!\U1|NOTE_NUM\(0) & \U1|NOTE_NUM\(4))) # (\U1|NOTE_NUM\(1)) ) ) # ( !\U1|NOTE_NUM\(3) & ( (!\U1|NOTE_NUM\(4) & ((!\U1|NOTE_NUM\(1)) # (!\U1|NOTE_NUM\(0) $ (\U1|NOTE_NUM\(2))))) # (\U1|NOTE_NUM\(4) & 
-- ((!\U1|NOTE_NUM\(0) $ (!\U1|NOTE_NUM\(1))) # (\U1|NOTE_NUM\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011110011011111101111001101100001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(4),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(3),
	combout => \U2|U1|Mux13~0_combout\);

-- Location: MLABCELL_X18_Y5_N30
\U2|U1|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux13~4_combout\ = ( !\U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(7) & ((!\U1|NOTE_NUM\(6) & (((\U2|U1|Mux13~0_combout\)))) # (\U1|NOTE_NUM\(6) & (\U2|U1|Mux13~1_combout\)))) ) ) # ( \U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(7) & (((!\U1|NOTE_NUM\(6) & 
-- (\U2|U1|Mux13~2_combout\)) # (\U1|NOTE_NUM\(6) & ((\U2|U1|Mux13~3_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000100010000010100000000000001010001000100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(7),
	datab => \U2|U1|ALT_INV_Mux13~1_combout\,
	datac => \U2|U1|ALT_INV_Mux13~2_combout\,
	datad => \U1|ALT_INV_NOTE_NUM\(6),
	datae => \U1|ALT_INV_NOTE_NUM\(5),
	dataf => \U2|U1|ALT_INV_Mux13~3_combout\,
	datag => \U2|U1|ALT_INV_Mux13~0_combout\,
	combout => \U2|U1|Mux13~4_combout\);

-- Location: MLABCELL_X18_Y5_N45
\U2|U2|COUNT[1]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[1]~53_combout\ = ( \U2|U1|Mux13~4_combout\ & ( (\U2|process_0~0_combout\) # (\U2|U2|COUNT[1]~53_combout\) ) ) # ( !\U2|U1|Mux13~4_combout\ & ( (\U2|U2|COUNT[1]~53_combout\ & !\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[1]~53_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux13~4_combout\,
	combout => \U2|U2|COUNT[1]~53_combout\);

-- Location: LABCELL_X20_Y5_N51
\U2|U1|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux14~3_combout\ = ( \U1|NOTE_NUM\(0) & ( (!\U1|NOTE_NUM\(6) & (!\U1|NOTE_NUM\(1) $ (((!\U1|NOTE_NUM\(5) & !\U1|NOTE_NUM\(2)))))) # (\U1|NOTE_NUM\(6) & ((!\U1|NOTE_NUM\(1) & ((!\U1|NOTE_NUM\(2)))) # (\U1|NOTE_NUM\(1) & (\U1|NOTE_NUM\(5))))) ) ) # ( 
-- !\U1|NOTE_NUM\(0) & ( (!\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(6) & ((\U1|NOTE_NUM\(1)))) # (\U1|NOTE_NUM\(6) & (!\U1|NOTE_NUM\(5))))) # (\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(6) $ (((!\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001111101001001000111110100101111100100100010111110010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(5),
	datab => \U1|ALT_INV_NOTE_NUM\(6),
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(0),
	combout => \U2|U1|Mux14~3_combout\);

-- Location: LABCELL_X20_Y5_N54
\U2|U1|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux14~2_combout\ = ( \U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(6)) # (\U1|NOTE_NUM\(1))))) # (\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(6))))) ) ) # ( !\U1|NOTE_NUM\(5) & ( 
-- (!\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(1)) # ((\U1|NOTE_NUM\(0) & !\U1|NOTE_NUM\(6))))) # (\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(6) & ((\U1|NOTE_NUM\(1)))) # (\U1|NOTE_NUM\(6) & (\U1|NOTE_NUM\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001111000101110100111100010110100100001001011010010000100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(1),
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datad => \U1|ALT_INV_NOTE_NUM\(6),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	combout => \U2|U1|Mux14~2_combout\);

-- Location: LABCELL_X20_Y5_N36
\U2|U1|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux14~1_combout\ = ( \U1|NOTE_NUM\(2) & ( (!\U1|NOTE_NUM\(6) & ((!\U1|NOTE_NUM\(0)) # ((!\U1|NOTE_NUM\(1) & !\U1|NOTE_NUM\(5))))) # (\U1|NOTE_NUM\(6) & (((\U1|NOTE_NUM\(5)) # (\U1|NOTE_NUM\(1))))) ) ) # ( !\U1|NOTE_NUM\(2) & ( (!\U1|NOTE_NUM\(1) & 
-- ((!\U1|NOTE_NUM\(0)) # (!\U1|NOTE_NUM\(5) $ (\U1|NOTE_NUM\(6))))) # (\U1|NOTE_NUM\(1) & (((\U1|NOTE_NUM\(0) & \U1|NOTE_NUM\(6))) # (\U1|NOTE_NUM\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101110011111110010111001111111101010001111111110101000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(1),
	datac => \U1|ALT_INV_NOTE_NUM\(5),
	datad => \U1|ALT_INV_NOTE_NUM\(6),
	dataf => \U1|ALT_INV_NOTE_NUM\(2),
	combout => \U2|U1|Mux14~1_combout\);

-- Location: LABCELL_X20_Y5_N42
\U2|U1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux14~0_combout\ = ( \U1|NOTE_NUM\(2) & ( !\U1|NOTE_NUM\(6) $ (((!\U1|NOTE_NUM\(1) & (\U1|NOTE_NUM\(0))) # (\U1|NOTE_NUM\(1) & ((!\U1|NOTE_NUM\(5)))))) ) ) # ( !\U1|NOTE_NUM\(2) & ( (!\U1|NOTE_NUM\(5) & ((!\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(1)) # 
-- (\U1|NOTE_NUM\(6)))) # (\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(6) & !\U1|NOTE_NUM\(1))))) # (\U1|NOTE_NUM\(5) & (((!\U1|NOTE_NUM\(6)) # (\U1|NOTE_NUM\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110000111011101111000011101110100101001111001010010100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(5),
	datac => \U1|ALT_INV_NOTE_NUM\(6),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(2),
	combout => \U2|U1|Mux14~0_combout\);

-- Location: LABCELL_X19_Y4_N24
\U2|U1|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux14~4_combout\ = ( !\U1|NOTE_NUM\(4) & ( (((!\U1|NOTE_NUM\(3) & (\U2|U1|Mux14~0_combout\)) # (\U1|NOTE_NUM\(3) & ((\U2|U1|Mux14~1_combout\))))) # (\U1|NOTE_NUM\(7)) ) ) # ( \U1|NOTE_NUM\(4) & ( (((!\U1|NOTE_NUM\(3) & ((\U2|U1|Mux14~2_combout\))) 
-- # (\U1|NOTE_NUM\(3) & (\U2|U1|Mux14~3_combout\)))) # (\U1|NOTE_NUM\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101111101011111010111110101111101010101111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(7),
	datab => \U2|U1|ALT_INV_Mux14~3_combout\,
	datac => \U2|U1|ALT_INV_Mux14~2_combout\,
	datad => \U2|U1|ALT_INV_Mux14~1_combout\,
	datae => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U1|ALT_INV_NOTE_NUM\(3),
	datag => \U2|U1|ALT_INV_Mux14~0_combout\,
	combout => \U2|U1|Mux14~4_combout\);

-- Location: MLABCELL_X18_Y4_N45
\U2|U2|COUNT[0]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[0]~57_combout\ = ( \U2|U1|Mux14~4_combout\ & ( (\U2|process_0~0_combout\) # (\U2|U2|COUNT[0]~57_combout\) ) ) # ( !\U2|U1|Mux14~4_combout\ & ( (\U2|U2|COUNT[0]~57_combout\ & !\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[0]~57_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux14~4_combout\,
	combout => \U2|U2|COUNT[0]~57_combout\);

-- Location: LABCELL_X19_Y4_N30
\U2|U2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~101_sumout\ = SUM(( \U2|U2|COUNT[0]~58_combout\ ) + ( VCC ) + ( !VCC ))
-- \U2|U2|Add0~102\ = CARRY(( \U2|U2|COUNT[0]~58_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_COUNT[0]~58_combout\,
	cin => GND,
	sumout => \U2|U2|Add0~101_sumout\,
	cout => \U2|U2|Add0~102\);

-- Location: LABCELL_X20_Y4_N9
\U2|U2|COUNT[0]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[0]~59_combout\ = ( \U2|U2|Add0~101_sumout\ & ( !\U2|U2|COUNT[0]~57_combout\ $ (((!\U2|U1|Mux14~4_combout\ & \U2|U2|Equal0~5_combout\))) ) ) # ( !\U2|U2|Add0~101_sumout\ & ( !\U2|U2|COUNT[0]~57_combout\ $ (((!\U2|U1|Mux14~4_combout\) # 
-- (!\U2|U2|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011001100001111001100110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_COUNT[0]~57_combout\,
	datac => \U2|U1|ALT_INV_Mux14~4_combout\,
	datad => \U2|U2|ALT_INV_Equal0~5_combout\,
	dataf => \U2|U2|ALT_INV_Add0~101_sumout\,
	combout => \U2|U2|COUNT[0]~59_combout\);

-- Location: FF_X20_Y4_N11
\U2|U2|COUNT[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[0]~59_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[0]~_emulated_q\);

-- Location: LABCELL_X19_Y4_N0
\U2|U2|COUNT[0]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[0]~58_combout\ = ( \U2|U1|Mux14~4_combout\ & ( (!\U2|U2|COUNT[0]~57_combout\ $ (!\U2|U2|COUNT[0]~_emulated_q\)) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux14~4_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U2|COUNT[0]~57_combout\ $ 
-- (!\U2|U2|COUNT[0]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U2|ALT_INV_COUNT[0]~57_combout\,
	datad => \U2|U2|ALT_INV_COUNT[0]~_emulated_q\,
	dataf => \U2|U1|ALT_INV_Mux14~4_combout\,
	combout => \U2|U2|COUNT[0]~58_combout\);

-- Location: LABCELL_X19_Y4_N33
\U2|U2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~97_sumout\ = SUM(( \U2|U2|COUNT[1]~54_combout\ ) + ( VCC ) + ( \U2|U2|Add0~102\ ))
-- \U2|U2|Add0~98\ = CARRY(( \U2|U2|COUNT[1]~54_combout\ ) + ( VCC ) + ( \U2|U2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[1]~54_combout\,
	cin => \U2|U2|Add0~102\,
	sumout => \U2|U2|Add0~97_sumout\,
	cout => \U2|U2|Add0~98\);

-- Location: LABCELL_X20_Y3_N48
\U2|U2|COUNT[1]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[1]~55_combout\ = ( \U2|U2|Add0~97_sumout\ & ( !\U2|U2|COUNT[1]~53_combout\ $ (((\U2|U2|Equal0~5_combout\ & !\U2|U1|Mux13~4_combout\))) ) ) # ( !\U2|U2|Add0~97_sumout\ & ( !\U2|U2|COUNT[1]~53_combout\ $ (((!\U2|U2|Equal0~5_combout\) # 
-- (!\U2|U1|Mux13~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110011000011111100001100001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_Equal0~5_combout\,
	datac => \U2|U2|ALT_INV_COUNT[1]~53_combout\,
	datad => \U2|U1|ALT_INV_Mux13~4_combout\,
	dataf => \U2|U2|ALT_INV_Add0~97_sumout\,
	combout => \U2|U2|COUNT[1]~55_combout\);

-- Location: FF_X20_Y3_N50
\U2|U2|COUNT[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[1]~55_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[1]~_emulated_q\);

-- Location: LABCELL_X19_Y4_N18
\U2|U2|COUNT[1]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[1]~54_combout\ = ( \U2|U2|COUNT[1]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & (!\U2|U2|COUNT[1]~53_combout\)) # (\U2|process_0~0_combout\ & ((\U2|U1|Mux13~4_combout\))) ) ) # ( !\U2|U2|COUNT[1]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & 
-- (\U2|U2|COUNT[1]~53_combout\)) # (\U2|process_0~0_combout\ & ((\U2|U1|Mux13~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000000111100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U2|ALT_INV_COUNT[1]~53_combout\,
	datad => \U2|U1|ALT_INV_Mux13~4_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[1]~_emulated_q\,
	combout => \U2|U2|COUNT[1]~54_combout\);

-- Location: LABCELL_X19_Y4_N36
\U2|U2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~93_sumout\ = SUM(( \U2|U2|COUNT[2]~50_combout\ ) + ( VCC ) + ( \U2|U2|Add0~98\ ))
-- \U2|U2|Add0~94\ = CARRY(( \U2|U2|COUNT[2]~50_combout\ ) + ( VCC ) + ( \U2|U2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[2]~50_combout\,
	cin => \U2|U2|Add0~98\,
	sumout => \U2|U2|Add0~93_sumout\,
	cout => \U2|U2|Add0~94\);

-- Location: MLABCELL_X18_Y4_N3
\U2|U2|COUNT[2]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[2]~51_combout\ = ( \U2|U2|Add0~93_sumout\ & ( !\U2|U2|COUNT[2]~49_combout\ $ (((!\U2|U1|Mux12~4_combout\ & \U2|U2|Equal0~5_combout\))) ) ) # ( !\U2|U2|Add0~93_sumout\ & ( !\U2|U2|COUNT[2]~49_combout\ $ (((!\U2|U1|Mux12~4_combout\) # 
-- (!\U2|U2|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110011110000001111001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|ALT_INV_Mux12~4_combout\,
	datac => \U2|U2|ALT_INV_COUNT[2]~49_combout\,
	datad => \U2|U2|ALT_INV_Equal0~5_combout\,
	dataf => \U2|U2|ALT_INV_Add0~93_sumout\,
	combout => \U2|U2|COUNT[2]~51_combout\);

-- Location: FF_X18_Y4_N4
\U2|U2|COUNT[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[2]~51_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[2]~_emulated_q\);

-- Location: LABCELL_X19_Y4_N12
\U2|U2|COUNT[2]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[2]~50_combout\ = ( \U2|U1|Mux12~4_combout\ & ( (!\U2|U2|COUNT[2]~_emulated_q\ $ (!\U2|U2|COUNT[2]~49_combout\)) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux12~4_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U2|COUNT[2]~_emulated_q\ $ 
-- (!\U2|U2|COUNT[2]~49_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_COUNT[2]~_emulated_q\,
	datac => \U2|U2|ALT_INV_COUNT[2]~49_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux12~4_combout\,
	combout => \U2|U2|COUNT[2]~50_combout\);

-- Location: LABCELL_X19_Y4_N39
\U2|U2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~89_sumout\ = SUM(( \U2|U2|COUNT[3]~46_combout\ ) + ( VCC ) + ( \U2|U2|Add0~94\ ))
-- \U2|U2|Add0~90\ = CARRY(( \U2|U2|COUNT[3]~46_combout\ ) + ( VCC ) + ( \U2|U2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[3]~46_combout\,
	cin => \U2|U2|Add0~94\,
	sumout => \U2|U2|Add0~89_sumout\,
	cout => \U2|U2|Add0~90\);

-- Location: LABCELL_X20_Y4_N0
\U2|U2|COUNT[3]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[3]~47_combout\ = ( \U2|U2|Add0~89_sumout\ & ( !\U2|U2|COUNT[3]~45_combout\ $ (((!\U2|U1|Mux11~4_combout\ & \U2|U2|Equal0~5_combout\))) ) ) # ( !\U2|U2|Add0~89_sumout\ & ( !\U2|U2|COUNT[3]~45_combout\ $ (((!\U2|U1|Mux11~4_combout\) # 
-- (!\U2|U2|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011010101010011001101010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[3]~45_combout\,
	datab => \U2|U1|ALT_INV_Mux11~4_combout\,
	datad => \U2|U2|ALT_INV_Equal0~5_combout\,
	dataf => \U2|U2|ALT_INV_Add0~89_sumout\,
	combout => \U2|U2|COUNT[3]~47_combout\);

-- Location: FF_X20_Y4_N2
\U2|U2|COUNT[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[3]~47_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[3]~_emulated_q\);

-- Location: LABCELL_X20_Y4_N6
\U2|U2|COUNT[3]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[3]~46_combout\ = ( \U2|U1|Mux11~4_combout\ & ( (!\U2|U2|COUNT[3]~_emulated_q\ $ (!\U2|U2|COUNT[3]~45_combout\)) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux11~4_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U2|COUNT[3]~_emulated_q\ $ 
-- (!\U2|U2|COUNT[3]~45_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[3]~_emulated_q\,
	datac => \U2|U2|ALT_INV_COUNT[3]~45_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux11~4_combout\,
	combout => \U2|U2|COUNT[3]~46_combout\);

-- Location: LABCELL_X19_Y4_N42
\U2|U2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~57_sumout\ = SUM(( \U2|U2|COUNT[4]~42_combout\ ) + ( VCC ) + ( \U2|U2|Add0~90\ ))
-- \U2|U2|Add0~58\ = CARRY(( \U2|U2|COUNT[4]~42_combout\ ) + ( VCC ) + ( \U2|U2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[4]~42_combout\,
	cin => \U2|U2|Add0~90\,
	sumout => \U2|U2|Add0~57_sumout\,
	cout => \U2|U2|Add0~58\);

-- Location: LABCELL_X19_Y5_N27
\U2|U2|COUNT[4]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[4]~43_combout\ = ( \U2|U1|Mux10~4_combout\ & ( !\U2|U2|COUNT[4]~41_combout\ $ (((!\U2|U2|Add0~57_sumout\ & !\U2|U2|Equal0~5_combout\))) ) ) # ( !\U2|U1|Mux10~4_combout\ & ( !\U2|U2|COUNT[4]~41_combout\ $ (((!\U2|U2|Add0~57_sumout\) # 
-- (\U2|U2|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001100111100110011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_COUNT[4]~41_combout\,
	datac => \U2|U2|ALT_INV_Add0~57_sumout\,
	datad => \U2|U2|ALT_INV_Equal0~5_combout\,
	dataf => \U2|U1|ALT_INV_Mux10~4_combout\,
	combout => \U2|U2|COUNT[4]~43_combout\);

-- Location: FF_X19_Y5_N29
\U2|U2|COUNT[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[4]~43_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[4]~_emulated_q\);

-- Location: LABCELL_X19_Y5_N30
\U2|U2|COUNT[4]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[4]~42_combout\ = ( \U2|U2|COUNT[4]~41_combout\ & ( (!\U2|process_0~0_combout\ & ((!\U2|U2|COUNT[4]~_emulated_q\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux10~4_combout\)) ) ) # ( !\U2|U2|COUNT[4]~41_combout\ & ( (!\U2|process_0~0_combout\ & 
-- ((\U2|U2|COUNT[4]~_emulated_q\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux10~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U1|ALT_INV_Mux10~4_combout\,
	datad => \U2|U2|ALT_INV_COUNT[4]~_emulated_q\,
	dataf => \U2|U2|ALT_INV_COUNT[4]~41_combout\,
	combout => \U2|U2|COUNT[4]~42_combout\);

-- Location: LABCELL_X19_Y4_N45
\U2|U2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~53_sumout\ = SUM(( \U2|U2|COUNT[5]~38_combout\ ) + ( VCC ) + ( \U2|U2|Add0~58\ ))
-- \U2|U2|Add0~54\ = CARRY(( \U2|U2|COUNT[5]~38_combout\ ) + ( VCC ) + ( \U2|U2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_COUNT[5]~38_combout\,
	cin => \U2|U2|Add0~58\,
	sumout => \U2|U2|Add0~53_sumout\,
	cout => \U2|U2|Add0~54\);

-- Location: MLABCELL_X18_Y4_N51
\U2|U2|COUNT[5]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[5]~39_combout\ = ( \U2|U2|Add0~53_sumout\ & ( !\U2|U2|COUNT[5]~37_combout\ $ (((\U2|U2|Equal0~5_combout\ & !\U2|U1|Mux9~4_combout\))) ) ) # ( !\U2|U2|Add0~53_sumout\ & ( !\U2|U2|COUNT[5]~37_combout\ $ (((!\U2|U2|Equal0~5_combout\) # 
-- (!\U2|U1|Mux9~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_COUNT[5]~37_combout\,
	datac => \U2|U2|ALT_INV_Equal0~5_combout\,
	datad => \U2|U1|ALT_INV_Mux9~4_combout\,
	dataf => \U2|U2|ALT_INV_Add0~53_sumout\,
	combout => \U2|U2|COUNT[5]~39_combout\);

-- Location: FF_X18_Y4_N52
\U2|U2|COUNT[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[5]~39_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[5]~_emulated_q\);

-- Location: MLABCELL_X18_Y5_N6
\U2|U2|COUNT[5]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[5]~38_combout\ = ( \U2|U2|COUNT[5]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & ((!\U2|U2|COUNT[5]~37_combout\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux9~4_combout\)) ) ) # ( !\U2|U2|COUNT[5]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & 
-- ((\U2|U2|COUNT[5]~37_combout\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux9~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|ALT_INV_Mux9~4_combout\,
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U2|ALT_INV_COUNT[5]~37_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[5]~_emulated_q\,
	combout => \U2|U2|COUNT[5]~38_combout\);

-- Location: LABCELL_X19_Y4_N48
\U2|U2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~49_sumout\ = SUM(( \U2|U2|COUNT[6]~34_combout\ ) + ( VCC ) + ( \U2|U2|Add0~54\ ))
-- \U2|U2|Add0~50\ = CARRY(( \U2|U2|COUNT[6]~34_combout\ ) + ( VCC ) + ( \U2|U2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U2|ALT_INV_COUNT[6]~34_combout\,
	cin => \U2|U2|Add0~54\,
	sumout => \U2|U2|Add0~49_sumout\,
	cout => \U2|U2|Add0~50\);

-- Location: LABCELL_X19_Y5_N24
\U2|U2|COUNT[6]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[6]~35_combout\ = ( \U2|U2|COUNT[6]~33_combout\ & ( (!\U2|U2|Equal0~5_combout\ & ((!\U2|U2|Add0~49_sumout\))) # (\U2|U2|Equal0~5_combout\ & (!\U2|U1|Mux8~4_combout\)) ) ) # ( !\U2|U2|COUNT[6]~33_combout\ & ( (!\U2|U2|Equal0~5_combout\ & 
-- ((\U2|U2|Add0~49_sumout\))) # (\U2|U2|Equal0~5_combout\ & (\U2|U1|Mux8~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010111110000101010101111000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|ALT_INV_Mux8~4_combout\,
	datac => \U2|U2|ALT_INV_Add0~49_sumout\,
	datad => \U2|U2|ALT_INV_Equal0~5_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[6]~33_combout\,
	combout => \U2|U2|COUNT[6]~35_combout\);

-- Location: FF_X19_Y5_N26
\U2|U2|COUNT[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[6]~35_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[6]~_emulated_q\);

-- Location: LABCELL_X19_Y5_N42
\U2|U2|COUNT[6]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[6]~34_combout\ = ( \U2|U2|COUNT[6]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & ((!\U2|U2|COUNT[6]~33_combout\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux8~4_combout\)) ) ) # ( !\U2|U2|COUNT[6]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & 
-- ((\U2|U2|COUNT[6]~33_combout\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux8~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U1|ALT_INV_Mux8~4_combout\,
	datad => \U2|U2|ALT_INV_COUNT[6]~33_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[6]~_emulated_q\,
	combout => \U2|U2|COUNT[6]~34_combout\);

-- Location: LABCELL_X19_Y5_N54
\U2|U1|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux6~1_combout\ = ( \U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(4) & ((!\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(0))) # (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(2)))))) # (\U1|NOTE_NUM\(4) & ((!\U1|NOTE_NUM\(2) $ (\U1|NOTE_NUM\(3))))) ) ) # ( !\U1|NOTE_NUM\(1) & ( 
-- (!\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(4) $ (!\U1|NOTE_NUM\(3))))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(3)) # ((\U1|NOTE_NUM\(4) & \U1|NOTE_NUM\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100001001010101110000100110111000110000111011100011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(4),
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux6~1_combout\);

-- Location: LABCELL_X19_Y5_N57
\U2|U1|Mux6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux6~7_combout\ = ( \U1|NOTE_NUM\(3) & ( (((\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(2))) # (\U1|NOTE_NUM\(4))) # (\U1|NOTE_NUM\(0)) ) ) # ( !\U1|NOTE_NUM\(3) & ( \U1|NOTE_NUM\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(4),
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(3),
	combout => \U2|U1|Mux6~7_combout\);

-- Location: LABCELL_X19_Y5_N6
\U2|U1|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux6~2_combout\ = ( \U1|NOTE_NUM\(3) & ( (\U1|NOTE_NUM\(2) & (\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(4) & \U1|NOTE_NUM\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(2),
	datab => \U1|ALT_INV_NOTE_NUM\(0),
	datac => \U1|ALT_INV_NOTE_NUM\(4),
	datad => \U1|ALT_INV_NOTE_NUM\(1),
	dataf => \U1|ALT_INV_NOTE_NUM\(3),
	combout => \U2|U1|Mux6~2_combout\);

-- Location: LABCELL_X19_Y5_N15
\U2|U1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux6~0_combout\ = ( \U1|NOTE_NUM\(3) & ( (!\U1|NOTE_NUM\(4)) # ((!\U1|NOTE_NUM\(0) & ((\U1|NOTE_NUM\(2)))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(2)) # (\U1|NOTE_NUM\(1))))) ) ) # ( !\U1|NOTE_NUM\(3) & ( (!\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(1) & 
-- ((!\U1|NOTE_NUM\(2))))) # (\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(2) $ (((!\U1|NOTE_NUM\(1)) # (\U1|NOTE_NUM\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001001000101001100100100010111110101111110111111010111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(1),
	datac => \U1|ALT_INV_NOTE_NUM\(4),
	datad => \U1|ALT_INV_NOTE_NUM\(2),
	dataf => \U1|ALT_INV_NOTE_NUM\(3),
	combout => \U2|U1|Mux6~0_combout\);

-- Location: MLABCELL_X18_Y5_N24
\U2|U1|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux6~3_combout\ = ( !\U1|NOTE_NUM\(6) & ( ((!\U1|NOTE_NUM\(5) & (((\U2|U1|Mux6~0_combout\)))) # (\U1|NOTE_NUM\(5) & (\U2|U1|Mux6~1_combout\))) # (\U1|NOTE_NUM\(7)) ) ) # ( \U1|NOTE_NUM\(6) & ( (((!\U1|NOTE_NUM\(5) & (!\U2|U1|Mux6~7_combout\)) # 
-- (\U1|NOTE_NUM\(5) & ((\U2|U1|Mux6~2_combout\))))) # (\U1|NOTE_NUM\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101111101110111111101010101010101011111011101111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(7),
	datab => \U2|U1|ALT_INV_Mux6~1_combout\,
	datac => \U2|U1|ALT_INV_Mux6~7_combout\,
	datad => \U1|ALT_INV_NOTE_NUM\(5),
	datae => \U1|ALT_INV_NOTE_NUM\(6),
	dataf => \U2|U1|ALT_INV_Mux6~2_combout\,
	datag => \U2|U1|ALT_INV_Mux6~0_combout\,
	combout => \U2|U1|Mux6~3_combout\);

-- Location: MLABCELL_X18_Y5_N57
\U2|U2|COUNT[8]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[8]~25_combout\ = ( \U2|U1|Mux6~3_combout\ & ( (\U2|U2|COUNT[8]~25_combout\) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux6~3_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U2|COUNT[8]~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U2|ALT_INV_COUNT[8]~25_combout\,
	dataf => \U2|U1|ALT_INV_Mux6~3_combout\,
	combout => \U2|U2|COUNT[8]~25_combout\);

-- Location: LABCELL_X21_Y5_N0
\U2|U1|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux7~2_combout\ = ( \U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(4) & ((\U1|NOTE_NUM\(3)))) # (\U1|NOTE_NUM\(4) & (!\U1|NOTE_NUM\(2) & !\U1|NOTE_NUM\(3))) ) ) # ( !\U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(3) $ (((\U1|NOTE_NUM\(2) & 
-- !\U1|NOTE_NUM\(4)))))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(2))) # (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111001110000110011100111000000001100111100000000110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(4),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux7~2_combout\);

-- Location: LABCELL_X20_Y5_N30
\U2|U1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux7~1_combout\ = ( \U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(4) $ (((!\U1|NOTE_NUM\(3) & !\U1|NOTE_NUM\(0)))))) # (\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(3) $ (!\U1|NOTE_NUM\(0))) # (\U1|NOTE_NUM\(4)))) ) ) # ( !\U1|NOTE_NUM\(1) & ( 
-- (!\U1|NOTE_NUM\(3) & (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(2)) # (!\U1|NOTE_NUM\(4))))) # (\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(2) $ ((\U1|NOTE_NUM\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001001010010110100100101011110101100110101111010110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(0),
	datad => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux7~1_combout\);

-- Location: LABCELL_X21_Y5_N15
\U2|U1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux7~0_combout\ = ( \U1|NOTE_NUM\(0) & ( \U1|NOTE_NUM\(1) & ( !\U1|NOTE_NUM\(3) $ (!\U1|NOTE_NUM\(4) $ (!\U1|NOTE_NUM\(2))) ) ) ) # ( !\U1|NOTE_NUM\(0) & ( \U1|NOTE_NUM\(1) & ( ((\U1|NOTE_NUM\(3) & \U1|NOTE_NUM\(4))) # (\U1|NOTE_NUM\(2)) ) ) ) # ( 
-- \U1|NOTE_NUM\(0) & ( !\U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(3)) # ((\U1|NOTE_NUM\(4) & !\U1|NOTE_NUM\(2))) ) ) ) # ( !\U1|NOTE_NUM\(0) & ( !\U1|NOTE_NUM\(1) & ( !\U1|NOTE_NUM\(3) $ (!\U1|NOTE_NUM\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101110101011101000011111000111111001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datab => \U1|ALT_INV_NOTE_NUM\(4),
	datac => \U1|ALT_INV_NOTE_NUM\(2),
	datae => \U1|ALT_INV_NOTE_NUM\(0),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux7~0_combout\);

-- Location: LABCELL_X20_Y5_N24
\U2|U1|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux7~3_combout\ = ( !\U1|NOTE_NUM\(6) & ( (((!\U1|NOTE_NUM\(5) & (\U2|U1|Mux7~0_combout\)) # (\U1|NOTE_NUM\(5) & ((\U2|U1|Mux7~1_combout\))))) # (\U1|NOTE_NUM\(7)) ) ) # ( \U1|NOTE_NUM\(6) & ( (((!\U1|NOTE_NUM\(5) & ((\U2|U1|Mux7~2_combout\))) # 
-- (\U1|NOTE_NUM\(5) & (\U2|U1|Mux6~2_combout\)))) # (\U1|NOTE_NUM\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101111101011111010111110101111101010101111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(7),
	datab => \U2|U1|ALT_INV_Mux6~2_combout\,
	datac => \U2|U1|ALT_INV_Mux7~2_combout\,
	datad => \U2|U1|ALT_INV_Mux7~1_combout\,
	datae => \U1|ALT_INV_NOTE_NUM\(6),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	datag => \U2|U1|ALT_INV_Mux7~0_combout\,
	combout => \U2|U1|Mux7~3_combout\);

-- Location: LABCELL_X20_Y5_N15
\U2|U2|COUNT[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[7]~29_combout\ = ( \U2|U1|Mux7~3_combout\ & ( (\U2|U2|COUNT[7]~29_combout\) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux7~3_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U2|COUNT[7]~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datab => \U2|U2|ALT_INV_COUNT[7]~29_combout\,
	dataf => \U2|U1|ALT_INV_Mux7~3_combout\,
	combout => \U2|U2|COUNT[7]~29_combout\);

-- Location: LABCELL_X19_Y4_N51
\U2|U2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~77_sumout\ = SUM(( \U2|U2|COUNT[7]~30_combout\ ) + ( VCC ) + ( \U2|U2|Add0~50\ ))
-- \U2|U2|Add0~78\ = CARRY(( \U2|U2|COUNT[7]~30_combout\ ) + ( VCC ) + ( \U2|U2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[7]~30_combout\,
	cin => \U2|U2|Add0~50\,
	sumout => \U2|U2|Add0~77_sumout\,
	cout => \U2|U2|Add0~78\);

-- Location: LABCELL_X19_Y4_N21
\U2|U2|COUNT[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[7]~31_combout\ = ( \U2|U2|Add0~77_sumout\ & ( !\U2|U2|COUNT[7]~29_combout\ $ (((!\U2|U1|Mux7~3_combout\ & \U2|U2|Equal0~5_combout\))) ) ) # ( !\U2|U2|Add0~77_sumout\ & ( !\U2|U2|COUNT[7]~29_combout\ $ (((!\U2|U1|Mux7~3_combout\) # 
-- (!\U2|U2|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101011110000010110101111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|ALT_INV_Mux7~3_combout\,
	datac => \U2|U2|ALT_INV_COUNT[7]~29_combout\,
	datad => \U2|U2|ALT_INV_Equal0~5_combout\,
	dataf => \U2|U2|ALT_INV_Add0~77_sumout\,
	combout => \U2|U2|COUNT[7]~31_combout\);

-- Location: FF_X19_Y4_N22
\U2|U2|COUNT[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[7]~31_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[7]~_emulated_q\);

-- Location: LABCELL_X20_Y5_N12
\U2|U2|COUNT[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[7]~30_combout\ = ( \U2|U2|COUNT[7]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & (!\U2|U2|COUNT[7]~29_combout\)) # (\U2|process_0~0_combout\ & ((\U2|U1|Mux7~3_combout\))) ) ) # ( !\U2|U2|COUNT[7]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & 
-- (\U2|U2|COUNT[7]~29_combout\)) # (\U2|process_0~0_combout\ & ((\U2|U1|Mux7~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datab => \U2|U2|ALT_INV_COUNT[7]~29_combout\,
	datac => \U2|U1|ALT_INV_Mux7~3_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[7]~_emulated_q\,
	combout => \U2|U2|COUNT[7]~30_combout\);

-- Location: LABCELL_X19_Y4_N54
\U2|U2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~45_sumout\ = SUM(( \U2|U2|COUNT[8]~26_combout\ ) + ( VCC ) + ( \U2|U2|Add0~78\ ))
-- \U2|U2|Add0~46\ = CARRY(( \U2|U2|COUNT[8]~26_combout\ ) + ( VCC ) + ( \U2|U2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[8]~26_combout\,
	cin => \U2|U2|Add0~78\,
	sumout => \U2|U2|Add0~45_sumout\,
	cout => \U2|U2|Add0~46\);

-- Location: MLABCELL_X18_Y4_N42
\U2|U2|COUNT[8]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[8]~27_combout\ = ( \U2|U2|Add0~45_sumout\ & ( !\U2|U2|COUNT[8]~25_combout\ $ (((!\U2|U1|Mux6~3_combout\ & \U2|U2|Equal0~5_combout\))) ) ) # ( !\U2|U2|Add0~45_sumout\ & ( !\U2|U2|COUNT[8]~25_combout\ $ (((!\U2|U1|Mux6~3_combout\) # 
-- (!\U2|U2|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110011110011000011001111001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|ALT_INV_Mux6~3_combout\,
	datac => \U2|U2|ALT_INV_Equal0~5_combout\,
	datad => \U2|U2|ALT_INV_COUNT[8]~25_combout\,
	dataf => \U2|U2|ALT_INV_Add0~45_sumout\,
	combout => \U2|U2|COUNT[8]~27_combout\);

-- Location: FF_X18_Y4_N44
\U2|U2|COUNT[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[8]~27_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[8]~_emulated_q\);

-- Location: MLABCELL_X18_Y5_N54
\U2|U2|COUNT[8]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[8]~26_combout\ = ( \U2|U2|COUNT[8]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & ((!\U2|U2|COUNT[8]~25_combout\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux6~3_combout\)) ) ) # ( !\U2|U2|COUNT[8]~_emulated_q\ & ( (!\U2|process_0~0_combout\ & 
-- ((\U2|U2|COUNT[8]~25_combout\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux6~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U1|ALT_INV_Mux6~3_combout\,
	datad => \U2|U2|ALT_INV_COUNT[8]~25_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[8]~_emulated_q\,
	combout => \U2|U2|COUNT[8]~26_combout\);

-- Location: LABCELL_X19_Y4_N15
\U2|U2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Equal0~4_combout\ = ( !\U2|U2|COUNT[2]~50_combout\ & ( (!\U2|U2|COUNT[0]~58_combout\ & (!\U2|U2|COUNT[1]~54_combout\ & !\U2|U2|COUNT[3]~46_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[0]~58_combout\,
	datac => \U2|U2|ALT_INV_COUNT[1]~54_combout\,
	datad => \U2|U2|ALT_INV_COUNT[3]~46_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[2]~50_combout\,
	combout => \U2|U2|Equal0~4_combout\);

-- Location: LABCELL_X21_Y5_N3
\U2|U1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux0~0_combout\ = ( !\U1|NOTE_NUM\(6) & ( !\U1|NOTE_NUM\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_NOTE_NUM\(7),
	dataf => \U1|ALT_INV_NOTE_NUM\(6),
	combout => \U2|U1|Mux0~0_combout\);

-- Location: LABCELL_X21_Y5_N57
\U2|U1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux2~0_combout\ = ( \U1|NOTE_NUM\(1) & ( !\U1|NOTE_NUM\(3) $ (((!\U1|NOTE_NUM\(2)) # (\U1|NOTE_NUM\(4)))) ) ) # ( !\U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(2) & ((!\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(4)))) # (\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(3))))) # 
-- (\U1|NOTE_NUM\(2) & (\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(0)) # (\U1|NOTE_NUM\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010000010101110101000001010101100110010101010110011001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(0),
	datad => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux2~0_combout\);

-- Location: LABCELL_X21_Y5_N9
\U2|U1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux2~1_combout\ = ( !\U1|NOTE_NUM\(5) & ( (\U2|U1|Mux0~0_combout\ & !\U2|U1|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|ALT_INV_Mux0~0_combout\,
	datab => \U2|U1|ALT_INV_Mux2~0_combout\,
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	combout => \U2|U1|Mux2~1_combout\);

-- Location: LABCELL_X21_Y5_N54
\U2|U2|COUNT[12]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[12]~9_combout\ = ( \U2|U1|Mux2~1_combout\ & ( (\U2|U2|COUNT[12]~9_combout\) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux2~1_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U2|COUNT[12]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U2|ALT_INV_COUNT[12]~9_combout\,
	dataf => \U2|U1|ALT_INV_Mux2~1_combout\,
	combout => \U2|U2|COUNT[12]~9_combout\);

-- Location: LABCELL_X21_Y5_N27
\U2|U1|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux3~1_combout\ = ( \U1|NOTE_NUM\(1) & ( !\U1|NOTE_NUM\(3) ) ) # ( !\U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(3) & (\U1|NOTE_NUM\(2))) # (\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(2) & !\U1|NOTE_NUM\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(0),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux3~1_combout\);

-- Location: LABCELL_X21_Y5_N33
\U2|U1|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux3~2_combout\ = ( \U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(2) & !\U1|NOTE_NUM\(3)) ) ) # ( !\U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(2)) # (!\U1|NOTE_NUM\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(0),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux3~2_combout\);

-- Location: LABCELL_X21_Y5_N24
\U2|U1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux3~0_combout\ = ( \U1|NOTE_NUM\(1) & ( ((!\U1|NOTE_NUM\(3) & !\U1|NOTE_NUM\(0))) # (\U1|NOTE_NUM\(2)) ) ) # ( !\U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(2) & \U1|NOTE_NUM\(0))) # (\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(2) $ 
-- (\U1|NOTE_NUM\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100110110011101100111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(0),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux3~0_combout\);

-- Location: LABCELL_X21_Y5_N48
\U2|U1|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux3~3_combout\ = ( \U2|U1|Mux3~0_combout\ & ( \U1|NOTE_NUM\(5) & ( (\U2|U1|Mux0~0_combout\ & (!\U1|NOTE_NUM\(4) & \U2|U1|Mux3~2_combout\)) ) ) ) # ( !\U2|U1|Mux3~0_combout\ & ( \U1|NOTE_NUM\(5) & ( (\U2|U1|Mux0~0_combout\ & (!\U1|NOTE_NUM\(4) & 
-- \U2|U1|Mux3~2_combout\)) ) ) ) # ( \U2|U1|Mux3~0_combout\ & ( !\U1|NOTE_NUM\(5) & ( (\U2|U1|Mux0~0_combout\ & ((!\U2|U1|Mux3~1_combout\) # (!\U1|NOTE_NUM\(4)))) ) ) ) # ( !\U2|U1|Mux3~0_combout\ & ( !\U1|NOTE_NUM\(5) & ( (!\U2|U1|Mux3~1_combout\ & 
-- (\U2|U1|Mux0~0_combout\ & \U1|NOTE_NUM\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010001100100011001000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|ALT_INV_Mux3~1_combout\,
	datab => \U2|U1|ALT_INV_Mux0~0_combout\,
	datac => \U1|ALT_INV_NOTE_NUM\(4),
	datad => \U2|U1|ALT_INV_Mux3~2_combout\,
	datae => \U2|U1|ALT_INV_Mux3~0_combout\,
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	combout => \U2|U1|Mux3~3_combout\);

-- Location: LABCELL_X20_Y4_N42
\U2|U1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux4~0_combout\ = ( \U1|NOTE_NUM\(4) & ( \U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(1) & !\U1|NOTE_NUM\(3)))) ) ) ) # ( !\U1|NOTE_NUM\(4) & ( \U1|NOTE_NUM\(5) & ( ((\U1|NOTE_NUM\(2) & ((\U1|NOTE_NUM\(1)) # 
-- (\U1|NOTE_NUM\(0))))) # (\U1|NOTE_NUM\(3)) ) ) ) # ( \U1|NOTE_NUM\(4) & ( !\U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(1) & ((!\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(2))) # (\U1|NOTE_NUM\(0) & ((\U1|NOTE_NUM\(3)))))) # (\U1|NOTE_NUM\(1) & (((!\U1|NOTE_NUM\(2))))) ) ) 
-- ) # ( !\U1|NOTE_NUM\(4) & ( !\U1|NOTE_NUM\(5) & ( (!\U1|NOTE_NUM\(3) & ((!\U1|NOTE_NUM\(0) & (\U1|NOTE_NUM\(2))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(2)) # (\U1|NOTE_NUM\(1)))))) # (\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(0) $ (((!\U1|NOTE_NUM\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011101011010001011000111110000010011111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(1),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	datae => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U1|ALT_INV_NOTE_NUM\(5),
	combout => \U2|U1|Mux4~0_combout\);

-- Location: LABCELL_X20_Y4_N3
\U2|U1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux4~1_combout\ = ( \U2|U1|Mux4~0_combout\ & ( \U2|U1|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U1|ALT_INV_Mux0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux4~0_combout\,
	combout => \U2|U1|Mux4~1_combout\);

-- Location: LABCELL_X20_Y4_N54
\U2|U2|COUNT[10]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[10]~17_combout\ = ( \U2|U1|Mux4~1_combout\ & ( (\U2|U2|COUNT[10]~17_combout\) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux4~1_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U2|COUNT[10]~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U2|ALT_INV_COUNT[10]~17_combout\,
	dataf => \U2|U1|ALT_INV_Mux4~1_combout\,
	combout => \U2|U2|COUNT[10]~17_combout\);

-- Location: LABCELL_X20_Y4_N48
\U2|U1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux5~0_combout\ = ( \U1|NOTE_NUM\(4) & ( \U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(5) & (\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(2) $ (!\U1|NOTE_NUM\(3))))) # (\U1|NOTE_NUM\(5) & (((\U1|NOTE_NUM\(2) & \U1|NOTE_NUM\(3))))) ) ) ) # ( !\U1|NOTE_NUM\(4) & ( 
-- \U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(0) & (((!\U1|NOTE_NUM\(2) & \U1|NOTE_NUM\(5))) # (\U1|NOTE_NUM\(3)))) # (\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(5) $ (((!\U1|NOTE_NUM\(2)) # (\U1|NOTE_NUM\(3)))))) ) ) ) # ( \U1|NOTE_NUM\(4) & ( !\U1|NOTE_NUM\(1) & ( 
-- (!\U1|NOTE_NUM\(0) & (!\U1|NOTE_NUM\(5) $ (((!\U1|NOTE_NUM\(2) & !\U1|NOTE_NUM\(3)))))) # (\U1|NOTE_NUM\(0) & ((!\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(5) & !\U1|NOTE_NUM\(3))) # (\U1|NOTE_NUM\(2) & ((\U1|NOTE_NUM\(3)))))) ) ) ) # ( !\U1|NOTE_NUM\(4) & ( 
-- !\U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(5) & ((!\U1|NOTE_NUM\(3) & ((\U1|NOTE_NUM\(2)))) # (\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(0))))) # (\U1|NOTE_NUM\(5) & (!\U1|NOTE_NUM\(2) $ (((!\U1|NOTE_NUM\(0)) # (\U1|NOTE_NUM\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011010100011011010001011000100011100101011110001000001000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(0),
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(5),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	datae => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux5~0_combout\);

-- Location: LABCELL_X20_Y4_N39
\U2|U1|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux5~1_combout\ = ( !\U2|U1|Mux5~0_combout\ & ( \U2|U1|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U1|ALT_INV_Mux0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux5~0_combout\,
	combout => \U2|U1|Mux5~1_combout\);

-- Location: LABCELL_X19_Y4_N57
\U2|U2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~73_sumout\ = SUM(( \U2|U2|COUNT[9]~22_combout\ ) + ( VCC ) + ( \U2|U2|Add0~46\ ))
-- \U2|U2|Add0~74\ = CARRY(( \U2|U2|COUNT[9]~22_combout\ ) + ( VCC ) + ( \U2|U2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U2|ALT_INV_COUNT[9]~22_combout\,
	cin => \U2|U2|Add0~46\,
	sumout => \U2|U2|Add0~73_sumout\,
	cout => \U2|U2|Add0~74\);

-- Location: LABCELL_X20_Y4_N15
\U2|U2|COUNT[9]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[9]~21_combout\ = ( \U2|U1|Mux5~1_combout\ & ( (\U2|process_0~0_combout\) # (\U2|U2|COUNT[9]~21_combout\) ) ) # ( !\U2|U1|Mux5~1_combout\ & ( (\U2|U2|COUNT[9]~21_combout\ & !\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[9]~21_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux5~1_combout\,
	combout => \U2|U2|COUNT[9]~21_combout\);

-- Location: LABCELL_X20_Y4_N36
\U2|U2|COUNT[9]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[9]~23_combout\ = ( \U2|U2|COUNT[9]~21_combout\ & ( (!\U2|U2|Equal0~5_combout\ & (!\U2|U2|Add0~73_sumout\)) # (\U2|U2|Equal0~5_combout\ & ((!\U2|U1|Mux5~1_combout\))) ) ) # ( !\U2|U2|COUNT[9]~21_combout\ & ( (!\U2|U2|Equal0~5_combout\ & 
-- (\U2|U2|Add0~73_sumout\)) # (\U2|U2|Equal0~5_combout\ & ((\U2|U1|Mux5~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001110101010110011001010101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_Add0~73_sumout\,
	datab => \U2|U1|ALT_INV_Mux5~1_combout\,
	datad => \U2|U2|ALT_INV_Equal0~5_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[9]~21_combout\,
	combout => \U2|U2|COUNT[9]~23_combout\);

-- Location: FF_X20_Y4_N38
\U2|U2|COUNT[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[9]~23_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[9]~_emulated_q\);

-- Location: LABCELL_X20_Y4_N12
\U2|U2|COUNT[9]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[9]~22_combout\ = ( \U2|U2|COUNT[9]~21_combout\ & ( (!\U2|process_0~0_combout\ & ((!\U2|U2|COUNT[9]~_emulated_q\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux5~1_combout\)) ) ) # ( !\U2|U2|COUNT[9]~21_combout\ & ( (!\U2|process_0~0_combout\ & 
-- ((\U2|U2|COUNT[9]~_emulated_q\))) # (\U2|process_0~0_combout\ & (\U2|U1|Mux5~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|ALT_INV_Mux5~1_combout\,
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U2|ALT_INV_COUNT[9]~_emulated_q\,
	dataf => \U2|U2|ALT_INV_COUNT[9]~21_combout\,
	combout => \U2|U2|COUNT[9]~22_combout\);

-- Location: LABCELL_X19_Y3_N0
\U2|U2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~69_sumout\ = SUM(( \U2|U2|COUNT[10]~18_combout\ ) + ( VCC ) + ( \U2|U2|Add0~74\ ))
-- \U2|U2|Add0~70\ = CARRY(( \U2|U2|COUNT[10]~18_combout\ ) + ( VCC ) + ( \U2|U2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[10]~18_combout\,
	cin => \U2|U2|Add0~74\,
	sumout => \U2|U2|Add0~69_sumout\,
	cout => \U2|U2|Add0~70\);

-- Location: LABCELL_X19_Y3_N57
\U2|U2|COUNT[10]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[10]~19_combout\ = ( \U2|U2|COUNT[10]~17_combout\ & ( (!\U2|U2|Equal0~5_combout\ & (!\U2|U2|Add0~69_sumout\)) # (\U2|U2|Equal0~5_combout\ & ((!\U2|U1|Mux4~1_combout\))) ) ) # ( !\U2|U2|COUNT[10]~17_combout\ & ( (!\U2|U2|Equal0~5_combout\ & 
-- (\U2|U2|Add0~69_sumout\)) # (\U2|U2|Equal0~5_combout\ & ((\U2|U1|Mux4~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011111011101100010001101110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_Equal0~5_combout\,
	datab => \U2|U2|ALT_INV_Add0~69_sumout\,
	datad => \U2|U1|ALT_INV_Mux4~1_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[10]~17_combout\,
	combout => \U2|U2|COUNT[10]~19_combout\);

-- Location: FF_X19_Y3_N59
\U2|U2|COUNT[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[10]~19_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[10]~_emulated_q\);

-- Location: LABCELL_X20_Y3_N45
\U2|U2|COUNT[10]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[10]~18_combout\ = ( \U2|U1|Mux4~1_combout\ & ( (!\U2|U2|COUNT[10]~17_combout\ $ (!\U2|U2|COUNT[10]~_emulated_q\)) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux4~1_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U2|COUNT[10]~17_combout\ $ 
-- (!\U2|U2|COUNT[10]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U2|ALT_INV_COUNT[10]~17_combout\,
	datad => \U2|U2|ALT_INV_COUNT[10]~_emulated_q\,
	dataf => \U2|U1|ALT_INV_Mux4~1_combout\,
	combout => \U2|U2|COUNT[10]~18_combout\);

-- Location: LABCELL_X19_Y3_N3
\U2|U2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~65_sumout\ = SUM(( \U2|U2|COUNT[11]~14_combout\ ) + ( VCC ) + ( \U2|U2|Add0~70\ ))
-- \U2|U2|Add0~66\ = CARRY(( \U2|U2|COUNT[11]~14_combout\ ) + ( VCC ) + ( \U2|U2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U2|ALT_INV_COUNT[11]~14_combout\,
	cin => \U2|U2|Add0~70\,
	sumout => \U2|U2|Add0~65_sumout\,
	cout => \U2|U2|Add0~66\);

-- Location: LABCELL_X21_Y5_N21
\U2|U2|COUNT[11]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[11]~13_combout\ = ( \U2|U2|COUNT[11]~13_combout\ & ( \U2|U1|Mux3~3_combout\ ) ) # ( !\U2|U2|COUNT[11]~13_combout\ & ( \U2|U1|Mux3~3_combout\ & ( \U2|process_0~0_combout\ ) ) ) # ( \U2|U2|COUNT[11]~13_combout\ & ( !\U2|U1|Mux3~3_combout\ & ( 
-- !\U2|process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_process_0~0_combout\,
	datae => \U2|U2|ALT_INV_COUNT[11]~13_combout\,
	dataf => \U2|U1|ALT_INV_Mux3~3_combout\,
	combout => \U2|U2|COUNT[11]~13_combout\);

-- Location: LABCELL_X20_Y3_N51
\U2|U2|COUNT[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[11]~15_combout\ = !\U2|U2|COUNT[11]~13_combout\ $ (((!\U2|U2|Equal0~5_combout\ & ((!\U2|U2|Add0~65_sumout\))) # (\U2|U2|Equal0~5_combout\ & (!\U2|U1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110111100010000111011110001000011101111000100001110111100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|ALT_INV_Mux3~3_combout\,
	datab => \U2|U2|ALT_INV_Equal0~5_combout\,
	datac => \U2|U2|ALT_INV_Add0~65_sumout\,
	datad => \U2|U2|ALT_INV_COUNT[11]~13_combout\,
	combout => \U2|U2|COUNT[11]~15_combout\);

-- Location: FF_X20_Y3_N52
\U2|U2|COUNT[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[11]~15_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[11]~_emulated_q\);

-- Location: LABCELL_X21_Y5_N45
\U2|U2|COUNT[11]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[11]~14_combout\ = ( \U2|process_0~0_combout\ & ( \U2|U1|Mux3~3_combout\ ) ) # ( !\U2|process_0~0_combout\ & ( !\U2|U2|COUNT[11]~_emulated_q\ $ (!\U2|U2|COUNT[11]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|ALT_INV_Mux3~3_combout\,
	datac => \U2|U2|ALT_INV_COUNT[11]~_emulated_q\,
	datad => \U2|U2|ALT_INV_COUNT[11]~13_combout\,
	dataf => \U2|ALT_INV_process_0~0_combout\,
	combout => \U2|U2|COUNT[11]~14_combout\);

-- Location: LABCELL_X19_Y3_N6
\U2|U2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~61_sumout\ = SUM(( \U2|U2|COUNT[12]~10_combout\ ) + ( VCC ) + ( \U2|U2|Add0~66\ ))
-- \U2|U2|Add0~62\ = CARRY(( \U2|U2|COUNT[12]~10_combout\ ) + ( VCC ) + ( \U2|U2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U2|ALT_INV_COUNT[12]~10_combout\,
	cin => \U2|U2|Add0~66\,
	sumout => \U2|U2|Add0~61_sumout\,
	cout => \U2|U2|Add0~62\);

-- Location: LABCELL_X19_Y3_N54
\U2|U2|COUNT[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[12]~11_combout\ = ( \U2|U1|Mux2~1_combout\ & ( !\U2|U2|COUNT[12]~9_combout\ $ (((!\U2|U2|Equal0~5_combout\ & !\U2|U2|Add0~61_sumout\))) ) ) # ( !\U2|U1|Mux2~1_combout\ & ( !\U2|U2|COUNT[12]~9_combout\ $ (((!\U2|U2|Add0~61_sumout\) # 
-- (\U2|U2|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101000010101111010101011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_Equal0~5_combout\,
	datac => \U2|U2|ALT_INV_Add0~61_sumout\,
	datad => \U2|U2|ALT_INV_COUNT[12]~9_combout\,
	dataf => \U2|U1|ALT_INV_Mux2~1_combout\,
	combout => \U2|U2|COUNT[12]~11_combout\);

-- Location: FF_X19_Y3_N55
\U2|U2|COUNT[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[12]~11_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[12]~_emulated_q\);

-- Location: LABCELL_X20_Y3_N54
\U2|U2|COUNT[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[12]~10_combout\ = ( \U2|U1|Mux2~1_combout\ & ( (!\U2|U2|COUNT[12]~9_combout\ $ (!\U2|U2|COUNT[12]~_emulated_q\)) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux2~1_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U2|COUNT[12]~9_combout\ $ 
-- (!\U2|U2|COUNT[12]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U2|ALT_INV_COUNT[12]~9_combout\,
	datad => \U2|U2|ALT_INV_COUNT[12]~_emulated_q\,
	dataf => \U2|U1|ALT_INV_Mux2~1_combout\,
	combout => \U2|U2|COUNT[12]~10_combout\);

-- Location: LABCELL_X20_Y3_N21
\U2|U1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux1~0_combout\ = ( \U1|NOTE_NUM\(1) & ( (\U1|NOTE_NUM\(3) & \U1|NOTE_NUM\(2)) ) ) # ( !\U1|NOTE_NUM\(1) & ( (!\U1|NOTE_NUM\(3) & (!\U1|NOTE_NUM\(0) & !\U1|NOTE_NUM\(2))) # (\U1|NOTE_NUM\(3) & (\U1|NOTE_NUM\(0) & \U1|NOTE_NUM\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101101000000000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(3),
	datac => \U1|ALT_INV_NOTE_NUM\(0),
	datad => \U1|ALT_INV_NOTE_NUM\(2),
	dataf => \U1|ALT_INV_NOTE_NUM\(1),
	combout => \U2|U1|Mux1~0_combout\);

-- Location: LABCELL_X20_Y3_N9
\U2|U1|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux1~1_combout\ = ( !\U2|U1|Mux1~0_combout\ & ( (!\U1|NOTE_NUM\(5) & (\U2|U1|Mux0~0_combout\ & !\U1|NOTE_NUM\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(5),
	datac => \U2|U1|ALT_INV_Mux0~0_combout\,
	datad => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U2|U1|ALT_INV_Mux1~0_combout\,
	combout => \U2|U1|Mux1~1_combout\);

-- Location: LABCELL_X20_Y3_N39
\U2|U2|COUNT[13]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[13]~5_combout\ = ( \U2|U1|Mux1~1_combout\ & ( (\U2|process_0~0_combout\) # (\U2|U2|COUNT[13]~5_combout\) ) ) # ( !\U2|U1|Mux1~1_combout\ & ( (\U2|U2|COUNT[13]~5_combout\ & !\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT[13]~5_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux1~1_combout\,
	combout => \U2|U2|COUNT[13]~5_combout\);

-- Location: LABCELL_X19_Y3_N9
\U2|U2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~85_sumout\ = SUM(( \U2|U2|COUNT[13]~6_combout\ ) + ( VCC ) + ( \U2|U2|Add0~62\ ))
-- \U2|U2|Add0~86\ = CARRY(( \U2|U2|COUNT[13]~6_combout\ ) + ( VCC ) + ( \U2|U2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U2|ALT_INV_COUNT[13]~6_combout\,
	cin => \U2|U2|Add0~62\,
	sumout => \U2|U2|Add0~85_sumout\,
	cout => \U2|U2|Add0~86\);

-- Location: LABCELL_X20_Y3_N27
\U2|U2|COUNT[13]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[13]~7_combout\ = ( \U2|U1|Mux1~1_combout\ & ( !\U2|U2|COUNT[13]~5_combout\ $ (((!\U2|U2|Equal0~5_combout\ & !\U2|U2|Add0~85_sumout\))) ) ) # ( !\U2|U1|Mux1~1_combout\ & ( !\U2|U2|COUNT[13]~5_combout\ $ (((!\U2|U2|Add0~85_sumout\) # 
-- (\U2|U2|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010101011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[13]~5_combout\,
	datac => \U2|U2|ALT_INV_Equal0~5_combout\,
	datad => \U2|U2|ALT_INV_Add0~85_sumout\,
	dataf => \U2|U1|ALT_INV_Mux1~1_combout\,
	combout => \U2|U2|COUNT[13]~7_combout\);

-- Location: FF_X20_Y3_N29
\U2|U2|COUNT[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[13]~7_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[13]~_emulated_q\);

-- Location: LABCELL_X20_Y3_N24
\U2|U2|COUNT[13]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[13]~6_combout\ = ( \U2|U1|Mux1~1_combout\ & ( (!\U2|U2|COUNT[13]~5_combout\ $ (!\U2|U2|COUNT[13]~_emulated_q\)) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux1~1_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U2|COUNT[13]~5_combout\ $ 
-- (!\U2|U2|COUNT[13]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_COUNT[13]~5_combout\,
	datac => \U2|U2|ALT_INV_COUNT[13]~_emulated_q\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U1|ALT_INV_Mux1~1_combout\,
	combout => \U2|U2|COUNT[13]~6_combout\);

-- Location: LABCELL_X21_Y5_N42
\U2|U1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux0~1_combout\ = ( !\U1|NOTE_NUM\(0) & ( (!\U1|NOTE_NUM\(2) & (!\U1|NOTE_NUM\(1) & !\U1|NOTE_NUM\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_NOTE_NUM\(2),
	datac => \U1|ALT_INV_NOTE_NUM\(1),
	datad => \U1|ALT_INV_NOTE_NUM\(3),
	dataf => \U1|ALT_INV_NOTE_NUM\(0),
	combout => \U2|U1|Mux0~1_combout\);

-- Location: LABCELL_X20_Y3_N6
\U2|U1|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U1|Mux0~2_combout\ = ( \U2|U1|Mux0~1_combout\ & ( (!\U1|NOTE_NUM\(5) & (\U2|U1|Mux0~0_combout\ & !\U1|NOTE_NUM\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_NOTE_NUM\(5),
	datab => \U2|U1|ALT_INV_Mux0~0_combout\,
	datad => \U1|ALT_INV_NOTE_NUM\(4),
	dataf => \U2|U1|ALT_INV_Mux0~1_combout\,
	combout => \U2|U1|Mux0~2_combout\);

-- Location: LABCELL_X20_Y3_N3
\U2|U2|COUNT[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[14]~1_combout\ = ( \U2|U1|Mux0~2_combout\ & ( (\U2|U2|COUNT[14]~1_combout\) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux0~2_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U2|COUNT[14]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U2|ALT_INV_COUNT[14]~1_combout\,
	dataf => \U2|U1|ALT_INV_Mux0~2_combout\,
	combout => \U2|U2|COUNT[14]~1_combout\);

-- Location: LABCELL_X19_Y3_N12
\U2|U2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~81_sumout\ = SUM(( \U2|U2|COUNT[14]~2_combout\ ) + ( VCC ) + ( \U2|U2|Add0~86\ ))
-- \U2|U2|Add0~82\ = CARRY(( \U2|U2|COUNT[14]~2_combout\ ) + ( VCC ) + ( \U2|U2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U2|ALT_INV_COUNT[14]~2_combout\,
	cin => \U2|U2|Add0~86\,
	sumout => \U2|U2|Add0~81_sumout\,
	cout => \U2|U2|Add0~82\);

-- Location: LABCELL_X20_Y3_N57
\U2|U2|COUNT[14]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[14]~3_combout\ = ( \U2|U1|Mux0~2_combout\ & ( !\U2|U2|COUNT[14]~1_combout\ $ (((!\U2|U2|Equal0~5_combout\ & !\U2|U2|Add0~81_sumout\))) ) ) # ( !\U2|U1|Mux0~2_combout\ & ( !\U2|U2|COUNT[14]~1_combout\ $ (((!\U2|U2|Add0~81_sumout\) # 
-- (\U2|U2|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010101011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[14]~1_combout\,
	datac => \U2|U2|ALT_INV_Equal0~5_combout\,
	datad => \U2|U2|ALT_INV_Add0~81_sumout\,
	dataf => \U2|U1|ALT_INV_Mux0~2_combout\,
	combout => \U2|U2|COUNT[14]~3_combout\);

-- Location: FF_X20_Y3_N59
\U2|U2|COUNT[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|COUNT[14]~3_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT[14]~_emulated_q\);

-- Location: LABCELL_X20_Y3_N18
\U2|U2|COUNT[14]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|COUNT[14]~2_combout\ = ( \U2|U1|Mux0~2_combout\ & ( (!\U2|U2|COUNT[14]~1_combout\ $ (!\U2|U2|COUNT[14]~_emulated_q\)) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U1|Mux0~2_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U2|COUNT[14]~1_combout\ $ 
-- (!\U2|U2|COUNT[14]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U2|ALT_INV_COUNT[14]~1_combout\,
	datad => \U2|U2|ALT_INV_COUNT[14]~_emulated_q\,
	dataf => \U2|U1|ALT_INV_Mux0~2_combout\,
	combout => \U2|U2|COUNT[14]~2_combout\);

-- Location: LABCELL_X19_Y3_N15
\U2|U2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~9_sumout\ = SUM(( \U2|U2|COUNT\(15) ) + ( VCC ) + ( \U2|U2|Add0~82\ ))
-- \U2|U2|Add0~10\ = CARRY(( \U2|U2|COUNT\(15) ) + ( VCC ) + ( \U2|U2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT\(15),
	cin => \U2|U2|Add0~82\,
	sumout => \U2|U2|Add0~9_sumout\,
	cout => \U2|U2|Add0~10\);

-- Location: FF_X19_Y3_N17
\U2|U2|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~9_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(15));

-- Location: LABCELL_X19_Y3_N18
\U2|U2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~13_sumout\ = SUM(( \U2|U2|COUNT\(16) ) + ( VCC ) + ( \U2|U2|Add0~10\ ))
-- \U2|U2|Add0~14\ = CARRY(( \U2|U2|COUNT\(16) ) + ( VCC ) + ( \U2|U2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT\(16),
	cin => \U2|U2|Add0~10\,
	sumout => \U2|U2|Add0~13_sumout\,
	cout => \U2|U2|Add0~14\);

-- Location: FF_X19_Y3_N20
\U2|U2|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~13_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(16));

-- Location: LABCELL_X19_Y3_N21
\U2|U2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~17_sumout\ = SUM(( \U2|U2|COUNT\(17) ) + ( VCC ) + ( \U2|U2|Add0~14\ ))
-- \U2|U2|Add0~18\ = CARRY(( \U2|U2|COUNT\(17) ) + ( VCC ) + ( \U2|U2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT\(17),
	cin => \U2|U2|Add0~14\,
	sumout => \U2|U2|Add0~17_sumout\,
	cout => \U2|U2|Add0~18\);

-- Location: FF_X19_Y3_N23
\U2|U2|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~17_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(17));

-- Location: LABCELL_X19_Y3_N24
\U2|U2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~21_sumout\ = SUM(( \U2|U2|COUNT\(18) ) + ( VCC ) + ( \U2|U2|Add0~18\ ))
-- \U2|U2|Add0~22\ = CARRY(( \U2|U2|COUNT\(18) ) + ( VCC ) + ( \U2|U2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT\(18),
	cin => \U2|U2|Add0~18\,
	sumout => \U2|U2|Add0~21_sumout\,
	cout => \U2|U2|Add0~22\);

-- Location: FF_X19_Y3_N26
\U2|U2|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~21_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(18));

-- Location: LABCELL_X19_Y3_N27
\U2|U2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~1_sumout\ = SUM(( \U2|U2|COUNT\(19) ) + ( VCC ) + ( \U2|U2|Add0~22\ ))
-- \U2|U2|Add0~2\ = CARRY(( \U2|U2|COUNT\(19) ) + ( VCC ) + ( \U2|U2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT\(19),
	cin => \U2|U2|Add0~22\,
	sumout => \U2|U2|Add0~1_sumout\,
	cout => \U2|U2|Add0~2\);

-- Location: FF_X19_Y3_N29
\U2|U2|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~1_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(19));

-- Location: LABCELL_X19_Y3_N30
\U2|U2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~25_sumout\ = SUM(( \U2|U2|COUNT\(20) ) + ( VCC ) + ( \U2|U2|Add0~2\ ))
-- \U2|U2|Add0~26\ = CARRY(( \U2|U2|COUNT\(20) ) + ( VCC ) + ( \U2|U2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_COUNT\(20),
	cin => \U2|U2|Add0~2\,
	sumout => \U2|U2|Add0~25_sumout\,
	cout => \U2|U2|Add0~26\);

-- Location: FF_X19_Y3_N32
\U2|U2|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~25_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(20));

-- Location: LABCELL_X19_Y3_N33
\U2|U2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~29_sumout\ = SUM(( \U2|U2|COUNT\(21) ) + ( VCC ) + ( \U2|U2|Add0~26\ ))
-- \U2|U2|Add0~30\ = CARRY(( \U2|U2|COUNT\(21) ) + ( VCC ) + ( \U2|U2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT\(21),
	cin => \U2|U2|Add0~26\,
	sumout => \U2|U2|Add0~29_sumout\,
	cout => \U2|U2|Add0~30\);

-- Location: FF_X19_Y3_N35
\U2|U2|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~29_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(21));

-- Location: LABCELL_X19_Y3_N36
\U2|U2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~33_sumout\ = SUM(( \U2|U2|COUNT\(22) ) + ( VCC ) + ( \U2|U2|Add0~30\ ))
-- \U2|U2|Add0~34\ = CARRY(( \U2|U2|COUNT\(22) ) + ( VCC ) + ( \U2|U2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT\(22),
	cin => \U2|U2|Add0~30\,
	sumout => \U2|U2|Add0~33_sumout\,
	cout => \U2|U2|Add0~34\);

-- Location: FF_X19_Y3_N38
\U2|U2|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~33_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(22));

-- Location: LABCELL_X19_Y3_N39
\U2|U2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~37_sumout\ = SUM(( \U2|U2|COUNT\(23) ) + ( VCC ) + ( \U2|U2|Add0~34\ ))
-- \U2|U2|Add0~38\ = CARRY(( \U2|U2|COUNT\(23) ) + ( VCC ) + ( \U2|U2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT\(23),
	cin => \U2|U2|Add0~34\,
	sumout => \U2|U2|Add0~37_sumout\,
	cout => \U2|U2|Add0~38\);

-- Location: FF_X19_Y3_N41
\U2|U2|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~37_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(23));

-- Location: LABCELL_X19_Y3_N42
\U2|U2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~41_sumout\ = SUM(( \U2|U2|COUNT\(24) ) + ( VCC ) + ( \U2|U2|Add0~38\ ))
-- \U2|U2|Add0~42\ = CARRY(( \U2|U2|COUNT\(24) ) + ( VCC ) + ( \U2|U2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U2|ALT_INV_COUNT\(24),
	cin => \U2|U2|Add0~38\,
	sumout => \U2|U2|Add0~41_sumout\,
	cout => \U2|U2|Add0~42\);

-- Location: FF_X19_Y3_N44
\U2|U2|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~41_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(24));

-- Location: LABCELL_X19_Y3_N45
\U2|U2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Add0~5_sumout\ = SUM(( \U2|U2|COUNT\(25) ) + ( VCC ) + ( \U2|U2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_COUNT\(25),
	cin => \U2|U2|Add0~42\,
	sumout => \U2|U2|Add0~5_sumout\);

-- Location: FF_X19_Y3_N47
\U2|U2|COUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|Add0~5_sumout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	sclr => \U2|U2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|COUNT\(25));

-- Location: LABCELL_X20_Y3_N0
\U2|U2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Equal0~0_combout\ = ( !\U2|U2|COUNT\(15) & ( (!\U2|U2|COUNT\(16) & (!\U2|U2|COUNT\(17) & (!\U2|U2|COUNT\(25) & !\U2|U2|COUNT\(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT\(16),
	datab => \U2|U2|ALT_INV_COUNT\(17),
	datac => \U2|U2|ALT_INV_COUNT\(25),
	datad => \U2|U2|ALT_INV_COUNT\(18),
	dataf => \U2|U2|ALT_INV_COUNT\(15),
	combout => \U2|U2|Equal0~0_combout\);

-- Location: LABCELL_X19_Y3_N48
\U2|U2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Equal0~1_combout\ = ( !\U2|U2|COUNT\(23) & ( (!\U2|U2|COUNT\(22) & (!\U2|U2|COUNT\(24) & (!\U2|U2|COUNT\(21) & !\U2|U2|COUNT\(20)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT\(22),
	datab => \U2|U2|ALT_INV_COUNT\(24),
	datac => \U2|U2|ALT_INV_COUNT\(21),
	datad => \U2|U2|ALT_INV_COUNT\(20),
	dataf => \U2|U2|ALT_INV_COUNT\(23),
	combout => \U2|U2|Equal0~1_combout\);

-- Location: LABCELL_X20_Y3_N36
\U2|U2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Equal0~2_combout\ = ( !\U2|U2|COUNT[14]~2_combout\ & ( (!\U2|U2|COUNT[13]~6_combout\ & (!\U2|U2|COUNT\(19) & (\U2|U2|Equal0~0_combout\ & \U2|U2|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[13]~6_combout\,
	datab => \U2|U2|ALT_INV_COUNT\(19),
	datac => \U2|U2|ALT_INV_Equal0~0_combout\,
	datad => \U2|U2|ALT_INV_Equal0~1_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[14]~2_combout\,
	combout => \U2|U2|Equal0~2_combout\);

-- Location: LABCELL_X20_Y3_N30
\U2|U2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Equal0~3_combout\ = ( !\U2|U2|COUNT[9]~22_combout\ & ( !\U2|U2|COUNT[7]~30_combout\ & ( (!\U2|U2|COUNT[12]~10_combout\ & (!\U2|U2|COUNT[10]~18_combout\ & (\U2|U2|Equal0~2_combout\ & !\U2|U2|COUNT[11]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[12]~10_combout\,
	datab => \U2|U2|ALT_INV_COUNT[10]~18_combout\,
	datac => \U2|U2|ALT_INV_Equal0~2_combout\,
	datad => \U2|U2|ALT_INV_COUNT[11]~14_combout\,
	datae => \U2|U2|ALT_INV_COUNT[9]~22_combout\,
	dataf => \U2|U2|ALT_INV_COUNT[7]~30_combout\,
	combout => \U2|U2|Equal0~3_combout\);

-- Location: LABCELL_X20_Y3_N12
\U2|U2|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|Equal0~5_combout\ = ( \U2|U2|Equal0~4_combout\ & ( \U2|U2|Equal0~3_combout\ & ( (!\U2|U2|COUNT[6]~34_combout\ & (!\U2|U2|COUNT[4]~42_combout\ & (!\U2|U2|COUNT[5]~38_combout\ & !\U2|U2|COUNT[8]~26_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_COUNT[6]~34_combout\,
	datab => \U2|U2|ALT_INV_COUNT[4]~42_combout\,
	datac => \U2|U2|ALT_INV_COUNT[5]~38_combout\,
	datad => \U2|U2|ALT_INV_COUNT[8]~26_combout\,
	datae => \U2|U2|ALT_INV_Equal0~4_combout\,
	dataf => \U2|U2|ALT_INV_Equal0~3_combout\,
	combout => \U2|U2|Equal0~5_combout\);

-- Location: LABCELL_X19_Y3_N51
\U2|U2|LO_CLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U2|LO_CLK~0_combout\ = !\U2|U2|Equal0~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U2|ALT_INV_Equal0~5_combout\,
	combout => \U2|U2|LO_CLK~0_combout\);

-- Location: FF_X19_Y3_N53
\U2|U2|LO_CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|U2|LO_CLK~0_combout\,
	clrn => \U2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U2|LO_CLK~q\);

-- Location: LABCELL_X17_Y5_N0
\U2|U3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~21_sumout\ = SUM(( \U2|U3|SIGCNT\(0) ) + ( VCC ) + ( !VCC ))
-- \U2|U3|Add0~22\ = CARRY(( \U2|U3|SIGCNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(0),
	cin => GND,
	sumout => \U2|U3|Add0~21_sumout\,
	cout => \U2|U3|Add0~22\);

-- Location: MLABCELL_X18_Y6_N21
\U2|U3|SIGCNT[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[0]~12_combout\ = ( \U2|U3|SIGCNT[8]~5_combout\ & ( (((\U2|U3|LessThan0~0_combout\) # (\U2|U3|Add0~21_sumout\)) # (\U2|U2|LO_CLK~q\)) # (\U2|U3|SIGCNT\(31)) ) ) # ( !\U2|U3|SIGCNT[8]~5_combout\ & ( ((\U2|U3|Add0~21_sumout\) # 
-- (\U2|U2|LO_CLK~q\)) # (\U2|U3|SIGCNT\(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(31),
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_Add0~21_sumout\,
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	combout => \U2|U3|SIGCNT[0]~12_combout\);

-- Location: MLABCELL_X18_Y6_N33
\U2|U3|SIGCNT[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(0) = ( \U2|U3|SIGCNT[0]~12_combout\ & ( ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|process_0~0_combout\)) # (\U2|U3|SIGCNT\(0)) ) ) # ( !\U2|U3|SIGCNT[0]~12_combout\ & ( ((\U2|U3|SIGCNT\(0) & !\U2|U3|SIGCNT[8]~7_combout\)) # 
-- (\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(0),
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[0]~12_combout\,
	combout => \U2|U3|SIGCNT\(0));

-- Location: LABCELL_X17_Y5_N3
\U2|U3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~9_sumout\ = SUM(( \U2|U3|SIGCNT\(1) ) + ( VCC ) + ( \U2|U3|Add0~22\ ))
-- \U2|U3|Add0~10\ = CARRY(( \U2|U3|SIGCNT\(1) ) + ( VCC ) + ( \U2|U3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	cin => \U2|U3|Add0~22\,
	sumout => \U2|U3|Add0~9_sumout\,
	cout => \U2|U3|Add0~10\);

-- Location: MLABCELL_X18_Y4_N15
\U2|U3|SIGCNT[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[1]~9_combout\ = ( \U2|U3|Add0~9_sumout\ ) # ( !\U2|U3|Add0~9_sumout\ & ( (((\U2|U3|LessThan0~0_combout\ & \U2|U3|SIGCNT[8]~5_combout\)) # (\U2|U2|LO_CLK~q\)) # (\U2|U3|SIGCNT\(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101111111001111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U2|ALT_INV_LO_CLK~q\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	dataf => \U2|U3|ALT_INV_Add0~9_sumout\,
	combout => \U2|U3|SIGCNT[1]~9_combout\);

-- Location: LABCELL_X17_Y4_N54
\U2|U3|SIGCNT[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(1) = ( \U2|U3|SIGCNT[1]~9_combout\ & ( ((\U2|U3|SIGCNT\(1)) # (\U2|U3|SIGCNT[8]~7_combout\)) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U3|SIGCNT[1]~9_combout\ & ( ((!\U2|U3|SIGCNT[8]~7_combout\ & \U2|U3|SIGCNT\(1))) # 
-- (\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	dataf => \U2|U3|ALT_INV_SIGCNT[1]~9_combout\,
	combout => \U2|U3|SIGCNT\(1));

-- Location: LABCELL_X17_Y5_N6
\U2|U3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~13_sumout\ = SUM(( \U2|U3|SIGCNT\(2) ) + ( VCC ) + ( \U2|U3|Add0~10\ ))
-- \U2|U3|Add0~14\ = CARRY(( \U2|U3|SIGCNT\(2) ) + ( VCC ) + ( \U2|U3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(2),
	cin => \U2|U3|Add0~10\,
	sumout => \U2|U3|Add0~13_sumout\,
	cout => \U2|U3|Add0~14\);

-- Location: MLABCELL_X18_Y4_N27
\U2|U3|SIGCNT[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[2]~10_combout\ = ( \U2|U3|Add0~13_sumout\ ) # ( !\U2|U3|Add0~13_sumout\ & ( (((\U2|U3|LessThan0~0_combout\ & \U2|U3|SIGCNT[8]~5_combout\)) # (\U2|U3|SIGCNT\(31))) # (\U2|U2|LO_CLK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111011101110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	dataf => \U2|U3|ALT_INV_Add0~13_sumout\,
	combout => \U2|U3|SIGCNT[2]~10_combout\);

-- Location: MLABCELL_X18_Y4_N18
\U2|U3|SIGCNT[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(2) = ( \U2|U3|SIGCNT[2]~10_combout\ & ( ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(2))) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U3|SIGCNT[2]~10_combout\ & ( ((\U2|U3|SIGCNT\(2) & !\U2|U3|SIGCNT[8]~7_combout\)) # 
-- (\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(2),
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[2]~10_combout\,
	combout => \U2|U3|SIGCNT\(2));

-- Location: LABCELL_X17_Y5_N9
\U2|U3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~5_sumout\ = SUM(( \U2|U3|SIGCNT\(3) ) + ( VCC ) + ( \U2|U3|Add0~14\ ))
-- \U2|U3|Add0~6\ = CARRY(( \U2|U3|SIGCNT\(3) ) + ( VCC ) + ( \U2|U3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(3),
	cin => \U2|U3|Add0~14\,
	sumout => \U2|U3|Add0~5_sumout\,
	cout => \U2|U3|Add0~6\);

-- Location: MLABCELL_X18_Y6_N54
\U2|U3|SIGCNT[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[3]~8_combout\ = ( \U2|U3|LessThan0~0_combout\ & ( (!\U2|U3|SIGCNT[8]~5_combout\ & (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & \U2|U3|Add0~5_sumout\))) ) ) # ( !\U2|U3|LessThan0~0_combout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & 
-- \U2|U3|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U3|ALT_INV_Add0~5_sumout\,
	dataf => \U2|U3|ALT_INV_LessThan0~0_combout\,
	combout => \U2|U3|SIGCNT[3]~8_combout\);

-- Location: MLABCELL_X18_Y6_N9
\U2|U3|SIGCNT[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(3) = ( \U2|U3|SIGCNT[3]~8_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(3)))) ) ) # ( !\U2|U3|SIGCNT[3]~8_combout\ & ( (\U2|U3|SIGCNT\(3) & (!\U2|process_0~0_combout\ & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT\(3),
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[3]~8_combout\,
	combout => \U2|U3|SIGCNT\(3));

-- Location: LABCELL_X17_Y5_N12
\U2|U3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~17_sumout\ = SUM(( \U2|U3|SIGCNT\(4) ) + ( VCC ) + ( \U2|U3|Add0~6\ ))
-- \U2|U3|Add0~18\ = CARRY(( \U2|U3|SIGCNT\(4) ) + ( VCC ) + ( \U2|U3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(4),
	cin => \U2|U3|Add0~6\,
	sumout => \U2|U3|Add0~17_sumout\,
	cout => \U2|U3|Add0~18\);

-- Location: LABCELL_X16_Y4_N21
\U2|U3|SIGCNT[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[4]~11_combout\ = ( \U2|U3|Add0~17_sumout\ & ( \U2|U3|SIGCNT[8]~5_combout\ & ( (!\U2|U3|LessThan0~0_combout\ & (!\U2|U2|LO_CLK~q\ & !\U2|U3|SIGCNT\(31))) ) ) ) # ( \U2|U3|Add0~17_sumout\ & ( !\U2|U3|SIGCNT[8]~5_combout\ & ( (!\U2|U2|LO_CLK~q\ 
-- & !\U2|U3|SIGCNT\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datae => \U2|U3|ALT_INV_Add0~17_sumout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	combout => \U2|U3|SIGCNT[4]~11_combout\);

-- Location: LABCELL_X17_Y4_N45
\U2|U3|SIGCNT[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(4) = ( \U2|U3|SIGCNT[4]~11_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(4)))) ) ) # ( !\U2|U3|SIGCNT[4]~11_combout\ & ( (!\U2|process_0~0_combout\ & (\U2|U3|SIGCNT\(4) & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(4),
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[4]~11_combout\,
	combout => \U2|U3|SIGCNT\(4));

-- Location: LABCELL_X17_Y5_N15
\U2|U3|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~109_sumout\ = SUM(( \U2|U3|SIGCNT\(5) ) + ( VCC ) + ( \U2|U3|Add0~18\ ))
-- \U2|U3|Add0~110\ = CARRY(( \U2|U3|SIGCNT\(5) ) + ( VCC ) + ( \U2|U3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(5),
	cin => \U2|U3|Add0~18\,
	sumout => \U2|U3|Add0~109_sumout\,
	cout => \U2|U3|Add0~110\);

-- Location: LABCELL_X17_Y5_N18
\U2|U3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~29_sumout\ = SUM(( \U2|U3|SIGCNT\(6) ) + ( VCC ) + ( \U2|U3|Add0~110\ ))
-- \U2|U3|Add0~30\ = CARRY(( \U2|U3|SIGCNT\(6) ) + ( VCC ) + ( \U2|U3|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U3|ALT_INV_SIGCNT\(6),
	cin => \U2|U3|Add0~110\,
	sumout => \U2|U3|Add0~29_sumout\,
	cout => \U2|U3|Add0~30\);

-- Location: MLABCELL_X18_Y4_N30
\U2|U3|SIGCNT[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[6]~14_combout\ = ( \U2|U3|Add0~29_sumout\ ) # ( !\U2|U3|Add0~29_sumout\ & ( (((\U2|U3|LessThan0~0_combout\ & \U2|U3|SIGCNT[8]~5_combout\)) # (\U2|U3|SIGCNT\(31))) # (\U2|U2|LO_CLK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111011101110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	dataf => \U2|U3|ALT_INV_Add0~29_sumout\,
	combout => \U2|U3|SIGCNT[6]~14_combout\);

-- Location: MLABCELL_X18_Y4_N9
\U2|U3|SIGCNT[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(6) = ( \U2|U3|SIGCNT\(6) & ( ((!\U2|U3|SIGCNT[8]~7_combout\) # (\U2|process_0~0_combout\)) # (\U2|U3|SIGCNT[6]~14_combout\) ) ) # ( !\U2|U3|SIGCNT\(6) & ( ((\U2|U3|SIGCNT[6]~14_combout\ & \U2|U3|SIGCNT[8]~7_combout\)) # 
-- (\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011111111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[6]~14_combout\,
	datab => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT\(6),
	combout => \U2|U3|SIGCNT\(6));

-- Location: LABCELL_X17_Y5_N21
\U2|U3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~25_sumout\ = SUM(( \U2|U3|SIGCNT\(7) ) + ( VCC ) + ( \U2|U3|Add0~30\ ))
-- \U2|U3|Add0~26\ = CARRY(( \U2|U3|SIGCNT\(7) ) + ( VCC ) + ( \U2|U3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(7),
	cin => \U2|U3|Add0~30\,
	sumout => \U2|U3|Add0~25_sumout\,
	cout => \U2|U3|Add0~26\);

-- Location: MLABCELL_X18_Y6_N15
\U2|U3|SIGCNT[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[7]~13_combout\ = ( !\U2|U3|SIGCNT\(31) & ( \U2|U3|Add0~25_sumout\ & ( (!\U2|U2|LO_CLK~q\ & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001000110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT\(31),
	dataf => \U2|U3|ALT_INV_Add0~25_sumout\,
	combout => \U2|U3|SIGCNT[7]~13_combout\);

-- Location: LABCELL_X17_Y6_N3
\U2|U3|SIGCNT[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(7) = ( \U2|U3|SIGCNT[7]~13_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT\(7)) # (\U2|U3|SIGCNT[8]~7_combout\))) ) ) # ( !\U2|U3|SIGCNT[7]~13_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U3|SIGCNT[8]~7_combout\ & 
-- \U2|U3|SIGCNT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(7),
	dataf => \U2|U3|ALT_INV_SIGCNT[7]~13_combout\,
	combout => \U2|U3|SIGCNT\(7));

-- Location: LABCELL_X17_Y5_N24
\U2|U3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~1_sumout\ = SUM(( \U2|U3|SIGCNT\(8) ) + ( VCC ) + ( \U2|U3|Add0~26\ ))
-- \U2|U3|Add0~2\ = CARRY(( \U2|U3|SIGCNT\(8) ) + ( VCC ) + ( \U2|U3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(8),
	cin => \U2|U3|Add0~26\,
	sumout => \U2|U3|Add0~1_sumout\,
	cout => \U2|U3|Add0~2\);

-- Location: LABCELL_X16_Y4_N48
\U2|U3|SIGCNT[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[8]~6_combout\ = ( \U2|U3|Add0~1_sumout\ & ( \U2|U3|SIGCNT[8]~5_combout\ ) ) # ( !\U2|U3|Add0~1_sumout\ & ( \U2|U3|SIGCNT[8]~5_combout\ & ( ((\U2|U2|LO_CLK~q\) # (\U2|U3|LessThan0~0_combout\)) # (\U2|U3|SIGCNT\(31)) ) ) ) # ( 
-- \U2|U3|Add0~1_sumout\ & ( !\U2|U3|SIGCNT[8]~5_combout\ ) ) # ( !\U2|U3|Add0~1_sumout\ & ( !\U2|U3|SIGCNT[8]~5_combout\ & ( (\U2|U2|LO_CLK~q\) # (\U2|U3|SIGCNT\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111111111111111111100111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datad => \U2|U2|ALT_INV_LO_CLK~q\,
	datae => \U2|U3|ALT_INV_Add0~1_sumout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	combout => \U2|U3|SIGCNT[8]~6_combout\);

-- Location: LABCELL_X17_Y4_N42
\U2|U3|SIGCNT[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(8) = ( \U2|U3|SIGCNT\(8) & ( ((!\U2|U3|SIGCNT[8]~7_combout\) # (\U2|process_0~0_combout\)) # (\U2|U3|SIGCNT[8]~6_combout\) ) ) # ( !\U2|U3|SIGCNT\(8) & ( ((\U2|U3|SIGCNT[8]~6_combout\ & \U2|U3|SIGCNT[8]~7_combout\)) # 
-- (\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~6_combout\,
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT\(8),
	combout => \U2|U3|SIGCNT\(8));

-- Location: LABCELL_X17_Y5_N27
\U2|U3|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~113_sumout\ = SUM(( \U2|U3|SIGCNT\(9) ) + ( VCC ) + ( \U2|U3|Add0~2\ ))
-- \U2|U3|Add0~114\ = CARRY(( \U2|U3|SIGCNT\(9) ) + ( VCC ) + ( \U2|U3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U3|ALT_INV_SIGCNT\(9),
	cin => \U2|U3|Add0~2\,
	sumout => \U2|U3|Add0~113_sumout\,
	cout => \U2|U3|Add0~114\);

-- Location: MLABCELL_X18_Y6_N18
\U2|U3|SIGCNT[9]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[9]~35_combout\ = ( \U2|U3|Add0~113_sumout\ & ( (!\U2|U3|SIGCNT\(31) & (!\U2|U2|LO_CLK~q\ & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(31),
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_Add0~113_sumout\,
	combout => \U2|U3|SIGCNT[9]~35_combout\);

-- Location: LABCELL_X17_Y6_N48
\U2|U3|SIGCNT[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(9) = ( \U2|U3|SIGCNT[9]~35_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(9)))) ) ) # ( !\U2|U3|SIGCNT[9]~35_combout\ & ( (!\U2|process_0~0_combout\ & (\U2|U3|SIGCNT\(9) & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(9),
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[9]~35_combout\,
	combout => \U2|U3|SIGCNT\(9));

-- Location: LABCELL_X17_Y5_N30
\U2|U3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~37_sumout\ = SUM(( \U2|U3|SIGCNT\(10) ) + ( VCC ) + ( \U2|U3|Add0~114\ ))
-- \U2|U3|Add0~38\ = CARRY(( \U2|U3|SIGCNT\(10) ) + ( VCC ) + ( \U2|U3|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(10),
	cin => \U2|U3|Add0~114\,
	sumout => \U2|U3|Add0~37_sumout\,
	cout => \U2|U3|Add0~38\);

-- Location: MLABCELL_X18_Y4_N39
\U2|U3|SIGCNT[10]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[10]~16_combout\ = ( \U2|U3|SIGCNT[8]~5_combout\ & ( \U2|U3|Add0~37_sumout\ & ( (!\U2|U3|LessThan0~0_combout\ & (!\U2|U3|SIGCNT\(31) & !\U2|U2|LO_CLK~q\)) ) ) ) # ( !\U2|U3|SIGCNT[8]~5_combout\ & ( \U2|U3|Add0~37_sumout\ & ( 
-- (!\U2|U3|SIGCNT\(31) & !\U2|U2|LO_CLK~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U2|ALT_INV_LO_CLK~q\,
	datae => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	dataf => \U2|U3|ALT_INV_Add0~37_sumout\,
	combout => \U2|U3|SIGCNT[10]~16_combout\);

-- Location: MLABCELL_X18_Y4_N0
\U2|U3|SIGCNT[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(10) = ( \U2|U3|SIGCNT[8]~7_combout\ & ( (\U2|U3|SIGCNT[10]~16_combout\ & !\U2|process_0~0_combout\) ) ) # ( !\U2|U3|SIGCNT[8]~7_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U3|SIGCNT\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[10]~16_combout\,
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(10),
	dataf => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	combout => \U2|U3|SIGCNT\(10));

-- Location: LABCELL_X17_Y5_N33
\U2|U3|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~85_sumout\ = SUM(( \U2|U3|SIGCNT\(11) ) + ( VCC ) + ( \U2|U3|Add0~38\ ))
-- \U2|U3|Add0~86\ = CARRY(( \U2|U3|SIGCNT\(11) ) + ( VCC ) + ( \U2|U3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(11),
	cin => \U2|U3|Add0~38\,
	sumout => \U2|U3|Add0~85_sumout\,
	cout => \U2|U3|Add0~86\);

-- Location: LABCELL_X16_Y5_N33
\U2|U3|SIGCNT[11]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[11]~28_combout\ = ( \U2|U3|Add0~85_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_Add0~85_sumout\,
	combout => \U2|U3|SIGCNT[11]~28_combout\);

-- Location: LABCELL_X16_Y5_N54
\U2|U3|SIGCNT[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(11) = ( \U2|U3|SIGCNT\(11) & ( \U2|U3|SIGCNT[11]~28_combout\ & ( !\U2|process_0~0_combout\ ) ) ) # ( !\U2|U3|SIGCNT\(11) & ( \U2|U3|SIGCNT[11]~28_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U3|SIGCNT[8]~7_combout\) ) ) ) # ( 
-- \U2|U3|SIGCNT\(11) & ( !\U2|U3|SIGCNT[11]~28_combout\ & ( (!\U2|process_0~0_combout\ & !\U2|U3|SIGCNT[8]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000001010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT\(11),
	dataf => \U2|U3|ALT_INV_SIGCNT[11]~28_combout\,
	combout => \U2|U3|SIGCNT\(11));

-- Location: LABCELL_X17_Y5_N36
\U2|U3|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~89_sumout\ = SUM(( \U2|U3|SIGCNT\(12) ) + ( VCC ) + ( \U2|U3|Add0~86\ ))
-- \U2|U3|Add0~90\ = CARRY(( \U2|U3|SIGCNT\(12) ) + ( VCC ) + ( \U2|U3|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(12),
	cin => \U2|U3|Add0~86\,
	sumout => \U2|U3|Add0~89_sumout\,
	cout => \U2|U3|Add0~90\);

-- Location: LABCELL_X17_Y5_N39
\U2|U3|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~93_sumout\ = SUM(( \U2|U3|SIGCNT\(13) ) + ( VCC ) + ( \U2|U3|Add0~90\ ))
-- \U2|U3|Add0~94\ = CARRY(( \U2|U3|SIGCNT\(13) ) + ( VCC ) + ( \U2|U3|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(13),
	cin => \U2|U3|Add0~90\,
	sumout => \U2|U3|Add0~93_sumout\,
	cout => \U2|U3|Add0~94\);

-- Location: LABCELL_X16_Y5_N0
\U2|U3|SIGCNT[13]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[13]~30_combout\ = ( \U2|U3|Add0~93_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|LessThan0~0_combout\) # (!\U2|U3|SIGCNT[8]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	dataf => \U2|U3|ALT_INV_Add0~93_sumout\,
	combout => \U2|U3|SIGCNT[13]~30_combout\);

-- Location: LABCELL_X16_Y5_N51
\U2|U3|SIGCNT[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(13) = ( \U2|U3|SIGCNT[8]~7_combout\ & ( \U2|U3|SIGCNT\(13) & ( (!\U2|process_0~0_combout\ & \U2|U3|SIGCNT[13]~30_combout\) ) ) ) # ( !\U2|U3|SIGCNT[8]~7_combout\ & ( \U2|U3|SIGCNT\(13) & ( !\U2|process_0~0_combout\ ) ) ) # ( 
-- \U2|U3|SIGCNT[8]~7_combout\ & ( !\U2|U3|SIGCNT\(13) & ( (!\U2|process_0~0_combout\ & \U2|U3|SIGCNT[13]~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001010101010101010100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datab => \U2|U3|ALT_INV_SIGCNT[13]~30_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT\(13),
	combout => \U2|U3|SIGCNT\(13));

-- Location: LABCELL_X17_Y5_N42
\U2|U3|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~97_sumout\ = SUM(( \U2|U3|SIGCNT\(14) ) + ( VCC ) + ( \U2|U3|Add0~94\ ))
-- \U2|U3|Add0~98\ = CARRY(( \U2|U3|SIGCNT\(14) ) + ( VCC ) + ( \U2|U3|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U3|ALT_INV_SIGCNT\(14),
	cin => \U2|U3|Add0~94\,
	sumout => \U2|U3|Add0~97_sumout\,
	cout => \U2|U3|Add0~98\);

-- Location: LABCELL_X17_Y6_N6
\U2|U3|SIGCNT[14]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[14]~31_combout\ = ( \U2|U3|Add0~97_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(31),
	dataf => \U2|U3|ALT_INV_Add0~97_sumout\,
	combout => \U2|U3|SIGCNT[14]~31_combout\);

-- Location: LABCELL_X17_Y6_N0
\U2|U3|SIGCNT[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(14) = ( \U2|U3|SIGCNT[14]~31_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(14)))) ) ) # ( !\U2|U3|SIGCNT[14]~31_combout\ & ( (!\U2|process_0~0_combout\ & (\U2|U3|SIGCNT\(14) & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(14),
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[14]~31_combout\,
	combout => \U2|U3|SIGCNT\(14));

-- Location: LABCELL_X17_Y5_N45
\U2|U3|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~101_sumout\ = SUM(( \U2|U3|SIGCNT\(15) ) + ( VCC ) + ( \U2|U3|Add0~98\ ))
-- \U2|U3|Add0~102\ = CARRY(( \U2|U3|SIGCNT\(15) ) + ( VCC ) + ( \U2|U3|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(15),
	cin => \U2|U3|Add0~98\,
	sumout => \U2|U3|Add0~101_sumout\,
	cout => \U2|U3|Add0~102\);

-- Location: LABCELL_X17_Y6_N21
\U2|U3|SIGCNT[15]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[15]~32_combout\ = ( \U2|U3|Add0~101_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_Add0~101_sumout\,
	combout => \U2|U3|SIGCNT[15]~32_combout\);

-- Location: LABCELL_X17_Y6_N54
\U2|U3|SIGCNT[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(15) = ( \U2|U3|SIGCNT[15]~32_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(15)))) ) ) # ( !\U2|U3|SIGCNT[15]~32_combout\ & ( (!\U2|process_0~0_combout\ & (\U2|U3|SIGCNT\(15) & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(15),
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[15]~32_combout\,
	combout => \U2|U3|SIGCNT\(15));

-- Location: LABCELL_X17_Y5_N48
\U2|U3|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~105_sumout\ = SUM(( \U2|U3|SIGCNT\(16) ) + ( VCC ) + ( \U2|U3|Add0~102\ ))
-- \U2|U3|Add0~106\ = CARRY(( \U2|U3|SIGCNT\(16) ) + ( VCC ) + ( \U2|U3|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT\(16),
	cin => \U2|U3|Add0~102\,
	sumout => \U2|U3|Add0~105_sumout\,
	cout => \U2|U3|Add0~106\);

-- Location: LABCELL_X16_Y5_N9
\U2|U3|SIGCNT[16]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[16]~33_combout\ = ( \U2|U3|Add0~105_sumout\ & ( (!\U2|U3|SIGCNT\(31) & (!\U2|U2|LO_CLK~q\ & ((!\U2|U3|LessThan0~0_combout\) # (!\U2|U3|SIGCNT[8]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000000000000000000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(31),
	datab => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datad => \U2|U2|ALT_INV_LO_CLK~q\,
	datae => \U2|U3|ALT_INV_Add0~105_sumout\,
	combout => \U2|U3|SIGCNT[16]~33_combout\);

-- Location: LABCELL_X17_Y6_N51
\U2|U3|SIGCNT[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(16) = ( \U2|U3|SIGCNT\(16) & ( (!\U2|process_0~0_combout\ & ((!\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT[16]~33_combout\))) ) ) # ( !\U2|U3|SIGCNT\(16) & ( (\U2|U3|SIGCNT[16]~33_combout\ & (!\U2|process_0~0_combout\ & 
-- \U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[16]~33_combout\,
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT\(16),
	combout => \U2|U3|SIGCNT\(16));

-- Location: LABCELL_X17_Y5_N51
\U2|U3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~61_sumout\ = SUM(( \U2|U3|SIGCNT\(17) ) + ( VCC ) + ( \U2|U3|Add0~106\ ))
-- \U2|U3|Add0~62\ = CARRY(( \U2|U3|SIGCNT\(17) ) + ( VCC ) + ( \U2|U3|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(17),
	cin => \U2|U3|Add0~106\,
	sumout => \U2|U3|Add0~61_sumout\,
	cout => \U2|U3|Add0~62\);

-- Location: LABCELL_X16_Y5_N3
\U2|U3|SIGCNT[17]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[17]~22_combout\ = ( \U2|U3|Add0~61_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_Add0~61_sumout\,
	combout => \U2|U3|SIGCNT[17]~22_combout\);

-- Location: LABCELL_X16_Y5_N12
\U2|U3|SIGCNT[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(17) = ( \U2|U3|SIGCNT[8]~7_combout\ & ( \U2|U3|SIGCNT[17]~22_combout\ & ( !\U2|process_0~0_combout\ ) ) ) # ( !\U2|U3|SIGCNT[8]~7_combout\ & ( \U2|U3|SIGCNT[17]~22_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U3|SIGCNT\(17)) ) ) ) # ( 
-- !\U2|U3|SIGCNT[8]~7_combout\ & ( !\U2|U3|SIGCNT[17]~22_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U3|SIGCNT\(17)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000000000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(17),
	datae => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[17]~22_combout\,
	combout => \U2|U3|SIGCNT\(17));

-- Location: LABCELL_X17_Y5_N54
\U2|U3|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~65_sumout\ = SUM(( \U2|U3|SIGCNT\(18) ) + ( VCC ) + ( \U2|U3|Add0~62\ ))
-- \U2|U3|Add0~66\ = CARRY(( \U2|U3|SIGCNT\(18) ) + ( VCC ) + ( \U2|U3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(18),
	cin => \U2|U3|Add0~62\,
	sumout => \U2|U3|Add0~65_sumout\,
	cout => \U2|U3|Add0~66\);

-- Location: MLABCELL_X18_Y6_N24
\U2|U3|SIGCNT[18]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[18]~23_combout\ = ( \U2|U3|Add0~65_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_Add0~65_sumout\,
	combout => \U2|U3|SIGCNT[18]~23_combout\);

-- Location: MLABCELL_X18_Y6_N51
\U2|U3|SIGCNT[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(18) = ( \U2|U3|SIGCNT[18]~23_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(18)))) ) ) # ( !\U2|U3|SIGCNT[18]~23_combout\ & ( (\U2|U3|SIGCNT\(18) & (!\U2|process_0~0_combout\ & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(18),
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[18]~23_combout\,
	combout => \U2|U3|SIGCNT\(18));

-- Location: LABCELL_X17_Y5_N57
\U2|U3|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~69_sumout\ = SUM(( \U2|U3|SIGCNT\(19) ) + ( VCC ) + ( \U2|U3|Add0~66\ ))
-- \U2|U3|Add0~70\ = CARRY(( \U2|U3|SIGCNT\(19) ) + ( VCC ) + ( \U2|U3|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U3|ALT_INV_SIGCNT\(19),
	cin => \U2|U3|Add0~66\,
	sumout => \U2|U3|Add0~69_sumout\,
	cout => \U2|U3|Add0~70\);

-- Location: MLABCELL_X18_Y6_N0
\U2|U3|SIGCNT[19]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[19]~24_combout\ = ( !\U2|U3|SIGCNT\(31) & ( \U2|U3|Add0~69_sumout\ & ( (!\U2|U2|LO_CLK~q\ & ((!\U2|U3|LessThan0~0_combout\) # (!\U2|U3|SIGCNT[8]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001000110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT\(31),
	dataf => \U2|U3|ALT_INV_Add0~69_sumout\,
	combout => \U2|U3|SIGCNT[19]~24_combout\);

-- Location: MLABCELL_X18_Y6_N48
\U2|U3|SIGCNT[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(19) = ( \U2|U3|SIGCNT[19]~24_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(19)))) ) ) # ( !\U2|U3|SIGCNT[19]~24_combout\ & ( (!\U2|process_0~0_combout\ & (\U2|U3|SIGCNT\(19) & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(19),
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[19]~24_combout\,
	combout => \U2|U3|SIGCNT\(19));

-- Location: LABCELL_X17_Y4_N0
\U2|U3|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~73_sumout\ = SUM(( \U2|U3|SIGCNT\(20) ) + ( VCC ) + ( \U2|U3|Add0~70\ ))
-- \U2|U3|Add0~74\ = CARRY(( \U2|U3|SIGCNT\(20) ) + ( VCC ) + ( \U2|U3|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(20),
	cin => \U2|U3|Add0~70\,
	sumout => \U2|U3|Add0~73_sumout\,
	cout => \U2|U3|Add0~74\);

-- Location: LABCELL_X17_Y6_N9
\U2|U3|SIGCNT[20]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[20]~25_combout\ = ( \U2|U3|Add0~73_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_Add0~73_sumout\,
	combout => \U2|U3|SIGCNT[20]~25_combout\);

-- Location: LABCELL_X17_Y6_N57
\U2|U3|SIGCNT[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(20) = ( \U2|U3|SIGCNT[20]~25_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT\(20)) # (\U2|U3|SIGCNT[8]~7_combout\))) ) ) # ( !\U2|U3|SIGCNT[20]~25_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U3|SIGCNT[8]~7_combout\ & 
-- \U2|U3|SIGCNT\(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(20),
	dataf => \U2|U3|ALT_INV_SIGCNT[20]~25_combout\,
	combout => \U2|U3|SIGCNT\(20));

-- Location: LABCELL_X17_Y4_N3
\U2|U3|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~77_sumout\ = SUM(( \U2|U3|SIGCNT\(21) ) + ( VCC ) + ( \U2|U3|Add0~74\ ))
-- \U2|U3|Add0~78\ = CARRY(( \U2|U3|SIGCNT\(21) ) + ( VCC ) + ( \U2|U3|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(21),
	cin => \U2|U3|Add0~74\,
	sumout => \U2|U3|Add0~77_sumout\,
	cout => \U2|U3|Add0~78\);

-- Location: MLABCELL_X18_Y6_N39
\U2|U3|SIGCNT[21]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[21]~26_combout\ = ( !\U2|U3|SIGCNT\(31) & ( \U2|U3|Add0~77_sumout\ & ( (!\U2|U2|LO_CLK~q\ & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001000110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT\(31),
	dataf => \U2|U3|ALT_INV_Add0~77_sumout\,
	combout => \U2|U3|SIGCNT[21]~26_combout\);

-- Location: MLABCELL_X18_Y6_N42
\U2|U3|SIGCNT[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(21) = ( \U2|U3|SIGCNT[21]~26_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(21)))) ) ) # ( !\U2|U3|SIGCNT[21]~26_combout\ & ( (\U2|U3|SIGCNT\(21) & (!\U2|process_0~0_combout\ & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT\(21),
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[21]~26_combout\,
	combout => \U2|U3|SIGCNT\(21));

-- Location: LABCELL_X17_Y4_N6
\U2|U3|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~81_sumout\ = SUM(( \U2|U3|SIGCNT\(22) ) + ( VCC ) + ( \U2|U3|Add0~78\ ))
-- \U2|U3|Add0~82\ = CARRY(( \U2|U3|SIGCNT\(22) ) + ( VCC ) + ( \U2|U3|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(22),
	cin => \U2|U3|Add0~78\,
	sumout => \U2|U3|Add0~81_sumout\,
	cout => \U2|U3|Add0~82\);

-- Location: MLABCELL_X18_Y6_N57
\U2|U3|SIGCNT[22]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[22]~27_combout\ = ( \U2|U3|Add0~81_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(31),
	dataf => \U2|U3|ALT_INV_Add0~81_sumout\,
	combout => \U2|U3|SIGCNT[22]~27_combout\);

-- Location: MLABCELL_X18_Y6_N45
\U2|U3|SIGCNT[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(22) = ( \U2|U3|SIGCNT[22]~27_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT\(22)) # (\U2|U3|SIGCNT[8]~7_combout\))) ) ) # ( !\U2|U3|SIGCNT[22]~27_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U3|SIGCNT[8]~7_combout\ & 
-- \U2|U3|SIGCNT\(22))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(22),
	dataf => \U2|U3|ALT_INV_SIGCNT[22]~27_combout\,
	combout => \U2|U3|SIGCNT\(22));

-- Location: LABCELL_X17_Y4_N9
\U2|U3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~41_sumout\ = SUM(( \U2|U3|SIGCNT\(23) ) + ( VCC ) + ( \U2|U3|Add0~82\ ))
-- \U2|U3|Add0~42\ = CARRY(( \U2|U3|SIGCNT\(23) ) + ( VCC ) + ( \U2|U3|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(23),
	cin => \U2|U3|Add0~82\,
	sumout => \U2|U3|Add0~41_sumout\,
	cout => \U2|U3|Add0~42\);

-- Location: MLABCELL_X18_Y4_N12
\U2|U3|SIGCNT[23]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[23]~17_combout\ = ( \U2|U3|Add0~41_sumout\ & ( (!\U2|U3|SIGCNT\(31) & (!\U2|U2|LO_CLK~q\ & ((!\U2|U3|LessThan0~0_combout\) # (!\U2|U3|SIGCNT[8]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U2|ALT_INV_LO_CLK~q\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	dataf => \U2|U3|ALT_INV_Add0~41_sumout\,
	combout => \U2|U3|SIGCNT[23]~17_combout\);

-- Location: MLABCELL_X18_Y4_N21
\U2|U3|SIGCNT[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(23) = ( \U2|U3|SIGCNT[8]~7_combout\ & ( (\U2|U3|SIGCNT[23]~17_combout\ & !\U2|process_0~0_combout\) ) ) # ( !\U2|U3|SIGCNT[8]~7_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U3|SIGCNT\(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[23]~17_combout\,
	datab => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(23),
	dataf => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	combout => \U2|U3|SIGCNT\(23));

-- Location: LABCELL_X17_Y4_N12
\U2|U3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~45_sumout\ = SUM(( \U2|U3|SIGCNT\(24) ) + ( VCC ) + ( \U2|U3|Add0~42\ ))
-- \U2|U3|Add0~46\ = CARRY(( \U2|U3|SIGCNT\(24) ) + ( VCC ) + ( \U2|U3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(24),
	cin => \U2|U3|Add0~42\,
	sumout => \U2|U3|Add0~45_sumout\,
	cout => \U2|U3|Add0~46\);

-- Location: MLABCELL_X18_Y4_N57
\U2|U3|SIGCNT[24]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[24]~18_combout\ = ( \U2|U3|Add0~45_sumout\ & ( \U2|U3|LessThan0~0_combout\ & ( (!\U2|U3|SIGCNT[8]~5_combout\ & (!\U2|U3|SIGCNT\(31) & !\U2|U2|LO_CLK~q\)) ) ) ) # ( \U2|U3|Add0~45_sumout\ & ( !\U2|U3|LessThan0~0_combout\ & ( 
-- (!\U2|U3|SIGCNT\(31) & !\U2|U2|LO_CLK~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U2|ALT_INV_LO_CLK~q\,
	datae => \U2|U3|ALT_INV_Add0~45_sumout\,
	dataf => \U2|U3|ALT_INV_LessThan0~0_combout\,
	combout => \U2|U3|SIGCNT[24]~18_combout\);

-- Location: MLABCELL_X18_Y4_N6
\U2|U3|SIGCNT[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(24) = ( \U2|U3|SIGCNT[24]~18_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT\(24)) # (\U2|U3|SIGCNT[8]~7_combout\))) ) ) # ( !\U2|U3|SIGCNT[24]~18_combout\ & ( (!\U2|process_0~0_combout\ & (!\U2|U3|SIGCNT[8]~7_combout\ & 
-- \U2|U3|SIGCNT\(24))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(24),
	dataf => \U2|U3|ALT_INV_SIGCNT[24]~18_combout\,
	combout => \U2|U3|SIGCNT\(24));

-- Location: LABCELL_X17_Y4_N15
\U2|U3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~49_sumout\ = SUM(( \U2|U3|SIGCNT\(25) ) + ( VCC ) + ( \U2|U3|Add0~46\ ))
-- \U2|U3|Add0~50\ = CARRY(( \U2|U3|SIGCNT\(25) ) + ( VCC ) + ( \U2|U3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(25),
	cin => \U2|U3|Add0~46\,
	sumout => \U2|U3|Add0~49_sumout\,
	cout => \U2|U3|Add0~50\);

-- Location: LABCELL_X16_Y4_N27
\U2|U3|SIGCNT[25]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[25]~19_combout\ = ( \U2|U3|Add0~49_sumout\ & ( \U2|U3|SIGCNT[8]~5_combout\ & ( (!\U2|U3|LessThan0~0_combout\ & (!\U2|U2|LO_CLK~q\ & !\U2|U3|SIGCNT\(31))) ) ) ) # ( \U2|U3|Add0~49_sumout\ & ( !\U2|U3|SIGCNT[8]~5_combout\ & ( 
-- (!\U2|U2|LO_CLK~q\ & !\U2|U3|SIGCNT\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datae => \U2|U3|ALT_INV_Add0~49_sumout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	combout => \U2|U3|SIGCNT[25]~19_combout\);

-- Location: LABCELL_X17_Y4_N57
\U2|U3|SIGCNT[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(25) = ( \U2|U3|SIGCNT[25]~19_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT\(25)) # (\U2|U3|SIGCNT[8]~7_combout\))) ) ) # ( !\U2|U3|SIGCNT[25]~19_combout\ & ( (!\U2|U3|SIGCNT[8]~7_combout\ & (!\U2|process_0~0_combout\ & 
-- \U2|U3|SIGCNT\(25))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datab => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(25),
	dataf => \U2|U3|ALT_INV_SIGCNT[25]~19_combout\,
	combout => \U2|U3|SIGCNT\(25));

-- Location: LABCELL_X17_Y4_N18
\U2|U3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~53_sumout\ = SUM(( \U2|U3|SIGCNT\(26) ) + ( VCC ) + ( \U2|U3|Add0~50\ ))
-- \U2|U3|Add0~54\ = CARRY(( \U2|U3|SIGCNT\(26) ) + ( VCC ) + ( \U2|U3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT\(26),
	cin => \U2|U3|Add0~50\,
	sumout => \U2|U3|Add0~53_sumout\,
	cout => \U2|U3|Add0~54\);

-- Location: LABCELL_X16_Y4_N57
\U2|U3|SIGCNT[26]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[26]~20_combout\ = ( \U2|U3|SIGCNT[8]~5_combout\ & ( \U2|U3|Add0~53_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & !\U2|U3|LessThan0~0_combout\)) ) ) ) # ( !\U2|U3|SIGCNT[8]~5_combout\ & ( \U2|U3|Add0~53_sumout\ & ( 
-- (!\U2|U2|LO_CLK~q\ & !\U2|U3|SIGCNT\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	dataf => \U2|U3|ALT_INV_Add0~53_sumout\,
	combout => \U2|U3|SIGCNT[26]~20_combout\);

-- Location: LABCELL_X16_Y4_N3
\U2|U3|SIGCNT[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(26) = ( \U2|U3|SIGCNT\(26) & ( \U2|U3|SIGCNT[26]~20_combout\ & ( !\U2|process_0~0_combout\ ) ) ) # ( !\U2|U3|SIGCNT\(26) & ( \U2|U3|SIGCNT[26]~20_combout\ & ( (!\U2|process_0~0_combout\ & \U2|U3|SIGCNT[8]~7_combout\) ) ) ) # ( 
-- \U2|U3|SIGCNT\(26) & ( !\U2|U3|SIGCNT[26]~20_combout\ & ( (!\U2|process_0~0_combout\ & !\U2|U3|SIGCNT[8]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT\(26),
	dataf => \U2|U3|ALT_INV_SIGCNT[26]~20_combout\,
	combout => \U2|U3|SIGCNT\(26));

-- Location: LABCELL_X17_Y4_N21
\U2|U3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~57_sumout\ = SUM(( \U2|U3|SIGCNT\(27) ) + ( VCC ) + ( \U2|U3|Add0~54\ ))
-- \U2|U3|Add0~58\ = CARRY(( \U2|U3|SIGCNT\(27) ) + ( VCC ) + ( \U2|U3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U3|ALT_INV_SIGCNT\(27),
	cin => \U2|U3|Add0~54\,
	sumout => \U2|U3|Add0~57_sumout\,
	cout => \U2|U3|Add0~58\);

-- Location: LABCELL_X17_Y6_N18
\U2|U3|SIGCNT[27]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[27]~21_combout\ = ( \U2|U3|Add0~57_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_Add0~57_sumout\,
	combout => \U2|U3|SIGCNT[27]~21_combout\);

-- Location: LABCELL_X17_Y6_N27
\U2|U3|SIGCNT[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(27) = ( \U2|U3|SIGCNT[27]~21_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(27)))) ) ) # ( !\U2|U3|SIGCNT[27]~21_combout\ & ( (\U2|U3|SIGCNT\(27) & (!\U2|process_0~0_combout\ & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(27),
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[27]~21_combout\,
	combout => \U2|U3|SIGCNT\(27));

-- Location: LABCELL_X17_Y4_N24
\U2|U3|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~117_sumout\ = SUM(( \U2|U3|SIGCNT\(28) ) + ( VCC ) + ( \U2|U3|Add0~58\ ))
-- \U2|U3|Add0~118\ = CARRY(( \U2|U3|SIGCNT\(28) ) + ( VCC ) + ( \U2|U3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|U3|ALT_INV_SIGCNT\(28),
	cin => \U2|U3|Add0~58\,
	sumout => \U2|U3|Add0~117_sumout\,
	cout => \U2|U3|Add0~118\);

-- Location: LABCELL_X16_Y5_N30
\U2|U3|SIGCNT[28]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[28]~36_combout\ = ( \U2|U3|Add0~117_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|LessThan0~0_combout\) # (!\U2|U3|SIGCNT[8]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	dataf => \U2|U3|ALT_INV_Add0~117_sumout\,
	combout => \U2|U3|SIGCNT[28]~36_combout\);

-- Location: LABCELL_X16_Y5_N42
\U2|U3|SIGCNT[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(28) = ( \U2|U3|SIGCNT[28]~36_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(28)))) ) ) # ( !\U2|U3|SIGCNT[28]~36_combout\ & ( (!\U2|process_0~0_combout\ & (\U2|U3|SIGCNT\(28) & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datab => \U2|U3|ALT_INV_SIGCNT\(28),
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[28]~36_combout\,
	combout => \U2|U3|SIGCNT\(28));

-- Location: LABCELL_X17_Y4_N27
\U2|U3|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~121_sumout\ = SUM(( \U2|U3|SIGCNT\(29) ) + ( VCC ) + ( \U2|U3|Add0~118\ ))
-- \U2|U3|Add0~122\ = CARRY(( \U2|U3|SIGCNT\(29) ) + ( VCC ) + ( \U2|U3|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(29),
	cin => \U2|U3|Add0~118\,
	sumout => \U2|U3|Add0~121_sumout\,
	cout => \U2|U3|Add0~122\);

-- Location: LABCELL_X16_Y5_N21
\U2|U3|SIGCNT[29]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[29]~37_combout\ = ( \U2|U3|LessThan0~0_combout\ & ( \U2|U3|Add0~121_sumout\ & ( (!\U2|U3|SIGCNT\(31) & (!\U2|U2|LO_CLK~q\ & !\U2|U3|SIGCNT[8]~5_combout\)) ) ) ) # ( !\U2|U3|LessThan0~0_combout\ & ( \U2|U3|Add0~121_sumout\ & ( 
-- (!\U2|U3|SIGCNT\(31) & !\U2|U2|LO_CLK~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(31),
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datae => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_Add0~121_sumout\,
	combout => \U2|U3|SIGCNT[29]~37_combout\);

-- Location: LABCELL_X16_Y5_N24
\U2|U3|SIGCNT[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(29) = ( \U2|U3|SIGCNT[29]~37_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(29)))) ) ) # ( !\U2|U3|SIGCNT[29]~37_combout\ & ( (!\U2|process_0~0_combout\ & (\U2|U3|SIGCNT\(29) & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(29),
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[29]~37_combout\,
	combout => \U2|U3|SIGCNT\(29));

-- Location: LABCELL_X17_Y4_N30
\U2|U3|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~125_sumout\ = SUM(( \U2|U3|SIGCNT\(30) ) + ( VCC ) + ( \U2|U3|Add0~122\ ))
-- \U2|U3|Add0~126\ = CARRY(( \U2|U3|SIGCNT\(30) ) + ( VCC ) + ( \U2|U3|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(30),
	cin => \U2|U3|Add0~122\,
	sumout => \U2|U3|Add0~125_sumout\,
	cout => \U2|U3|Add0~126\);

-- Location: MLABCELL_X18_Y4_N24
\U2|U3|SIGCNT[30]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[30]~38_combout\ = ( \U2|U3|Add0~125_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|LessThan0~0_combout\) # (!\U2|U3|SIGCNT[8]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	dataf => \U2|U3|ALT_INV_Add0~125_sumout\,
	combout => \U2|U3|SIGCNT[30]~38_combout\);

-- Location: MLABCELL_X18_Y4_N48
\U2|U3|SIGCNT[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(30) = ( \U2|U3|SIGCNT\(30) & ( (!\U2|process_0~0_combout\ & ((!\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT[30]~38_combout\))) ) ) # ( !\U2|U3|SIGCNT\(30) & ( (\U2|U3|SIGCNT[30]~38_combout\ & (\U2|U3|SIGCNT[8]~7_combout\ & 
-- !\U2|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[30]~38_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datad => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT\(30),
	combout => \U2|U3|SIGCNT\(30));

-- Location: LABCELL_X16_Y5_N45
\U2|U3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|LessThan0~0_combout\ = ( !\U2|U3|SIGCNT\(29) & ( (!\U2|U3|SIGCNT\(28) & !\U2|U3|SIGCNT\(30)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT\(28),
	datad => \U2|U3|ALT_INV_SIGCNT\(30),
	dataf => \U2|U3|ALT_INV_SIGCNT\(29),
	combout => \U2|U3|LessThan0~0_combout\);

-- Location: LABCELL_X17_Y4_N33
\U2|U3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Add0~33_sumout\ = SUM(( \U2|U3|SIGCNT\(31) ) + ( VCC ) + ( \U2|U3|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|U3|ALT_INV_SIGCNT\(31),
	cin => \U2|U3|Add0~126\,
	sumout => \U2|U3|Add0~33_sumout\);

-- Location: LABCELL_X17_Y4_N48
\U2|U3|SIGCNT[31]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[31]~15_combout\ = ( \U2|U3|Add0~33_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_LessThan0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(31),
	dataf => \U2|U3|ALT_INV_Add0~33_sumout\,
	combout => \U2|U3|SIGCNT[31]~15_combout\);

-- Location: LABCELL_X17_Y4_N36
\U2|U3|SIGCNT[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(31) = ( !\U2|process_0~0_combout\ & ( (!\U2|U3|SIGCNT[8]~7_combout\ & ((\U2|U3|SIGCNT\(31)))) # (\U2|U3|SIGCNT[8]~7_combout\ & (\U2|U3|SIGCNT[31]~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT[31]~15_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT\(31),
	dataf => \U2|ALT_INV_process_0~0_combout\,
	combout => \U2|U3|SIGCNT\(31));

-- Location: MLABCELL_X18_Y4_N33
\U2|U3|SIGCNT[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[8]~7_combout\ = (!\U2|U3|SIGCNT\(31) & !\U2|U2|LO_CLK~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U2|ALT_INV_LO_CLK~q\,
	combout => \U2|U3|SIGCNT[8]~7_combout\);

-- Location: MLABCELL_X18_Y6_N27
\U2|U3|SIGCNT[12]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[12]~29_combout\ = ( \U2|U3|Add0~89_sumout\ & ( (!\U2|U2|LO_CLK~q\ & (!\U2|U3|SIGCNT\(31) & ((!\U2|U3|SIGCNT[8]~5_combout\) # (!\U2|U3|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datab => \U2|U2|ALT_INV_LO_CLK~q\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datad => \U2|U3|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|U3|ALT_INV_Add0~89_sumout\,
	combout => \U2|U3|SIGCNT[12]~29_combout\);

-- Location: MLABCELL_X18_Y6_N30
\U2|U3|SIGCNT[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(12) = ( \U2|U3|SIGCNT[12]~29_combout\ & ( (!\U2|process_0~0_combout\ & ((\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT\(12)))) ) ) # ( !\U2|U3|SIGCNT[12]~29_combout\ & ( (\U2|U3|SIGCNT\(12) & (!\U2|process_0~0_combout\ & 
-- !\U2|U3|SIGCNT[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|U3|ALT_INV_SIGCNT\(12),
	datac => \U2|ALT_INV_process_0~0_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[12]~29_combout\,
	combout => \U2|U3|SIGCNT\(12));

-- Location: LABCELL_X17_Y6_N36
\U2|U3|SIGCNT[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[8]~2_combout\ = ( !\U2|U3|SIGCNT\(14) & ( !\U2|U3|SIGCNT\(16) & ( (!\U2|U3|SIGCNT\(12) & (!\U2|U3|SIGCNT\(13) & (!\U2|U3|SIGCNT\(15) & !\U2|U3|SIGCNT\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(12),
	datab => \U2|U3|ALT_INV_SIGCNT\(13),
	datac => \U2|U3|ALT_INV_SIGCNT\(15),
	datad => \U2|U3|ALT_INV_SIGCNT\(11),
	datae => \U2|U3|ALT_INV_SIGCNT\(14),
	dataf => \U2|U3|ALT_INV_SIGCNT\(16),
	combout => \U2|U3|SIGCNT[8]~2_combout\);

-- Location: LABCELL_X17_Y6_N12
\U2|U3|SIGCNT[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[8]~1_combout\ = ( !\U2|U3|SIGCNT\(18) & ( !\U2|U3|SIGCNT\(17) & ( (!\U2|U3|SIGCNT\(19) & (!\U2|U3|SIGCNT\(21) & (!\U2|U3|SIGCNT\(22) & !\U2|U3|SIGCNT\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(19),
	datab => \U2|U3|ALT_INV_SIGCNT\(21),
	datac => \U2|U3|ALT_INV_SIGCNT\(22),
	datad => \U2|U3|ALT_INV_SIGCNT\(20),
	datae => \U2|U3|ALT_INV_SIGCNT\(18),
	dataf => \U2|U3|ALT_INV_SIGCNT\(17),
	combout => \U2|U3|SIGCNT[8]~1_combout\);

-- Location: LABCELL_X17_Y6_N42
\U2|U3|SIGCNT[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[8]~3_combout\ = ( !\U2|U3|SIGCNT\(5) & ( (!\U2|U3|SIGCNT\(7) & (!\U2|U3|SIGCNT\(4) & (!\U2|U3|SIGCNT\(9) & !\U2|U3|SIGCNT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(7),
	datab => \U2|U3|ALT_INV_SIGCNT\(4),
	datac => \U2|U3|ALT_INV_SIGCNT\(9),
	datad => \U2|U3|ALT_INV_SIGCNT\(6),
	dataf => \U2|U3|ALT_INV_SIGCNT\(5),
	combout => \U2|U3|SIGCNT[8]~3_combout\);

-- Location: MLABCELL_X18_Y6_N6
\U2|U3|SIGCNT[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[8]~4_combout\ = ( !\U2|U3|SIGCNT\(0) & ( (!\U2|U3|SIGCNT\(8) & (!\U2|U3|SIGCNT\(3) & (!\U2|U3|SIGCNT\(2) & !\U2|U3|SIGCNT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(8),
	datab => \U2|U3|ALT_INV_SIGCNT\(3),
	datac => \U2|U3|ALT_INV_SIGCNT\(2),
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	dataf => \U2|U3|ALT_INV_SIGCNT\(0),
	combout => \U2|U3|SIGCNT[8]~4_combout\);

-- Location: LABCELL_X17_Y6_N24
\U2|U3|SIGCNT[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[8]~0_combout\ = ( !\U2|U3|SIGCNT\(26) & ( (!\U2|U3|SIGCNT\(27) & (!\U2|U3|SIGCNT\(23) & (!\U2|U3|SIGCNT\(24) & !\U2|U3|SIGCNT\(25)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(27),
	datab => \U2|U3|ALT_INV_SIGCNT\(23),
	datac => \U2|U3|ALT_INV_SIGCNT\(24),
	datad => \U2|U3|ALT_INV_SIGCNT\(25),
	dataf => \U2|U3|ALT_INV_SIGCNT\(26),
	combout => \U2|U3|SIGCNT[8]~0_combout\);

-- Location: LABCELL_X17_Y6_N30
\U2|U3|SIGCNT[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[8]~5_combout\ = ( \U2|U3|SIGCNT[8]~4_combout\ & ( \U2|U3|SIGCNT[8]~0_combout\ & ( (\U2|U3|SIGCNT[8]~2_combout\ & (\U2|U3|SIGCNT[8]~1_combout\ & (!\U2|U3|SIGCNT\(10) & \U2|U3|SIGCNT[8]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT[8]~2_combout\,
	datab => \U2|U3|ALT_INV_SIGCNT[8]~1_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(10),
	datad => \U2|U3|ALT_INV_SIGCNT[8]~3_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT[8]~4_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT[8]~0_combout\,
	combout => \U2|U3|SIGCNT[8]~5_combout\);

-- Location: LABCELL_X16_Y5_N36
\U2|U3|SIGCNT[5]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT[5]~34_combout\ = ( \U2|U3|Add0~109_sumout\ & ( \U2|U3|LessThan0~0_combout\ ) ) # ( !\U2|U3|Add0~109_sumout\ & ( \U2|U3|LessThan0~0_combout\ & ( ((\U2|U3|SIGCNT\(31)) # (\U2|U3|SIGCNT[8]~5_combout\)) # (\U2|U2|LO_CLK~q\) ) ) ) # ( 
-- \U2|U3|Add0~109_sumout\ & ( !\U2|U3|LessThan0~0_combout\ ) ) # ( !\U2|U3|Add0~109_sumout\ & ( !\U2|U3|LessThan0~0_combout\ & ( (\U2|U3|SIGCNT\(31)) # (\U2|U2|LO_CLK~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U2|ALT_INV_LO_CLK~q\,
	datab => \U2|U3|ALT_INV_SIGCNT[8]~5_combout\,
	datac => \U2|U3|ALT_INV_SIGCNT\(31),
	datae => \U2|U3|ALT_INV_Add0~109_sumout\,
	dataf => \U2|U3|ALT_INV_LessThan0~0_combout\,
	combout => \U2|U3|SIGCNT[5]~34_combout\);

-- Location: LABCELL_X16_Y5_N27
\U2|U3|SIGCNT[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|SIGCNT\(5) = ( \U2|U3|SIGCNT\(5) & ( ((!\U2|U3|SIGCNT[8]~7_combout\) # (\U2|U3|SIGCNT[5]~34_combout\)) # (\U2|process_0~0_combout\) ) ) # ( !\U2|U3|SIGCNT\(5) & ( ((\U2|U3|SIGCNT[5]~34_combout\ & \U2|U3|SIGCNT[8]~7_combout\)) # 
-- (\U2|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011111111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_process_0~0_combout\,
	datab => \U2|U3|ALT_INV_SIGCNT[5]~34_combout\,
	datad => \U2|U3|ALT_INV_SIGCNT[8]~7_combout\,
	dataf => \U2|U3|ALT_INV_SIGCNT\(5),
	combout => \U2|U3|SIGCNT\(5));

-- Location: LABCELL_X16_Y6_N30
\U2|U3|Mux0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~10_combout\ = ( \U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & (!\U2|U3|SIGCNT\(4) & (!\U2|U3|SIGCNT\(3) $ (!\U2|U3|SIGCNT\(1))))) # (\U2|U3|SIGCNT\(8) & ((!\U2|U3|SIGCNT\(4)) # ((\U2|U3|SIGCNT\(1)) # (\U2|U3|SIGCNT\(3))))) 
-- ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & (\U2|U3|SIGCNT\(4) & (!\U2|U3|SIGCNT\(3) & \U2|U3|SIGCNT\(1)))) # (\U2|U3|SIGCNT\(8) & ((!\U2|U3|SIGCNT\(4)) # ((!\U2|U3|SIGCNT\(3)) # (\U2|U3|SIGCNT\(1))))) ) ) ) # ( 
-- \U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( \U2|U3|SIGCNT\(8) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(4) & ((!\U2|U3|SIGCNT\(1) & (\U2|U3|SIGCNT\(8))) # (\U2|U3|SIGCNT\(1) & ((!\U2|U3|SIGCNT\(3)))))) # (\U2|U3|SIGCNT\(4) 
-- & (\U2|U3|SIGCNT\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111010001010101010101010101010100011101010100110111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(8),
	datab => \U2|U3|ALT_INV_SIGCNT\(4),
	datac => \U2|U3|ALT_INV_SIGCNT\(3),
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	datae => \U2|U3|ALT_INV_SIGCNT\(0),
	dataf => \U2|U3|ALT_INV_SIGCNT\(2),
	combout => \U2|U3|Mux0~10_combout\);

-- Location: LABCELL_X16_Y6_N48
\U2|U3|Mux0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~11_combout\ = ( \U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (\U2|U3|SIGCNT\(8) & (!\U2|U3|SIGCNT\(4) & ((!\U2|U3|SIGCNT\(1)) # (\U2|U3|SIGCNT\(3))))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (\U2|U3|SIGCNT\(8) & 
-- (((!\U2|U3|SIGCNT\(3)) # (!\U2|U3|SIGCNT\(1))) # (\U2|U3|SIGCNT\(4)))) ) ) ) # ( \U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(4) & ((!\U2|U3|SIGCNT\(3) & (\U2|U3|SIGCNT\(8))) # (\U2|U3|SIGCNT\(3) & ((!\U2|U3|SIGCNT\(1)))))) # 
-- (\U2|U3|SIGCNT\(4) & (\U2|U3|SIGCNT\(8))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (\U2|U3|SIGCNT\(8) & ((!\U2|U3|SIGCNT\(1)) # ((!\U2|U3|SIGCNT\(4) & \U2|U3|SIGCNT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000100010111010101000101010101010100010100010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(8),
	datab => \U2|U3|ALT_INV_SIGCNT\(4),
	datac => \U2|U3|ALT_INV_SIGCNT\(3),
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	datae => \U2|U3|ALT_INV_SIGCNT\(0),
	dataf => \U2|U3|ALT_INV_SIGCNT\(2),
	combout => \U2|U3|Mux0~11_combout\);

-- Location: LABCELL_X16_Y6_N24
\U2|U3|Mux0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~13_combout\ = ( \U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (\U2|U3|SIGCNT\(8) & (!\U2|U3|SIGCNT\(4) & (!\U2|U3|SIGCNT\(3) & \U2|U3|SIGCNT\(1)))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (\U2|U3|SIGCNT\(8) & (!\U2|U3|SIGCNT\(4) & 
-- !\U2|U3|SIGCNT\(3))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & (\U2|U3|SIGCNT\(4) & (\U2|U3|SIGCNT\(3) & \U2|U3|SIGCNT\(1)))) # (\U2|U3|SIGCNT\(8) & (!\U2|U3|SIGCNT\(4) & (!\U2|U3|SIGCNT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000010000000000000000001000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(8),
	datab => \U2|U3|ALT_INV_SIGCNT\(4),
	datac => \U2|U3|ALT_INV_SIGCNT\(3),
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	datae => \U2|U3|ALT_INV_SIGCNT\(0),
	dataf => \U2|U3|ALT_INV_SIGCNT\(2),
	combout => \U2|U3|Mux0~13_combout\);

-- Location: LABCELL_X16_Y6_N54
\U2|U3|Mux0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~12_combout\ = ( \U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( ((\U2|U3|SIGCNT\(3) & !\U2|U3|SIGCNT\(1))) # (\U2|U3|SIGCNT\(8)) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( ((!\U2|U3|SIGCNT\(3) & ((!\U2|U3|SIGCNT\(4)) # 
-- (\U2|U3|SIGCNT\(1))))) # (\U2|U3|SIGCNT\(8)) ) ) ) # ( \U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( ((\U2|U3|SIGCNT\(1) & (!\U2|U3|SIGCNT\(4) $ (!\U2|U3|SIGCNT\(3))))) # (\U2|U3|SIGCNT\(8)) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( 
-- (!\U2|U3|SIGCNT\(4) $ (!\U2|U3|SIGCNT\(3) $ (\U2|U3|SIGCNT\(1)))) # (\U2|U3|SIGCNT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110111010111010101010111110111010101111101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(8),
	datab => \U2|U3|ALT_INV_SIGCNT\(4),
	datac => \U2|U3|ALT_INV_SIGCNT\(3),
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	datae => \U2|U3|ALT_INV_SIGCNT\(0),
	dataf => \U2|U3|ALT_INV_SIGCNT\(2),
	combout => \U2|U3|Mux0~12_combout\);

-- Location: LABCELL_X16_Y6_N18
\U2|U3|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~6_combout\ = ( !\U2|U3|SIGCNT\(6) & ( (!\U2|U3|SIGCNT\(5) & (((\U2|U3|Mux0~12_combout\ & ((!\U2|U3|SIGCNT\(7))))))) # (\U2|U3|SIGCNT\(5) & ((((\U2|U3|SIGCNT\(7)))) # (\U2|U3|Mux0~10_combout\))) ) ) # ( \U2|U3|SIGCNT\(6) & ( (!\U2|U3|SIGCNT\(5) 
-- & (((\U2|U3|Mux0~11_combout\ & ((!\U2|U3|SIGCNT\(7))))))) # (\U2|U3|SIGCNT\(5) & ((((\U2|U3|SIGCNT\(7)) # (\U2|U3|Mux0~13_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(5),
	datab => \U2|U3|ALT_INV_Mux0~10_combout\,
	datac => \U2|U3|ALT_INV_Mux0~11_combout\,
	datad => \U2|U3|ALT_INV_Mux0~13_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT\(6),
	dataf => \U2|U3|ALT_INV_SIGCNT\(7),
	datag => \U2|U3|ALT_INV_Mux0~12_combout\,
	combout => \U2|U3|Mux0~6_combout\);

-- Location: LABCELL_X16_Y6_N42
\U2|U3|Mux0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~14_combout\ = ( \U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & ((!\U2|U3|SIGCNT\(4)) # ((!\U2|U3|SIGCNT\(3)) # (!\U2|U3|SIGCNT\(1))))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & 
-- ((!\U2|U3|SIGCNT\(4) & (!\U2|U3|SIGCNT\(3) $ (\U2|U3|SIGCNT\(1)))) # (\U2|U3|SIGCNT\(4) & ((\U2|U3|SIGCNT\(1)) # (\U2|U3|SIGCNT\(3)))))) ) ) ) # ( \U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & ((!\U2|U3|SIGCNT\(3) & 
-- ((!\U2|U3|SIGCNT\(1)) # (\U2|U3|SIGCNT\(4)))) # (\U2|U3|SIGCNT\(3) & ((\U2|U3|SIGCNT\(1)))))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & ((\U2|U3|SIGCNT\(1)) # (\U2|U3|SIGCNT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010101000000010101010000010001010101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(8),
	datab => \U2|U3|ALT_INV_SIGCNT\(4),
	datac => \U2|U3|ALT_INV_SIGCNT\(3),
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	datae => \U2|U3|ALT_INV_SIGCNT\(0),
	dataf => \U2|U3|ALT_INV_SIGCNT\(2),
	combout => \U2|U3|Mux0~14_combout\);

-- Location: LABCELL_X16_Y6_N12
\U2|U3|Mux0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~15_combout\ = ( \U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & (((!\U2|U3|SIGCNT\(1)) # (\U2|U3|SIGCNT\(3))) # (\U2|U3|SIGCNT\(4)))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & 
-- ((!\U2|U3|SIGCNT\(4)) # ((\U2|U3|SIGCNT\(1)) # (\U2|U3|SIGCNT\(3))))) ) ) ) # ( \U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( !\U2|U3|SIGCNT\(8) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( !\U2|U3|SIGCNT\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010001010101010101010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(8),
	datab => \U2|U3|ALT_INV_SIGCNT\(4),
	datac => \U2|U3|ALT_INV_SIGCNT\(3),
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	datae => \U2|U3|ALT_INV_SIGCNT\(0),
	dataf => \U2|U3|ALT_INV_SIGCNT\(2),
	combout => \U2|U3|Mux0~15_combout\);

-- Location: LABCELL_X16_Y6_N6
\U2|U3|Mux0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~16_combout\ = ( \U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & ((!\U2|U3|SIGCNT\(4) & (!\U2|U3|SIGCNT\(3) & \U2|U3|SIGCNT\(1))) # (\U2|U3|SIGCNT\(4) & (\U2|U3|SIGCNT\(3))))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) 
-- & ( (!\U2|U3|SIGCNT\(8) & ((!\U2|U3|SIGCNT\(4) & ((!\U2|U3|SIGCNT\(1)) # (\U2|U3|SIGCNT\(3)))) # (\U2|U3|SIGCNT\(4) & (!\U2|U3|SIGCNT\(3))))) ) ) ) # ( \U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & ((!\U2|U3|SIGCNT\(4) & 
-- ((!\U2|U3|SIGCNT\(1)))) # (\U2|U3|SIGCNT\(4) & (\U2|U3|SIGCNT\(3) & \U2|U3|SIGCNT\(1))))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & \U2|U3|SIGCNT\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010100010000000001010101000001010000000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(8),
	datab => \U2|U3|ALT_INV_SIGCNT\(4),
	datac => \U2|U3|ALT_INV_SIGCNT\(3),
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	datae => \U2|U3|ALT_INV_SIGCNT\(0),
	dataf => \U2|U3|ALT_INV_SIGCNT\(2),
	combout => \U2|U3|Mux0~16_combout\);

-- Location: LABCELL_X16_Y6_N0
\U2|U3|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~5_combout\ = ( \U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & (!\U2|U3|SIGCNT\(4) & (\U2|U3|SIGCNT\(3) & \U2|U3|SIGCNT\(1)))) ) ) ) # ( !\U2|U3|SIGCNT\(0) & ( \U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & ((!\U2|U3|SIGCNT\(3) 
-- & ((!\U2|U3|SIGCNT\(1)))) # (\U2|U3|SIGCNT\(3) & (\U2|U3|SIGCNT\(4) & \U2|U3|SIGCNT\(1))))) ) ) ) # ( \U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & (\U2|U3|SIGCNT\(4) & (\U2|U3|SIGCNT\(3) & \U2|U3|SIGCNT\(1)))) ) ) ) # ( 
-- !\U2|U3|SIGCNT\(0) & ( !\U2|U3|SIGCNT\(2) & ( (!\U2|U3|SIGCNT\(8) & (\U2|U3|SIGCNT\(3) & (!\U2|U3|SIGCNT\(4) $ (!\U2|U3|SIGCNT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000000000000000001010100000000000100000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_SIGCNT\(8),
	datab => \U2|U3|ALT_INV_SIGCNT\(4),
	datac => \U2|U3|ALT_INV_SIGCNT\(3),
	datad => \U2|U3|ALT_INV_SIGCNT\(1),
	datae => \U2|U3|ALT_INV_SIGCNT\(0),
	dataf => \U2|U3|ALT_INV_SIGCNT\(2),
	combout => \U2|U3|Mux0~5_combout\);

-- Location: LABCELL_X16_Y6_N36
\U2|U3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~0_combout\ = ( !\U2|U3|SIGCNT\(6) & ( (!\U2|U3|Mux0~6_combout\ & (\U2|U3|SIGCNT\(7) & (\U2|U3|Mux0~5_combout\))) # (\U2|U3|Mux0~6_combout\ & ((!\U2|U3|SIGCNT\(7)) # (((\U2|U3|Mux0~16_combout\))))) ) ) # ( \U2|U3|SIGCNT\(6) & ( 
-- (!\U2|U3|Mux0~6_combout\ & (\U2|U3|SIGCNT\(7) & (\U2|U3|Mux0~14_combout\))) # (\U2|U3|Mux0~6_combout\ & ((!\U2|U3|SIGCNT\(7)) # (((\U2|U3|Mux0~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|ALT_INV_Mux0~6_combout\,
	datab => \U2|U3|ALT_INV_SIGCNT\(7),
	datac => \U2|U3|ALT_INV_Mux0~14_combout\,
	datad => \U2|U3|ALT_INV_Mux0~15_combout\,
	datae => \U2|U3|ALT_INV_SIGCNT\(6),
	dataf => \U2|U3|ALT_INV_Mux0~16_combout\,
	datag => \U2|U3|ALT_INV_Mux0~5_combout\,
	combout => \U2|U3|Mux0~0_combout\);

-- Location: LABCELL_X17_Y6_N45
\U2|U3|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~4_combout\ = ( \U2|U3|Mux0~0_combout\ & ( !\U2|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_process_0~0_combout\,
	dataf => \U2|U3|ALT_INV_Mux0~0_combout\,
	combout => \U2|U3|Mux0~4_combout\);

-- Location: LABCELL_X48_Y12_N3
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


