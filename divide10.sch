VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL CLK_in
        SIGNAL Reset
        SIGNAL XLXN_4
        SIGNAL XLXN_11
        SIGNAL CLK_Out
        SIGNAL XLXN_13
        PORT Input CLK_in
        PORT Input Reset
        PORT Output CLK_Out
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
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
        BEGIN BLOCKDEF cd4cle
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -192 320 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -576 64 -576 
            LINE N 0 -512 64 -512 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -256 64 -256 
            LINE N 384 -576 320 -576 
            LINE N 384 -512 320 -512 
            LINE N 384 -448 320 -448 
            LINE N 384 -384 320 -384 
            LINE N 384 -128 320 -128 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -640 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 vcc
            PIN P XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 gnd
            PIN G XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_10 cd4cle
            PIN C CLK_in
            PIN CE XLXN_1
            PIN CLR Reset
            PIN D0 XLXN_11
            PIN D1 XLXN_11
            PIN D2 XLXN_11
            PIN D3 XLXN_11
            PIN L XLXN_11
            PIN CEO XLXN_13
            PIN Q0
            PIN Q1
            PIN Q2
            PIN Q3
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_1 fdce
            PIN C CLK_in
            PIN CE XLXN_1
            PIN CLR Reset
            PIN D XLXN_13
            PIN Q CLK_Out
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_1
            WIRE 496 224 496 544
            WIRE 496 544 912 544
            WIRE 496 544 496 768
            WIRE 496 768 1360 768
            WIRE 1360 608 1360 768
            WIRE 1360 608 1792 608
        END BRANCH
        BEGIN BRANCH CLK_in
            WIRE 208 608 784 608
            WIRE 784 608 912 608
            WIRE 784 608 784 832
            WIRE 784 832 1456 832
            WIRE 1456 672 1792 672
            WIRE 1456 672 1456 832
        END BRANCH
        BEGIN BRANCH Reset
            WIRE 208 896 912 896
            WIRE 912 896 1792 896
            WIRE 912 704 912 896
            WIRE 1792 768 1792 896
        END BRANCH
        INSTANCE XLXI_2 432 224 R0
        BEGIN BRANCH XLXN_11
            WIRE 672 288 896 288
            WIRE 896 288 912 288
            WIRE 896 288 896 352
            WIRE 896 352 912 352
            WIRE 896 352 896 480
            WIRE 896 480 912 480
            WIRE 672 288 672 352
            WIRE 896 160 912 160
            WIRE 896 160 896 224
            WIRE 896 224 912 224
            WIRE 896 224 896 288
        END BRANCH
        INSTANCE XLXI_3 608 480 R0
        INSTANCE XLXI_10 912 736 R0
        IOMARKER 208 608 CLK_in R180 28
        IOMARKER 208 896 Reset R180 28
        INSTANCE XLXI_1 1792 800 R0
        BEGIN BRANCH CLK_Out
            WIRE 2176 544 2208 544
        END BRANCH
        IOMARKER 2208 544 CLK_Out R0 28
        BEGIN BRANCH XLXN_13
            WIRE 1296 544 1792 544
        END BRANCH
    END SHEET
END SCHEMATIC
