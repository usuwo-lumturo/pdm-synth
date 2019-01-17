library ieee;
use ieee.std_logic_1164.all;

entity DCD is
	port(
		NOTE_NUM	:	in std_logic_vector(7 downto 0);
		TGT_CLK	:	out std_logic_vector(25 downto 0)
	);
end DCD;

architecture DCD of DCD is
begin
	process(NOTE_NUM) begin
		case NOTE_NUM is
			when "00000000" => TGT_CLK <= "00000000000100001001011011";
			when "00000001" => TGT_CLK <= "00000000000011111010100010";
			when "00000010" => TGT_CLK <= "00000000000011101100011110";
			when "00000011" => TGT_CLK <= "00000000000011011111001100";
			when "00000100" => TGT_CLK <= "00000000000011010010101011";
			when "00000101" => TGT_CLK <= "00000000000011000110110110";
			when "00000110" => TGT_CLK <= "00000000000010111011101100";
			when "00000111" => TGT_CLK <= "00000000000010110001001010";
			when "00001000" => TGT_CLK <= "00000000000010100111001101";
			when "00001001" => TGT_CLK <= "00000000000010011101110101";
			when "00001010" => TGT_CLK <= "00000000000010010100111110";
			when "00001011" => TGT_CLK <= "00000000000010001100100110";
			when "00001100" => TGT_CLK <= "00000000000010000100101101";
			when "00001101" => TGT_CLK <= "00000000000001111101010001";
			when "00001110" => TGT_CLK <= "00000000000001110110001111";
			when "00001111" => TGT_CLK <= "00000000000001101111100110";
			when "00010000" => TGT_CLK <= "00000000000001101001010101";
			when "00010001" => TGT_CLK <= "00000000000001100011011011";
			when "00010010" => TGT_CLK <= "00000000000001011101110110";
			when "00010011" => TGT_CLK <= "00000000000001011000100101";
			when "00010100" => TGT_CLK <= "00000000000001010011100110";
			when "00010101" => TGT_CLK <= "00000000000001001110111010";
			when "00010110" => TGT_CLK <= "00000000000001001010011111";
			when "00010111" => TGT_CLK <= "00000000000001000110010011";
			when "00011000" => TGT_CLK <= "00000000000001000010010110";
			when "00011001" => TGT_CLK <= "00000000000000111110101000";
			when "00011010" => TGT_CLK <= "00000000000000111011000111";
			when "00011011" => TGT_CLK <= "00000000000000110111110011";
			when "00011100" => TGT_CLK <= "00000000000000110100101010";
			when "00011101" => TGT_CLK <= "00000000000000110001101101";
			when "00011110" => TGT_CLK <= "00000000000000101110111011";
			when "00011111" => TGT_CLK <= "00000000000000101100010010";
			when "00100000" => TGT_CLK <= "00000000000000101001110011";
			when "00100001" => TGT_CLK <= "00000000000000100111011101";
			when "00100010" => TGT_CLK <= "00000000000000100101001111";
			when "00100011" => TGT_CLK <= "00000000000000100011001001";
			when "00100100" => TGT_CLK <= "00000000000000100001001011";
			when "00100101" => TGT_CLK <= "00000000000000011111010100";
			when "00100110" => TGT_CLK <= "00000000000000011101100011";
			when "00100111" => TGT_CLK <= "00000000000000011011111001";
			when "00101000" => TGT_CLK <= "00000000000000011010010101";
			when "00101001" => TGT_CLK <= "00000000000000011000110110";
			when "00101010" => TGT_CLK <= "00000000000000010111011101";
			when "00101011" => TGT_CLK <= "00000000000000010110001001";
			when "00101100" => TGT_CLK <= "00000000000000010100111001";
			when "00101101" => TGT_CLK <= "00000000000000010011101110";
			when "00101110" => TGT_CLK <= "00000000000000010010100111";
			when "00101111" => TGT_CLK <= "00000000000000010001100100";
			when "00110000" => TGT_CLK <= "00000000000000010000100101";
			when "00110001" => TGT_CLK <= "00000000000000001111101010";
			when "00110010" => TGT_CLK <= "00000000000000001110110001";
			when "00110011" => TGT_CLK <= "00000000000000001101111100";
			when "00110100" => TGT_CLK <= "00000000000000001101001010";
			when "00110101" => TGT_CLK <= "00000000000000001100011011";
			when "00110110" => TGT_CLK <= "00000000000000001011101110";
			when "00110111" => TGT_CLK <= "00000000000000001011000100";
			when "00111000" => TGT_CLK <= "00000000000000001010011100";
			when "00111001" => TGT_CLK <= "00000000000000001001110111";
			when "00111010" => TGT_CLK <= "00000000000000001001010011";
			when "00111011" => TGT_CLK <= "00000000000000001000110010";
			when "00111100" => TGT_CLK <= "00000000000000001000010010";
			when "00111101" => TGT_CLK <= "00000000000000000111110101";
			when "00111110" => TGT_CLK <= "00000000000000000111011000";
			when "00111111" => TGT_CLK <= "00000000000000000110111110";
			when "01000000" => TGT_CLK <= "00000000000000000110100101";
			when "01000001" => TGT_CLK <= "00000000000000000110001101";
			when "01000010" => TGT_CLK <= "00000000000000000101110111";
			when "01000011" => TGT_CLK <= "00000000000000000101100010";
			when "01000100" => TGT_CLK <= "00000000000000000101001110";
			when "01000101" => TGT_CLK <= "00000000000000000100111011";
			when "01000110" => TGT_CLK <= "00000000000000000100101001";
			when "01000111" => TGT_CLK <= "00000000000000000100011001";
			when "01001000" => TGT_CLK <= "00000000000000000100001001";
			when "01001001" => TGT_CLK <= "00000000000000000011111010";
			when "01001010" => TGT_CLK <= "00000000000000000011101100";
			when "01001011" => TGT_CLK <= "00000000000000000011011111";
			when "01001100" => TGT_CLK <= "00000000000000000011010010";
			when "01001101" => TGT_CLK <= "00000000000000000011000110";
			when "01001110" => TGT_CLK <= "00000000000000000010111011";
			when "01001111" => TGT_CLK <= "00000000000000000010110001";
			when "01010000" => TGT_CLK <= "00000000000000000010100111";
			when "01010001" => TGT_CLK <= "00000000000000000010011101";
			when "01010010" => TGT_CLK <= "00000000000000000010010100";
			when "01010011" => TGT_CLK <= "00000000000000000010001100";
			when "01010100" => TGT_CLK <= "00000000000000000010000100";
			when "01010101" => TGT_CLK <= "00000000000000000001111101";
			when "01010110" => TGT_CLK <= "00000000000000000001110110";
			when "01010111" => TGT_CLK <= "00000000000000000001101111";
			when "01011000" => TGT_CLK <= "00000000000000000001101001";
			when "01011001" => TGT_CLK <= "00000000000000000001100011";
			when "01011010" => TGT_CLK <= "00000000000000000001011101";
			when "01011011" => TGT_CLK <= "00000000000000000001011000";
			when "01011100" => TGT_CLK <= "00000000000000000001010011";
			when "01011101" => TGT_CLK <= "00000000000000000001001110";
			when "01011110" => TGT_CLK <= "00000000000000000001001010";
			when "01011111" => TGT_CLK <= "00000000000000000001000110";
			when "01100000" => TGT_CLK <= "00000000000000000001000010";
			when "01100001" => TGT_CLK <= "00000000000000000000111110";
			when "01100010" => TGT_CLK <= "00000000000000000000111011";
			when "01100011" => TGT_CLK <= "00000000000000000000110111";
			when "01100100" => TGT_CLK <= "00000000000000000000110100";
			when "01100101" => TGT_CLK <= "00000000000000000000110001";
			when "01100110" => TGT_CLK <= "00000000000000000000101110";
			when "01100111" => TGT_CLK <= "00000000000000000000101100";
			when "01101000" => TGT_CLK <= "00000000000000000000101001";
			when "01101001" => TGT_CLK <= "00000000000000000000100111";
			when "01101010" => TGT_CLK <= "00000000000000000000100101";
			when "01101011" => TGT_CLK <= "00000000000000000000100011";
			when "01101100" => TGT_CLK <= "00000000000000000000100001";
			when "01101101" => TGT_CLK <= "00000000000000000000011111";
			when "01101110" => TGT_CLK <= "00000000000000000000011101";
			when "01101111" => TGT_CLK <= "00000000000000000000011011";
			when "01110000" => TGT_CLK <= "00000000000000000000011010";
			when "01110001" => TGT_CLK <= "00000000000000000000011000";
			when "01110010" => TGT_CLK <= "00000000000000000000010111";
			when "01110011" => TGT_CLK <= "00000000000000000000010110";
			when "01110100" => TGT_CLK <= "00000000000000000000010100";
			when "01110101" => TGT_CLK <= "00000000000000000000010011";
			when "01110110" => TGT_CLK <= "00000000000000000000010010";
			when "01110111" => TGT_CLK <= "00000000000000000000010001";
			when "01111000" => TGT_CLK <= "00000000000000000000010000";
			when "01111001" => TGT_CLK <= "00000000000000000000001111";
			when "01111010" => TGT_CLK <= "00000000000000000000001110";
			when "01111011" => TGT_CLK <= "00000000000000000000001101";
			when "01111100" => TGT_CLK <= "00000000000000000000001101";
			when "01111101" => TGT_CLK <= "00000000000000000000001100";
			when "01111110" => TGT_CLK <= "00000000000000000000001011";
			when others		 => TGT_CLK <= "00000000000000000110100101";
		end case;
	end process;
end architecture;
		