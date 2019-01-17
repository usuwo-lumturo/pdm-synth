library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity SWNO is
		port(
        RST				:	in std_logic;
		  CLK				:	in std_logic;
		  MIDI_IN		:	in std_logic;
        NOTE_NUM		:	out std_logic_vector(7 downto 0);
		  NOTE_ENABLE	:	out std_logic
		);
end SWNO;

architecture SWNO of SWNO is
	component DWN_CLK is 
		port(
			CLK		:	in std_logic;
			RESET		:	in std_logic;
			TGT_CLK	:	in std_logic_vector(25 downto 0);
			LO_CLK	:	out std_logic
		);
	end component;
	
	signal LO_CLK		:	std_logic;
	signal eodec		:	std_logic;
	signal TGT_CLK 	:	std_logic_vector(25 downto 0)
							:="00000001100001101010000000";
	signal dec_cnt		:	integer;
	signal MIDI_DATA	:	std_logic_vector(23 downto 0);
	
begin
	U1:DWN_CLK port map(
			CLK=>CLK,
			RESET=>RST,
			TGT_CLK=>TGT_CLK,
			LO_CLK=>LO_CLK
		);
	
	process(LO_CLK) begin
		if(LO_CLK = '1') then
				if(dec_cnt = 0 or dec_cnt = 1 or dec_cnt = 2) then
					if(MIDI_IN = '1') then
						eodec <= '0';
						dec_cnt <= 0;
						MIDI_DATA <= "000000000000000000000000";
					else
						dec_cnt <= dec_cnt + 1;
					end if;
				elsif(dec_cnt = 6 or dec_cnt = 10 or dec_cnt = 14 or dec_cnt = 18 or dec_cnt = 22 or dec_cnt = 26 or dec_cnt = 30 or dec_cnt = 34) then
					MIDI_DATA <= not(MIDI_IN) & MIDI_DATA(23 downto 1);
				elsif(dec_cnt = 46 or dec_cnt = 50 or dec_cnt = 54 or dec_cnt = 60 or dec_cnt = 64 or dec_cnt = 68 or dec_cnt = 72 or dec_cnt = 76) then
					MIDI_DATA <= not(MIDI_IN) & MIDI_DATA(23 downto 1);
				elsif(dec_cnt = 86 or dec_cnt = 90 or dec_cnt = 94 or dec_cnt = 98 or dec_cnt = 102 or dec_cnt = 104 or dec_cnt = 108 or dec_cnt = 112) then
					MIDI_DATA <= not(MIDI_IN) & MIDI_DATA(23 downto 1);
				elsif(dec_cnt = 116) then
					dec_cnt <= 0;
					eodec <= '1';
				else
					dec_cnt <= dec_cnt + 1;
				end if;
		end if;
		if(eodec = '1')then
			if(MIDI_DATA(23 downto 16) = "10010000") then
				NOTE_ENABLE <= '1';
				NOTE_NUM <= MIDI_DATA(15 downto 8);
			elsif(MIDI_DATA(22 downto 14) = "10000000" or MIDI_DATA(7 downto 0) = "00000000") then
				NOTE_ENABLE <= '0';
				NOTE_NUM <= MIDI_DATA(15 downto 8);
			end if;
		end if;
	end process;
end SWNO;