--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : const_clk.vhf
-- /___/   /\     Timestamp : 06/05/2013 19:58:02
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w "C:/Documents and Settings/Project/Desktop/snake_game/const_clk.sch" const_clk.vhf
--Design Name: const_clk
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

entity const_clk is
   port ( clk_50mhz : in    std_logic; 
          clk_1hz   : out   std_logic; 
          clk_500hz : out   std_logic);
end const_clk;

architecture BEHAVIORAL of const_clk is
   attribute BOX_TYPE   : string ;
   signal reset           : std_logic;
   signal XLXN_1          : std_logic;
   signal XLXN_2          : std_logic;
   signal XLXN_3          : std_logic;
   signal XLXN_20         : std_logic;
   signal XLXN_21         : std_logic;
   signal XLXN_22         : std_logic;
   signal clk_500hz_DUMMY : std_logic;
   component divide10
      port ( CLK_in  : in    std_logic; 
             Reset   : in    std_logic; 
             CLK_Out : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component divide5
      port ( CLK_in  : in    std_logic; 
             Reset   : in    std_logic; 
             CLK_Out : out   std_logic);
   end component;
   
begin
   clk_500hz <= clk_500hz_DUMMY;
   XLXI_1 : divide10
      port map (CLK_in=>clk_50mhz,
                Reset=>reset,
                CLK_Out=>XLXN_1);
   
   XLXI_2 : divide10
      port map (CLK_in=>XLXN_1,
                Reset=>reset,
                CLK_Out=>XLXN_2);
   
   XLXI_3 : divide10
      port map (CLK_in=>XLXN_2,
                Reset=>reset,
                CLK_Out=>XLXN_3);
   
   XLXI_4 : divide10
      port map (CLK_in=>XLXN_3,
                Reset=>reset,
                CLK_Out=>XLXN_20);
   
   XLXI_15 : divide10
      port map (CLK_in=>XLXN_20,
                Reset=>reset,
                CLK_Out=>clk_500hz_DUMMY);
   
   XLXI_35 : GND
      port map (G=>reset);
   
   XLXI_36 : divide5
      port map (CLK_in=>XLXN_21,
                Reset=>reset,
                CLK_Out=>clk_1hz);
   
   XLXI_37 : divide10
      port map (CLK_in=>XLXN_22,
                Reset=>reset,
                CLK_Out=>XLXN_21);
   
   XLXI_38 : divide10
      port map (CLK_in=>clk_500hz_DUMMY,
                Reset=>reset,
                CLK_Out=>XLXN_22);
   
end BEHAVIORAL;


