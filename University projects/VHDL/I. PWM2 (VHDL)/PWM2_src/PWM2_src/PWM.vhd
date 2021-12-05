library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PWM is
  port(Clk   : in  std_logic;
       cDuty : in  unsigned(7 downto 0);
	   cPwm  : out std_logic);
end entity;

architecture RTL of PWM is
  -- 38 MHz input clock, 3 Clk periods per PWM LSB (8 bits -> 256)
  -- 38 MHz / 3 / 256 = 49.479 kHz PWM frequency
  constant kTicksPerLsb : integer := 3;
  
  signal cTickCounter : integer range 0 to kTicksPerLsb := 0;
  signal cPwmCounter  : unsigned(cDuty'range) := (others => '0');
  
begin

  process(Clk) is
  begin
    if rising_edge(Clk) then
	  -- Counter that creates the base ticks for the PWM signal
	  if cTickCounter = kTicksPerLsb - 1 then
	    cTickCounter <= 0;
	  else
	    cTickCounter <= cTickCounter + 1;
	  end if;
	  
	  if cPwmCounter = unsigned(to_signed(-2, cPwmCounter'length)) then
	    cPwmCounter <= (others => '0');
	  else
	    cPwmCounter <= cPwmCounter + 1;
	  end if;
	  
	  cPwm <= '0';
	  if cPwmCounter < cDuty then
	    cPwm <= '1';
	  end if;
	end if;
  end process;

end architecture RTL;