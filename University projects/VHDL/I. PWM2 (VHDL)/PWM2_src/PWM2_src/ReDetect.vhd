library ieee;
use ieee.std_logic_1164.all;

entity ReDetect is
  port (Clk   : in  std_logic;
        cSigIn : in  std_logic;
		cRe    : out std_logic);
end entity ReDetect;

architecture RTL of ReDetect is
   signal cSigInDel : std_logic := '0';
begin

  process(Clk) is
  begin
    if rising_edge(Clk) then
	  cSigInDel <= cSigIn;
	end if;
  end process;
  
  cRe <= cSigIn and not cSigInDel;

end architecture RTL;