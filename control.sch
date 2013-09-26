VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_33
        SIGNAL XLXN_27
        SIGNAL move(1:0)
        SIGNAL move(1)
        SIGNAL move(0)
        SIGNAL XLXN_314
        SIGNAL XLXN_315
        SIGNAL reset
        SIGNAL XLXN_318
        SIGNAL ps2c
        SIGNAL ps2d
        SIGNAL XLXN_352
        SIGNAL XLXN_353
        SIGNAL XLXN_355
        SIGNAL XLXN_357
        PORT Output move(1:0)
        PORT Input reset
        PORT Input ps2c
        PORT Input ps2d
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
        BEGIN BLOCKDEF nor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N 28 -144 204 32 192 -96 112 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -48 48 -48 
            LINE N 112 -144 48 -144 
        END BLOCKDEF
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
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF or4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF keyboard
            TIMESTAMP 2013 6 5 21 42 7
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_11 and2
            PIN I0 XLXN_22
            PIN I1 XLXN_23
            PIN O XLXN_314
        END BLOCK
        BEGIN BLOCK XLXI_8 nor2
            PIN I0 XLXN_352
            PIN I1 XLXN_355
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 XLXN_353
            PIN I1 XLXN_357
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_4 or2
            PIN I0 XLXN_352
            PIN I1 XLXN_353
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_10 and2
            PIN I0 XLXN_33
            PIN I1 XLXN_27
            PIN O XLXN_315
        END BLOCK
        BEGIN BLOCK XLXI_9 nor2
            PIN I0 XLXN_355
            PIN I1 XLXN_357
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_110 fdc
            PIN C XLXN_318
            PIN CLR reset
            PIN D XLXN_314
            PIN Q move(0)
        END BLOCK
        BEGIN BLOCK XLXI_111 fdc
            PIN C XLXN_318
            PIN CLR reset
            PIN D XLXN_315
            PIN Q move(1)
        END BLOCK
        BEGIN BLOCK XLXI_140 or4
            PIN I0 XLXN_353
            PIN I1 XLXN_357
            PIN I2 XLXN_355
            PIN I3 XLXN_352
            PIN O XLXN_318
        END BLOCK
        BEGIN BLOCK XLXI_142 keyboard
            PIN keyboardClock ps2c
            PIN keyboardData ps2d
            PIN left XLXN_357
            PIN right XLXN_355
            PIN up XLXN_353
            PIN down XLXN_352
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_22
            WIRE 1184 272 1200 272
            WIRE 1200 192 1216 192
            WIRE 1200 192 1200 272
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1168 128 1216 128
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1184 592 1216 592
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1184 448 1200 448
            WIRE 1200 448 1200 528
            WIRE 1200 528 1216 528
        END BRANCH
        INSTANCE XLXI_11 1216 256 R0
        INSTANCE XLXI_8 928 368 R0
        INSTANCE XLXI_5 912 224 R0
        INSTANCE XLXI_4 928 688 R0
        INSTANCE XLXI_10 1216 656 R0
        INSTANCE XLXI_9 928 544 R0
        BEGIN BRANCH move(1:0)
            WIRE 2160 160 2160 368
            WIRE 2160 368 2224 368
            WIRE 2160 368 2160 560
        END BRANCH
        BUSTAP 2160 560 2064 560
        BUSTAP 2160 160 2064 160
        INSTANCE XLXI_110 1568 416 R0
        INSTANCE XLXI_111 1568 816 R0
        BEGIN BRANCH move(1)
            WIRE 1952 560 2032 560
            WIRE 2032 560 2064 560
            BEGIN DISPLAY 2032 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH move(0)
            WIRE 1952 160 2032 160
            WIRE 2032 160 2064 160
            BEGIN DISPLAY 2032 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_314
            WIRE 1472 160 1568 160
        END BRANCH
        BEGIN BRANCH XLXN_315
            WIRE 1472 560 1568 560
        END BRANCH
        BEGIN BRANCH reset
            WIRE 720 960 1552 960
            WIRE 1552 384 1568 384
            WIRE 1552 384 1552 784
            WIRE 1552 784 1568 784
            WIRE 1552 784 1552 960
        END BRANCH
        INSTANCE XLXI_140 928 944 R0
        BEGIN BRANCH XLXN_318
            WIRE 1184 784 1376 784
            WIRE 1376 688 1376 784
            WIRE 1376 688 1536 688
            WIRE 1536 688 1568 688
            WIRE 1536 288 1568 288
            WIRE 1536 288 1536 688
        END BRANCH
        BEGIN BRANCH ps2c
            WIRE 128 432 160 432
        END BRANCH
        BEGIN BRANCH ps2d
            WIRE 128 624 160 624
        END BRANCH
        BEGIN INSTANCE XLXI_142 160 656 R0
        END INSTANCE
        BEGIN BRANCH XLXN_352
            WIRE 544 624 912 624
            WIRE 912 624 928 624
            WIRE 912 624 912 688
            WIRE 912 688 928 688
            WIRE 912 304 928 304
            WIRE 912 304 912 624
        END BRANCH
        BEGIN BRANCH XLXN_353
            WIRE 544 560 752 560
            WIRE 752 560 752 880
            WIRE 752 880 928 880
            WIRE 752 560 928 560
            WIRE 752 160 912 160
            WIRE 752 160 752 560
        END BRANCH
        BEGIN BRANCH XLXN_355
            WIRE 544 480 848 480
            WIRE 848 480 928 480
            WIRE 848 480 848 752
            WIRE 848 752 928 752
            WIRE 544 480 544 496
            WIRE 848 240 848 480
            WIRE 848 240 928 240
        END BRANCH
        BEGIN BRANCH XLXN_357
            WIRE 544 416 544 432
            WIRE 544 416 800 416
            WIRE 800 416 800 816
            WIRE 800 816 928 816
            WIRE 800 416 928 416
            WIRE 800 96 912 96
            WIRE 800 96 800 416
        END BRANCH
        IOMARKER 2224 368 move(1:0) R0 28
        IOMARKER 720 960 reset R180 28
        IOMARKER 128 432 ps2c R180 28
        IOMARKER 128 624 ps2d R180 28
    END SHEET
END SCHEMATIC
