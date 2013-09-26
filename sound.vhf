--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : sound.vhf
-- /___/   /\     Timestamp : 06/05/2013 19:58:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w "C:/Documents and Settings/Project/Desktop/snake_game/sound.sch" sound.vhf
--Design Name: sound
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sound is
   port ( clk_in   : in    std_logic; 
          gameOver : in    std_logic; 
          victory  : in    std_logic; 
          sound    : out   std_logic);
end sound;

architecture BEHAVIORAL of sound is
   attribute BOX_TYPE   : string ;
   signal XLXN_12  : std_logic;
   signal XLXN_16  : std_logic;
   signal XLXN_18  : std_logic;
   signal XLXN_35  : std_logic;
   signal XLXN_37  : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component divide5
      port ( CLK_in  : in    std_logic; 
             Reset   : in    std_logic; 
             CLK_Out : out   std_logic);
   end component;
   
   component const_clk
      port ( clk_50mhz : in    std_logic; 
             clk_500hz : out   std_logic; 
             clk_1hz   : out   std_logic);
   end component;
   
begin
   XLXI_2 : AND2
      port map (I0=>victory,
                I1=>XLXN_35,
                O=>XLXN_12);
   
   XLXI_3 : AND2
      port map (I0=>gameOver,
                I1=>XLXN_18,
                O=>XLXN_16);
   
   XLXI_6 : OR2
      port map (I0=>XLXN_16,
                I1=>XLXN_12,
                O=>sound);
   
   XLXI_14 : GND
      port map (G=>XLXN_37);
   
   XLXI_16 : divide5
      port map (CLK_in=>XLXN_35,
                Reset=>XLXN_37,
                CLK_Out=>XLXN_18);
   
   XLXI_17 : const_clk
      port map (clk_50mhz=>clk_in,
                clk_1hz=>open,
                clk_500hz=>XLXN_35);
   
end BEHAVIORAL;


