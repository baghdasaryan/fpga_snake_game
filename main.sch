VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL gameOver_out
        SIGNAL d4_out
        SIGNAL d3_out
        SIGNAL d2_out
        SIGNAL d1_out
        SIGNAL g_out
        SIGNAL f_out
        SIGNAL e_out
        SIGNAL d_out
        SIGNAL c_out
        SIGNAL b_out
        SIGNAL a_out
        SIGNAL clk50_in
        SIGNAL reset_in
        SIGNAL ps2c
        SIGNAL ps2d
        SIGNAL XLXN_227(1:0)
        SIGNAL rgb_out(2:0)
        SIGNAL XLXN_290(0:8)
        SIGNAL XLXN_291(0:9)
        SIGNAL XLXN_300
        BEGIN SIGNAL soundww
            BEGIN ATTR LOC "C10"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
        END SIGNAL
        SIGNAL hs_out
        SIGNAL vs_out
        SIGNAL XLXN_314
        BEGIN SIGNAL cheat
            BEGIN ATTR LOC "F12"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
        END SIGNAL
        SIGNAL XLXN_323
        SIGNAL XLXN_324
        SIGNAL XLXN_326
        SIGNAL XLXN_327
        PORT Output d4_out
        PORT Output d3_out
        PORT Output d2_out
        PORT Output d1_out
        PORT Output g_out
        PORT Output f_out
        PORT Output e_out
        PORT Output d_out
        PORT Output c_out
        PORT Output b_out
        PORT Output a_out
        PORT Input clk50_in
        PORT Input reset_in
        PORT Input ps2c
        PORT Input ps2d
        PORT Output rgb_out(2:0)
        PORT Output soundww
        PORT Output hs_out
        PORT Output vs_out
        PORT Input cheat
        BEGIN BLOCKDEF control
            TIMESTAMP 2013 6 5 21 42 20
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF scoreBoard
            TIMESTAMP 2013 6 5 21 41 52
            RECTANGLE N 64 -768 320 0 
            LINE N 64 -736 0 -736 
            LINE N 64 -560 0 -560 
            LINE N 64 -384 0 -384 
            LINE N 64 -208 0 -208 
            LINE N 64 -32 0 -32 
            LINE N 320 -736 384 -736 
            LINE N 320 -672 384 -672 
            LINE N 320 -608 384 -608 
            LINE N 320 -544 384 -544 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF display
            TIMESTAMP 2013 6 5 21 41 22
            RECTANGLE N 64 -384 368 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 368 -352 432 -352 
            LINE N 368 -272 432 -272 
            LINE N 368 -192 432 -192 
            LINE N 368 -112 432 -112 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF random
            TIMESTAMP 2013 6 5 21 41 10
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF sound
            TIMESTAMP 2013 6 5 21 41 0
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
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
        BEGIN BLOCKDEF const_clk
            TIMESTAMP 2013 6 5 21 40 0
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 inv
            PIN I reset_in
            PIN O XLXN_314
        END BLOCK
        BEGIN BLOCK XLXI_2 control
            PIN reset XLXN_314
            PIN ps2c ps2c
            PIN ps2d ps2d
            PIN move(1:0) XLXN_227(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_23 display
            PIN clk50_in clk50_in
            PIN reset_in XLXN_314
            PIN win_in XLXN_327
            PIN appleX_in(0:9) XLXN_291(0:9)
            PIN appleY_in(0:8) XLXN_290(0:8)
            PIN move_in(1:0) XLXN_227(1:0)
            PIN hs_out hs_out
            PIN vs_out vs_out
            PIN game_out gameOver_out
            PIN score_out XLXN_324
            PIN rgb_out(2:0) rgb_out(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_44 random
            PIN clk1 clk50_in
            PIN clk2 XLXN_300
            PIN random_x(0:9) XLXN_291(0:9)
            PIN random_y(0:8) XLXN_290(0:8)
        END BLOCK
        BEGIN BLOCK XLXI_47 sound
            PIN victory XLXN_327
            PIN clk_in clk50_in
            PIN gameOver gameOver_out
            PIN sound soundww
        END BLOCK
        BEGIN BLOCK XLXI_49 const_clk
            PIN clk_50mhz clk50_in
            PIN clk_500hz XLXN_300
            PIN clk_1hz XLXN_326
        END BLOCK
        BEGIN BLOCK XLXI_50 scoreBoard
            PIN clk_1hz XLXN_326
            PIN reset XLXN_314
            PIN gameOver gameOver_out
            PIN score XLXN_324
            PIN clk_500hz XLXN_300
            PIN a a_out
            PIN b b_out
            PIN c c_out
            PIN d d_out
            PIN e e_out
            PIN f f_out
            PIN g g_out
            PIN d1 d1_out
            PIN d2 d2_out
            PIN d3 d3_out
            PIN d4 d4_out
            PIN victory XLXN_323
        END BLOCK
        BEGIN BLOCK XLXI_48 or2
            PIN I0 cheat
            PIN I1 XLXN_323
            PIN O XLXN_327
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH d4_out
            WIRE 2736 1488 2768 1488
        END BRANCH
        IOMARKER 2768 1488 d4_out R0 28
        BEGIN BRANCH d3_out
            WIRE 2736 1424 2768 1424
        END BRANCH
        IOMARKER 2768 1424 d3_out R0 28
        BEGIN BRANCH d2_out
            WIRE 2736 1360 2768 1360
        END BRANCH
        IOMARKER 2768 1360 d2_out R0 28
        BEGIN BRANCH d1_out
            WIRE 2736 1296 2768 1296
        END BRANCH
        IOMARKER 2768 1296 d1_out R0 28
        BEGIN BRANCH g_out
            WIRE 2736 1232 2768 1232
        END BRANCH
        IOMARKER 2768 1232 g_out R0 28
        BEGIN BRANCH f_out
            WIRE 2736 1168 2768 1168
        END BRANCH
        IOMARKER 2768 1168 f_out R0 28
        BEGIN BRANCH e_out
            WIRE 2736 1104 2768 1104
        END BRANCH
        IOMARKER 2768 1104 e_out R0 28
        BEGIN BRANCH d_out
            WIRE 2736 1040 2768 1040
        END BRANCH
        IOMARKER 2768 1040 d_out R0 28
        BEGIN BRANCH c_out
            WIRE 2736 976 2768 976
        END BRANCH
        IOMARKER 2768 976 c_out R0 28
        BEGIN BRANCH b_out
            WIRE 2736 912 2768 912
        END BRANCH
        IOMARKER 2768 912 b_out R0 28
        BEGIN BRANCH a_out
            WIRE 2736 848 2768 848
        END BRANCH
        IOMARKER 2768 848 a_out R0 28
        BEGIN BRANCH reset_in
            WIRE 368 688 400 688
        END BRANCH
        BEGIN BRANCH ps2c
            WIRE 768 752 800 752
        END BRANCH
        BEGIN BRANCH ps2d
            WIRE 768 816 800 816
        END BRANCH
        INSTANCE XLXI_4 400 720 R0
        IOMARKER 368 688 reset_in R180 28
        IOMARKER 768 752 ps2c R180 28
        IOMARKER 768 816 ps2d R180 28
        BEGIN INSTANCE XLXI_23 1952 464 R0
        END INSTANCE
        IOMARKER 176 1200 clk50_in R180 28
        BEGIN BRANCH XLXN_290(0:8)
            WIRE 1168 1264 1552 1264
            WIRE 1552 368 1552 1264
            WIRE 1552 368 1952 368
        END BRANCH
        BEGIN BRANCH XLXN_291(0:9)
            WIRE 1168 1200 1456 1200
            WIRE 1456 304 1456 1200
            WIRE 1456 304 1952 304
        END BRANCH
        BEGIN INSTANCE XLXI_47 736 1648 R0
        END INSTANCE
        BEGIN BRANCH soundww
            WIRE 1120 1488 1152 1488
        END BRANCH
        IOMARKER 1152 1488 soundww R0 28
        BEGIN INSTANCE XLXI_49 1728 1840 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 800 848 R0
        END INSTANCE
        BEGIN BRANCH XLXN_227(1:0)
            WIRE 1184 688 1232 688
            WIRE 1232 432 1952 432
            WIRE 1232 432 1232 688
        END BRANCH
        BEGIN INSTANCE XLXI_44 784 1296 R0
        END INSTANCE
        BEGIN BRANCH rgb_out(2:0)
            WIRE 2384 432 2432 432
        END BRANCH
        IOMARKER 2432 432 rgb_out(2:0) R0 28
        BEGIN BRANCH hs_out
            WIRE 2384 112 2464 112
        END BRANCH
        IOMARKER 2464 112 hs_out R0 28
        BEGIN BRANCH vs_out
            WIRE 2384 192 2464 192
        END BRANCH
        IOMARKER 2464 192 vs_out R0 28
        BEGIN BRANCH clk50_in
            WIRE 176 1200 224 1200
            WIRE 224 1200 784 1200
            WIRE 224 1200 224 1552
            WIRE 224 1552 224 1744
            WIRE 224 1744 1728 1744
            WIRE 224 1552 736 1552
            WIRE 224 112 1952 112
            WIRE 224 112 224 1200
        END BRANCH
        BEGIN BRANCH XLXN_314
            WIRE 624 688 640 688
            WIRE 640 688 800 688
            WIRE 640 688 640 1024
            WIRE 640 1024 2352 1024
            WIRE 640 176 1952 176
            WIRE 640 176 640 688
        END BRANCH
        BEGIN BRANCH gameOver_out
            WIRE 688 1616 736 1616
            WIRE 688 1616 688 1920
            WIRE 688 1920 2208 1920
            WIRE 2208 1920 3312 1920
            WIRE 2208 1200 2208 1920
            WIRE 2208 1200 2352 1200
            WIRE 2384 272 2672 272
            WIRE 2672 272 2672 528
            WIRE 2672 528 3312 528
            WIRE 3312 528 3312 1920
        END BRANCH
        BEGIN INSTANCE XLXI_50 2352 1584 R0
        END INSTANCE
        BEGIN BRANCH cheat
            WIRE 1840 1456 1984 1456
        END BRANCH
        INSTANCE XLXI_48 1840 1392 R180
        IOMARKER 1984 1456 cheat R0 28
        BEGIN BRANCH XLXN_323
            WIRE 1840 1520 1920 1520
            WIRE 1920 1520 1920 1616
            WIRE 1920 1616 2816 1616
            WIRE 2736 1552 2816 1552
            WIRE 2816 1552 2816 1616
        END BRANCH
        BEGIN BRANCH XLXN_300
            WIRE 768 1264 784 1264
            WIRE 768 1264 768 1344
            WIRE 768 1344 2272 1344
            WIRE 2272 1344 2272 1552
            WIRE 2272 1552 2272 1744
            WIRE 2272 1552 2352 1552
            WIRE 2112 1744 2272 1744
        END BRANCH
        BEGIN BRANCH XLXN_324
            WIRE 2304 624 2640 624
            WIRE 2304 624 2304 1376
            WIRE 2304 1376 2352 1376
            WIRE 2384 352 2400 352
            WIRE 2400 352 2640 352
            WIRE 2640 352 2640 624
        END BRANCH
        BEGIN BRANCH XLXN_327
            WIRE 720 1392 720 1488
            WIRE 720 1488 736 1488
            WIRE 720 1392 1504 1392
            WIRE 1504 1392 1504 1488
            WIRE 1504 1488 1584 1488
            WIRE 1504 240 1952 240
            WIRE 1504 240 1504 1392
        END BRANCH
        BEGIN BRANCH XLXN_326
            WIRE 2112 1808 2128 1808
            WIRE 2128 1808 2160 1808
            WIRE 2160 848 2160 1808
            WIRE 2160 848 2352 848
        END BRANCH
    END SHEET
END SCHEMATIC
