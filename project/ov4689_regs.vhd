library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--OV4689 Camera Configuration

entity ov4689_regs is
port (clock : in std_logic; --this allows a blockram to be elaborated
  		address : in std_logic_vector(8 downto 0);
  		--This is the I2C data to be written
  		--2 MSBs are address, 1 MSB is data
  		data : out std_logic_vector(23 downto 0));
end ov4689_regs;

architecture behv_cd of ov4689_regs is
begin
	process(clock)
	begin
		if rising_edge(clock) then
      case address(8 downto 0) is
        when "0" & x"00" => data <= x"010301"; --software reset
        when "0" & x"01" => data <= x"363800"; --ADC & analog 
        when "0" & x"02" => data <= x"030000"; --PLL1 prediv 
        when "0" & x"03" => data <= x"03021c"; --PLL1 divm 
        when "0" & x"04" => data <= x"030403"; --PLL1 div mipi 
        when "0" & x"05" => data <= x"030b00"; --PLL2 pre div 
        when "0" & x"06" => data <= x"030d1e"; --PLL2 multiplier 
        when "0" & x"07" => data <= x"030e04"; --PLL2 divs 
        when "0" & x"08" => data <= x"030f01"; --PLL2 divsp 
        when "0" & x"09" => data <= x"031201"; --PLL2 divdac 
        when "0" & x"10" => data <= x"031e00"; --Debug mode 
        when "0" & x"11" => data <= x"300020"; --FSIN output 
        when "0" & x"12" => data <= x"300200"; --Vsync input, HREF input, FREX input, GPIO0 input 
        when "0" & x"13" => data <= x"301872"; --MIPI 2 lane, Reset MIPI PHY when sleep 
        when "0" & x"14" => data <= x"30190c";
        when "0" & x"15" => data <= x"302093"; --Clock switch to PLL clock, Debug mode 
        when "0" & x"16" => data <= x"302103"; --Sleep latch, software standby at line blank 
        when "0" & x"02" => data <= x"302201"; --LVDS disable, Enable power down MIPI when sleep 
        when "0" & x"02" => data <= x"30310a"; --MIPI 10-bit mode 
        when "0" & x"02" => data <= x"303f0c";
        when "0" & x"02" => data <= x"3305f1"; --ASRAM
        when "0" & x"02" => data <= x"330704"; --ASRAM
        when "0" & x"02" => data <= x"330929"; --ASRAM
        when "0" & x"02" => data <= x"350000"; --Long exposure HH 
        
        when "0" & x"02" => data <= x"030f01";
        when "0" & x"02" => data <= x"030f01";
        when "0" & x"02" => data <= x"030f01";
        when "0" & x"02" => data <= x"030f01";
        when "0" & x"02" => data <= x"030f01";
