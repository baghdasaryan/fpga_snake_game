VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a
        SIGNAL b
        SIGNAL c
        SIGNAL d
        SIGNAL e
        SIGNAL f
        SIGNAL g
        SIGNAL d1
        SIGNAL d2
        SIGNAL d3
        SIGNAL d4
        SIGNAL XLXN_336
        SIGNAL XLXN_335
        SIGNAL XLXN_746
        SIGNAL XLXN_747
        SIGNAL XLXN_750
        SIGNAL clk_1hz
        SIGNAL XLXN_614
        SIGNAL XLXN_782
        SIGNAL XLXN_828
        SIGNAL XLXN_855
        SIGNAL reset
        SIGNAL XLXN_788
        SIGNAL XLXN_823
        SIGNAL XLXN_891
        SIGNAL XLXN_762
        SIGNAL XLXN_901
        SIGNAL XLXN_914
        SIGNAL XLXN_822
        SIGNAL XLXN_829
        SIGNAL XLXN_827
        SIGNAL XLXN_826
        SIGNAL XLXN_915
        SIGNAL XLXN_916
        SIGNAL victory
        SIGNAL gameOver
        SIGNAL XLXN_1244
        SIGNAL XLXN_1246
        SIGNAL score
        SIGNAL XLXN_1250
        SIGNAL XLXN_1252
        SIGNAL XLXN_1259
        SIGNAL clk_500hz
        SIGNAL XLXN_1254
        SIGNAL XLXN_1267
        SIGNAL XLXN_1268
        PORT Output a
        PORT Output b
        PORT Output c
        PORT Output d
        PORT Output e
        PORT Output f
        PORT Output g
        PORT Output d1
        PORT Output d2
        PORT Output d3
        PORT Output d4
        PORT Input clk_1hz
        PORT Input reset
        PORT Output victory
        PORT Input gameOver
        PORT Input score
        PORT Input clk_500hz
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF score_out
            TIMESTAMP 2013 6 5 21 41 32
            RECTANGLE N 64 -704 320 0 
            LINE N 64 -672 0 -672 
            LINE N 64 -544 0 -544 
            LINE N 64 -416 0 -416 
            LINE N 64 -288 0 -288 
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
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
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
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
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
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
        BEGIN BLOCKDEF nor4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 216 -160 
            CIRCLE N 192 -172 216 -148 
            LINE N 112 -208 48 -208 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF ftc
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 384 -256 320 -256 
            LINE N 0 -256 64 -256 
            LINE N 0 -32 64 -32 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and5b3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -320 
            LINE N 64 -240 144 -240 
            ARC N 96 -240 192 -144 144 -144 144 -240 
            LINE N 144 -144 64 -144 
            LINE N 256 -192 192 -192 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCK XLXI_119 score_out
            PIN x0 XLXN_916
            PIN x1 XLXN_891
            PIN x2 XLXN_335
            PIN x3 XLXN_336
            PIN disp1 XLXN_746
            PIN disp2 XLXN_747
            PIN a a
            PIN b b
            PIN c c
            PIN d d
            PIN e e
            PIN f f
            PIN g g
            PIN d1 d1
            PIN d2 d2
            PIN d3 d3
            PIN d4 d4
        END BLOCK
        BEGIN BLOCK XLXI_170 and2
            PIN I0 XLXN_750
            PIN I1 XLXN_1259
            PIN O XLXN_747
        END BLOCK
        BEGIN BLOCK XLXI_174 and2b1
            PIN I0 XLXN_1259
            PIN I1 XLXN_750
            PIN O XLXN_746
        END BLOCK
        BEGIN BLOCK XLXI_162 m2_1
            PIN D0 XLXN_614
            PIN D1 clk_1hz
            PIN S0 XLXN_1246
            PIN O XLXN_750
        END BLOCK
        BEGIN BLOCK XLXI_168 vcc
            PIN P XLXN_614
        END BLOCK
        BEGIN BLOCK XLXI_175 cd4cle
            PIN C XLXN_1252
            PIN CE XLXN_1244
            PIN CLR reset
            PIN D0 XLXN_782
            PIN D1 XLXN_782
            PIN D2 XLXN_782
            PIN D3 XLXN_782
            PIN L XLXN_782
            PIN CEO XLXN_1250
            PIN Q0 XLXN_829
            PIN Q1 XLXN_828
            PIN Q2 XLXN_827
            PIN Q3 XLXN_826
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_204 nor4
            PIN I0 XLXN_826
            PIN I1 XLXN_827
            PIN I2 XLXN_828
            PIN I3 XLXN_829
            PIN O XLXN_855
        END BLOCK
        BEGIN BLOCK XLXI_176 cd4cle
            PIN C XLXN_1252
            PIN CE XLXN_1250
            PIN CLR reset
            PIN D0 XLXN_788
            PIN D1 XLXN_788
            PIN D2 XLXN_788
            PIN D3 XLXN_788
            PIN L XLXN_788
            PIN CEO
            PIN Q0 XLXN_914
            PIN Q1 XLXN_823
            PIN Q2 XLXN_915
            PIN Q3 XLXN_822
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_187 gnd
            PIN G XLXN_788
        END BLOCK
        BEGIN BLOCK XLXI_223 m2_1
            PIN D0 XLXN_827
            PIN D1 XLXN_915
            PIN S0 XLXN_1259
            PIN O XLXN_335
        END BLOCK
        BEGIN BLOCK XLXI_226 m2_1
            PIN D0 XLXN_826
            PIN D1 XLXN_822
            PIN S0 XLXN_1259
            PIN O XLXN_336
        END BLOCK
        BEGIN BLOCK XLXI_224 m2_1
            PIN D0 XLXN_828
            PIN D1 XLXN_823
            PIN S0 XLXN_1259
            PIN O XLXN_891
        END BLOCK
        BEGIN BLOCK XLXI_225 m2_1
            PIN D0 XLXN_829
            PIN D1 XLXN_914
            PIN S0 XLXN_1259
            PIN O XLXN_916
        END BLOCK
        BEGIN BLOCK XLXI_177 fdc
            PIN C XLXN_901
            PIN CLR reset
            PIN D XLXN_762
            PIN Q victory
        END BLOCK
        BEGIN BLOCK XLXI_178 vcc
            PIN P XLXN_762
        END BLOCK
        BEGIN BLOCK XLXI_166 or2
            PIN I0 victory
            PIN I1 gameOver
            PIN O XLXN_1246
        END BLOCK
        BEGIN BLOCK XLXI_352 gnd
            PIN G XLXN_782
        END BLOCK
        BEGIN BLOCK XLXI_250 and2b1
            PIN I0 XLXN_1246
            PIN I1 score
            PIN O XLXN_1252
        END BLOCK
        BEGIN BLOCK XLXI_354 vcc
            PIN P XLXN_1244
        END BLOCK
        BEGIN BLOCK XLXI_357 vcc
            PIN P XLXN_1254
        END BLOCK
        BEGIN BLOCK XLXI_356 ftc
            PIN C clk_500hz
            PIN CLR XLXN_1267
            PIN T XLXN_1254
            PIN Q XLXN_1259
        END BLOCK
        BEGIN BLOCK XLXI_369 gnd
            PIN G XLXN_1267
        END BLOCK
        BEGIN BLOCK XLXI_371 and5b3
            PIN I0 XLXN_822
            PIN I1 XLXN_915
            PIN I2 XLXN_914
            PIN I3 XLXN_823
            PIN I4 XLXN_855
            PIN O XLXN_901
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH a
            WIRE 3024 1376 3056 1376
        END BRANCH
        BEGIN BRANCH b
            WIRE 3024 1440 3056 1440
        END BRANCH
        BEGIN BRANCH c
            WIRE 3024 1504 3056 1504
        END BRANCH
        BEGIN BRANCH d
            WIRE 3024 1568 3056 1568
        END BRANCH
        BEGIN BRANCH e
            WIRE 3024 1632 3056 1632
        END BRANCH
        BEGIN BRANCH f
            WIRE 3024 1696 3056 1696
        END BRANCH
        BEGIN BRANCH g
            WIRE 3024 1760 3056 1760
        END BRANCH
        BEGIN BRANCH d1
            WIRE 3024 1824 3056 1824
        END BRANCH
        BEGIN BRANCH d2
            WIRE 3024 1888 3056 1888
        END BRANCH
        BEGIN BRANCH d3
            WIRE 3024 1952 3056 1952
        END BRANCH
        BEGIN BRANCH d4
            WIRE 3024 2016 3056 2016
        END BRANCH
        BEGIN BRANCH XLXN_336
            WIRE 2320 1760 2640 1760
        END BRANCH
        BEGIN BRANCH XLXN_335
            WIRE 2320 1536 2352 1536
            WIRE 2352 1536 2352 1632
            WIRE 2352 1632 2640 1632
        END BRANCH
        BEGIN INSTANCE XLXI_119 2640 2048 R0
        END INSTANCE
        BEGIN BRANCH XLXN_746
            WIRE 2608 1888 2640 1888
        END BRANCH
        BEGIN BRANCH XLXN_747
            WIRE 2608 2016 2640 2016
        END BRANCH
        INSTANCE XLXI_170 2352 2112 R0
        INSTANCE XLXI_174 2352 1984 R0
        BEGIN BRANCH XLXN_750
            WIRE 2256 2048 2320 2048
            WIRE 2320 2048 2352 2048
            WIRE 2320 1856 2352 1856
            WIRE 2320 1856 2320 2048
        END BRANCH
        BEGIN BRANCH clk_1hz
            WIRE 1904 2080 1936 2080
        END BRANCH
        BEGIN BRANCH XLXN_614
            WIRE 1920 2016 1936 2016
        END BRANCH
        INSTANCE XLXI_162 1936 2176 R0
        INSTANCE XLXI_168 1920 2080 R270
        INSTANCE XLXI_175 480 832 R0
        BEGIN BRANCH XLXN_828
            WIRE 864 320 976 320
            WIRE 976 320 1056 320
            WIRE 976 320 976 1280
            WIRE 976 1280 2000 1280
        END BRANCH
        INSTANCE XLXI_204 1056 512 R0
        BEGIN BRANCH XLXN_855
            WIRE 1312 352 1328 352
            WIRE 1328 112 1328 352
            WIRE 1328 112 1792 112
            WIRE 1792 112 1792 192
            WIRE 1792 192 1984 192
        END BRANCH
        BEGIN BRANCH reset
            WIRE 336 896 464 896
            WIRE 464 896 1392 896
            WIRE 1392 896 2608 896
            WIRE 464 800 480 800
            WIRE 464 800 464 896
            WIRE 1392 800 1392 896
            WIRE 2608 416 2608 896
        END BRANCH
        BEGIN BRANCH XLXN_788
            WIRE 1360 576 1376 576
            WIRE 1376 576 1392 576
            WIRE 1376 256 1392 256
            WIRE 1376 256 1376 320
            WIRE 1376 320 1392 320
            WIRE 1376 320 1376 384
            WIRE 1376 384 1392 384
            WIRE 1376 384 1376 448
            WIRE 1376 448 1392 448
            WIRE 1376 448 1376 576
        END BRANCH
        INSTANCE XLXI_176 1392 832 R0
        INSTANCE XLXI_187 1232 512 R90
        INSTANCE XLXI_223 2000 1664 R0
        INSTANCE XLXI_226 2000 1888 R0
        INSTANCE XLXI_224 2000 1440 R0
        INSTANCE XLXI_225 2000 1216 R0
        BEGIN BRANCH XLXN_891
            WIRE 2320 1312 2384 1312
            WIRE 2384 1312 2384 1504
            WIRE 2384 1504 2640 1504
        END BRANCH
        BEGIN BRANCH XLXN_762
            WIRE 2592 192 2608 192
        END BRANCH
        BEGIN BRANCH XLXN_901
            WIRE 2240 320 2608 320
        END BRANCH
        BEGIN BRANCH XLXN_822
            WIRE 1776 448 1840 448
            WIRE 1840 448 1984 448
            WIRE 1840 448 1840 1792
            WIRE 1840 1792 2000 1792
        END BRANCH
        BEGIN BRANCH XLXN_829
            WIRE 864 256 1008 256
            WIRE 1008 256 1056 256
            WIRE 1008 256 1008 1056
            WIRE 1008 1056 2000 1056
        END BRANCH
        BEGIN BRANCH XLXN_827
            WIRE 864 384 944 384
            WIRE 944 384 1056 384
            WIRE 944 384 944 1504
            WIRE 944 1504 2000 1504
        END BRANCH
        BEGIN BRANCH XLXN_826
            WIRE 864 448 912 448
            WIRE 912 448 1056 448
            WIRE 912 448 912 1728
            WIRE 912 1728 2000 1728
        END BRANCH
        BEGIN BRANCH XLXN_915
            WIRE 1776 384 1872 384
            WIRE 1872 384 1984 384
            WIRE 1872 384 1872 1568
            WIRE 1872 1568 2000 1568
        END BRANCH
        BEGIN BRANCH XLXN_916
            WIRE 2320 1088 2416 1088
            WIRE 2416 1088 2416 1376
            WIRE 2416 1376 2640 1376
        END BRANCH
        INSTANCE XLXI_177 2608 448 R0
        INSTANCE XLXI_178 2592 256 R270
        BEGIN BRANCH victory
            WIRE 2992 192 3024 192
            WIRE 3024 192 3072 192
            WIRE 3024 144 3184 144
            WIRE 3024 144 3024 192
        END BRANCH
        BEGIN BRANCH gameOver
            WIRE 3168 80 3184 80
        END BRANCH
        INSTANCE XLXI_166 3184 208 R0
        IOMARKER 3056 1376 a R0 28
        IOMARKER 3056 1440 b R0 28
        IOMARKER 3056 1504 c R0 28
        IOMARKER 3056 1568 d R0 28
        IOMARKER 3056 1632 e R0 28
        IOMARKER 3056 1696 f R0 28
        IOMARKER 3056 1760 g R0 28
        IOMARKER 3056 1824 d1 R0 28
        IOMARKER 3056 1888 d2 R0 28
        IOMARKER 3056 1952 d3 R0 28
        IOMARKER 3056 2016 d4 R0 28
        IOMARKER 1904 2080 clk_1hz R180 28
        IOMARKER 336 896 reset R180 28
        IOMARKER 3072 192 victory R0 28
        IOMARKER 3168 80 gameOver R180 28
        BEGIN BRANCH XLXN_782
            WIRE 464 256 480 256
            WIRE 464 256 464 320
            WIRE 464 320 480 320
            WIRE 464 320 464 384
            WIRE 464 384 480 384
            WIRE 464 384 464 448
            WIRE 464 448 480 448
            WIRE 464 448 464 576
            WIRE 464 576 480 576
        END BRANCH
        INSTANCE XLXI_352 336 192 R90
        BEGIN BRANCH XLXN_1244
            WIRE 368 592 464 592
            WIRE 464 592 464 640
            WIRE 464 640 480 640
        END BRANCH
        BEGIN BRANCH XLXN_1246
            WIRE 16 32 16 736
            WIRE 16 736 16 2144
            WIRE 16 2144 1936 2144
            WIRE 16 736 160 736
            WIRE 16 32 3504 32
            WIRE 3504 32 3504 112
            WIRE 3440 112 3504 112
        END BRANCH
        BEGIN BRANCH score
            WIRE 144 672 160 672
        END BRANCH
        INSTANCE XLXI_354 368 656 R270
        BEGIN BRANCH XLXN_1250
            WIRE 864 640 1392 640
        END BRANCH
        IOMARKER 144 672 score R180 28
        INSTANCE XLXI_250 160 800 R0
        BEGIN BRANCH XLXN_1252
            WIRE 416 704 432 704
            WIRE 432 704 480 704
            WIRE 432 704 432 848
            WIRE 432 848 1296 848
            WIRE 1296 704 1392 704
            WIRE 1296 704 1296 848
        END BRANCH
        BEGIN BRANCH XLXN_1259
            WIRE 1808 1856 1984 1856
            WIRE 1984 1856 2000 1856
            WIRE 1984 1856 1984 1920
            WIRE 1984 1920 2336 1920
            WIRE 2336 1920 2352 1920
            WIRE 2336 1920 2336 1984
            WIRE 2336 1984 2352 1984
            WIRE 1984 1184 2000 1184
            WIRE 1984 1184 1984 1408
            WIRE 1984 1408 1984 1632
            WIRE 1984 1632 2000 1632
            WIRE 1984 1632 1984 1856
            WIRE 1984 1408 2000 1408
        END BRANCH
        BEGIN BRANCH clk_500hz
            WIRE 1344 1984 1424 1984
        END BRANCH
        BEGIN BRANCH XLXN_1254
            WIRE 1392 1856 1424 1856
        END BRANCH
        INSTANCE XLXI_357 1392 1920 R270
        INSTANCE XLXI_356 1424 2112 R0
        IOMARKER 1344 1984 clk_500hz R180 28
        BEGIN BRANCH XLXN_1267
            WIRE 1392 2080 1424 2080
        END BRANCH
        INSTANCE XLXI_369 1264 2016 R90
        INSTANCE XLXI_371 1984 512 R0
        BEGIN BRANCH XLXN_914
            WIRE 1776 256 1936 256
            WIRE 1936 256 1936 320
            WIRE 1936 320 1936 1120
            WIRE 1936 1120 2000 1120
            WIRE 1936 320 1984 320
        END BRANCH
        BEGIN BRANCH XLXN_823
            WIRE 1776 320 1904 320
            WIRE 1904 320 1904 1344
            WIRE 1904 1344 2000 1344
            WIRE 1904 288 1968 288
            WIRE 1904 288 1904 320
            WIRE 1968 256 1984 256
            WIRE 1968 256 1968 288
        END BRANCH
    END SHEET
END SCHEMATIC
