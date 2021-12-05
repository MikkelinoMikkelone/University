library ieee;
use ieee.std_logic_1164.all;

library work;

library machxo2;
use machxo2.all;

entity Clk38M is
  port (Clk   : out std_logic);
end entity;

architecture RTL of Clk38M is

  COMPONENT OSCH
  -- synthesis translate_off
    GENERIC  (NOM_FREQ : string := "2.56");
  -- synthesis translate_on
    PORT (STDBY    : IN std_logic;
          OSC      : OUT std_logic;
          SEDSTDBY : OUT std_logic);
  END COMPONENT; 
  
  attribute NOM_FREQ : string;
  attribute NOM_FREQ of OSCinst0 : label is "38.00";

begin

  OSCInst0: OSCH
  -- synthesis translate_off
    GENERIC MAP( NOM_FREQ  => "38.00")
  -- synthesis translate_on
    PORT MAP (STDBY    =>  '0',
              OSC      =>  Clk,
              SEDSTDBY => open);

end architecture RTL;