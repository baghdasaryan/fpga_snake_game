--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : control.vhf
-- /___/   /\     Timestamp : 06/05/2013 19:58:02
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w "C:/Documents and Settings/Project/Desktop/snake_game/control.sch" control.vhf
--Design Name: control
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

entity control is
   port ( ps2c  : in    std_logic; 
          ps2d  : in    std_logic; 
          reset : in    std_logic; 
          move  : out   std_logic_vector (1 downto 0));
end control;

architecture BEHAVIORAL of control is
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal XLXN_22  : std_logic;
   signal XLXN_23  : std_logic;
   signal XLXN_27  : std_logic;
   signal XLXN_33  : std_logic;
   signal XLXN_314 : std_logic;
   signal XLXN_315 : std_logic;
   signal XLXN_318 : std_logic;
   signal XLXN_352 : std_logic;
   signal XLXN_353 : std_logic;
   signal XLXN_355 : std_logic;
   signal XLXN_357 : std_logic;
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component FDC
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDC : component is "0";
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component keyboard
      port ( keyboardClock : in    std_logic; 
             keyboardData  : in    std_logic; 
             left          : out   std_logic; 
             right         : out   std_logic; 
             up            : out   std_logic; 
             down          : out   std_logic);
   end component;
   
begin
   XLXI_4 : OR2
      port map (I0=>XLXN_352,
                I1=>XLXN_353,
                O=>XLXN_33);
   
   XLXI_5 : OR2
      port map (I0=>XLXN_353,
                I1=>XLXN_357,
                O=>XLXN_23);
   
   XLXI_8 : NOR2
      port map (I0=>XLXN_352,
                I1=>XLXN_355,
                O=>XLXN_22);
   
   XLXI_9 : NOR2
      port map (I0=>XLXN_355,
                I1=>XLXN_357,
                O=>XLXN_27);
   
   XLXI_10 : AND2
      port map (I0=>XLXN_33,
                I1=>XLXN_27,
                O=>XLXN_315);
   
   XLXI_11 : AND2
      port map (I0=>XLXN_22,
                I1=>XLXN_23,
                O=>XLXN_314);
   
   XLXI_110 : FDC
      port map (C=>XLXN_318,
                CLR=>reset,
                D=>XLXN_314,
                Q=>move(0));
   
   XLXI_111 : FDC
      port map (C=>XLXN_318,
                CLR=>reset,
                D=>XLXN_315,
                Q=>move(1));
   
   XLXI_140 : OR4
      port map (I0=>XLXN_353,
                I1=>XLXN_357,
                I2=>XLXN_355,
                I3=>XLXN_352,
                O=>XLXN_318);
   
   XLXI_142 : keyboard
      port map (keyboardClock=>ps2c,
                keyboardData=>ps2d,
                down=>XLXN_352,
                left=>XLXN_357,
                right=>XLXN_355,
                up=>XLXN_353);
   
end BEHAVIORAL;


