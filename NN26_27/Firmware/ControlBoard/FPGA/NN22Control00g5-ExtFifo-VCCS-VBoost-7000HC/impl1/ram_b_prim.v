// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Tue Dec 27 20:58:50 2022
//
// Verilog Description of module ram_b
//

module ram_b (DataInA, DataInB, AddressA, AddressB, ClockA, ClockB, 
            ClockEnA, ClockEnB, WrA, WrB, ResetA, ResetB, QA, 
            QB) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(14[8:13])
    input [8:0]DataInA;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    input [8:0]DataInB;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    input [9:0]AddressA;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    input [9:0]AddressB;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    input ClockA;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(20[9:15])
    input ClockB;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(21[9:15])
    input ClockEnA;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(22[9:17])
    input ClockEnB;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(23[9:17])
    input WrA;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(24[9:12])
    input WrB;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(25[9:12])
    input ResetA;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(26[9:15])
    input ResetB;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(27[9:15])
    output [8:0]QA;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    output [8:0]QB;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    
    wire ClockA_c /* synthesis is_clock=1 */ ;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(20[9:15])
    wire ClockB_c /* synthesis is_clock=1 */ ;   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(21[9:15])
    
    wire DataInA_c_8, DataInA_c_7, DataInA_c_6, DataInA_c_5, DataInA_c_4, 
        DataInA_c_3, DataInA_c_2, DataInA_c_1, DataInA_c_0, DataInB_c_8, 
        DataInB_c_7, DataInB_c_6, DataInB_c_5, DataInB_c_4, DataInB_c_3, 
        DataInB_c_2, DataInB_c_1, DataInB_c_0, AddressA_c_9, AddressA_c_8, 
        AddressA_c_7, AddressA_c_6, AddressA_c_5, AddressA_c_4, AddressA_c_3, 
        AddressA_c_2, AddressA_c_1, AddressA_c_0, AddressB_c_9, AddressB_c_8, 
        AddressB_c_7, AddressB_c_6, AddressB_c_5, AddressB_c_4, AddressB_c_3, 
        AddressB_c_2, AddressB_c_1, AddressB_c_0, ClockEnA_c, ClockEnB_c, 
        WrA_c, WrB_c, ResetA_c, ResetB_c, QA_c_8, QA_c_7, QA_c_6, 
        QA_c_5, QA_c_4, QA_c_3, QA_c_2, QA_c_1, QA_c_0, QB_c_8, 
        QB_c_7, QB_c_6, QB_c_5, QB_c_4, QB_c_3, QB_c_2, QB_c_1, 
        QB_c_0, scuba_vhi, GND_net;
    
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    DP8KC ram_b_0_0_0 (.DIA0(DataInA_c_0), .DIA1(DataInA_c_1), .DIA2(DataInA_c_2), 
          .DIA3(DataInA_c_3), .DIA4(DataInA_c_4), .DIA5(DataInA_c_5), 
          .DIA6(DataInA_c_6), .DIA7(DataInA_c_7), .DIA8(DataInA_c_8), 
          .ADA0(scuba_vhi), .ADA1(GND_net), .ADA2(GND_net), .ADA3(AddressA_c_0), 
          .ADA4(AddressA_c_1), .ADA5(AddressA_c_2), .ADA6(AddressA_c_3), 
          .ADA7(AddressA_c_4), .ADA8(AddressA_c_5), .ADA9(AddressA_c_6), 
          .ADA10(AddressA_c_7), .ADA11(AddressA_c_8), .ADA12(AddressA_c_9), 
          .CEA(ClockEnA_c), .OCEA(ClockEnA_c), .CLKA(ClockA_c), .WEA(WrA_c), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(ResetA_c), 
          .DIB0(DataInB_c_0), .DIB1(DataInB_c_1), .DIB2(DataInB_c_2), 
          .DIB3(DataInB_c_3), .DIB4(DataInB_c_4), .DIB5(DataInB_c_5), 
          .DIB6(DataInB_c_6), .DIB7(DataInB_c_7), .DIB8(DataInB_c_8), 
          .ADB0(scuba_vhi), .ADB1(GND_net), .ADB2(GND_net), .ADB3(AddressB_c_0), 
          .ADB4(AddressB_c_1), .ADB5(AddressB_c_2), .ADB6(AddressB_c_3), 
          .ADB7(AddressB_c_4), .ADB8(AddressB_c_5), .ADB9(AddressB_c_6), 
          .ADB10(AddressB_c_7), .ADB11(AddressB_c_8), .ADB12(AddressB_c_9), 
          .CEB(ClockEnB_c), .OCEB(ClockEnB_c), .CLKB(ClockB_c), .WEB(WrB_c), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(ResetB_c), 
          .DOA0(QA_c_0), .DOA1(QA_c_1), .DOA2(QA_c_2), .DOA3(QA_c_3), 
          .DOA4(QA_c_4), .DOA5(QA_c_5), .DOA6(QA_c_6), .DOA7(QA_c_7), 
          .DOA8(QA_c_8), .DOB0(QB_c_0), .DOB1(QB_c_1), .DOB2(QB_c_2), 
          .DOB3(QB_c_3), .DOB4(QB_c_4), .DOB5(QB_c_5), .DOB6(QB_c_6), 
          .DOB7(QB_c_7), .DOB8(QB_c_8)) /* synthesis MEM_LPC_FILE="ram_b.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1 */ ;
    defparam ram_b_0_0_0.DATA_WIDTH_A = 9;
    defparam ram_b_0_0_0.DATA_WIDTH_B = 9;
    defparam ram_b_0_0_0.REGMODE_A = "OUTREG";
    defparam ram_b_0_0_0.REGMODE_B = "OUTREG";
    defparam ram_b_0_0_0.CSDECODE_A = "0b000";
    defparam ram_b_0_0_0.CSDECODE_B = "0b000";
    defparam ram_b_0_0_0.WRITEMODE_A = "NORMAL";
    defparam ram_b_0_0_0.WRITEMODE_B = "NORMAL";
    defparam ram_b_0_0_0.GSR = "ENABLED";
    defparam ram_b_0_0_0.RESETMODE = "SYNC";
    defparam ram_b_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ram_b_0_0_0.INIT_DATA = "STATIC";
    defparam ram_b_0_0_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    OB QA_pad_6 (.I(QA_c_6), .O(QA[6]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    OB QA_pad_7 (.I(QA_c_7), .O(QA[7]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    OB QA_pad_8 (.I(QA_c_8), .O(QA[8]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    OB QA_pad_5 (.I(QA_c_5), .O(QA[5]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    OB QA_pad_4 (.I(QA_c_4), .O(QA[4]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    OB QA_pad_3 (.I(QA_c_3), .O(QA[3]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    OB QA_pad_2 (.I(QA_c_2), .O(QA[2]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    OB QA_pad_1 (.I(QA_c_1), .O(QA[1]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    OB QA_pad_0 (.I(QA_c_0), .O(QA[0]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(28[9:11])
    OB QB_pad_8 (.I(QB_c_8), .O(QB[8]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    OB QB_pad_7 (.I(QB_c_7), .O(QB[7]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    OB QB_pad_6 (.I(QB_c_6), .O(QB[6]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    OB QB_pad_5 (.I(QB_c_5), .O(QB[5]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    OB QB_pad_4 (.I(QB_c_4), .O(QB[4]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    OB QB_pad_3 (.I(QB_c_3), .O(QB[3]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    OB QB_pad_2 (.I(QB_c_2), .O(QB[2]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    OB QB_pad_1 (.I(QB_c_1), .O(QB[1]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    OB QB_pad_0 (.I(QB_c_0), .O(QB[0]));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(29[9:11])
    IB DataInA_pad_8 (.I(DataInA[8]), .O(DataInA_c_8));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    IB DataInA_pad_7 (.I(DataInA[7]), .O(DataInA_c_7));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    IB DataInA_pad_6 (.I(DataInA[6]), .O(DataInA_c_6));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    IB DataInA_pad_5 (.I(DataInA[5]), .O(DataInA_c_5));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    IB DataInA_pad_4 (.I(DataInA[4]), .O(DataInA_c_4));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    IB DataInA_pad_3 (.I(DataInA[3]), .O(DataInA_c_3));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    IB DataInA_pad_2 (.I(DataInA[2]), .O(DataInA_c_2));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    IB DataInA_pad_1 (.I(DataInA[1]), .O(DataInA_c_1));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    IB DataInA_pad_0 (.I(DataInA[0]), .O(DataInA_c_0));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(16[9:16])
    IB DataInB_pad_8 (.I(DataInB[8]), .O(DataInB_c_8));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    IB DataInB_pad_7 (.I(DataInB[7]), .O(DataInB_c_7));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    IB DataInB_pad_6 (.I(DataInB[6]), .O(DataInB_c_6));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    IB DataInB_pad_5 (.I(DataInB[5]), .O(DataInB_c_5));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    IB DataInB_pad_4 (.I(DataInB[4]), .O(DataInB_c_4));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    IB DataInB_pad_3 (.I(DataInB[3]), .O(DataInB_c_3));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    IB DataInB_pad_2 (.I(DataInB[2]), .O(DataInB_c_2));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    IB DataInB_pad_1 (.I(DataInB[1]), .O(DataInB_c_1));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    IB DataInB_pad_0 (.I(DataInB[0]), .O(DataInB_c_0));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(17[9:16])
    IB AddressA_pad_9 (.I(AddressA[9]), .O(AddressA_c_9));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressA_pad_8 (.I(AddressA[8]), .O(AddressA_c_8));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressA_pad_7 (.I(AddressA[7]), .O(AddressA_c_7));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressA_pad_6 (.I(AddressA[6]), .O(AddressA_c_6));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressA_pad_5 (.I(AddressA[5]), .O(AddressA_c_5));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressA_pad_4 (.I(AddressA[4]), .O(AddressA_c_4));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressA_pad_3 (.I(AddressA[3]), .O(AddressA_c_3));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressA_pad_2 (.I(AddressA[2]), .O(AddressA_c_2));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressA_pad_1 (.I(AddressA[1]), .O(AddressA_c_1));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressA_pad_0 (.I(AddressA[0]), .O(AddressA_c_0));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(18[9:17])
    IB AddressB_pad_9 (.I(AddressB[9]), .O(AddressB_c_9));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB AddressB_pad_8 (.I(AddressB[8]), .O(AddressB_c_8));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB AddressB_pad_7 (.I(AddressB[7]), .O(AddressB_c_7));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB AddressB_pad_6 (.I(AddressB[6]), .O(AddressB_c_6));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB AddressB_pad_5 (.I(AddressB[5]), .O(AddressB_c_5));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB AddressB_pad_4 (.I(AddressB[4]), .O(AddressB_c_4));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB AddressB_pad_3 (.I(AddressB[3]), .O(AddressB_c_3));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB AddressB_pad_2 (.I(AddressB[2]), .O(AddressB_c_2));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB AddressB_pad_1 (.I(AddressB[1]), .O(AddressB_c_1));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB AddressB_pad_0 (.I(AddressB[0]), .O(AddressB_c_0));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(19[9:17])
    IB ClockA_pad (.I(ClockA), .O(ClockA_c));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(20[9:15])
    IB ClockB_pad (.I(ClockB), .O(ClockB_c));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(21[9:15])
    IB ClockEnA_pad (.I(ClockEnA), .O(ClockEnA_c));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(22[9:17])
    IB ClockEnB_pad (.I(ClockEnB), .O(ClockEnB_c));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(23[9:17])
    IB WrA_pad (.I(WrA), .O(WrA_c));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(24[9:12])
    IB WrB_pad (.I(WrB), .O(WrB_c));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(25[9:12])
    IB ResetA_pad (.I(ResetA), .O(ResetA_c));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(26[9:15])
    IB ResetB_pad (.I(ResetB), .O(ResetB_c));   // c:/users/bernhard/dropbox/nn2022/lattice/nn22control00/ram_b.vhd(27[9:15])
    GSR GSR_INST (.GSR(scuba_vhi));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i4 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

