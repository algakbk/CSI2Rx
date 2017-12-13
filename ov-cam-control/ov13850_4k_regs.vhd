library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--OV13850 Camera Configuration

--This configuration is for 4k24/4k30, 10-bit, 4-lane with a total horizontal length of 6800 pixels
--and a total vertical length of 2992 lines

entity ov13850_4k_regs is
port (clock : in std_logic; --this allows a blockram to be elaborated
  		address : in std_logic_vector(8 downto 0);
  		--This is the I2C data to be written
  		--2 MSBs are address, 1 MSB is data
  		data : out std_logic_vector(23 downto 0));
end ov13850_4k_regs;

architecture behv_cd of ov13850_4k_regs is
begin
	process(clock)
	begin
		if rising_edge(clock) then
			case address(8 downto 0) is
						when "0" & x"00" =>
							data <= x"010301"; --software reset
	          when "0" & x"01" =>
				      data <= x"030a00";
	          when "0" & x"02" =>
			       data <= x"300f11"; --MIPI 10 bit mode
	          when "0" & x"03" =>
				      data <= x"301003"; --MIPI PHY
	          when "0" & x"04" =>
				      data <= x"301176"; --MIPI PHY
						when "0" & x"05" =>
				      data <= x"301241"; --MIPI 4 lane
						when "0" & x"06" =>
							data <= x"301312";
						when "0" & x"07" =>
							data <= x"301411";
						when "0" & x"08" =>
							data <= x"301f03";
						when "0" & x"09" =>
							data <= x"310600";
						when "0" & x"0a" =>
							data <= x"321047";
						when "0" & x"0b" =>
							data <= x"350000";
						when "0" & x"0c" =>
							data <= x"3501b0";
						when "0" & x"0d" =>
							data <= x"350200";
						when "0" & x"0e" =>
							data <= x"350600";
						when "0" & x"0f" =>
							data <= x"35070a";
						when "0" & x"10" =>
							data <= x"350800";
						when "0" & x"11" =>
							data <= x"350910";
						when "0" & x"12" =>
							data <= x"350a00";
						when "0" & x"13" =>
							data <= x"350ba0";
						when "0" & x"14" =>
							data <= x"350e00";
						when "0" & x"15" =>
							data <= x"350fa0";
						when "0" & x"16" =>
							data <= x"360040";
						when "0" & x"17" =>
							data <= x"3601fc";
						when "0" & x"18" =>
							data <= x"360202";
						when "0" & x"19" =>
							data <= x"360348";
						when "0" & x"1a" =>
							data <= x"3604a5";
						when "0" & x"1b" =>
							data <= x"36059f";
						when "0" & x"1c" =>
							data <= x"360700";
						when "0" & x"1d" =>
							data <= x"360a40";
						when "0" & x"1e" =>
							data <= x"360b91";
						when "0" & x"1f" =>
							data <= x"360c49";
						when "0" & x"20" =>
							data <= x"360f8a";
						when "0" & x"21" =>
							data <= x"361110";
						when "0" & x"22" =>
							data <= x"361311";
						--wait
						when "0" & x"30" =>
							data <= x"361508";
						when "0" & x"31" =>
							data <= x"364102";
						when "0" & x"32" =>
							data <= x"366082";
						when "0" & x"33" =>
							data <= x"366854";
						when "0" & x"34" =>
							data <= x"366940";
						when "0" & x"35" =>
							data <= x"3667a0";
						when "0" & x"36" =>
							data <= x"370240";
						when "0" & x"37" =>
							data <= x"370344";
						when "0" & x"38" =>
							data <= x"37042c";
						when "0" & x"39" =>
							data <= x"370524";
						when "0" & x"3a" =>
							data <= x"370650";
						when "0" & x"3b" =>
							data <= x"370744";
						when "0" & x"3c" =>
							data <= x"37083c";
						when "0" & x"3d" =>
							data <= x"37091f";
						when "0" & x"3e" =>
							data <= x"370a26";
						when "0" & x"3f" =>
							data <= x"370b3c";
						when "0" & x"40" =>
							data <= x"372066";
						when "0" & x"41" =>
							data <= x"372284";
						when "0" & x"42" =>
							data <= x"372840";
						when "0" & x"43" =>
							data <= x"372a00";
						when "0" & x"44" =>
							data <= x"372f90";
						when "0" & x"45" =>
							data <= x"371028";
						when "0" & x"46" =>
							data <= x"371603";
						when "0" & x"47" =>
							data <= x"371810";
						when "0" & x"48" =>
							data <= x"371908";
						when "0" & x"49" =>
							data <= x"371cfc";
						when "0" & x"4a" =>
							data <= x"376013";
						when "0" & x"4b" =>
							data <= x"376134";
						when "0" & x"4c" =>
							data <= x"376724";
						when "0" & x"4d" =>
							data <= x"376806";
						when "0" & x"4e" =>
							data <= x"376945";
						when "0" & x"4f" =>
							data <= x"376c23";
						when "0" & x"50" =>
							data <= x"3d8400";
						when "0" & x"51" =>
							data <= x"3d8517";
						when "0" & x"52" =>
							data <= x"3d8c73";
						when "0" & x"53" =>
							data <= x"3d8dbf";
						when "0" & x"54" =>
							data <= x"380000";
						when "0" & x"55" =>
							data <= x"380108";
						when "0" & x"56" =>
							data <= x"380200";
						when "0" & x"57" =>
							data <= x"380304";
						when "0" & x"58" =>
							data <= x"380410";
						when "0" & x"59" =>
							data <= x"380597";
						when "0" & x"5a" =>
							data <= x"38060c";
						when "0" & x"5b" =>
							data <= x"38074b";
						when "0" & x"5c" =>
							data <= x"380808";
						when "0" & x"5d" =>
							data <= x"380940";
						when "0" & x"5e" =>
							data <= x"380a06";
						when "0" & x"5f" =>
							data <= x"380b20";
						when "0" & x"60" =>
							data <= x"380c25";
						when "0" & x"61" =>
							data <= x"380d80";
						when "0" & x"62" =>
							data <= x"380e06";
						when "0" & x"63" =>
							data <= x"380f80";
						when "0" & x"64" =>
							data <= x"381000";
						when "0" & x"65" =>
							data <= x"381104";
						when "0" & x"66" =>
							data <= x"381200";
						when "0" & x"67" =>
							data <= x"381302";
						when "0" & x"68" =>
							data <= x"381431";
						when "0" & x"69" =>
							data <= x"381531";
						when "0" & x"6a" =>
							data <= x"382002";
						when "0" & x"6b" =>
							data <= x"382105"; --mirror off
						when "0" & x"6c" =>
							data <= x"383400";
						when "0" & x"6d" =>
							data <= x"38351c";
						when "0" & x"6e" =>
							data <= x"383608";
						when "0" & x"6f" =>
							data <= x"383702";
						when "0" & x"70" =>
							data <= x"4000f1";
						when "0" & x"71" =>
							data <= x"400100";
						when "0" & x"72" =>
							data <= x"400b0c";
						when "0" & x"73" =>
							data <= x"401100";
						when "0" & x"74" =>
							data <= x"401a00";
						when "0" & x"75" =>
							data <= x"401b00";
						when "0" & x"76" =>
							data <= x"401c00";
						when "0" & x"77" =>
							data <= x"401d00";
						when "0" & x"78" =>
							data <= x"402000";
						when "0" & x"79" =>
							data <= x"4021e4";
						when "0" & x"7a" =>
							data <= x"402207";
						when "0" & x"7b" =>
							data <= x"40235f";
						when "0" & x"7c" =>
							data <= x"402408";
						when "0" & x"7d" =>
							data <= x"402544";
						when "0" & x"7e" =>
							data <= x"402608";
						when "0" & x"7f" =>
							data <= x"402747";
						when "0" & x"80" =>
							data <= x"402800";
						when "0" & x"81" =>
							data <= x"402902";
						when "0" & x"82" =>
							data <= x"402a04";
						when "0" & x"83" =>
							data <= x"402b08";
						when "0" & x"84" =>
							data <= x"402c02";
						when "0" & x"85" =>
							data <= x"402d02";
						when "0" & x"86" =>
							data <= x"402e0c";
						when "0" & x"87" =>
							data <= x"402f08";
						when "0" & x"88" =>
							data <= x"403d2c";
						when "0" & x"89" =>
							data <= x"403f7f";
						when "0" & x"8a" =>
							data <= x"450082";
						when "0" & x"8b" =>
							data <= x"450138";
						when "0" & x"8c" =>
							data <= x"460104";
						when "0" & x"8d" =>
							data <= x"460222";
						when "0" & x"8e" =>
							data <= x"460301";
						when "0" & x"8f" =>
							data <= x"483719";
						when "0" & x"90" =>
							data <= x"480004";
						when "0" & x"91" =>
							data <= x"480242";
						when "0" & x"92" =>
							data <= x"481a00";
						when "0" & x"93" =>
							data <= x"481b1c";
						when "0" & x"94" =>
							data <= x"482612";
						when "0" & x"95" =>
							data <= x"4d0004";
						when "0" & x"96" =>
							data <= x"4d0142";
						when "0" & x"97" =>
							data <= x"4d02d1";
						when "0" & x"98" =>
							data <= x"4d0390";
						when "0" & x"99" =>
							data <= x"4d0466";
						when "0" & x"9a" =>
							data <= x"4d0565";
						when "0" & x"9b" =>
							data <= x"50000e";
						when "0" & x"9c" =>
							data <= x"500103";
						when "0" & x"9d" =>
							data <= x"500207";
						when "0" & x"9e" =>
							data <= x"501340";
						when "0" & x"9f" =>
							data <= x"501c00";
						when "0" & x"a0" =>
							data <= x"501d10";
						when "0" & x"a1" =>
							data <= x"524200";
						when "0" & x"a2" =>
							data <= x"5243b8";
						when "0" & x"a3" =>
							data <= x"524400";
						when "0" & x"a4" =>
							data <= x"5245f9";
						when "0" & x"a5" =>
							data <= x"524600";
						when "0" & x"a6" =>
							data <= x"5247f6";
						when "0" & x"a7" =>
							data <= x"524800";
						when "0" & x"a8" =>
							data <= x"5249a6";
						when "0" & x"a9" =>
							data <= x"5300fc";
						when "0" & x"aa" =>
							data <= x"5301df";
						when "0" & x"ab" =>
							data <= x"53023f";
						when "0" & x"ac" =>
							data <= x"530308";
						when "0" & x"ad" =>
							data <= x"53040c";
						when "0" & x"ae" =>
							data <= x"530510";
						when "0" & x"af" =>
							data <= x"530620";
						when "0" & x"b0" =>
							data <= x"530740";
						when "0" & x"b1" =>
							data <= x"530808";
						when "0" & x"b2" =>
							data <= x"530908";
						when "0" & x"b3" =>
							data <= x"530a02";
						when "0" & x"b4" =>
							data <= x"530b01";
						when "0" & x"b5" =>
							data <= x"530c01";
						when "0" & x"b6" =>
							data <= x"530d0c";
						when "0" & x"b7" =>
							data <= x"530e02";
						when "0" & x"b8" =>
							data <= x"530f01";
						when "0" & x"b9" =>
							data <= x"531001";
						when "0" & x"ba" =>
							data <= x"540000";
						when "0" & x"bb" =>
							data <= x"540161";
						when "0" & x"bc" =>
							data <= x"540200";
						when "0" & x"bd" =>
							data <= x"540300";
						when "0" & x"be" =>
							data <= x"540400";
						when "0" & x"bf" =>
							data <= x"540540";
						when "0" & x"c0" =>
							data <= x"540c05";
						when "0" & x"c1" =>
							data <= x"5b0000";
						when "0" & x"c2" =>
							data <= x"5b0100";
						when "0" & x"c3" =>
							data <= x"5b0201";
						when "0" & x"c4" =>
							data <= x"5b03ff";
						when "0" & x"c5" =>
							data <= x"5b0402";
						when "0" & x"c6" =>
							data <= x"5b056c";
						when "0" & x"c7" =>
							data <= x"5b0902";
						when "0" & x"c8" =>
							data <= x"5e0080"; --test pattern off
						when "0" & x"c9" =>
							data <= x"5e101c";
						when "0" & x"ca" =>
							data <= x"381304";
						when "0" & x"cb" =>
							data <= x"381411";
						when "0" & x"cc" =>
							data <= x"381511";
						when "0" & x"cd" =>
							data <= x"382004";
						when "0" & x"ce" =>
							data <= x"382104"; --mirror off
						when "0" & x"cf" =>
							data <= x"383604";
						when "0" & x"d0" =>
							data <= x"383701";
						when "0" & x"d1" =>
							data <= x"48370a";
						when "0" & x"d2" =>
							data <= x"482612";
						when "0" & x"d3" =>
							data <= x"540171";
						when "0" & x"d4" =>
							data <= x"540580";
						when "0" & x"d5" =>
							data <= x"361207";
						when "0" & x"d6" =>
							data <= x"030000";
						when "0" & x"d7" =>
							data <= x"030100";
						when "0" & x"d8" =>
							data <= x"030220";
						when "0" & x"d9" =>
							data <= x"030300";
						when "0" & x"e0" =>
							data <= x"48370d";
						when "0" & x"e1" =>
							data <= x"370a24";
						when "0" & x"e2" =>
							data <= x"372a04";
						when "0" & x"e3" =>
							data <= x"372fa0";
						when "0" & x"e4" =>
							data <= x"380001";
						when "0" & x"e5" =>
							data <= x"38014c";
						when "0" & x"e6" =>
							data <= x"380202";
						when "0" & x"e7" =>
							data <= x"38038c";
						when "0" & x"e8" =>
							data <= x"380410";
						when "0" & x"e9" =>
							data <= x"380553";
						when "0" & x"f0" =>
							data <= x"38060b";
						when "0" & x"f1" =>
							data <= x"380703";
						when "0" & x"f2" =>
							data <= x"38080f";
						when "0" & x"f3" =>
							data <= x"380900";
						when "0" & x"f4" =>
							data <= x"380a08";
						when "0" & x"f5" =>
							data <= x"380b70";
						when "0" & x"f6" =>
							data <= x"380c1a"; --HTS MSB
						when "0" & x"f7" =>
							data <= x"380d90"; --HTS LSB
						when "0" & x"f8" =>
							data <= x"380e0b"; --VTS MSB
						when "0" & x"f9" =>
							data <= x"380fb0"; --VTS LSB
						when "1" & x"00" =>
							data <= x"381000";
						when "1" & x"01" =>
							data <= x"381104";
						when "1" & x"02" =>
							data <= x"381200";
						when "1" & x"03" =>
							data <= x"381304";
						when "1" & x"04" =>
							data <= x"383604";
						when "1" & x"05" =>
							data <= x"383701";
						when "1" & x"06" =>
							data <= x"402000";
						when "1" & x"07" =>
							data <= x"4021e6";
						when "1" & x"08" =>
							data <= x"40220e";
						when "1" & x"09" =>
							data <= x"40231e";
						when "1" & x"0a" =>
							data <= x"40240f";
						when "1" & x"0b" =>
							data <= x"402500";
						when "1" & x"0c" =>
							data <= x"40260f";
						when "1" & x"0d" =>
							data <= x"402706";
						when "1" & x"0e" =>
							data <= x"010001";
						when others =>
							data <= x"000000";
					end case;

		end if;
	end process;
end behv_cd;
