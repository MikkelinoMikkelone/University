library ieee;
use ieee.std_logic_1164.all;

entity Debounce is
  generic(kClkPeriods : positive);
  port(Clk     : in  std_logic;
       cSigIn  : in  std_logic;
	   cSigOut : out std_logic := '0');
end Debounce;

architecture RTL of Debounce is
  signal cSigInPrev : std_logic := '0';
  signal cCounter   : natural range 0 to kClkPeriods := 0;
begin
  
  process(Clk) is
  begin
    if rising_edge(Clk) then
	  cSigInPrev <= cSigIn;
	  
	  if cSigIn /= cSigInPrev then
	    cCounter <= 0;
	  elsif cCounter < kClkPeriods then
	    cCounter <= cCounter + 1;
	  end if;
	  
	  if (cCounter = kClkPeriods) and (cSigIn = cSigInPrev) then
		cSigOut <= cSigIn;
	  end if;
	  
	end if;
  end process;
  
end RTL;
