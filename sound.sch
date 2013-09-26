VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL victory
        SIGNAL clk_in
        SIGNAL XLXN_16
        SIGNAL XLXN_18
        SIGNAL gameOver
        SIGNAL sound
        SIGNAL XLXN_12
        SIGNAL XLXN_35
        SIGNAL XLXN_37
        PORT Input victory
        PORT Input clk_in
        PORT Input gameOver
        PORT Output sound
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF divide5
            TIMESTAMP 2013 6 5 21 39 23
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF const_clk
            TIMESTAMP 2013 6 5 21 39 58
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 and2
            PIN I0 victory
            PIN I1 XLXN_35
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 gameOver
            PIN I1 XLXN_18
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 XLXN_16
            PIN I1 XLXN_12
            PIN O sound
        END BLOCK
        BEGIN BLOCK XLXI_14 gnd
            PIN G XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_16 divide5
            PIN CLK_in XLXN_35
            PIN Reset XLXN_37
            PIN CLK_Out XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_17 const_clk
            PIN clk_50mhz clk_in
            PIN clk_500hz XLXN_35
            PIN clk_1hz
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 1280 736 R0
        BEGIN BRANCH victory
            WIRE 1216 672 1280 672
        END BRANCH
        IOMARKER 1216 672 victory R180 28
        BEGIN BRANCH clk_in
            WIRE 384 608 416 608
        END BRANCH
        IOMARKER 384 608 clk_in R180 28
        BEGIN BRANCH gameOver
            WIRE 1392 1264 1488 1264
        END BRANCH
        BEGIN BRANCH sound
            WIRE 2032 704 2064 704
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1536 640 1744 640
            WIRE 1744 640 1744 672
            WIRE 1744 672 1776 672
        END BRANCH
        INSTANCE XLXI_6 1776 800 R0
        IOMARKER 2064 704 sound R0 28
        BEGIN BRANCH XLXN_16
            WIRE 1744 1232 1760 1232
            WIRE 1760 736 1776 736
            WIRE 1760 736 1760 1232
        END BRANCH
        INSTANCE XLXI_3 1488 1328 R0
        BEGIN BRANCH XLXN_18
            WIRE 1344 816 1472 816
            WIRE 1472 816 1472 1200
            WIRE 1472 1200 1488 1200
        END BRANCH
        IOMARKER 1392 1264 gameOver R180 28
        BEGIN BRANCH XLXN_35
            WIRE 800 608 928 608
            WIRE 928 608 1280 608
            WIRE 928 608 928 816
            WIRE 928 816 960 816
        END BRANCH
        BEGIN INSTANCE XLXI_16 960 912 R0
        END INSTANCE
        BEGIN BRANCH XLXN_37
            WIRE 960 880 960 912
        END BRANCH
        INSTANCE XLXI_14 896 1040 R0
        BEGIN INSTANCE XLXI_17 416 704 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
