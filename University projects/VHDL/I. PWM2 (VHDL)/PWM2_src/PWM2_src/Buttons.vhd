library ieee;
use ieee.std_logic_1164.all;

entity Buttons is
  generic(kNumButtons    : positive := 4;
          kDebounceTicks : positive := 1000);
		  
  port(Clk      : in  std_logic;
       aButtons : in  std_logic_vector(kNumButtons-1 downto 0);
	   cClicked : out std_logic_vector(kNumButtons-1 downto 0));
end Buttons;

architecture struct of Buttons is
  signal cButtons : std_logic_vector(kNumButtons-1 downto 0);
  signal cDebounced : std_logic_vector(kNumButtons-1 downto 0);
begin

  BtnPathGen: for i in 0 to kNumButtons-1 generate
  
    DSync: entity work.DoubleSync(RTL)
	         port map(Clk      => Clk,
			          aDataIn  => aButtons(i),
					  cDataOut => cButtons(i));

    Deb: entity work.Debounce(RTL)
	       generic map(kClkPeriods => kDebounceTicks)
		   port map(Clk     => Clk,
		            cSigIn  => cButtons(i),
					cSigOut => cDebounced(i));

    RiseDetect: entity work.ReDetect(RTL)
	              port map(Clk    => Clk,
				           cSigIn => cDebounced(i),
						   cRe    => cClicked(i));
  
  end generate;


end architecture struct;