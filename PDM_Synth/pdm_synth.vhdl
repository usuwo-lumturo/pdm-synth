library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pdm_synth is
	port(
		CLK     	:	in std_logic;
		RST		:	in std_logic;
		MIDI_IN	:	in std_logic;
		Mod_out	:	out std_logic
	);
end pdm_synth;

architecture pdm_synth of pdm_synth is
	component SWNO port(
		  RST				:	in std_logic;
		  CLK				:	in std_logic;
		  MIDI_IN		:	in std_logic;
		  NOTE_NUM		:	out std_logic_vector(7 downto 0);
		  NOTE_ENABLE	:	out std_logic
	);
	end component;
	 
	component WAVGEN port(
		  CLK				:	in std_logic;
		  RST				:	in std_logic;
		  NOTE_NUM		:	in std_logic_vector(7 downto 0);
		  NOTE_ENABLE	:	in std_logic;
		  Wave			:	out std_logic
	);
	end component;

	signal NOTE_NUM		:	std_logic_vector(7 downto 0);
	signal NOTE_ENABLE	:	std_logic;
		
begin
	U1: SWNO port map(
		RST=>RST,
		CLK=>CLK,
		MIDI_IN=>MIDI_IN,
		NOTE_NUM=>NOTE_NUM,
		NOTE_ENABLE=>NOTE_ENABLE
	);
	U2: WAVGEN port map(
		CLK=>CLK,
		RST=>RST,
		NOTE_NUM=>NOTE_NUM,
		NOTE_ENABLE=>NOTE_ENABLE,
		Wave=>Mod_out
	);
end pdm_synth; --Pdm_synth 