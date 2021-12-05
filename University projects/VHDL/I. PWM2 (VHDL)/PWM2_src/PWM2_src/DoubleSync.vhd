library ieee;
use ieee.std_logic_1164.all;

entity DoubleSync is
  port(Clk      : in  std_logic;
       aDataIn  : in  std_logic;
	   cDataOut : out std_logic);
end entity;

architecture RTL of DoubleSync is
  signal cDataOut_ms : std_logic := '0';
begin

  process(Clk) is
  begin
    cDataOut_ms <= aDataIn;
	cDataOut    <= cDataOut_ms;
  end process;

end architecture RTL;