--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 06/05/2013 19:58:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w "C:/Documents and Settings/Project/Desktop/snake_game/main.sch" main.vhf
--Design Name: main
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

entity main is
   port ( cheat    : in    std_logic; 
          clk50_in : in    std_logic; 
          ps2c     : in    std_logic; 
          ps2d     : in    std_logic; 
          reset_in : in    std_logic; 
          a_out    : out   std_logic; 
          b_out    : out   std_logic; 
          c_out    : out   std_logic; 
          d_out    : out   std_logic; 
          d1_out   : out   std_logic; 
          d2_out   : out   std_logic; 
          d3_out   : out   std_logic; 
          d4_out   : out   std_logic; 
          e_out    : out   std_logic; 
          f_out    : out   std_logic; 
          g_out    : out   std_logic; 
          hs_out   : out   std_logic; 
          rgb_out  : out   std_logic_vector (2 downto 0); 
          soundww  : out   std_logic; 
          vs_out   : out   std_logic);
   attribute LOC : string ;
   attribute LOC of cheat : signal is "F12";
   attribute LOC of soundww : signal is "C10";
end main;

architecture BEHAVIORAL of main is
   attribute BOX_TYPE   : string ;
   signal gameOver_out : std_logic;
   signal XLXN_227     : std_logic_vector (1 downto 0);
   signal XLXN_290     : std_logic_vector (0 to 8);
   signal XLXN_291     : std_logic_vector (0 to 9);
   signal XLXN_300     : std_logic;
   signal XLXN_314     : std_logic;
   signal XLXN_323     : std_logic;
   signal XLXN_324     : std_logic;
   signal XLXN_326     : std_logic;
   signal XLXN_327     : std_logic;
   component control
      port ( reset : in    std_logic; 
             ps2c  : in    std_logic; 
             ps2d  : in    std_logic; 
             move  : out   std_logic_vector (1 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component display
      port ( clk50_in  : in    std_logic; 
             reset_in  : in    std_logic; 
             win_in    : in    std_logic; 
             appleX_in : in    std_logic_vector (0 to 9); 
             appleY_in : in    std_logic_vector (0 to 8); 
             move_in   : in    std_logic_vector (1 downto 0); 
             hs_out    : out   std_logic; 
             vs_out    : out   std_logic; 
             game_out  : out   std_logic; 
             score_out : out   std_logic; 
             rgb_out   : out   std_logic_vector (2 downto 0));
   end component;
   
   component random
      port ( clk1     : in    std_logic; 
             clk2     : in    std_logic; 
             random_x : out   std_logic_vector (0 to 9); 
             random_y : out   std_logic_vector (0 to 8));
   end component;
   
   component sound
      port ( victory  : in    std_logic; 
             clk_in   : in    std_logic; 
             gameOver : in    std_logic; 
             sound    : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component const_clk
      port ( clk_50mhz : in    std_logic; 
             clk_500hz : out   std_logic; 
             clk_1hz   : out   std_logic);
   end component;
   
   component scoreBoard
      port ( clk_1hz   : in    std_logic; 
             reset     : in    std_logic; 
             gameOver  : in    std_logic; 
             score     : in    std_logic; 
             clk_500hz : in    std_logic; 
             a         : out   std_logic; 
             b         : out   std_logic; 
             c         : out   std_logic; 
             d         : out   std_logic; 
             e         : out   std_logic; 
             f         : out   std_logic; 
             g         : out   std_logic; 
             d1        : out   std_logic; 
             d2        : out   std_logic; 
             d3        : out   std_logic; 
             d4        : out   std_logic; 
             victory   : out   std_logic);
   end component;
   
begin
   XLXI_2 : control
      port map (ps2c=>ps2c,
                ps2d=>ps2d,
                reset=>XLXN_314,
                move(1 downto 0)=>XLXN_227(1 downto 0));
   
   XLXI_4 : INV
      port map (I=>reset_in,
                O=>XLXN_314);
   
   XLXI_23 : display
      port map (appleX_in(0 to 9)=>XLXN_291(0 to 9),
                appleY_in(0 to 8)=>XLXN_290(0 to 8),
                clk50_in=>clk50_in,
                move_in(1 downto 0)=>XLXN_227(1 downto 0),
                reset_in=>XLXN_314,
                win_in=>XLXN_327,
                game_out=>gameOver_out,
                hs_out=>hs_out,
                rgb_out(2 downto 0)=>rgb_out(2 downto 0),
                score_out=>XLXN_324,
                vs_out=>vs_out);
   
   XLXI_44 : random
      port map (clk1=>clk50_in,
                clk2=>XLXN_300,
                random_x(0 to 9)=>XLXN_291(0 to 9),
                random_y(0 to 8)=>XLXN_290(0 to 8));
   
   XLXI_47 : sound
      port map (clk_in=>clk50_in,
                gameOver=>gameOver_out,
                victory=>XLXN_327,
                sound=>soundww);
   
   XLXI_48 : OR2
      port map (I0=>cheat,
                I1=>XLXN_323,
                O=>XLXN_327);
   
   XLXI_49 : const_clk
      port map (clk_50mhz=>clk50_in,
                clk_1hz=>XLXN_326,
                clk_500hz=>XLXN_300);
   
   XLXI_50 : scoreBoard
      port map (clk_1hz=>XLXN_326,
                clk_500hz=>XLXN_300,
                gameOver=>gameOver_out,
                reset=>XLXN_314,
                score=>XLXN_324,
                a=>a_out,
                b=>b_out,
                c=>c_out,
                d=>d_out,
                d1=>d1_out,
                d2=>d2_out,
                d3=>d3_out,
                d4=>d4_out,
                e=>e_out,
                f=>f_out,
                g=>g_out,
                victory=>XLXN_323);
   
end BEHAVIORAL;


