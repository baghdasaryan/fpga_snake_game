VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL clk_50mhz
        SIGNAL XLXN_20
        SIGNAL clk_500hz
        SIGNAL reset
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL clk_1hz
        PORT Input clk_50mhz
        PORT Output clk_500hz
        PORT Output clk_1hz
        BEGIN BLOCKDEF divide10
            TIMESTAMP 2013 6 5 21 39 39
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
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
        BEGIN BLOCK XLXI_1 divide10
            PIN CLK_in clk_50mhz
            PIN Reset reset
            PIN CLK_Out XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 divide10
            PIN CLK_in XLXN_1
            PIN Reset reset
            PIN CLK_Out XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 divide10
            PIN CLK_in XLXN_2
            PIN Reset reset
            PIN CLK_Out XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 divide10
            PIN CLK_in XLXN_3
            PIN Reset reset
            PIN CLK_Out XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_15 divide10
            PIN CLK_in XLXN_20
            PIN Reset reset
            PIN CLK_Out clk_500hz
        END BLOCK
        BEGIN BLOCK XLXI_35 gnd
            PIN G reset
        END BLOCK
        BEGIN BLOCK XLXI_36 divide5
            PIN CLK_in XLXN_21
            PIN Reset reset
            PIN CLK_Out clk_1hz
        END BLOCK
        BEGIN BLOCK XLXI_37 divide10
            PIN CLK_in XLXN_22
            PIN Reset reset
            PIN CLK_Out XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_38 divide10
            PIN CLK_in clk_500hz
            PIN Reset reset
            PIN CLK_Out XLXN_22
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 320 240 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 704 144 736 144
        END BRANCH
        BEGIN INSTANCE XLXI_2 736 240 R0
        END INSTANCE
        BEGIN BRANCH XLXN_2
            WIRE 1120 144 1152 144
        END BRANCH
        BEGIN INSTANCE XLXI_3 1152 240 R0
        END INSTANCE
        BEGIN BRANCH XLXN_3
            WIRE 1536 144 1568 144
        END BRANCH
        BEGIN INSTANCE XLXI_4 1568 240 R0
        END INSTANCE
        BEGIN BRANCH clk_50mhz
            WIRE 224 144 320 144
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1952 144 2032 144
        END BRANCH
        BEGIN BRANCH clk_500hz
            WIRE 1120 304 1120 432
            WIRE 1120 432 1152 432
            WIRE 1120 304 2416 304
            WIRE 2416 304 2480 304
            WIRE 2416 144 2432 144
            WIRE 2432 144 2480 144
            WIRE 2480 144 2528 144
            WIRE 2480 144 2480 304
        END BRANCH
        BEGIN INSTANCE XLXI_15 2032 240 R0
        END INSTANCE
        BEGIN BRANCH reset
            WIRE 80 208 304 208
            WIRE 304 208 320 208
            WIRE 304 208 304 272
            WIRE 304 272 720 272
            WIRE 720 272 1104 272
            WIRE 1104 272 1136 272
            WIRE 1136 272 1552 272
            WIRE 1552 272 1968 272
            WIRE 1104 272 1104 576
            WIRE 1104 576 1136 576
            WIRE 1136 576 1536 576
            WIRE 1536 576 1552 576
            WIRE 1552 576 1968 576
            WIRE 80 208 80 224
            WIRE 720 208 736 208
            WIRE 720 208 720 272
            WIRE 1136 208 1152 208
            WIRE 1136 208 1136 272
            WIRE 1136 496 1152 496
            WIRE 1136 496 1136 576
            WIRE 1552 208 1568 208
            WIRE 1552 208 1552 272
            WIRE 1552 496 1552 576
            WIRE 1552 496 1568 496
            WIRE 1968 208 1968 272
            WIRE 1968 208 2032 208
            WIRE 1968 496 1984 496
            WIRE 1968 496 1968 576
        END BRANCH
        INSTANCE XLXI_35 16 352 R0
        IOMARKER 224 144 clk_50mhz R180 28
        BEGIN INSTANCE XLXI_36 1984 528 R0
        END INSTANCE
        BEGIN BRANCH XLXN_21
            WIRE 1952 432 1984 432
        END BRANCH
        BEGIN INSTANCE XLXI_37 1568 528 R0
        END INSTANCE
        BEGIN BRANCH XLXN_22
            WIRE 1536 432 1568 432
        END BRANCH
        BEGIN INSTANCE XLXI_38 1152 528 R0
        END INSTANCE
        IOMARKER 2528 144 clk_500hz R0 28
        BEGIN BRANCH clk_1hz
            WIRE 2368 432 2400 432
        END BRANCH
        IOMARKER 2400 432 clk_1hz R0 28
    END SHEET
END SCHEMATIC
