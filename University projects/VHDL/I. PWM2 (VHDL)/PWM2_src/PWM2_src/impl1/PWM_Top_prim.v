// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Dec 03 11:45:53 2021
//
// Verilog Description of module PWM_Top
//

module PWM_Top (aButtons, aLed, aSegments);   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(5[8:15])
    input [3:0]aButtons;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(6[8:16])
    output aLed;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(7[8:12])
    output [6:0]aSegments;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(8[8:17])
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    
    wire GND_net, VCC_net, aButtons_c_2, aButtons_c_1, aButtons_c_0, 
        aSegments_c_6, aSegments_c_5, aSegments_c_4, aSegments_c_3, 
        aSegments_c_2, aSegments_c_1, aSegments_c_0;
    wire [1:0]cState;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(22[10:16])
    wire [2:0]cSelector;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(23[10:19])
    wire [6:0]cSegmentssel;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(26[10:22])
    
    wire n1918, n3386, n4, n109, n3079;
    wire [6:0]cSegments_6__N_126;
    wire [2:0]cDebounced;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/buttons.vhd(15[10:20])
    
    wire n91, n64, n3283, n2193, n2195, n94, cSigInDel, cSigInDel_adj_203, 
        n4_adj_204, n79, n2026, n2028, n6, n3282, n3281, n3218, 
        Clk_enable_1, n3286, n3285, Clk_enable_63, n3284;
    
    VHI i2 (.Z(VCC_net));
    FD1P3AX cState_i0 (.D(n3386), .SP(Clk_enable_1), .CK(Clk), .Q(cState[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(66[3] 110[10])
    defparam cState_i0.GSR = "ENABLED";
    \Buttons(3,760000)  ButtonX (.Clk(Clk), .Clk_enable_1(Clk_enable_1), 
            .\cState[0] (cState[0]), .n3282(n3282), .n3283(n3283), .GND_net(GND_net), 
            .aButtons_c_2(aButtons_c_2), .cSigInDel(cSigInDel_adj_203), 
            .\cDebounced[1] (cDebounced[1]), .aButtons_c_1(aButtons_c_1), 
            .n3285(n3285), .cSelector({cSelector}), .n3281(n3281), .n4(n4_adj_204), 
            .cSigInDel_adj_1(cSigInDel), .\cDebounced[0] (cDebounced[0]), 
            .aButtons_c_0(aButtons_c_0), .n3286(n3286), .n6(n6));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(46[12:39])
    LUT4 i1_2_lut (.A(cState[0]), .B(cSegmentssel[0]), .Z(aSegments_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(66[3] 110[10])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(cSelector[2]), .B(n91), .C(cDebounced[0]), .D(cSigInDel), 
         .Z(n3079)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(23[10:19])
    defparam i3_4_lut.init = 16'hffef;
    OB aSegments_pad_0 (.I(aSegments_c_0), .O(aSegments[0]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(8[8:17])
    LUT4 i1_2_lut_adj_14 (.A(cDebounced[1]), .B(cSigInDel_adj_203), .Z(n91)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/buttons.vhd(15[10:20])
    defparam i1_2_lut_adj_14.init = 16'h2222;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i1_2_lut_3_lut_4_lut_3_lut (.A(cSelector[1]), .B(cSelector[0]), 
         .C(cSelector[2]), .Z(cSegments_6__N_126[1])) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_3_lut.init = 16'h7171;
    OB aSegments_pad_1 (.I(aSegments_c_1), .O(aSegments[1]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(8[8:17])
    OB aSegments_pad_2 (.I(aSegments_c_2), .O(aSegments[2]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(8[8:17])
    OB aSegments_pad_3 (.I(aSegments_c_3), .O(aSegments[3]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(8[8:17])
    OB aSegments_pad_4 (.I(aSegments_c_4), .O(aSegments[4]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(8[8:17])
    OB aSegments_pad_5 (.I(aSegments_c_5), .O(aSegments[5]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(8[8:17])
    LUT4 i1_4_lut (.A(n94), .B(n2193), .C(cSelector[1]), .D(n4_adj_204), 
         .Z(n2026)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'hceec;
    OB aSegments_pad_6 (.I(aSegments_c_6), .O(aSegments[6]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(8[8:17])
    OB aLed_pad (.I(GND_net), .O(aLed));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(7[8:12])
    LUT4 i1_3_lut_4_lut_3_lut_4_lut (.A(cSelector[1]), .B(cSelector[0]), 
         .C(cDebounced[1]), .D(cSigInDel_adj_203), .Z(n4)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_3_lut_4_lut.init = 16'h1181;
    LUT4 i2084_2_lut (.A(cSelector[1]), .B(cSelector[2]), .Z(n2195)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(68[3] 108[11])
    defparam i2084_2_lut.init = 16'hdddd;
    FD1P3AX cSelector_532__i0 (.D(n79), .SP(Clk_enable_63), .CK(Clk), 
            .Q(cSelector[0]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(68[3] 108[11])
    defparam cSelector_532__i0.GSR = "ENABLED";
    LUT4 cSelector_0__bdd_3_lut (.A(cSelector[0]), .B(cSelector[1]), .C(cSelector[2]), 
         .Z(cSegments_6__N_126[3])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+!(C)))) */ ;
    defparam cSelector_0__bdd_3_lut.init = 16'h6d6d;
    IB aButtons_pad_2 (.I(aButtons[2]), .O(aButtons_c_2));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(6[8:16])
    VLO i1 (.Z(GND_net));
    LUT4 i663_1_lut_rep_7 (.A(cSelector[2]), .Z(n3284)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(104[15:24])
    defparam i663_1_lut_rep_7.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(cSelector[2]), .B(cSelector[1]), .Z(n1918)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(104[15:24])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    FD1P3AX cSelector_532__i1 (.D(n2026), .SP(Clk_enable_63), .CK(Clk), 
            .Q(cSelector[1]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(68[3] 108[11])
    defparam cSelector_532__i1.GSR = "ENABLED";
    LUT4 i2074_2_lut (.A(cSelector[0]), .B(cSelector[2]), .Z(n3218)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(23[10:19])
    defparam i2074_2_lut.init = 16'h9999;
    IB aButtons_pad_1 (.I(aButtons[1]), .O(aButtons_c_1));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(6[8:16])
    IB aButtons_pad_0 (.I(aButtons[0]), .O(aButtons_c_0));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(6[8:16])
    LUT4 i3_4_lut_adj_15 (.A(cSelector[1]), .B(cSelector[0]), .C(n3281), 
         .D(n3283), .Z(n94)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i3_4_lut_adj_15.init = 16'hfffd;
    LUT4 i4_4_lut (.A(cSelector[0]), .B(n3282), .C(n3285), .D(n6), .Z(n2193)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(68[3] 108[11])
    defparam i4_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_adj_16 (.A(cState[0]), .B(cSegmentssel[1]), .Z(aSegments_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(66[3] 110[10])
    defparam i1_2_lut_adj_16.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(Clk_enable_1), .B(cState[0]), .C(n109), .D(cSelector[0]), 
         .Z(n79)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h00fb;
    LUT4 i1_2_lut_adj_17 (.A(cState[0]), .B(cSegmentssel[2]), .Z(aSegments_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(66[3] 110[10])
    defparam i1_2_lut_adj_17.init = 16'h8888;
    LUT4 i1_4_lut_adj_18 (.A(n94), .B(n2193), .C(cSelector[2]), .D(n4), 
         .Z(n2028)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_18.init = 16'hceec;
    LUT4 i64_2_lut (.A(cSelector[1]), .B(cSelector[0]), .Z(n64)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i64_2_lut.init = 16'h9999;
    LUT4 i112_3_lut_4_lut (.A(cSelector[2]), .B(n3285), .C(cSelector[1]), 
         .D(n3079), .Z(n109)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(23[10:19])
    defparam i112_3_lut_4_lut.init = 16'hdfd0;
    LUT4 cSelector_1__bdd_3_lut (.A(cSelector[1]), .B(cSelector[0]), .C(cSelector[2]), 
         .Z(cSegments_6__N_126[0])) /* synthesis lut_function=(!(A (B (C))+!A !(C))) */ ;
    defparam cSelector_1__bdd_3_lut.init = 16'h7a7a;
    FD1P3AX cSelector_532__i2 (.D(n2028), .SP(Clk_enable_63), .CK(Clk), 
            .Q(cSelector[2]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(68[3] 108[11])
    defparam cSelector_532__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_19 (.A(cState[0]), .B(cSegmentssel[3]), .Z(aSegments_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(66[3] 110[10])
    defparam i1_2_lut_adj_19.init = 16'h8888;
    LUT4 i1543_2_lut (.A(cSegmentssel[6]), .B(cState[0]), .Z(aSegments_c_6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(113[16:70])
    defparam i1543_2_lut.init = 16'h8888;
    LUT4 m1_lut (.Z(n3386)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_2_lut_adj_20 (.A(cState[0]), .B(cSegmentssel[4]), .Z(aSegments_c_4)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(66[3] 110[10])
    defparam i1_2_lut_adj_20.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_21 (.A(cState[0]), .B(Clk_enable_1), .C(n3286), 
         .D(n91), .Z(Clk_enable_63)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(68[3] 108[11])
    defparam i1_3_lut_4_lut_adj_21.init = 16'h2220;
    LUT4 i1_2_lut_adj_22 (.A(cState[0]), .B(cSegmentssel[5]), .Z(aSegments_c_5)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(66[3] 110[10])
    defparam i1_2_lut_adj_22.init = 16'h8888;
    Clk38M ClkGen (.GND_net(GND_net), .Clk(Clk));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(43[12:35])
    BcdDec SelectorBcd (.cSegmentssel({cSegmentssel}), .Clk(Clk), .\cSegments_6__N_126[0] (cSegments_6__N_126[0]), 
           .\cSelector[1] (cSelector[1]), .n3218(n3218), .n3284(n3284), 
           .n64(n64), .\cSegments_6__N_126[3] (cSegments_6__N_126[3]), .\cSelector[0] (cSelector[0]), 
           .n1918(n1918), .\cSegments_6__N_126[1] (cSegments_6__N_126[1]), 
           .n2195(n2195));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(38[15:38])
    
endmodule
//
// Verilog Description of module \Buttons(3,760000) 
//

module \Buttons(3,760000)  (Clk, Clk_enable_1, \cState[0] , n3282, n3283, 
            GND_net, aButtons_c_2, cSigInDel, \cDebounced[1] , aButtons_c_1, 
            n3285, cSelector, n3281, n4, cSigInDel_adj_1, \cDebounced[0] , 
            aButtons_c_0, n3286, n6);
    input Clk;
    output Clk_enable_1;
    input \cState[0] ;
    output n3282;
    output n3283;
    input GND_net;
    input aButtons_c_2;
    output cSigInDel;
    output \cDebounced[1] ;
    input aButtons_c_1;
    output n3285;
    input [2:0]cSelector;
    output n3281;
    output n4;
    output cSigInDel_adj_1;
    output \cDebounced[0] ;
    input aButtons_c_0;
    output n3286;
    output n6;
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    wire [2:0]cDebounced;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/buttons.vhd(15[10:20])
    
    ReDetect \BtnPathGen_2..RiseDetect  (.Clk(Clk), .\cDebounced[2] (cDebounced[2]), 
            .Clk_enable_1(Clk_enable_1), .\cState[0] (\cState[0] ), .n3282(n3282), 
            .n3283(n3283));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/buttons.vhd(31[17:42])
    \Debounce(760000)  \BtnPathGen_2..Deb  (.GND_net(GND_net), .Clk(Clk), 
            .aButtons_c_2(aButtons_c_2), .\cDebounced[2] (cDebounced[2]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/buttons.vhd(25[10:35])
    ReDetect_U0 \BtnPathGen_1..RiseDetect  (.cSigInDel(cSigInDel), .Clk(Clk), 
            .\cDebounced[1] (\cDebounced[1] ));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/buttons.vhd(31[17:42])
    \Debounce(760000)_U1  \BtnPathGen_1..Deb  (.Clk(Clk), .aButtons_c_1(aButtons_c_1), 
            .GND_net(GND_net), .\cDebounced[1] (\cDebounced[1] ), .cSigInDel(cSigInDel), 
            .n3285(n3285), .\cSelector[2] (cSelector[2]), .n3281(n3281), 
            .\cSelector[0] (cSelector[0]), .n4(n4));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/buttons.vhd(25[10:35])
    ReDetect_U2 \BtnPathGen_0..RiseDetect  (.cSigInDel(cSigInDel_adj_1), .Clk(Clk), 
            .\cDebounced[0] (\cDebounced[0] ));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/buttons.vhd(31[17:42])
    \Debounce(760000)_U3  \BtnPathGen_0..Deb  (.Clk(Clk), .aButtons_c_0(aButtons_c_0), 
            .GND_net(GND_net), .\cDebounced[0] (\cDebounced[0] ), .cSigInDel(cSigInDel_adj_1), 
            .n3286(n3286), .\cSelector[2] (cSelector[2]), .\cSelector[1] (cSelector[1]), 
            .n6(n6));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/buttons.vhd(25[10:35])
    
endmodule
//
// Verilog Description of module ReDetect
//

module ReDetect (Clk, \cDebounced[2] , Clk_enable_1, \cState[0] , n3282, 
            n3283);
    input Clk;
    input \cDebounced[2] ;
    output Clk_enable_1;
    input \cState[0] ;
    output n3282;
    output n3283;
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    
    wire cSigInDel;
    
    FD1S3AX cSigInDel_10 (.D(\cDebounced[2] ), .CK(Clk), .Q(cSigInDel)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=42, LSE_LLINE=31, LSE_RLINE=31 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/redetect.vhd(16[5] 18[9])
    defparam cSigInDel_10.GSR = "ENABLED";
    LUT4 cSigIn_I_0_2_lut_rep_12 (.A(\cDebounced[2] ), .B(cSigInDel), .Z(Clk_enable_1)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/redetect.vhd(21[10:34])
    defparam cSigIn_I_0_2_lut_rep_12.init = 16'h2222;
    LUT4 i1_2_lut_rep_5_3_lut (.A(\cDebounced[2] ), .B(cSigInDel), .C(\cState[0] ), 
         .Z(n3282)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/redetect.vhd(21[10:34])
    defparam i1_2_lut_rep_5_3_lut.init = 16'hd0d0;
    LUT4 i1_2_lut_rep_6_3_lut (.A(\cDebounced[2] ), .B(cSigInDel), .C(\cState[0] ), 
         .Z(n3283)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/redetect.vhd(21[10:34])
    defparam i1_2_lut_rep_6_3_lut.init = 16'h2f2f;
    
endmodule
//
// Verilog Description of module \Debounce(760000) 
//

module \Debounce(760000)  (GND_net, Clk, aButtons_c_2, \cDebounced[2] );
    input GND_net;
    input Clk;
    input aButtons_c_2;
    output \cDebounced[2] ;
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    
    wire n3059;
    wire [19:0]cCounter;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    wire [19:0]n8;
    
    wire n3060, n3058, n3288, Clk_enable_42, cCounter_19__N_173, n2594, 
        n3162, n3057, n3056, n3055, cSigInPrev, cSigOut_N_175, n3192, 
        n3183, n14, n3054, n15, n3181, n3163, n3165, n3287, 
        n3063, n3062, n3061;
    
    CCU2D add_8_13 (.A0(cCounter[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3059), .COUT(n3060), .S0(n8[11]), .S1(n8[12]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_13.INIT0 = 16'h5aaa;
    defparam add_8_13.INIT1 = 16'h5aaa;
    defparam add_8_13.INJECT1_0 = "NO";
    defparam add_8_13.INJECT1_1 = "NO";
    CCU2D add_8_11 (.A0(cCounter[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3058), .COUT(n3059), .S0(n8[9]), .S1(n8[10]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_11.INIT0 = 16'h5aaa;
    defparam add_8_11.INIT1 = 16'h5aaa;
    defparam add_8_11.INJECT1_0 = "NO";
    defparam add_8_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_11 (.A(cCounter[8]), .B(cCounter[10]), .C(cCounter[9]), 
         .Z(n3288)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_11.init = 16'hfefe;
    FD1P3IX cCounter__i0 (.D(n8[0]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(cCounter[8]), .B(cCounter[10]), .C(cCounter[9]), 
         .D(n2594), .Z(n3162)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    CCU2D add_8_9 (.A0(cCounter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3057), .COUT(n3058), .S0(n8[7]), .S1(n8[8]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_9.INIT0 = 16'h5aaa;
    defparam add_8_9.INIT1 = 16'h5aaa;
    defparam add_8_9.INJECT1_0 = "NO";
    defparam add_8_9.INJECT1_1 = "NO";
    CCU2D add_8_7 (.A0(cCounter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3056), .COUT(n3057), .S0(n8[5]), .S1(n8[6]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_7.INIT0 = 16'h5aaa;
    defparam add_8_7.INIT1 = 16'h5aaa;
    defparam add_8_7.INJECT1_0 = "NO";
    defparam add_8_7.INJECT1_1 = "NO";
    CCU2D add_8_5 (.A0(cCounter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3055), .COUT(n3056), .S0(n8[3]), .S1(n8[4]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_5.INIT0 = 16'h5aaa;
    defparam add_8_5.INIT1 = 16'h5aaa;
    defparam add_8_5.INJECT1_0 = "NO";
    defparam add_8_5.INJECT1_1 = "NO";
    FD1S3AX cSigInPrev_19 (.D(aButtons_c_2), .CK(Clk), .Q(cSigInPrev)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cSigInPrev_19.GSR = "ENABLED";
    FD1P3AX cSigOut_21 (.D(aButtons_c_2), .SP(cSigOut_N_175), .CK(Clk), 
            .Q(\cDebounced[2] ));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cSigOut_21.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n3192), .B(n3183), .C(aButtons_c_2), .D(cSigInPrev), 
         .Z(cSigOut_N_175)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut.init = 16'h4004;
    LUT4 i5_3_lut_4_lut (.A(cCounter[13]), .B(cCounter[14]), .C(cCounter[3]), 
         .D(cCounter[18]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_8_3 (.A0(cCounter[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3054), .COUT(n3055), .S0(n8[1]), .S1(n8[2]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_3.INIT0 = 16'h5aaa;
    defparam add_8_3.INIT1 = 16'h5aaa;
    defparam add_8_3.INJECT1_0 = "NO";
    defparam add_8_3.INJECT1_1 = "NO";
    CCU2D add_8_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3054), .S1(n8[0]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_1.INIT0 = 16'hF000;
    defparam add_8_1.INIT1 = 16'h5555;
    defparam add_8_1.INJECT1_0 = "NO";
    defparam add_8_1.INJECT1_1 = "NO";
    LUT4 i8_4_lut (.A(n15), .B(cCounter[1]), .C(n14), .D(cCounter[4]), 
         .Z(n3192)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    FD1P3IX cCounter__i19 (.D(n8[19]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i19.GSR = "ENABLED";
    FD1P3IX cCounter__i18 (.D(n8[18]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i18.GSR = "ENABLED";
    FD1P3IX cCounter__i17 (.D(n8[17]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i17.GSR = "ENABLED";
    FD1P3IX cCounter__i16 (.D(n8[16]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i16.GSR = "ENABLED";
    FD1P3IX cCounter__i15 (.D(n8[15]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i15.GSR = "ENABLED";
    FD1P3IX cCounter__i14 (.D(n8[14]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i14.GSR = "ENABLED";
    FD1P3IX cCounter__i13 (.D(n8[13]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i13.GSR = "ENABLED";
    FD1P3IX cCounter__i12 (.D(n8[12]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i12.GSR = "ENABLED";
    FD1P3IX cCounter__i11 (.D(n8[11]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i11.GSR = "ENABLED";
    FD1P3IX cCounter__i10 (.D(n8[10]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i10.GSR = "ENABLED";
    FD1P3IX cCounter__i9 (.D(n8[9]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i9.GSR = "ENABLED";
    FD1P3IX cCounter__i8 (.D(n8[8]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i8.GSR = "ENABLED";
    FD1P3IX cCounter__i7 (.D(n8[7]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i7.GSR = "ENABLED";
    FD1P3IX cCounter__i6 (.D(n8[6]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i6.GSR = "ENABLED";
    FD1P3IX cCounter__i5 (.D(n8[5]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i5.GSR = "ENABLED";
    FD1P3IX cCounter__i4 (.D(n8[4]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i4.GSR = "ENABLED";
    FD1P3IX cCounter__i3 (.D(n8[3]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i3.GSR = "ENABLED";
    FD1P3IX cCounter__i2 (.D(n8[2]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i2.GSR = "ENABLED";
    FD1P3IX cCounter__i1 (.D(n8[1]), .SP(Clk_enable_42), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i1.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(cCounter[19]), .B(n3181), .C(n3163), .D(n2594), 
         .Z(n3183)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(cCounter[2]), .B(cCounter[0]), .C(cCounter[5]), 
         .D(n3288), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(cCounter[19]), .B(n3165), .C(cCounter_19__N_173), 
         .D(cCounter[18]), .Z(Clk_enable_42)) /* synthesis lut_function=((B (C)+!B (C+!(D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hf5f7;
    LUT4 i1_4_lut_adj_13 (.A(n3162), .B(n3163), .C(n3287), .D(n3181), 
         .Z(n3165)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_13.init = 16'hc8c0;
    LUT4 cSigIn_I_0_23_2_lut (.A(aButtons_c_2), .B(cSigInPrev), .Z(cCounter_19__N_173)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(21[7:27])
    defparam cSigIn_I_0_23_2_lut.init = 16'h6666;
    LUT4 i1478_2_lut (.A(cCounter[6]), .B(cCounter[7]), .Z(n2594)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1478_2_lut.init = 16'h8888;
    CCU2D add_8_21 (.A0(cCounter[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3063), 
          .S0(n8[19]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_21.INIT0 = 16'h5aaa;
    defparam add_8_21.INIT1 = 16'h0000;
    defparam add_8_21.INJECT1_0 = "NO";
    defparam add_8_21.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(cCounter[17]), .B(cCounter[16]), .C(cCounter[15]), 
         .Z(n3163)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    CCU2D add_8_19 (.A0(cCounter[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3062), .COUT(n3063), .S0(n8[17]), .S1(n8[18]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_19.INIT0 = 16'h5aaa;
    defparam add_8_19.INIT1 = 16'h5aaa;
    defparam add_8_19.INJECT1_0 = "NO";
    defparam add_8_19.INJECT1_1 = "NO";
    CCU2D add_8_17 (.A0(cCounter[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3061), .COUT(n3062), .S0(n8[15]), .S1(n8[16]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_17.INIT0 = 16'h5aaa;
    defparam add_8_17.INIT1 = 16'h5aaa;
    defparam add_8_17.INJECT1_0 = "NO";
    defparam add_8_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(cCounter[12]), .B(cCounter[11]), .Z(n3181)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2D add_8_15 (.A0(cCounter[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3060), .COUT(n3061), .S0(n8[13]), .S1(n8[14]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_15.INIT0 = 16'h5aaa;
    defparam add_8_15.INIT1 = 16'h5aaa;
    defparam add_8_15.INJECT1_0 = "NO";
    defparam add_8_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_10 (.A(cCounter[13]), .B(cCounter[14]), .Z(n3287)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_10.init = 16'heeee;
    
endmodule
//
// Verilog Description of module ReDetect_U0
//

module ReDetect_U0 (cSigInDel, Clk, \cDebounced[1] );
    output cSigInDel;
    input Clk;
    input \cDebounced[1] ;
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    
    FD1S3AX cSigInDel_10 (.D(\cDebounced[1] ), .CK(Clk), .Q(cSigInDel)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=42, LSE_LLINE=31, LSE_RLINE=31 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/redetect.vhd(16[5] 18[9])
    defparam cSigInDel_10.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \Debounce(760000)_U1 
//

module \Debounce(760000)_U1  (Clk, aButtons_c_1, GND_net, \cDebounced[1] , 
            cSigInDel, n3285, \cSelector[2] , n3281, \cSelector[0] , 
            n4);
    input Clk;
    input aButtons_c_1;
    input GND_net;
    output \cDebounced[1] ;
    input cSigInDel;
    output n3285;
    input \cSelector[2] ;
    output n3281;
    input \cSelector[0] ;
    output n4;
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    wire [19:0]cCounter;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    
    wire n3193, n133, n3166, n3178, Clk_enable_23, cCounter_19__N_173;
    wire [19:0]n8;
    
    wire cSigInPrev, n3053, n3052, cSigOut_N_175, n3208, n3103, 
        n3195, n6, n12_adj_199, n3051, n3050, n3049, n3048, n3047, 
        n3046, n3045, n3044, n3168, n3180;
    
    LUT4 i1_2_lut (.A(cCounter[8]), .B(cCounter[10]), .Z(n3193)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_8 (.A(cCounter[7]), .B(cCounter[6]), .Z(n133)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_2_lut_adj_8.init = 16'h8888;
    LUT4 i2_3_lut (.A(cCounter[15]), .B(cCounter[17]), .C(cCounter[16]), 
         .Z(n3166)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_9 (.A(cCounter[12]), .B(cCounter[11]), .Z(n3178)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_2_lut_adj_9.init = 16'h8888;
    FD1P3IX cCounter__i0 (.D(n8[0]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i0.GSR = "ENABLED";
    FD1S3AX cSigInPrev_19 (.D(aButtons_c_1), .CK(Clk), .Q(cSigInPrev)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cSigInPrev_19.GSR = "ENABLED";
    CCU2D add_8_21 (.A0(cCounter[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3053), 
          .S0(n8[19]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_21.INIT0 = 16'h5aaa;
    defparam add_8_21.INIT1 = 16'h0000;
    defparam add_8_21.INJECT1_0 = "NO";
    defparam add_8_21.INJECT1_1 = "NO";
    CCU2D add_8_19 (.A0(cCounter[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3052), .COUT(n3053), .S0(n8[17]), .S1(n8[18]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_19.INIT0 = 16'h5aaa;
    defparam add_8_19.INIT1 = 16'h5aaa;
    defparam add_8_19.INJECT1_0 = "NO";
    defparam add_8_19.INJECT1_1 = "NO";
    FD1P3AX cSigOut_21 (.D(aButtons_c_1), .SP(cSigOut_N_175), .CK(Clk), 
            .Q(\cDebounced[1] ));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cSigOut_21.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(cSigInPrev), .B(n3208), .C(n133), .D(aButtons_c_1), 
         .Z(n3103)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i3_4_lut.init = 16'h2010;
    FD1P3IX cCounter__i19 (.D(n8[19]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i19.GSR = "ENABLED";
    FD1P3IX cCounter__i18 (.D(n8[18]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i18.GSR = "ENABLED";
    FD1P3IX cCounter__i17 (.D(n8[17]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i17.GSR = "ENABLED";
    FD1P3IX cCounter__i16 (.D(n8[16]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i16.GSR = "ENABLED";
    FD1P3IX cCounter__i15 (.D(n8[15]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i15.GSR = "ENABLED";
    FD1P3IX cCounter__i14 (.D(n8[14]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i14.GSR = "ENABLED";
    FD1P3IX cCounter__i13 (.D(n8[13]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i13.GSR = "ENABLED";
    FD1P3IX cCounter__i12 (.D(n8[12]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i12.GSR = "ENABLED";
    FD1P3IX cCounter__i11 (.D(n8[11]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i11.GSR = "ENABLED";
    FD1P3IX cCounter__i10 (.D(n8[10]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i10.GSR = "ENABLED";
    FD1P3IX cCounter__i9 (.D(n8[9]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i9.GSR = "ENABLED";
    FD1P3IX cCounter__i8 (.D(n8[8]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i8.GSR = "ENABLED";
    FD1P3IX cCounter__i7 (.D(n8[7]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i7.GSR = "ENABLED";
    FD1P3IX cCounter__i6 (.D(n8[6]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i6.GSR = "ENABLED";
    FD1P3IX cCounter__i5 (.D(n8[5]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i5.GSR = "ENABLED";
    FD1P3IX cCounter__i4 (.D(n8[4]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i4.GSR = "ENABLED";
    FD1P3IX cCounter__i3 (.D(n8[3]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i3.GSR = "ENABLED";
    FD1P3IX cCounter__i2 (.D(n8[2]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i2.GSR = "ENABLED";
    FD1P3IX cCounter__i1 (.D(n8[1]), .SP(Clk_enable_23), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i1.GSR = "ENABLED";
    LUT4 i2064_4_lut (.A(cCounter[18]), .B(n3195), .C(n6), .D(cCounter[9]), 
         .Z(n3208)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2064_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(n3193), .B(n12_adj_199), .C(cCounter[3]), .D(cCounter[2]), 
         .Z(n3195)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D add_8_17 (.A0(cCounter[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3051), .COUT(n3052), .S0(n8[15]), .S1(n8[16]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_17.INIT0 = 16'h5aaa;
    defparam add_8_17.INIT1 = 16'h5aaa;
    defparam add_8_17.INJECT1_0 = "NO";
    defparam add_8_17.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(cCounter[14]), .B(cCounter[0]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    CCU2D add_8_15 (.A0(cCounter[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3050), .COUT(n3051), .S0(n8[13]), .S1(n8[14]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_15.INIT0 = 16'h5aaa;
    defparam add_8_15.INIT1 = 16'h5aaa;
    defparam add_8_15.INJECT1_0 = "NO";
    defparam add_8_15.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(cCounter[5]), .B(cCounter[1]), .C(cCounter[13]), 
         .D(cCounter[4]), .Z(n12_adj_199)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_8 (.A(\cDebounced[1] ), .B(cSigInDel), .Z(n3285)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam i1_2_lut_rep_8.init = 16'hdddd;
    LUT4 i1_2_lut_rep_4_3_lut (.A(\cDebounced[1] ), .B(cSigInDel), .C(\cSelector[2] ), 
         .Z(n3281)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam i1_2_lut_rep_4_3_lut.init = 16'hdfdf;
    CCU2D add_8_13 (.A0(cCounter[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3049), .COUT(n3050), .S0(n8[11]), .S1(n8[12]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_13.INIT0 = 16'h5aaa;
    defparam add_8_13.INIT1 = 16'h5aaa;
    defparam add_8_13.INJECT1_0 = "NO";
    defparam add_8_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(\cDebounced[1] ), .B(cSigInDel), .C(\cSelector[0] ), 
         .Z(n4)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (C))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam i1_2_lut_3_lut.init = 16'h2d2d;
    CCU2D add_8_11 (.A0(cCounter[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3048), .COUT(n3049), .S0(n8[9]), .S1(n8[10]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_11.INIT0 = 16'h5aaa;
    defparam add_8_11.INIT1 = 16'h5aaa;
    defparam add_8_11.INJECT1_0 = "NO";
    defparam add_8_11.INJECT1_1 = "NO";
    CCU2D add_8_9 (.A0(cCounter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3047), .COUT(n3048), .S0(n8[7]), .S1(n8[8]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_9.INIT0 = 16'h5aaa;
    defparam add_8_9.INIT1 = 16'h5aaa;
    defparam add_8_9.INJECT1_0 = "NO";
    defparam add_8_9.INJECT1_1 = "NO";
    CCU2D add_8_7 (.A0(cCounter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3046), .COUT(n3047), .S0(n8[5]), .S1(n8[6]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_7.INIT0 = 16'h5aaa;
    defparam add_8_7.INIT1 = 16'h5aaa;
    defparam add_8_7.INJECT1_0 = "NO";
    defparam add_8_7.INJECT1_1 = "NO";
    CCU2D add_8_5 (.A0(cCounter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3045), .COUT(n3046), .S0(n8[3]), .S1(n8[4]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_5.INIT0 = 16'h5aaa;
    defparam add_8_5.INIT1 = 16'h5aaa;
    defparam add_8_5.INJECT1_0 = "NO";
    defparam add_8_5.INJECT1_1 = "NO";
    CCU2D add_8_3 (.A0(cCounter[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3044), .COUT(n3045), .S0(n8[1]), .S1(n8[2]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_3.INIT0 = 16'h5aaa;
    defparam add_8_3.INIT1 = 16'h5aaa;
    defparam add_8_3.INJECT1_0 = "NO";
    defparam add_8_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n3103), .B(n3178), .C(cCounter[19]), .D(n3166), 
         .Z(cSigOut_N_175)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_4_lut.init = 16'h8000;
    CCU2D add_8_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3044), .S1(n8[0]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_1.INIT0 = 16'hF000;
    defparam add_8_1.INIT1 = 16'h5555;
    defparam add_8_1.INJECT1_0 = "NO";
    defparam add_8_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_10 (.A(cCounter_19__N_173), .B(cCounter[19]), .C(cCounter[18]), 
         .D(n3168), .Z(Clk_enable_23)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_10.init = 16'hbbbf;
    LUT4 i1_4_lut_adj_11 (.A(n3180), .B(n3166), .C(cCounter[14]), .D(cCounter[13]), 
         .Z(n3168)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam i1_4_lut_adj_11.init = 16'hccc8;
    LUT4 i1_4_lut_adj_12 (.A(n3193), .B(n3178), .C(n133), .D(cCounter[9]), 
         .Z(n3180)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_4_lut_adj_12.init = 16'hccc8;
    LUT4 i26_2_lut (.A(cSigInPrev), .B(aButtons_c_1), .Z(cCounter_19__N_173)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(6[8:16])
    defparam i26_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module ReDetect_U2
//

module ReDetect_U2 (cSigInDel, Clk, \cDebounced[0] );
    output cSigInDel;
    input Clk;
    input \cDebounced[0] ;
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    
    FD1S3AX cSigInDel_10 (.D(\cDebounced[0] ), .CK(Clk), .Q(cSigInDel)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=42, LSE_LLINE=31, LSE_RLINE=31 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/redetect.vhd(16[5] 18[9])
    defparam cSigInDel_10.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \Debounce(760000)_U3 
//

module \Debounce(760000)_U3  (Clk, aButtons_c_0, GND_net, \cDebounced[0] , 
            cSigInDel, n3286, \cSelector[2] , \cSelector[1] , n6);
    input Clk;
    input aButtons_c_0;
    input GND_net;
    output \cDebounced[0] ;
    input cSigInDel;
    output n3286;
    input \cSelector[2] ;
    input \cSelector[1] ;
    output n6;
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    
    wire cSigInPrev;
    wire [19:0]cCounter;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    wire [19:0]n8;
    
    wire n3034, n3041, n3042, n3035, n3036, cSigOut_N_175, n3040, 
        Clk_enable_64, cCounter_19__N_173, n3177, n3187, n3169, n133, 
        n3201, n3084, n3199, n12_adj_198, n3039, n3171, n3038, 
        n3188, n3037, n3043;
    
    FD1S3AX cSigInPrev_19 (.D(aButtons_c_0), .CK(Clk), .Q(cSigInPrev)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cSigInPrev_19.GSR = "ENABLED";
    CCU2D add_8_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3034), .S1(n8[0]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_1.INIT0 = 16'hF000;
    defparam add_8_1.INIT1 = 16'h5555;
    defparam add_8_1.INJECT1_0 = "NO";
    defparam add_8_1.INJECT1_1 = "NO";
    CCU2D add_8_17 (.A0(cCounter[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3041), .COUT(n3042), .S0(n8[15]), .S1(n8[16]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_17.INIT0 = 16'h5aaa;
    defparam add_8_17.INIT1 = 16'h5aaa;
    defparam add_8_17.INJECT1_0 = "NO";
    defparam add_8_17.INJECT1_1 = "NO";
    CCU2D add_8_5 (.A0(cCounter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3035), .COUT(n3036), .S0(n8[3]), .S1(n8[4]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_5.INIT0 = 16'h5aaa;
    defparam add_8_5.INIT1 = 16'h5aaa;
    defparam add_8_5.INJECT1_0 = "NO";
    defparam add_8_5.INJECT1_1 = "NO";
    FD1P3AX cSigOut_21 (.D(aButtons_c_0), .SP(cSigOut_N_175), .CK(Clk), 
            .Q(\cDebounced[0] ));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cSigOut_21.GSR = "ENABLED";
    CCU2D add_8_15 (.A0(cCounter[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3040), .COUT(n3041), .S0(n8[13]), .S1(n8[14]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_15.INIT0 = 16'h5aaa;
    defparam add_8_15.INIT1 = 16'h5aaa;
    defparam add_8_15.INJECT1_0 = "NO";
    defparam add_8_15.INJECT1_1 = "NO";
    FD1P3IX cCounter__i19 (.D(n8[19]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i19.GSR = "ENABLED";
    FD1P3IX cCounter__i18 (.D(n8[18]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i18.GSR = "ENABLED";
    FD1P3IX cCounter__i17 (.D(n8[17]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i17.GSR = "ENABLED";
    FD1P3IX cCounter__i16 (.D(n8[16]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i16.GSR = "ENABLED";
    FD1P3IX cCounter__i15 (.D(n8[15]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i15.GSR = "ENABLED";
    FD1P3IX cCounter__i14 (.D(n8[14]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i14.GSR = "ENABLED";
    FD1P3IX cCounter__i13 (.D(n8[13]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i13.GSR = "ENABLED";
    FD1P3IX cCounter__i12 (.D(n8[12]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i12.GSR = "ENABLED";
    FD1P3IX cCounter__i11 (.D(n8[11]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i11.GSR = "ENABLED";
    FD1P3IX cCounter__i10 (.D(n8[10]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i10.GSR = "ENABLED";
    FD1P3IX cCounter__i9 (.D(n8[9]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i9.GSR = "ENABLED";
    FD1P3IX cCounter__i8 (.D(n8[8]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i8.GSR = "ENABLED";
    FD1P3IX cCounter__i7 (.D(n8[7]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i7.GSR = "ENABLED";
    FD1P3IX cCounter__i6 (.D(n8[6]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i6.GSR = "ENABLED";
    FD1P3IX cCounter__i5 (.D(n8[5]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i5.GSR = "ENABLED";
    FD1P3IX cCounter__i4 (.D(n8[4]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i4.GSR = "ENABLED";
    FD1P3IX cCounter__i3 (.D(n8[3]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i3.GSR = "ENABLED";
    FD1P3IX cCounter__i2 (.D(n8[2]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i2.GSR = "ENABLED";
    FD1P3IX cCounter__i1 (.D(n8[1]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n3177), .B(n3187), .C(cCounter[19]), .D(n3169), 
         .Z(cSigOut_N_175)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_2 (.A(n133), .B(n3201), .C(cCounter_19__N_173), 
         .D(n3084), .Z(n3177)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_4_lut_adj_2.init = 16'h0002;
    LUT4 i6_4_lut (.A(n3199), .B(n12_adj_198), .C(cCounter[3]), .D(cCounter[2]), 
         .Z(n3201)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D add_8_13 (.A0(cCounter[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3039), .COUT(n3040), .S0(n8[11]), .S1(n8[12]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_13.INIT0 = 16'h5aaa;
    defparam add_8_13.INIT1 = 16'h5aaa;
    defparam add_8_13.INJECT1_0 = "NO";
    defparam add_8_13.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(cCounter[18]), .B(cCounter[14]), .C(cCounter[9]), 
         .D(cCounter[0]), .Z(n3084)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_9 (.A(\cDebounced[0] ), .B(cSigInDel), .Z(n3286)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam i1_2_lut_rep_9.init = 16'h2222;
    LUT4 i5_4_lut (.A(cCounter[5]), .B(cCounter[1]), .C(cCounter[13]), 
         .D(cCounter[4]), .Z(n12_adj_198)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_3 (.A(cCounter_19__N_173), .B(cCounter[19]), .C(cCounter[18]), 
         .D(n3171), .Z(Clk_enable_64)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_3.init = 16'hbbbf;
    LUT4 i1_2_lut (.A(cCounter[10]), .B(cCounter[8]), .Z(n3199)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_8_11 (.A0(cCounter[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3038), .COUT(n3039), .S0(n8[9]), .S1(n8[10]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_11.INIT0 = 16'h5aaa;
    defparam add_8_11.INIT1 = 16'h5aaa;
    defparam add_8_11.INJECT1_0 = "NO";
    defparam add_8_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_4 (.A(n3188), .B(n3169), .C(cCounter[14]), .D(cCounter[13]), 
         .Z(n3171)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam i1_4_lut_adj_4.init = 16'hccc8;
    LUT4 i1_2_lut_adj_5 (.A(cCounter[7]), .B(cCounter[6]), .Z(n133)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_2_lut_adj_5.init = 16'h8888;
    CCU2D add_8_9 (.A0(cCounter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3037), .COUT(n3038), .S0(n8[7]), .S1(n8[8]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_9.INIT0 = 16'h5aaa;
    defparam add_8_9.INIT1 = 16'h5aaa;
    defparam add_8_9.INJECT1_0 = "NO";
    defparam add_8_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_6 (.A(n3199), .B(n3187), .C(n133), .D(cCounter[9]), 
         .Z(n3188)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_4_lut_adj_6.init = 16'hccc8;
    LUT4 i1_2_lut_adj_7 (.A(cCounter[11]), .B(cCounter[12]), .Z(n3187)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(13[10:18])
    defparam i1_2_lut_adj_7.init = 16'h8888;
    CCU2D add_8_21 (.A0(cCounter[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3043), 
          .S0(n8[19]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_21.INIT0 = 16'h5aaa;
    defparam add_8_21.INIT1 = 16'h0000;
    defparam add_8_21.INJECT1_0 = "NO";
    defparam add_8_21.INJECT1_1 = "NO";
    CCU2D add_8_19 (.A0(cCounter[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3042), .COUT(n3043), .S0(n8[17]), .S1(n8[18]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_19.INIT0 = 16'h5aaa;
    defparam add_8_19.INIT1 = 16'h5aaa;
    defparam add_8_19.INJECT1_0 = "NO";
    defparam add_8_19.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(\cDebounced[0] ), .B(cSigInDel), .C(\cSelector[2] ), 
         .D(\cSelector[1] ), .Z(n6)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam i1_3_lut_4_lut.init = 16'h0002;
    LUT4 i2_3_lut (.A(cCounter[15]), .B(cCounter[17]), .C(cCounter[16]), 
         .Z(n3169)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D add_8_3 (.A0(cCounter[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3034), .COUT(n3035), .S0(n8[1]), .S1(n8[2]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_3.INIT0 = 16'h5aaa;
    defparam add_8_3.INIT1 = 16'h5aaa;
    defparam add_8_3.INJECT1_0 = "NO";
    defparam add_8_3.INJECT1_1 = "NO";
    LUT4 i26_2_lut (.A(cSigInPrev), .B(aButtons_c_0), .Z(cCounter_19__N_173)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(6[8:16])
    defparam i26_2_lut.init = 16'h6666;
    FD1P3IX cCounter__i0 (.D(n8[0]), .SP(Clk_enable_64), .CD(cCounter_19__N_173), 
            .CK(Clk), .Q(cCounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=10, LSE_RCOL=35, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(18[5] 31[9])
    defparam cCounter__i0.GSR = "ENABLED";
    CCU2D add_8_7 (.A0(cCounter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cCounter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3036), .COUT(n3037), .S0(n8[5]), .S1(n8[6]));   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/debounce.vhd(24[18:26])
    defparam add_8_7.INIT0 = 16'h5aaa;
    defparam add_8_7.INIT1 = 16'h5aaa;
    defparam add_8_7.INJECT1_0 = "NO";
    defparam add_8_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Clk38M
//

module Clk38M (GND_net, Clk);
    input GND_net;
    output Clk;
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    
    OSCH OSCInst0 (.STDBY(GND_net), .OSC(Clk)) /* synthesis NOM_FREQ="38.00", syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=35, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(43[12:35])
    defparam OSCInst0.NOM_FREQ = "38.00";
    
endmodule
//
// Verilog Description of module BcdDec
//

module BcdDec (cSegmentssel, Clk, \cSegments_6__N_126[0] , \cSelector[1] , 
            n3218, n3284, n64, \cSegments_6__N_126[3] , \cSelector[0] , 
            n1918, \cSegments_6__N_126[1] , n2195);
    output [6:0]cSegmentssel;
    input Clk;
    input \cSegments_6__N_126[0] ;
    input \cSelector[1] ;
    input n3218;
    input n3284;
    input n64;
    input \cSegments_6__N_126[3] ;
    input \cSelector[0] ;
    input n1918;
    input \cSegments_6__N_126[1] ;
    input n2195;
    
    wire Clk /* synthesis SET_AS_NETWORK=Clk, is_clock=1 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/pwm_top.vhd(12[10:13])
    
    FD1S3AX cSegments_i0 (.D(\cSegments_6__N_126[0] ), .CK(Clk), .Q(cSegmentssel[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=15, LSE_RCOL=38, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/bcddec.vhd(15[5] 42[9])
    defparam cSegments_i0.GSR = "ENABLED";
    FD1S3JX cSegments_i6 (.D(n3218), .CK(Clk), .PD(\cSelector[1] ), .Q(cSegmentssel[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=15, LSE_RCOL=38, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/bcddec.vhd(15[5] 42[9])
    defparam cSegments_i6.GSR = "ENABLED";
    FD1S3JX cSegments_i5 (.D(n64), .CK(Clk), .PD(n3284), .Q(cSegmentssel[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=15, LSE_RCOL=38, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/bcddec.vhd(15[5] 42[9])
    defparam cSegments_i5.GSR = "ENABLED";
    FD1S3AX cSegments_i3 (.D(\cSegments_6__N_126[3] ), .CK(Clk), .Q(cSegmentssel[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=15, LSE_RCOL=38, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/bcddec.vhd(15[5] 42[9])
    defparam cSegments_i3.GSR = "ENABLED";
    FD1S3IX cSegments_i2 (.D(n1918), .CK(Clk), .CD(\cSelector[0] ), .Q(cSegmentssel[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=15, LSE_RCOL=38, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/bcddec.vhd(15[5] 42[9])
    defparam cSegments_i2.GSR = "ENABLED";
    FD1S3AX cSegments_i1 (.D(\cSegments_6__N_126[1] ), .CK(Clk), .Q(cSegmentssel[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=15, LSE_RCOL=38, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/bcddec.vhd(15[5] 42[9])
    defparam cSegments_i1.GSR = "ENABLED";
    FD1S3JX cSegments_i4 (.D(n2195), .CK(Clk), .PD(\cSelector[0] ), .Q(cSegmentssel[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=15, LSE_RCOL=38, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/mikkelino/desktop/programming/lattice diamond projektek/pwm2/pwm2_src/pwm2_src/bcddec.vhd(15[5] 42[9])
    defparam cSegments_i4.GSR = "ENABLED";
    
endmodule
