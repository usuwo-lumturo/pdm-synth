library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity TEST_OSC is 
	port(
		CLK	:	in std_logic;
		RESET	:	in std_logic;
		PULSE	:	out std_logic
	);
end TEST_OSC;

architecture PLS of TEST_OSC is
	
	signal COUNT		:	std_logic_vector(25 downto 0);
	signal SFTCNT		:	integer
							:=359;
	signal MAXCOUNT	:	std_logic_vector(25 downto 0)
--							:="00000000011011101111100100"; -- 50MHz/440Hz
--							:="00000000000000000000000010"; -- For sim
--							:="00000000000000010001110000"; -- 50MHz/440Hz/100
--							:="00000000000000000100000010"; -- 50MHz/440Hz/440
--							:="00000000000000001110111100"; -- 50MHz/523Hz/100
--							:="00000000000000000011011001"; -- 50MHz/523Hz/400
							:="00000000000000001001110111"; -- 50MHz/440Hz/360
	signal ZEROCOUNT	:	std_logic_vector(25 downto 0)
							:="00000000000000000000000000";
	signal START		:	std_logic_vector(1 downto 0)
							:="01";
--	signal PDM			:	std_logic_vector(439 downto 0)
--							:="11010101010110101101011011011101101110111011110111110111111011111111011111111111111111011111111111111111111111111111111111111111111111111111111111011111111110111111101111101111011110111011101101101101101101011010101011010100101010100101001010010010001001000100010000100000100000100000000010000000000000000100000000000000000000000000000000000000000000000000000000000100000000000100000001000001000010000100010001001001001001001010010101010101";

	signal PDM			:	std_logic_vector(359 downto 0)
							:="110101010101101101011011101101110111101111101111110111111111101111111111111111111111111111111111111111111111111111101111111111110111111101111101111011101110110110110110101011010101010101010010100100100100100100010000100001000001000000000100000000000000000000000000000000000000000000000010000000000000000001000000001000001000010000100100010010010010100101010100";
	
begin
	process (CLK,RESET) begin
		if (RESET='0' or START = "01")	then
			COUNT <= MAXCOUNT;
         PULSE <= '1';
			START <= "00";
		elsif (CLK' event and CLK = '1') then
            if(COUNT = ZEROCOUNT and SFTCNT > 0) then
                COUNT  <= MAXCOUNT;
                PULSE  <= PDM(SFTCNT);
					 SFTCNT <= SFTCNT - 1;
				elsif(COUNT = ZEROCOUNT and SFTCNT = 0) then
                COUNT  <= MAXCOUNT;
                PULSE  <= PDM(SFTCNT);
					 SFTCNT <= 359;
            else
                COUNT <= COUNT - 1;
            end if;
        end if;
    end process;
end PLS;