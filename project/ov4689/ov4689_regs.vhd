----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2017 09:07:38 PM
-- Design Name: 
-- Module Name: ov4689_regs - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ov4689_regs is
port (clock : in std_logic; --this allows a blockram to be elaborated
  		address : in std_logic_vector(8 downto 0);
  		--This is the I2C data to be written
  		--2 MSBs are address, 1 MSB is data
  		data : out std_logic_vector(23 downto 0));end ov4689_regs;

architecture Behavioral of ov4689_regs is

--OV4689 Camera Configuration
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
		when "0" & x"5e" => data <= x"370663";
		when "0" & x"5d" => data <= x"37093c";
		when "0" & x"5f" => data <= x"370b01";
		when "0" & x"60" => data <= x"370c30";
		when "0" & x"61" => data <= x"371024";
		when "0" & x"62" => data <= x"37110c"; 
		when "0" & x"63" => data <= x"371600"; 
		when "0" & x"64" => data <= x"372028"; 
		when "0" & x"65" => data <= x"37297b"; 
		when "0" & x"66" => data <= x"372a84"; 
		when "0" & x"67" => data <= x"372bbd"; 
		when "0" & x"68" => data <= x"372cbc"; 
		when "0" & x"69" => data <= x"372e52"; 
		when "0" & x"6a" => data <= x"373c0e"; 
		when "0" & x"6b" => data <= x"373e33"; 
		when "0" & x"6c" => data <= x"374310"; 
		when "0" & x"6d" => data <= x"374488"; 
		when "0" & x"6e" => data <= x"3745c0"; -- important!!!
		when "0" & x"6f" => data <= x"374a43"; 
		when "0" & x"70" => data <= x"374c00"; 
		when "0" & x"71" => data <= x"374e23"; 
		when "0" & x"72" => data <= x"37517b"; 
		when "0" & x"73" => data <= x"375284"; 
		when "0" & x"74" => data <= x"3753bd"; 
		when "0" & x"75" => data <= x"3754bc"; 
		when "0" & x"76" => data <= x"375652"; 
		when "0" & x"77" => data <= x"375c00"; 
		when "0" & x"78" => data <= x"376000"; 
		when "0" & x"79" => data <= x"376100"; 
		when "0" & x"7a" => data <= x"376200"; 
		when "0" & x"7b" => data <= x"376300"; 
        when "0" & x"7c" => data <= x"376400"; 
		when "0" & x"7d" => data <= x"376704"; 
        when "0" & x"7e" => data <= x"376804"; 
        when "0" & x"7f" => data <= x"376908"; 
        when "0" & x"80" => data <= x"376a08"; 
        when "0" & x"81" => data <= x"376b20"; 
        when "0" & x"82" => data <= x"376c00"; 
        when "0" & x"83" => data <= x"376d00"; 
        when "0" & x"84" => data <= x"376e00"; 
        when "0" & x"85" => data <= x"377300"; 
        when "0" & x"86" => data <= x"377451"; 
        when "0" & x"87" => data <= x"3776bd"; 
        when "0" & x"88" => data <= x"3777bd"; 
        when "0" & x"89" => data <= x"378118"; 
        when "0" & x"8a" => data <= x"378325";-- Sensor control 
        when "0" & x"8b" => data <= x"37981b";
        when "0" & x"8c" => data <= x"380000";-- H crop start H 
        when "0" & x"8d" => data <= x"380108";-- H crop start L 
        when "0" & x"8e" => data <= x"380200";-- V crop start H 
        when "0" & x"8f" => data <= x"380304";-- V crop start L 
        when "0" & x"90" => data <= x"38040a";-- H crop end H 
        when "0" & x"91" => data <= x"380597";-- H crop end L 
        when "0" & x"92" => data <= x"380605";-- V crop end H 
        when "0" & x"93" => data <= x"3807fb";-- V crop end L 
        when "0" & x"94" => data <= x"38080a";-- H output size H 
        when "0" & x"95" => data <= x"380980";-- H output size L 
        when "0" & x"96" => data <= x"380a05";-- V output size H 
        when "0" & x"97" => data <= x"380bf0";-- V output size L 
        when "0" & x"98" => data <= x"380c0a";-- HTS H 
        when "0" & x"99" => data <= x"380d10";-- HTS L 
        when "0" & x"9a" => data <= x"380e06";-- VTS H 
        when "0" & x"9b" => data <= x"380f12";-- VTS L 
        when "0" & x"9c" => data <= x"381000";-- H win off H 
        when "0" & x"9d" => data <= x"381108";-- H win off L 
        when "0" & x"9e" => data <= x"381200";-- V win off H 
        when "0" & x"9f" => data <= x"381304";-- V win off L 
        when "0" & x"a0" => data <= x"381401";-- H inc odd 
        when "0" & x"a1" => data <= x"381501";-- H inc even 
        when "0" & x"a2" => data <= x"381901";-- Vsync end L 
        when "0" & x"a3" => data <= x"382000";-- flip off, bin off 
        when "0" & x"a4" => data <= x"382106"; --mirror on, bin off 
        when "0" & x"a5" => data <= x"382900"; --HDR lite off 
		when "0" & x"a6" => data <= x"4023cf"; --Anchor left end L 
        when "0" & x"a7" => data <= x"402409"; --Anchor right start H 
        when "0" & x"a8" => data <= x"402560"; --Andhor right start L 
        when "0" & x"a9" => data <= x"402609"; --Anchor right end H 
        when "0" & x"aa" => data <= x"40276f"; --Anchor right end L 
        when "0" & x"ab" => data <= x"402800"; --top Zline start 
        when "0" & x"ac" => data <= x"402902"; --top Zline number 
        when "0" & x"ad" => data <= x"402a06"; --top blk line start 
        when "0" & x"ae" => data <= x"402b04"; --to blk line number 
        when "0" & x"af" => data <= x"402c02"; --bot Zline start 
        when "0" & x"b0" => data <= x"402d02"; --bot Zline number 
        when "0" & x"b1" => data <= x"402e0e"; --bot blk line start 
        when "0" & x"b2" => data <= x"402f04"; --bot blk line number 
        when "0" & x"b3" => data <= x"4302ff"; --clipping max H 
        when "0" & x"b4" => data <= x"4303ff"; --clipping max L 
        when "0" & x"b5" => data <= x"430400"; --clipping min H 
        when "0" & x"b6" => data <= x"430500"; --clipping min L 
        when "0" & x"b7" => data <= x"430600"; --vfifo pix swap off, dpcm off, vfifo first line is blue line 
        when "0" & x"b8" => data <= x"430802"; --debug mode, embeded off 
        when "0" & x"b9" => data <= x"45006c"; --ADC sync control 
        when "0" & x"ba" => data <= x"4501c4"; 
        when "0" & x"bb" => data <= x"450240"; 
        when "0" & x"bc" => data <= x"450302"; --ADC sync control 
        when "0" & x"bd" => data <= x"460104"; --V fifo read start 
        when "0" & x"be" => data <= x"480004"; --MIPI always high speed off, Clock lane gate off, line short packet off, 
        when "0" & x"bf" => data <= x"481308"; --Select HDR VC 
        when "0" & x"c0" => data <= x"481f40"; --MIPI clock prepare min 
        when "0" & x"c1" => data <= x"482978"; --MIPI HS exit min 
        when "0" & x"c2" => data <= x"483718"; --MIPI global timing 
        when "0" & x"c3" => data <= x"4b002a";
        when "0" & x"c4" => data <= x"4b0d00";
        when "0" & x"c5" => data <= x"4d0004"; --tpm slope H 
        when "0" & x"c6" => data <= x"4d0142"; --tpm slope L 
        when "0" & x"c7" => data <= x"4d02d1"; --tpm offset HH 
        when "0" & x"c8" => data <= x"4d0393"; --tpm offset H 
        when "0" & x"c9" => data <= x"4d04f5"; --tpm offset M 
        when "0" & x"ca" => data <= x"4d05c1"; --tpm offset L 
        when "0" & x"cb" => data <= x"5000f3";
        when "0" & x"cc" => data <= x"500111"; --ISP EOF select, ISP SOF off, BLC on 
        when "0" & x"cd" => data <= x"500400"; --debug mode 
        when "0" & x"ce" => data <= x"500a00"; --debug mode 
        when "0" & x"cf" => data <= x"500b00"; --debug mode 
        when "0" & x"d0" => data <= x"503200"; --debug mode 
        when "0" & x"d1" => data <= x"504000"; --test mode off 
        when "0" & x"d2" => data <= x"50500c"; --debug mode 
        when "0" & x"d3" => data <= x"550000"; --OTP DPC start H 
        when "0" & x"d4" => data <= x"550110"; --OTP DPC start L 
        when "0" & x"d5" => data <= x"550201"; --OTP DPC end H 
        when "0" & x"d6" => data <= x"55030f"; --OTP DPC end L 
        when "0" & x"d7" => data <= x"800000"; --test mode 
        when "0" & x"d8" => data <= x"800100"; 
        when "0" & x"d9" => data <= x"800200"; 
        when "0" & x"da" => data <= x"800300"; 
        when "0" & x"db" => data <= x"800400"; 
        when "0" & x"dc" => data <= x"800500"; 
        when "0" & x"dd" => data <= x"800600"; 
        when "0" & x"de" => data <= x"800700"; 
        when "0" & x"df" => data <= x"800800"; --test mode 
        when "0" & x"e0" => data <= x"363800"; --ADC & analog 
        when "0" & x"e1" => data <= x"310531"; --SCCB control, debug mode 
        when "0" & x"e2" => data <= x"301af9"; --enable emb clock, enable strobe clock, enable timing control clock, mipi-phy manual reset, reset timing control block 
        when "0" & x"e3" => data <= x"350807"; --Long gain H 
        when "0" & x"e4" => data <= x"484b05"; --line start after fifo_st, sclock start after SOF, frame start after SOF 
        when "0" & x"e5" => data <= x"480503"; --MIPI control 
        when "0" & x"e6" => data <= x"360101"; --ADC & analog 
        when "0" & x"e7" => data <= x"010001"; --wake up from sleep 
        when "0" & x"e8" => data <= x"310511"; --SCCB control, debug mode 
        when "0" & x"e9" => data <= x"301af1"; --disable mipi-phy reset 
        when "0" & x"ea" => data <= x"480500"; --MIPI control 
        when "0" & x"eb" => data <= x"301af0"; --enable emb clock, enable strobe clock, disable mipi-phy reset, enable timing control clock, 
        when "0" & x"ec" => data <= x"320800"; --group hold start, group bank 0 
        when "0" & x"ed" => data <= x"302a00"; --delay? 
        when "0" & x"ee" => data <= x"302a00"; 
        when "0" & x"ef" => data <= x"302a00"; 
        when "0" & x"f0" => data <= x"302a00"; 
        when "0" & x"f1" => data <= x"302a00"; 
        when "0" & x"f2" => data <= x"360100"; --ADC & analog 
        when "0" & x"f3" => data <= x"363800"; --ADC & analog 
        when "0" & x"f4" => data <= x"320810"; --group hold end, group select 0 
        when "0" & x"f5" => data <= x"3208a0"; --group delay launch, group select 0  
        when "0" & x"f6" => data <= x"500c08";
        when "0" & x"f7" => data <= x"500d88";
        when "0" & x"f8" => data <= x"500e04";
        when "0" & x"f9" => data <= x"500f00";
        when "0" & x"fa" => data <= x"501006";
        when "0" & x"fb" => data <= x"50113d";
        when "0" & x"fc" => data <= x"010001"; --wake up from sleep 
        end case;
    end if;
    end process;
end Behavioral;