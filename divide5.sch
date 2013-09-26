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
        SIGNAL CLK_in
        SIGNAL Reset
        SIGNAL CLK_Out
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_11
        SIGNAL XLXN_19
        SIGNAL XLXN_18
        SIGNAL XLXN_22
        PORT Input CLK_in
        PORT Input Reset
        PORT Output CLK_Out
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
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
        BEGIN BLOCK XLXI_1 fdce
            PIN C CLK_in
            PIN CE XLXN_1
            PIN CLR Reset
            PIN D XLXN_17
            PIN Q CLK_Out
        END BLOCK
        BEGIN BLOCK XLXI_2 vcc
            PIN P XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_7 and4b3
            PIN I0 XLXN_6
            PIN I1 XLXN_15
            PIN I2 XLXN_7
            PIN I3 XLXN_16
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_8 or2
            PIN I0 XLXN_18
            PIN I1 XLXN_19
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_9 gnd
            PIN G XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_10 cd4cle
            PIN C CLK_in
            PIN CE XLXN_1
            PIN CLR Reset
            PIN D0 XLXN_22
            PIN D1 XLXN_22
            PIN D2 XLXN_22
            PIN D3 XLXN_22
            PIN L XLXN_22
            PIN CEO XLXN_18
            PIN Q0 XLXN_15
            PIN Q1 XLXN_7
            PIN Q2 XLXN_16
            PIN Q3 XLXN_6
            PIN TC
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_1
            WIRE 448 224 448 544
            WIRE 448 544 864 544
            WIRE 448 544 448 768
            WIRE 448 768 1312 768
            WIRE 1312 608 1312 768
            WIRE 1312 608 1744 608
        END BRANCH
        BEGIN BRANCH CLK_in
            WIRE 160 608 736 608
            WIRE 736 608 864 608
            WIRE 736 608 736 832
            WIRE 736 832 1408 832
            WIRE 1408 672 1744 672
            WIRE 1408 672 1408 832
        END BRANCH
        BEGIN BRANCH Reset
            WIRE 160 896 864 896
            WIRE 864 896 1744 896
            WIRE 864 704 864 896
            WIRE 1744 768 1744 896
        END BRANCH
        INSTANCE XLXI_1 1744 800 R0
        BEGIN BRANCH CLK_Out
            WIRE 2128 544 2224 544
        END BRANCH
        INSTANCE XLXI_2 384 224 R0
        INSTANCE XLXI_7 1360 416 R0
        BEGIN BRANCH XLXN_6
            WIRE 1248 352 1360 352
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1248 224 1360 224
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1248 160 1312 160
            WIRE 1312 160 1312 288
            WIRE 1312 288 1360 288
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1248 288 1280 288
            WIRE 1280 128 1280 288
            WIRE 1280 128 1360 128
            WIRE 1360 128 1360 160
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1696 544 1744 544
        END BRANCH
        INSTANCE XLXI_8 1440 640 R0
        BEGIN BRANCH XLXN_19
            WIRE 1376 432 1376 512
            WIRE 1376 512 1440 512
            WIRE 1376 432 1632 432
            WIRE 1616 256 1632 256
            WIRE 1632 256 1632 432
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1248 544 1312 544
            WIRE 1312 544 1312 576
            WIRE 1312 576 1440 576
        END BRANCH
        INSTANCE XLXI_9 624 448 R0
        BEGIN BRANCH XLXN_22
            WIRE 688 160 864 160
            WIRE 688 160 688 224
            WIRE 688 224 864 224
            WIRE 688 224 688 288
            WIRE 688 288 688 320
            WIRE 688 288 848 288
            WIRE 848 288 864 288
            WIRE 848 288 848 352
            WIRE 848 352 864 352
            WIRE 848 352 848 480
            WIRE 848 480 864 480
        END BRANCH
        INSTANCE XLXI_10 864 736 R0
        IOMARKER 160 608 CLK_in R180 28
        IOMARKER 160 896 Reset R180 28
        IOMARKER 2224 544 CLK_Out R0 28
    END SHEET
END SCHEMATIC
