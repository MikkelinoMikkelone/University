library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PWM_Top is
  port(aButtons  : in  std_logic_vector(3 downto 0);
       aLed      : out std_logic;
       aSegments : out std_logic_vector(6 downto 0));
end entity;

architecture RTL of PWM_Top is
  signal Clk : std_logic;

  type   PwmValueTypes_t is array (natural range <>) of unsigned(7 downto 0);
  signal cPwmValues   : PwmValueTypes_t(0 to 6) := (others => (others => '0'));


  signal cClicked	    : std_logic_vector(2 downto 0);
  signal cSet,cUp,cDown : boolean;
  
  type State_t 			is 		(idle, Ledselect, Pwmset);
  signal cState			:		state_t := idle;
  signal cSelector		:		integer range 0 to 6 :=0;
  signal CSelectorslv	:		std_logic_vector (3 downto 0);
  
  signal cSegmentssel 	: 		std_logic_vector (6 downto 0);
  signal cSegmentsPwm	:		std_logic_vector (6 downto 0);
  
  
begin

	cSet 	<= 	cClicked (2) = '1';
	cUp  	<= 	cClicked (1) = '1';
	cDown 	<= 	cClicked (0) = '1';

	Cselectorslv <= std_logic_vector( to_unsigned(Cselector,4));
	
	SelectorBcd: entity work.BcdDec(RTL)
	port map( 	Clk			=>	Clk,
				cBcd		=>	cSelectorslv,
				cSegments	=>	cSegmentsSel);
	
  ClkGen : entity work.Clk38M(RTL)
    port map(Clk => Clk);

  ButtonX: entity work.Buttons(struct)
    generic map(kNumButtons    => 3,
                kDebounceTicks => 760000)
				
    port map(Clk      => Clk,
             aButtons => aButtons(2 downto 0),
             cClicked => cClicked);

  PWMGen: for i in 0 to 6 generate
    PwmX: entity work.PWM(RTL)
	
	  port map(		Clk   => Clk,
					cDuty => cPwmValues(i),
					cPwm  => cSegmentsPwm(i));
  end generate;
  
  process(Clk) is
  
  begin
  
  if rising_edge(Clk) then
  
  case cstate is
  
	when idle => 
		if Cset then
			cState <= Ledselect;
		end if;
		
	when Ledselect =>
	
		if Cset then
			cState <= Ledselect;
			
		elsif cUp then
			if cSelector = 6 then
				cSelector <= 0;
			else
				cSelector <= cSelector+1;
			end if;
		
		elsif cDown then
			if cSelector = 0 then
				cSelector <= 6;
			else
				cSelector <= cSelector-1;
			end if;
		end if;
		
	when Pwmset => 
	
		if Cset then
			cState <= Idle;
		
		elsif cUp then
			cPwmvalues(cselector) <= cPwmvalues(cSelector) + 8;
			
		elsif cDown then
			cPwmvalues(cselector) <= cPwmvalues(cSelector) -8;
			
		end if;
			
	end case;
  
  end if;
  end process;
  
  aSegments <= cSegmentsSel when cState = Ledselect else cSegmentsPwm;
end architecture RTL;
