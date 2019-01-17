library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity DWN_CLK is 
	port(
		CLK		:	in std_logic;
		RESET		:	in std_logic;
		TGT_CLK	:	in std_logic_vector(25 downto 0);
		LO_CLK	:	out std_logic
	);
end DWN_CLK;

architecture DWN_CLK of DWN_CLK is

	signal ZEROCOUNT	:	std_logic_vector(25 downto 0)
							:="00000000000000000000000000";
	signal COUNT		:	std_logic_vector(25 downto 0);

begin
	process (CLK,RESET) begin
		if (RESET='0')	then
			COUNT <= TGT_CLK;
         LO_CLK <= '1';
		elsif (CLK' event and CLK = '1') then
			if(COUNT = ZEROCOUNT) then
				COUNT		<=	TGT_CLK;
				LO_CLK	<= '1';
			else
				COUNT		<= COUNT - '1';
				LO_CLK 	<=	'0';
			end if;
		end if;
	end process;
end architecture;