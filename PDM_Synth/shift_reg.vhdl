library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity SH is
		port(
			ENABLE	:	in std_logic;
			RST		:	in std_logic;
			Wave		:	out std_logic
		);
end SH;

architecture SH of SH is

	signal SIGCNT		:	integer
							:=359;
	signal PDM			:	std_logic_vector(359 downto 0)
							:="110101010101101101011011101101110111101111101111110111111111101111111111111111111111111111111111111111111111111111101111111111110111111101111101111011101110110110110110101011010101010101010010100100100100100100010000100001000001000000000100000000000000000000000000000000000000000000000010000000000000000001000000001000001000010000100100010010010010100101010100";

begin
	process(ENABLE,RST) begin
		if(RST='0') then
			SIGCNT <= 359;
			Wave	<= '0';
		elsif(ENABLE='1' and SIGCNT > 0) then
			Wave	<=	PDM(SIGCNT);
			SIGCNT <= SIGCNT - 1;
		elsif(ENABLE='1' and SIGCNT = 0) then
			Wave 	<= PDM(SIGCNT);
			SIGCNT <= 359;
		else
			Wave	<= PDM(SIGCNT);
		end if;
	end process;
end SH;