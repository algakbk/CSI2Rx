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
		when "0" & x"0a" => data <= x"031e00"; --Debug mode 
		when "0" & x"0b" => data <= x"300020"; --FSIN output 
		when "0" & x"0c" => data <= x"300200"; --Vsync input, HREF input, FREX input, GPIO0 input 
		when "0" & x"0d" => data <= x"301872"; --MIPI 2 lane, Reset MIPI PHY when sleep 
		when "0" & x"0e" => data <= x"30190c";
		when "0" & x"0f" => data <= x"302093"; --Clock switch to PLL clock, Debug mode 
		when "0" & x"10" => data <= x"302103"; --Sleep latch, software standby at line blank 
		when "0" & x"11" => data <= x"302201"; --LVDS disable, Enable power down MIPI when sleep 
		when "0" & x"12" => data <= x"30310a"; --MIPI 10-bit mode 
		when "0" & x"13" => data <= x"303f0c";
		when "0" & x"14" => data <= x"3305f1"; --ASRAM
		when "0" & x"15" => data <= x"330704"; --ASRAM
		when "0" & x"16" => data <= x"330929"; --ASRAM
		when "0" & x"17" => data <= x"350000"; --Long exposure HH 
		when "0" & x"18" => data <= x"350160"; --Long exposure H 
		when "0" & x"19" => data <= x"350200"; --Long exposure L 
		when "0" & x"1a" => data <= x"350304"; --Gain delay 1 frame, use sensor gain, exposure delay 1 frame 
		when "0" & x"1b" => data <= x"350400"; --debug mode 
		when "0" & x"1c" => data <= x"350500"; --debug mode 
		when "0" & x"1d" => data <= x"350600"; --debug mode 
		when "0" & x"1e" => data <= x"350700";
		when "0" & x"1f" => data <= x"350800";
		when "0" & x"20" => data <= x"350980";
		when "0" & x"21" => data <= x"350a00";
		when "0" & x"22" => data <= x"350b00";
		when "0" & x"23" => data <= x"350c00";
		when "0" & x"24" => data <= x"350d00";
		when "0" & x"25" => data <= x"350e00";
		when "0" & x"26" => data <= x"350f80";
		when "0" & x"27" => data <= x"351000";
		when "0" & x"28" => data <= x"351100";
		when "0" & x"29" => data <= x"351200";
		when "0" & x"2a" => data <= x"351300";
		when "0" & x"2b" => data <= x"351400";
		when "0" & x"2c" => data <= x"351580";
		when "0" & x"2d" => data <= x"351600";
		when "0" & x"2e" => data <= x"351700";
		when "0" & x"2f" => data <= x"351800";
		when "0" & x"30" => data <= x"351900";
		when "0" & x"31" => data <= x"351a00";
		when "0" & x"32" => data <= x"351b80";
		when "0" & x"33" => data <= x"351c00";
		when "0" & x"34" => data <= x"351d00";
		when "0" & x"35" => data <= x"351e00";
		when "0" & x"36" => data <= x"351f00";
		when "0" & x"37" => data <= x"352000";
		when "0" & x"38" => data <= x"352180";
		when "0" & x"39" => data <= x"352208";
		when "0" & x"3a" => data <= x"352408";
		when "0" & x"3b" => data <= x"352608";
		when "0" & x"3c" => data <= x"352808";
		when "0" & x"3d" => data <= x"352a08";
		when "0" & x"3e" => data <= x"360200";
		when "0" & x"3f" => data <= x"360402";
		when "0" & x"40" => data <= x"360500";
		when "0" & x"41" => data <= x"360600";
		when "0" & x"42" => data <= x"360700";
		when "0" & x"43" => data <= x"360912";
		when "0" & x"44" => data <= x"360a40";
		when "0" & x"45" => data <= x"360c08";
		when "0" & x"46" => data <= x"360fe5";
		when "0" & x"47" => data <= x"36088f";
		when "0" & x"48" => data <= x"361100";
		when "0" & x"49" => data <= x"3613f7";
		when "0" & x"4a" => data <= x"361658";
		when "0" & x"4b" => data <= x"361999";
		when "0" & x"4c" => data <= x"361b60";
		when "0" & x"4d" => data <= x"361c7a";
		when "0" & x"4e" => data <= x"361e79";
		when "0" & x"4f" => data <= x"361f02";
		when "0" & x"50" => data <= x"363200";
		when "0" & x"51" => data <= x"363310";
		when "0" & x"52" => data <= x"363410";
		when "0" & x"53" => data <= x"363510";
		when "0" & x"54" => data <= x"363615";
		when "0" & x"55" => data <= x"364686";
		when "0" & x"56" => data <= x"364a0b";
		when "0" & x"57" => data <= x"370017";
		when "0" & x"58" => data <= x"370122";
		when "0" & x"59" => data <= x"370310";
		when "0" & x"5a" => data <= x"370a37";
		when "0" & x"5b" => data <= x"370500";

		when "0" & x"02" => data <= x"370663";

		when "0" & x"02" => data <= x"37093c";

		when "0" & x"02" => data <= x"370b01";

		when "0" & x"02" => data <= x"370c30";

		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";
		when "0" & x"02" => data <= x"370b01";



