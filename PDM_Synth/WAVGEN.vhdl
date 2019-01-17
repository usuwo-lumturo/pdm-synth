library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity WAVGEN is
    port(
		  CLK				:	in std_logic;
		  RST				:	in std_logic;
		  NOTE_NUM		:	in std_logic_vector(7 downto 0);
		  NOTE_ENABLE	:	in std_logic;
		  Wave			:	out std_logic
	);
end WAVGEN;

architecture WAVGEN of WAVGEN is

	signal TGT_CLK	:	std_logic_vector(25 downto 0);
	signal ENB		:	std_logic;
	signal NOTE_RST:	std_logic;
	
	component DWN_CLK is 
		port(
			CLK		:	in std_logic;
			RESET		:	in std_logic;
			TGT_CLK	:	in std_logic_vector(25 downto 0);
			LO_CLK	:	out std_logic
		);
	end component;
	
	component DCD is
		port(
			NOTE_NUM	:	in std_logic_vector(7 downto 0);
			TGT_CLK	:	out std_logic_vector(25 downto 0)
		);
	end component;
	
	component SH is
		port(
			ENABLE	:	in std_logic;
			RST		:	in std_logic;
			Wave		:	out std_logic
		);
	end component;
	
begin
	process(RST,NOTE_ENABLE) begin
		if(RST='0' or NOTE_ENABLE='0') then
			NOTE_RST <= '0';
		else
			NOTE_RST <= '1';
		end if;
	end process;
	
	U1:DCD port map(
		NOTE_NUM=>NOTE_NUM,
		TGT_CLK=>TGT_CLK
	);
	U2:DWN_CLK port map(
		CLK=>CLK,
		RESET=>NOTE_RST,
		TGT_CLK=>TGT_CLK,
		LO_CLK=>ENB
	);
	U3:SH port map(
		ENABLE=>ENB,
		RST=>NOTE_RST,
		Wave=>Wave
	);
end WAVGEN;