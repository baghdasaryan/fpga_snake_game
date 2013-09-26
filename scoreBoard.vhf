--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : scoreBoard.vhf
-- /___/   /\     Timestamp : 06/05/2013 19:58:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w "C:/Documents and Settings/Project/Desktop/snake_game/scoreBoard.sch" scoreBoard.vhf
--Design Name: scoreBoard
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

entity FTC_MXILINX_scoreBoard is
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTC_MXILINX_scoreBoard;

architecture BEHAVIORAL of FTC_MXILINX_scoreBoard is
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   attribute RLOC       : string ;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
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
   
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDC
      port map (C=>C,
                CLR=>CLR,
                D=>TQ,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1_MXILINX_scoreBoard is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_scoreBoard;

architecture BEHAVIORAL of M2_1_MXILINX_scoreBoard is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCLEX_MXILINX_scoreBoard is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic; 
          L   : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCLEX_MXILINX_scoreBoard;

architecture BEHAVIORAL of FTCLEX_MXILINX_scoreBoard is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   attribute RLOC       : string ;
   signal MD      : std_logic;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component M2_1_MXILINX_scoreBoard
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDCE
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDCE : component is "0";
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   attribute HU_SET of I_36_30 : label is "I_36_30_0";
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_30 : M2_1_MXILINX_scoreBoard
      port map (D0=>TQ,
                D1=>D,
                S0=>L,
                O=>MD);
   
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>MD,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CD4CLE_MXILINX_scoreBoard is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          L   : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          TC  : out   std_logic);
end CD4CLE_MXILINX_scoreBoard;

architecture BEHAVIORAL of CD4CLE_MXILINX_scoreBoard is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal OR_CE_L  : std_logic;
   signal TQ2      : std_logic;
   signal TQ03     : std_logic;
   signal T1       : std_logic;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component FTCLEX_MXILINX_scoreBoard
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             L   : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
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
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   attribute HU_SET of I_Q0 : label is "I_Q0_4";
   attribute HU_SET of I_Q1 : label is "I_Q1_3";
   attribute HU_SET of I_Q2 : label is "I_Q2_2";
   attribute HU_SET of I_Q3 : label is "I_Q3_1";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCLEX_MXILINX_scoreBoard
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D0,
                L=>L,
                T=>OR_CE_L,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCLEX_MXILINX_scoreBoard
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D1,
                L=>L,
                T=>T1,
                Q=>Q1_DUMMY);
   
   I_Q2 : FTCLEX_MXILINX_scoreBoard
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D2,
                L=>L,
                T=>T2,
                Q=>Q2_DUMMY);
   
   I_Q3 : FTCLEX_MXILINX_scoreBoard
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D3,
                L=>L,
                T=>T3,
                Q=>Q3_DUMMY);
   
   I_36_2 : AND2
      port map (I0=>T2,
                I1=>Q2_DUMMY,
                O=>TQ2);
   
   I_36_13 : OR2
      port map (I0=>TQ03,
                I1=>TQ2,
                O=>T3);
   
   I_36_123 : AND2
      port map (I0=>Q0_DUMMY,
                I1=>Q1_DUMMY,
                O=>T2);
   
   I_36_136 : AND2B1
      port map (I0=>Q3_DUMMY,
                I1=>Q0_DUMMY,
                O=>T1);
   
   I_36_143 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
   I_36_168 : AND2
      port map (I0=>Q0_DUMMY,
                I1=>Q3_DUMMY,
                O=>TQ03);
   
   I_36_175 : AND4B2
      port map (I0=>Q1_DUMMY,
                I1=>Q2_DUMMY,
                I2=>Q0_DUMMY,
                I3=>Q3_DUMMY,
                O=>TC_DUMMY);
   
   I_36_178 : OR2
      port map (I0=>CE,
                I1=>L,
                O=>OR_CE_L);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity scoreBoard is
   port ( clk_1hz   : in    std_logic; 
          clk_500hz : in    std_logic; 
          gameOver  : in    std_logic; 
          reset     : in    std_logic; 
          score     : in    std_logic; 
          a         : out   std_logic; 
          b         : out   std_logic; 
          c         : out   std_logic; 
          d         : out   std_logic; 
          d1        : out   std_logic; 
          d2        : out   std_logic; 
          d3        : out   std_logic; 
          d4        : out   std_logic; 
          e         : out   std_logic; 
          f         : out   std_logic; 
          g         : out   std_logic; 
          victory   : out   std_logic);
end scoreBoard;

architecture BEHAVIORAL of scoreBoard is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal XLXN_335      : std_logic;
   signal XLXN_336      : std_logic;
   signal XLXN_614      : std_logic;
   signal XLXN_746      : std_logic;
   signal XLXN_747      : std_logic;
   signal XLXN_750      : std_logic;
   signal XLXN_762      : std_logic;
   signal XLXN_782      : std_logic;
   signal XLXN_788      : std_logic;
   signal XLXN_822      : std_logic;
   signal XLXN_823      : std_logic;
   signal XLXN_826      : std_logic;
   signal XLXN_827      : std_logic;
   signal XLXN_828      : std_logic;
   signal XLXN_829      : std_logic;
   signal XLXN_855      : std_logic;
   signal XLXN_891      : std_logic;
   signal XLXN_901      : std_logic;
   signal XLXN_914      : std_logic;
   signal XLXN_915      : std_logic;
   signal XLXN_916      : std_logic;
   signal XLXN_1244     : std_logic;
   signal XLXN_1246     : std_logic;
   signal XLXN_1250     : std_logic;
   signal XLXN_1252     : std_logic;
   signal XLXN_1254     : std_logic;
   signal XLXN_1259     : std_logic;
   signal XLXN_1267     : std_logic;
   signal victory_DUMMY : std_logic;
   component score_out
      port ( x0    : in    std_logic; 
             x1    : in    std_logic; 
             x2    : in    std_logic; 
             x3    : in    std_logic; 
             disp1 : in    std_logic; 
             disp2 : in    std_logic; 
             a     : out   std_logic; 
             b     : out   std_logic; 
             c     : out   std_logic; 
             d     : out   std_logic; 
             e     : out   std_logic; 
             f     : out   std_logic; 
             g     : out   std_logic; 
             d1    : out   std_logic; 
             d2    : out   std_logic; 
             d3    : out   std_logic; 
             d4    : out   std_logic);
   end component;
   
   component M2_1_MXILINX_scoreBoard
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component CD4CLE_MXILINX_scoreBoard
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             L   : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component NOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR4 : component is "BLACK_BOX";
   
   component FTC_MXILINX_scoreBoard
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND5B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B3 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_162 : label is "XLXI_162_5";
   attribute HU_SET of XLXI_175 : label is "XLXI_175_6";
   attribute HU_SET of XLXI_176 : label is "XLXI_176_7";
   attribute HU_SET of XLXI_223 : label is "XLXI_223_8";
   attribute HU_SET of XLXI_224 : label is "XLXI_224_10";
   attribute HU_SET of XLXI_225 : label is "XLXI_225_11";
   attribute HU_SET of XLXI_226 : label is "XLXI_226_9";
   attribute HU_SET of XLXI_356 : label is "XLXI_356_12";
begin
   victory <= victory_DUMMY;
   XLXI_119 : score_out
      port map (disp1=>XLXN_746,
                disp2=>XLXN_747,
                x0=>XLXN_916,
                x1=>XLXN_891,
                x2=>XLXN_335,
                x3=>XLXN_336,
                a=>a,
                b=>b,
                c=>c,
                d=>d,
                d1=>d1,
                d2=>d2,
                d3=>d3,
                d4=>d4,
                e=>e,
                f=>f,
                g=>g);
   
   XLXI_162 : M2_1_MXILINX_scoreBoard
      port map (D0=>XLXN_614,
                D1=>clk_1hz,
                S0=>XLXN_1246,
                O=>XLXN_750);
   
   XLXI_166 : OR2
      port map (I0=>victory_DUMMY,
                I1=>gameOver,
                O=>XLXN_1246);
   
   XLXI_168 : VCC
      port map (P=>XLXN_614);
   
   XLXI_170 : AND2
      port map (I0=>XLXN_750,
                I1=>XLXN_1259,
                O=>XLXN_747);
   
   XLXI_174 : AND2B1
      port map (I0=>XLXN_1259,
                I1=>XLXN_750,
                O=>XLXN_746);
   
   XLXI_175 : CD4CLE_MXILINX_scoreBoard
      port map (C=>XLXN_1252,
                CE=>XLXN_1244,
                CLR=>reset,
                D0=>XLXN_782,
                D1=>XLXN_782,
                D2=>XLXN_782,
                D3=>XLXN_782,
                L=>XLXN_782,
                CEO=>XLXN_1250,
                Q0=>XLXN_829,
                Q1=>XLXN_828,
                Q2=>XLXN_827,
                Q3=>XLXN_826,
                TC=>open);
   
   XLXI_176 : CD4CLE_MXILINX_scoreBoard
      port map (C=>XLXN_1252,
                CE=>XLXN_1250,
                CLR=>reset,
                D0=>XLXN_788,
                D1=>XLXN_788,
                D2=>XLXN_788,
                D3=>XLXN_788,
                L=>XLXN_788,
                CEO=>open,
                Q0=>XLXN_914,
                Q1=>XLXN_823,
                Q2=>XLXN_915,
                Q3=>XLXN_822,
                TC=>open);
   
   XLXI_177 : FDC
      port map (C=>XLXN_901,
                CLR=>reset,
                D=>XLXN_762,
                Q=>victory_DUMMY);
   
   XLXI_178 : VCC
      port map (P=>XLXN_762);
   
   XLXI_187 : GND
      port map (G=>XLXN_788);
   
   XLXI_204 : NOR4
      port map (I0=>XLXN_826,
                I1=>XLXN_827,
                I2=>XLXN_828,
                I3=>XLXN_829,
                O=>XLXN_855);
   
   XLXI_223 : M2_1_MXILINX_scoreBoard
      port map (D0=>XLXN_827,
                D1=>XLXN_915,
                S0=>XLXN_1259,
                O=>XLXN_335);
   
   XLXI_224 : M2_1_MXILINX_scoreBoard
      port map (D0=>XLXN_828,
                D1=>XLXN_823,
                S0=>XLXN_1259,
                O=>XLXN_891);
   
   XLXI_225 : M2_1_MXILINX_scoreBoard
      port map (D0=>XLXN_829,
                D1=>XLXN_914,
                S0=>XLXN_1259,
                O=>XLXN_916);
   
   XLXI_226 : M2_1_MXILINX_scoreBoard
      port map (D0=>XLXN_826,
                D1=>XLXN_822,
                S0=>XLXN_1259,
                O=>XLXN_336);
   
   XLXI_250 : AND2B1
      port map (I0=>XLXN_1246,
                I1=>score,
                O=>XLXN_1252);
   
   XLXI_352 : GND
      port map (G=>XLXN_782);
   
   XLXI_354 : VCC
      port map (P=>XLXN_1244);
   
   XLXI_356 : FTC_MXILINX_scoreBoard
      port map (C=>clk_500hz,
                CLR=>XLXN_1267,
                T=>XLXN_1254,
                Q=>XLXN_1259);
   
   XLXI_357 : VCC
      port map (P=>XLXN_1254);
   
   XLXI_369 : GND
      port map (G=>XLXN_1267);
   
   XLXI_371 : AND5B3
      port map (I0=>XLXN_822,
                I1=>XLXN_915,
                I2=>XLXN_914,
                I3=>XLXN_823,
                I4=>XLXN_855,
                O=>XLXN_901);
   
end BEHAVIORAL;


