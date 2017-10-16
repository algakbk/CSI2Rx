----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2017 12:44:05 PM
-- Design Name: 
-- Module Name: VHDL_test - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VHDL_test is
  port(
    clock_p : in std_logic;
--    clock_n : in std_logic;
  reset_n : in std_logic;

  hdmi_clk : out std_logic_vector(1 downto 0);
  hdmi_d0 : out std_logic_vector(1 downto 0);
  hdmi_d1 : out std_logic_vector(1 downto 0);
  hdmi_d2 : out std_logic_vector(1 downto 0)
  );
end VHDL_test;

architecture Behavioral of VHDL_test is

  signal dvi_data : std_logic_vector(23 downto 0);
  signal dvi_den, dvi_hsync, dvi_vsync : std_logic;
  signal clk_feedback         : std_logic;
  signal sys_clock, ddr_clock      : std_logic;

    
begin


    dvi_tx : entity work.dvi_tx
      port map(
          pixel_clock => sys_clock,
          ddr_bit_clock => ddr_clock,
          reset => reset_n,
          den => dvi_den,
          hsync => dvi_hsync,
          vsync => dvi_vsync,
          pixel_data => dvi_data,

          tmds_clk => hdmi_clk,
          tmds_d0 => hdmi_d0,
          tmds_d1 => hdmi_d1,
          tmds_d2 => hdmi_d2
      );

    output : entity work.test_pattern_gen
      generic map(
        video_hlength => 2200,
        video_vlength => 1125,
        
        video_hsync_pol => true,
        video_hsync_len => 44,
        video_hbp_len => 148,
        video_h_visible => 1920,
        
        video_vsync_pol => true,
        video_vsync_len => 5,
        video_vbp_len => 36,
        video_v_visible => 1080)
      port map(
        pixel_clock => sys_clock,
        reset => reset_n,
        
        video_vsync => dvi_vsync,
        video_hsync => dvi_hsync,
        video_den => dvi_den,
        video_line_start => open,
        video_pixel_even => dvi_data,
        video_pixel_odd => open);

      PLL_BASE_inst : PLL_BASE
      generic map (
         CLKFBOUT_MULT => 29,                  
         CLKOUT0_DIVIDE => 5,       CLKOUT0_PHASE => 0.0,  -- Output pixel clock, 1.5x original frequency
         CLKOUT1_DIVIDE => 1,        CLKOUT1_PHASE => 0.0,
         CLK_FEEDBACK => "CLKFBOUT",                        -- Clock source to drive CLKFBIN ("CLKFBOUT" or "CLKOUT0")
         CLKIN_PERIOD => 38.5,                              -- IMPORTANT! 20.00 => 50MHz
         DIVCLK_DIVIDE => 1                                 -- Division value for all output clocks (1-52)
      )
         port map (
         CLKFBOUT => clk_feedback, 
         CLKOUT0  => sys_clock,
         CLKOUT1  => ddr_clock,
         CLKOUT2  => open,
         CLKOUT3  => open,
         CLKOUT4  => open,
         CLKOUT5  => open,
         LOCKED   => open,      
         CLKFBIN  => clk_feedback,    
         CLKIN    => clock_p, 
         RST      => '0'              -- 1-bit input: Reset input
      );      
      
        
end Behavioral;
