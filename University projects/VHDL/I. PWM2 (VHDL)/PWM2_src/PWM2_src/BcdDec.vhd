library ieee;
use ieee.std_logic_1164.all;

entity BcdDec is
  port(Clk       : in  std_logic;
       cBcd      : in  std_logic_vector(3 downto 0);
	   cSegments : out std_logic_vector(6 downto 0));
end BcdDec;

architecture RTL of BcdDec is
begin

  process(Clk) is
  begin
    if rising_edge(Clk) then
	  -- ABCDEFG
	  -- 6.....0
	  case cBcd is
		when "0000" =>
		  cSegments <= "1111110";
		when "0001" =>
		  cSegments <= "0110000";
		when "0010" =>
		  cSegments <= "1101101";
		when "0011" =>
		  cSegments <= "1111001";
		when "0100" =>
		  cSegments <= "0110011";
		when "0101" =>
		  cSegments <= "1011011";
		when "0110" =>
		  cSegments <= "1011111";
		when "0111" =>
		  cSegments <= "1110000";
		when "1000" =>
		  cSegments <= "1111111";
		when "1001" =>
		  cSegments <= "1111011";
		when others =>
		  cSegments <= (others => '0');
	  end case;
	end if;
  end process;

end RTL;