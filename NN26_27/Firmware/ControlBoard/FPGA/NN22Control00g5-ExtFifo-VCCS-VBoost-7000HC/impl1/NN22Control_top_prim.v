// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Jul 17 16:46:56 2024
//
// Verilog Description of module NN22Control_top
//

module NN22Control_top (OSC_CLK, UART_DETB_TO_FPGA, UART_FPGA_TO_DETB, 
            DETB_SELECT, DETB_RUN, DETB_STATUS_SELECT, DETB_TRIGGER, 
            DETB_END_CYC, UART_SRCB_TO_FPGA, UART_FPGA_TO_SRCB, SRCB_SELECT, 
            SRCB_RUN, SRCB_LED_EN, SRCB_STEP, ADS_CSN, ADS_SCK, ADS_SDO, 
            RAM0_CEN, RAM0_SCLK, RAM0_SIO, UART_FPGA_TO_FTDI, UART_FTDI_TO_FPGA, 
            UART_CTSN_TO_FTDI, UART_RTSN_TO_FPGA, RPI0_CE, RPI0_MISO, 
            RPI0_SCLK, RPFP_RUN, ACC_RUN_IND, EXP_J303_D, TRG, AUXIO, 
            FP_LED, V5P1_B01_EN, V5P1_B23_EN, V5P1_RPI_EN, V5P1_SRC_EN, 
            V9P0_EN, VN22_EN, VN3P4_EN, VN22_CLKA, VN22_CLKB);   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(14[8:23])
    input OSC_CLK;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(16[3:10])
    input [24:0]UART_DETB_TO_FPGA;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    output [4:0]UART_FPGA_TO_DETB;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(20[3:20])
    output [24:0]DETB_SELECT;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    output [3:0]DETB_RUN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(22[3:11])
    output [4:0]DETB_STATUS_SELECT;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(23[3:21])
    output [3:0]DETB_TRIGGER;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(24[3:15])
    output [4:0]DETB_END_CYC;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(25[3:15])
    input [6:0]UART_SRCB_TO_FPGA;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(28[3:20])
    output UART_FPGA_TO_SRCB;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(29[3:20])
    output [6:0]SRCB_SELECT;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(30[3:14])
    output SRCB_RUN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(31[3:11])
    output SRCB_LED_EN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(32[3:14])
    output SRCB_STEP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(33[3:12])
    output [1:0]ADS_CSN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(36[3:10])
    output [1:0]ADS_SCK;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(37[3:10])
    input [1:0]ADS_SDO;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(38[3:10])
    output RAM0_CEN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(41[3:11])
    output RAM0_SCLK;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(42[3:12])
    output [3:0]RAM0_SIO;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(43[3:11])
    output UART_FPGA_TO_FTDI;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(46[3:20])
    input UART_FTDI_TO_FPGA;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(47[3:20])
    output UART_CTSN_TO_FTDI;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(48[3:20])
    input UART_RTSN_TO_FPGA;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(49[3:20])
    input RPI0_CE;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(52[3:10])
    output RPI0_MISO;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(53[3:12])
    input RPI0_SCLK;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(54[3:12])
    output RPFP_RUN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(57[3:11])
    output ACC_RUN_IND;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(58[3:14])
    output [3:0]EXP_J303_D;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(59[3:13])
    input [3:0]TRG;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(60[3:6])
    input [1:0]AUXIO;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(61[3:8])
    output [5:0]FP_LED;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(62[3:9])
    output V5P1_B01_EN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(63[3:14])
    output V5P1_B23_EN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(64[3:14])
    output V5P1_RPI_EN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(65[3:14])
    output V5P1_SRC_EN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(66[3:14])
    output V9P0_EN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(67[3:10])
    output VN22_EN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(68[3:10])
    output VN3P4_EN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(69[3:11])
    output VN22_CLKA;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(70[3:12])
    output VN22_CLKB;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(71[3:12])
    
    wire OSC_CLK_c /* synthesis is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(16[3:10])
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    wire UART_DETB_TO_FPGA_c_24, UART_DETB_TO_FPGA_c_23, UART_DETB_TO_FPGA_c_22, 
        UART_DETB_TO_FPGA_c_21, UART_DETB_TO_FPGA_c_20, UART_DETB_TO_FPGA_c_19, 
        UART_DETB_TO_FPGA_c_18, UART_DETB_TO_FPGA_c_17, UART_DETB_TO_FPGA_c_16, 
        UART_DETB_TO_FPGA_c_15, UART_DETB_TO_FPGA_c_14, UART_DETB_TO_FPGA_c_13, 
        UART_DETB_TO_FPGA_c_12, UART_DETB_TO_FPGA_c_11, UART_DETB_TO_FPGA_c_10, 
        UART_DETB_TO_FPGA_c_9, UART_DETB_TO_FPGA_c_8, UART_DETB_TO_FPGA_c_7, 
        UART_DETB_TO_FPGA_c_6, UART_DETB_TO_FPGA_c_5, UART_DETB_TO_FPGA_c_4, 
        UART_DETB_TO_FPGA_c_3, UART_DETB_TO_FPGA_c_2, UART_DETB_TO_FPGA_c_1, 
        UART_DETB_TO_FPGA_c_0, DETB_SELECT_c_24, DETB_SELECT_c_23, DETB_SELECT_c_22, 
        DETB_SELECT_c_21, DETB_SELECT_c_20, DETB_SELECT_c_19, DETB_SELECT_c_18, 
        DETB_SELECT_c_17, DETB_SELECT_c_16, DETB_SELECT_c_15, DETB_SELECT_c_14, 
        DETB_SELECT_c_13, DETB_SELECT_c_12, DETB_SELECT_c_11, DETB_SELECT_c_10, 
        DETB_SELECT_c_9, DETB_SELECT_c_8, DETB_SELECT_c_7, DETB_SELECT_c_6, 
        DETB_SELECT_c_5, DETB_SELECT_c_4, DETB_SELECT_c_3, DETB_SELECT_c_2, 
        DETB_SELECT_c_1, DETB_SELECT_c_0, DETB_RUN_c_3, DETB_RUN_c_2, 
        DETB_RUN_c_1, DETB_RUN_c_0, DETB_STATUS_SELECT_0, DETB_TRIGGER_c, 
        DETB_END_CYC_0, UART_FPGA_TO_SRCB_c, SRCB_SELECT_c_6, SRCB_SELECT_c_5, 
        SRCB_SELECT_c_4, SRCB_SELECT_c_3, SRCB_SELECT_c_2, SRCB_SELECT_c_1, 
        SRCB_SELECT_c_0, SRCB_RUN_c, FP_LED_0, SRCB_STEP_c_11, ADS_CSN_c, 
        ADS_SDO_c_1, ADS_SDO_c_0, RAM0_CEN_c, RAM0_SCLK_c, RAM0_SIO_c_0, 
        EXP_J303_D_0, EXP_J303_D_1_c, GND_net, EXP_J303_D_c_c, RPI0_CE_c, 
        RPI0_SCLK_c, RPFP_RUN_c, EXP_J303_D_c_3, TRG_c_3, TRG_c_2, 
        TRG_c_1, TRG_c_0, AUXIO_c_1, AUXIO_c_0, V5P1_B01_EN_c_18, 
        V5P1_B23_EN_c_19, V5P1_RPI_EN_c, V5P1_SRC_EN_c_21, V9P0_EN_c_22, 
        VN22_EN_c_23, VN3P4_EN_c_24, PllLockxS_N_1, PllLockxS, VCC_net;
    wire [7:0]UartTxDatxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(122[9:20])
    
    wire n3003, n3000, n8;
    wire [1:0]SpiStatexDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(49[9:20])
    wire [2:0]BitCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(54[9:18])
    
    wire n3940;
    wire [7:0]SpiSRegxDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(67[21:31])
    wire [7:0]SpiOutDatxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(68[9:20])
    
    wire Clk96xC_enable_238, n2996, n9, n7;
    wire [1:0]StatexDP_adj_1155;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(30[9:17])
    wire [7:0]TxSRegxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(40[9:18])
    wire [7:0]TxSRegxDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(40[20:29])
    wire [7:0]TxSRegxDN_7__N_838;
    
    wire MISOxDO_N_874, MISOxDO_N_875, n9255, n3936, n726, n734, 
        n9433, n9162, n9_adj_1110, Clk96xC_enable_267, n4117, n10539, 
        n3932, n3926, n3913, n3903, n3905, RAM0_SIO_out_1, n9993, 
        n9946;
    
    VHI i16 (.Z(VCC_net));
    NN22Control_main NN22Control_main_inst (.Clk96xC(Clk96xC), .V5P1_B23_EN_c_19(V5P1_B23_EN_c_19), 
            .V5P1_B01_EN_c_18(V5P1_B01_EN_c_18), .UART_DETB_TO_FPGA_c_0(UART_DETB_TO_FPGA_c_0), 
            .DETB_SELECT_c_0(DETB_SELECT_c_0), .GND_net(GND_net), .SRCB_SELECT_c_0(SRCB_SELECT_c_0), 
            .DETB_SELECT_c_13(DETB_SELECT_c_13), .DETB_SELECT_c_12(DETB_SELECT_c_12), 
            .DETB_SELECT_c_11(DETB_SELECT_c_11), .DETB_SELECT_c_10(DETB_SELECT_c_10), 
            .DETB_SELECT_c_9(DETB_SELECT_c_9), .DETB_SELECT_c_8(DETB_SELECT_c_8), 
            .DETB_SELECT_c_7(DETB_SELECT_c_7), .DETB_SELECT_c_6(DETB_SELECT_c_6), 
            .DETB_SELECT_c_5(DETB_SELECT_c_5), .DETB_SELECT_c_4(DETB_SELECT_c_4), 
            .DETB_SELECT_c_3(DETB_SELECT_c_3), .DETB_SELECT_c_2(DETB_SELECT_c_2), 
            .DETB_SELECT_c_1(DETB_SELECT_c_1), .UART_DETB_TO_FPGA_c_24(UART_DETB_TO_FPGA_c_24), 
            .UART_DETB_TO_FPGA_c_23(UART_DETB_TO_FPGA_c_23), .UART_DETB_TO_FPGA_c_22(UART_DETB_TO_FPGA_c_22), 
            .UART_DETB_TO_FPGA_c_21(UART_DETB_TO_FPGA_c_21), .RPFP_RUN_c(RPFP_RUN_c), 
            .V5P1_RPI_EN_c(V5P1_RPI_EN_c), .UART_DETB_TO_FPGA_c_20(UART_DETB_TO_FPGA_c_20), 
            .UART_DETB_TO_FPGA_c_19(UART_DETB_TO_FPGA_c_19), .UART_DETB_TO_FPGA_c_18(UART_DETB_TO_FPGA_c_18), 
            .UART_DETB_TO_FPGA_c_17(UART_DETB_TO_FPGA_c_17), .UART_DETB_TO_FPGA_c_16(UART_DETB_TO_FPGA_c_16), 
            .UART_DETB_TO_FPGA_c_15(UART_DETB_TO_FPGA_c_15), .UART_DETB_TO_FPGA_c_14(UART_DETB_TO_FPGA_c_14), 
            .UART_DETB_TO_FPGA_c_13(UART_DETB_TO_FPGA_c_13), .UART_DETB_TO_FPGA_c_12(UART_DETB_TO_FPGA_c_12), 
            .UART_DETB_TO_FPGA_c_11(UART_DETB_TO_FPGA_c_11), .UART_DETB_TO_FPGA_c_10(UART_DETB_TO_FPGA_c_10), 
            .UART_DETB_TO_FPGA_c_9(UART_DETB_TO_FPGA_c_9), .UART_DETB_TO_FPGA_c_8(UART_DETB_TO_FPGA_c_8), 
            .UART_DETB_TO_FPGA_c_7(UART_DETB_TO_FPGA_c_7), .UART_DETB_TO_FPGA_c_6(UART_DETB_TO_FPGA_c_6), 
            .UART_DETB_TO_FPGA_c_5(UART_DETB_TO_FPGA_c_5), .UART_DETB_TO_FPGA_c_4(UART_DETB_TO_FPGA_c_4), 
            .UART_DETB_TO_FPGA_c_3(UART_DETB_TO_FPGA_c_3), .VN3P4_EN_c_24(VN3P4_EN_c_24), 
            .UART_DETB_TO_FPGA_c_2(UART_DETB_TO_FPGA_c_2), .UART_DETB_TO_FPGA_c_1(UART_DETB_TO_FPGA_c_1), 
            .EXP_J303_D_c_3(EXP_J303_D_c_3), .FP_LED_0(FP_LED_0), .DETB_RUN_c_3(DETB_RUN_c_3), 
            .DETB_RUN_c_2(DETB_RUN_c_2), .DETB_RUN_c_1(DETB_RUN_c_1), .DETB_RUN_c_0(DETB_RUN_c_0), 
            .SRCB_RUN_c(SRCB_RUN_c), .VN22_EN_c_23(VN22_EN_c_23), .V9P0_EN_c_22(V9P0_EN_c_22), 
            .V5P1_SRC_EN_c_21(V5P1_SRC_EN_c_21), .SRCB_SELECT_c_6(SRCB_SELECT_c_6), 
            .SRCB_SELECT_c_5(SRCB_SELECT_c_5), .SRCB_SELECT_c_4(SRCB_SELECT_c_4), 
            .SRCB_SELECT_c_3(SRCB_SELECT_c_3), .SRCB_SELECT_c_2(SRCB_SELECT_c_2), 
            .SRCB_SELECT_c_1(SRCB_SELECT_c_1), .DETB_SELECT_c_24(DETB_SELECT_c_24), 
            .DETB_SELECT_c_23(DETB_SELECT_c_23), .DETB_SELECT_c_22(DETB_SELECT_c_22), 
            .DETB_SELECT_c_21(DETB_SELECT_c_21), .DETB_SELECT_c_20(DETB_SELECT_c_20), 
            .DETB_SELECT_c_19(DETB_SELECT_c_19), .DETB_SELECT_c_18(DETB_SELECT_c_18), 
            .DETB_SELECT_c_17(DETB_SELECT_c_17), .DETB_SELECT_c_16(DETB_SELECT_c_16), 
            .DETB_SELECT_c_15(DETB_SELECT_c_15), .DETB_SELECT_c_14(DETB_SELECT_c_14), 
            .EXP_J303_D_0(EXP_J303_D_0), .EXP_J303_D_c_c(EXP_J303_D_c_c), 
            .RAM0_SIO_c_0(RAM0_SIO_c_0), .\UartTxDatxD[6] (UartTxDatxD[6]), 
            .\UartTxDatxD[5] (UartTxDatxD[5]), .\UartTxDatxD[4] (UartTxDatxD[4]), 
            .\UartTxDatxD[3] (UartTxDatxD[3]), .\UartTxDatxD[1] (UartTxDatxD[1]), 
            .\UartTxDatxD[0] (UartTxDatxD[0]), .PllLockxS_N_1(PllLockxS_N_1), 
            .VCC_net(VCC_net), .UART_FPGA_TO_SRCB_c(UART_FPGA_TO_SRCB_c), 
            .EXP_J303_D_1_c(EXP_J303_D_1_c), .\StatexDP[0] (StatexDP_adj_1155[0]), 
            .MISOxDO_N_875(MISOxDO_N_875), .TxSRegxDN({TxSRegxDN}), .RPI0_SCLK_c(RPI0_SCLK_c), 
            .RPI0_CE_c(RPI0_CE_c), .TxSRegxDN_7__N_838({TxSRegxDN_7__N_838}), 
            .n3903(n3903), .n3905(n3905), .n3913(n3913), .n3926(n3926), 
            .n3932(n3932), .n3936(n3936), .n3940(n3940), .n4117(n4117), 
            .\TxSRegxDP[7] (TxSRegxDP[7]), .SRCB_STEP_c_11(SRCB_STEP_c_11), 
            .DETB_TRIGGER_c(DETB_TRIGGER_c), .DETB_END_CYC_0(DETB_END_CYC_0), 
            .DETB_STATUS_SELECT_0(DETB_STATUS_SELECT_0), .n726(n726), .n3000(n3000), 
            .n7(n7), .n8(n8), .n3003(n3003), .\SpiOutDatxD[1] (SpiOutDatxD[1]), 
            .\SpiStatexDP[0] (SpiStatexDP[0]), .RAM0_CEN_c(RAM0_CEN_c), 
            .RAM0_SCLK_c(RAM0_SCLK_c), .SpiSRegxDN({SpiSRegxDN}), .Clk96xC_enable_267(Clk96xC_enable_267), 
            .Clk96xC_enable_238(Clk96xC_enable_238), .n9162(n9162), .n734(n734), 
            .n9946(n9946), .n10539(n10539), .\BitCntxDP[0] (BitCntxDP[0]), 
            .n9433(n9433), .RAM0_SIO_out_1(RAM0_SIO_out_1), .\SpiOutDatxD[0] (SpiOutDatxD[0]), 
            .\SpiOutDatxD[3] (SpiOutDatxD[3]), .\SpiOutDatxD[5] (SpiOutDatxD[5]), 
            .\SpiOutDatxD[4] (SpiOutDatxD[4]), .\SpiOutDatxD[7] (SpiOutDatxD[7]), 
            .n2996(n2996), .TRG_c_0(TRG_c_0), .n9993(n9993), .ADS_SDO_c_1(ADS_SDO_c_1), 
            .ADS_SDO_c_0(ADS_SDO_c_0), .AUXIO_c_1(AUXIO_c_1), .AUXIO_c_0(AUXIO_c_0), 
            .TRG_c_3(TRG_c_3), .TRG_c_2(TRG_c_2), .TRG_c_1(TRG_c_1), .ADS_CSN_c(ADS_CSN_c));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(164[26:42])
    LUT4 i7083_3_lut (.A(RAM0_SCLK_c), .B(n726), .C(n9946), .Z(n9255)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i7083_3_lut.init = 16'h0101;
    OB DETB_SELECT_pad_22 (.I(DETB_SELECT_c_22), .O(DETB_SELECT[22]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    LUT4 i3343_3_lut (.A(SpiOutDatxD[1]), .B(UartTxDatxD[0]), .C(RAM0_SCLK_c), 
         .Z(SpiSRegxDN[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i3343_3_lut.init = 16'hcaca;
    LUT4 i4709_2_lut (.A(TxSRegxDP[7]), .B(StatexDP_adj_1155[0]), .Z(MISOxDO_N_874)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(113[3] 154[12])
    defparam i4709_2_lut.init = 16'h8888;
    OB DETB_SELECT_pad_23 (.I(DETB_SELECT_c_23), .O(DETB_SELECT[23]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_24 (.I(DETB_SELECT_c_24), .O(DETB_SELECT[24]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB UART_FPGA_TO_DETB_pad_0 (.I(VCC_net), .O(UART_FPGA_TO_DETB[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(20[3:20])
    OB UART_FPGA_TO_DETB_pad_1 (.I(VCC_net), .O(UART_FPGA_TO_DETB[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(20[3:20])
    OB UART_FPGA_TO_DETB_pad_2 (.I(VCC_net), .O(UART_FPGA_TO_DETB[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(20[3:20])
    OB UART_FPGA_TO_DETB_pad_3 (.I(VCC_net), .O(UART_FPGA_TO_DETB[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(20[3:20])
    OB UART_FPGA_TO_DETB_pad_4 (.I(VCC_net), .O(UART_FPGA_TO_DETB[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(20[3:20])
    BB RAM0_SIO_pad_1 (.I(GND_net), .T(VCC_net), .B(RAM0_SIO[1]), .O(RAM0_SIO_out_1));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(43[3:11])
    LUT4 PllLockxS_I_0_1_lut (.A(PllLockxS), .Z(PllLockxS_N_1)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(162[13:26])
    defparam PllLockxS_I_0_1_lut.init = 16'h5555;
    LUT4 i1523_2_lut (.A(n734), .B(n10539), .Z(Clk96xC_enable_267)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1523_2_lut.init = 16'heeee;
    LUT4 i1522_2_lut (.A(n726), .B(n10539), .Z(Clk96xC_enable_238)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1522_2_lut.init = 16'heeee;
    LUT4 i7272_3_lut (.A(BitCntxDP[0]), .B(RAM0_SCLK_c), .C(SpiStatexDP[0]), 
         .Z(n9433)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam i7272_3_lut.init = 16'h6868;
    LUT4 i3339_3_lut (.A(n9162), .B(SpiOutDatxD[3]), .C(n9255), .Z(SpiSRegxDN[3])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i3339_3_lut.init = 16'hacac;
    LUT4 mux_477_Mux_0_i3_3_lut (.A(n9162), .B(SpiOutDatxD[0]), .C(n9255), 
         .Z(SpiSRegxDN[0])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam mux_477_Mux_0_i3_3_lut.init = 16'hacac;
    VLO i1 (.Z(GND_net));
    LUT4 i3335_3_lut (.A(SpiOutDatxD[5]), .B(UartTxDatxD[4]), .C(RAM0_SCLK_c), 
         .Z(SpiSRegxDN[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i3335_3_lut.init = 16'hcaca;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB DETB_SELECT_pad_21 (.I(DETB_SELECT_c_21), .O(DETB_SELECT[21]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i3337_3_lut (.A(SpiOutDatxD[4]), .B(UartTxDatxD[3]), .C(RAM0_SCLK_c), 
         .Z(SpiSRegxDN[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i3337_3_lut.init = 16'hcaca;
    PFUMX i2246 (.BLUT(n4117), .ALUT(TxSRegxDN_7__N_838[0]), .C0(StatexDP_adj_1155[0]), 
          .Z(TxSRegxDN[0]));
    PFUMX i2090 (.BLUT(n3940), .ALUT(TxSRegxDN_7__N_838[1]), .C0(StatexDP_adj_1155[0]), 
          .Z(TxSRegxDN[1]));
    PFUMX i2087 (.BLUT(n3936), .ALUT(TxSRegxDN_7__N_838[2]), .C0(StatexDP_adj_1155[0]), 
          .Z(TxSRegxDN[2]));
    PFUMX i2084 (.BLUT(n3932), .ALUT(TxSRegxDN_7__N_838[3]), .C0(StatexDP_adj_1155[0]), 
          .Z(TxSRegxDN[3]));
    PFUMX i2078 (.BLUT(n3926), .ALUT(TxSRegxDN_7__N_838[4]), .C0(StatexDP_adj_1155[0]), 
          .Z(TxSRegxDN[4]));
    OB DETB_SELECT_pad_20 (.I(DETB_SELECT_c_20), .O(DETB_SELECT[20]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_19 (.I(DETB_SELECT_c_19), .O(DETB_SELECT[19]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_18 (.I(DETB_SELECT_c_18), .O(DETB_SELECT[18]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_17 (.I(DETB_SELECT_c_17), .O(DETB_SELECT[17]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_16 (.I(DETB_SELECT_c_16), .O(DETB_SELECT[16]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_15 (.I(DETB_SELECT_c_15), .O(DETB_SELECT[15]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_14 (.I(DETB_SELECT_c_14), .O(DETB_SELECT[14]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_13 (.I(DETB_SELECT_c_13), .O(DETB_SELECT[13]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_12 (.I(DETB_SELECT_c_12), .O(DETB_SELECT[12]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_11 (.I(DETB_SELECT_c_11), .O(DETB_SELECT[11]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_10 (.I(DETB_SELECT_c_10), .O(DETB_SELECT[10]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_9 (.I(DETB_SELECT_c_9), .O(DETB_SELECT[9]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_8 (.I(DETB_SELECT_c_8), .O(DETB_SELECT[8]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_7 (.I(DETB_SELECT_c_7), .O(DETB_SELECT[7]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_6 (.I(DETB_SELECT_c_6), .O(DETB_SELECT[6]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_5 (.I(DETB_SELECT_c_5), .O(DETB_SELECT[5]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_4 (.I(DETB_SELECT_c_4), .O(DETB_SELECT[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_3 (.I(DETB_SELECT_c_3), .O(DETB_SELECT[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_2 (.I(DETB_SELECT_c_2), .O(DETB_SELECT[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_1 (.I(DETB_SELECT_c_1), .O(DETB_SELECT[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_SELECT_pad_0 (.I(DETB_SELECT_c_0), .O(DETB_SELECT[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(21[3:14])
    OB DETB_RUN_pad_3 (.I(DETB_RUN_c_3), .O(DETB_RUN[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(22[3:11])
    OB DETB_RUN_pad_2 (.I(DETB_RUN_c_2), .O(DETB_RUN[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(22[3:11])
    OB DETB_RUN_pad_1 (.I(DETB_RUN_c_1), .O(DETB_RUN[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(22[3:11])
    OB DETB_RUN_pad_0 (.I(DETB_RUN_c_0), .O(DETB_RUN[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(22[3:11])
    OB DETB_STATUS_SELECT_pad_4 (.I(DETB_STATUS_SELECT_0), .O(DETB_STATUS_SELECT[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(23[3:21])
    OB DETB_STATUS_SELECT_pad_3 (.I(DETB_STATUS_SELECT_0), .O(DETB_STATUS_SELECT[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(23[3:21])
    OB DETB_STATUS_SELECT_pad_2 (.I(DETB_STATUS_SELECT_0), .O(DETB_STATUS_SELECT[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(23[3:21])
    OB DETB_STATUS_SELECT_pad_1 (.I(DETB_STATUS_SELECT_0), .O(DETB_STATUS_SELECT[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(23[3:21])
    OB DETB_STATUS_SELECT_pad_0 (.I(DETB_STATUS_SELECT_0), .O(DETB_STATUS_SELECT[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(23[3:21])
    OB DETB_TRIGGER_pad_3 (.I(DETB_TRIGGER_c), .O(DETB_TRIGGER[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(24[3:15])
    OB DETB_TRIGGER_pad_2 (.I(DETB_TRIGGER_c), .O(DETB_TRIGGER[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(24[3:15])
    OB DETB_TRIGGER_pad_1 (.I(DETB_TRIGGER_c), .O(DETB_TRIGGER[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(24[3:15])
    OB DETB_TRIGGER_pad_0 (.I(DETB_TRIGGER_c), .O(DETB_TRIGGER[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(24[3:15])
    OB DETB_END_CYC_pad_4 (.I(DETB_END_CYC_0), .O(DETB_END_CYC[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(25[3:15])
    OB DETB_END_CYC_pad_3 (.I(DETB_END_CYC_0), .O(DETB_END_CYC[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(25[3:15])
    OB DETB_END_CYC_pad_2 (.I(DETB_END_CYC_0), .O(DETB_END_CYC[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(25[3:15])
    OB DETB_END_CYC_pad_1 (.I(DETB_END_CYC_0), .O(DETB_END_CYC[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(25[3:15])
    OB DETB_END_CYC_pad_0 (.I(DETB_END_CYC_0), .O(DETB_END_CYC[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(25[3:15])
    OB UART_FPGA_TO_SRCB_pad (.I(UART_FPGA_TO_SRCB_c), .O(UART_FPGA_TO_SRCB));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(29[3:20])
    OB SRCB_SELECT_pad_6 (.I(SRCB_SELECT_c_6), .O(SRCB_SELECT[6]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(30[3:14])
    OB SRCB_SELECT_pad_5 (.I(SRCB_SELECT_c_5), .O(SRCB_SELECT[5]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(30[3:14])
    OB SRCB_SELECT_pad_4 (.I(SRCB_SELECT_c_4), .O(SRCB_SELECT[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(30[3:14])
    OB SRCB_SELECT_pad_3 (.I(SRCB_SELECT_c_3), .O(SRCB_SELECT[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(30[3:14])
    OB SRCB_SELECT_pad_2 (.I(SRCB_SELECT_c_2), .O(SRCB_SELECT[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(30[3:14])
    OB SRCB_SELECT_pad_1 (.I(SRCB_SELECT_c_1), .O(SRCB_SELECT[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(30[3:14])
    OB SRCB_SELECT_pad_0 (.I(SRCB_SELECT_c_0), .O(SRCB_SELECT[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(30[3:14])
    OB SRCB_RUN_pad (.I(SRCB_RUN_c), .O(SRCB_RUN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(31[3:11])
    OB SRCB_LED_EN_pad (.I(FP_LED_0), .O(SRCB_LED_EN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(32[3:14])
    OB SRCB_STEP_pad (.I(SRCB_STEP_c_11), .O(SRCB_STEP));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(33[3:12])
    OB ADS_CSN_pad_1 (.I(ADS_CSN_c), .O(ADS_CSN[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(36[3:10])
    OB ADS_CSN_pad_0 (.I(ADS_CSN_c), .O(ADS_CSN[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(36[3:10])
    OB ADS_SCK_pad_1 (.I(n9993), .O(ADS_SCK[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(37[3:10])
    OB ADS_SCK_pad_0 (.I(n9993), .O(ADS_SCK[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(37[3:10])
    OB RAM0_CEN_pad (.I(RAM0_CEN_c), .O(RAM0_CEN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(41[3:11])
    OB RAM0_SCLK_pad (.I(RAM0_SCLK_c), .O(RAM0_SCLK));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(42[3:12])
    OBZ RAM0_SIO_pad_3 (.I(GND_net), .T(VCC_net), .O(RAM0_SIO[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(43[3:11])
    OBZ RAM0_SIO_pad_2 (.I(GND_net), .T(VCC_net), .O(RAM0_SIO[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(43[3:11])
    OB RAM0_SIO_pad_0 (.I(RAM0_SIO_c_0), .O(RAM0_SIO[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(43[3:11])
    OB UART_FPGA_TO_FTDI_pad (.I(EXP_J303_D_0), .O(UART_FPGA_TO_FTDI));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(46[3:20])
    OB UART_CTSN_TO_FTDI_pad (.I(GND_net), .O(UART_CTSN_TO_FTDI));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(48[3:20])
    OBZ RPI0_MISO_pad (.I(MISOxDO_N_874), .T(MISOxDO_N_875), .O(RPI0_MISO));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(105[2] 155[14])
    OB RPFP_RUN_pad (.I(RPFP_RUN_c), .O(RPFP_RUN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(57[3:11])
    OB ACC_RUN_IND_pad (.I(FP_LED_0), .O(ACC_RUN_IND));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(58[3:14])
    OB EXP_J303_D_pad_3 (.I(EXP_J303_D_c_3), .O(EXP_J303_D[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(59[3:13])
    OB EXP_J303_D_pad_2 (.I(EXP_J303_D_c_c), .O(EXP_J303_D[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(59[3:13])
    OB EXP_J303_D_pad_1 (.I(EXP_J303_D_0), .O(EXP_J303_D[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(59[3:13])
    OB EXP_J303_D_pad_0 (.I(EXP_J303_D_1_c), .O(EXP_J303_D[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(59[3:13])
    OB FP_LED_pad_5 (.I(GND_net), .O(FP_LED[5]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(62[3:9])
    OB FP_LED_pad_4 (.I(GND_net), .O(FP_LED[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(62[3:9])
    OB FP_LED_pad_3 (.I(GND_net), .O(FP_LED[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(62[3:9])
    OB FP_LED_pad_2 (.I(GND_net), .O(FP_LED[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(62[3:9])
    OB FP_LED_pad_1 (.I(GND_net), .O(FP_LED[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(62[3:9])
    OB FP_LED_pad_0 (.I(FP_LED_0), .O(FP_LED[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(62[3:9])
    OB V5P1_B01_EN_pad (.I(V5P1_B01_EN_c_18), .O(V5P1_B01_EN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(63[3:14])
    OB V5P1_B23_EN_pad (.I(V5P1_B23_EN_c_19), .O(V5P1_B23_EN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(64[3:14])
    OB V5P1_RPI_EN_pad (.I(V5P1_RPI_EN_c), .O(V5P1_RPI_EN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(65[3:14])
    OB V5P1_SRC_EN_pad (.I(V5P1_SRC_EN_c_21), .O(V5P1_SRC_EN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(66[3:14])
    OB V9P0_EN_pad (.I(V9P0_EN_c_22), .O(V9P0_EN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(67[3:10])
    OB VN22_EN_pad (.I(VN22_EN_c_23), .O(VN22_EN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(68[3:10])
    OB VN3P4_EN_pad (.I(VN3P4_EN_c_24), .O(VN3P4_EN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(69[3:11])
    OB VN22_CLKA_pad (.I(GND_net), .O(VN22_CLKA));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(70[3:12])
    OB VN22_CLKB_pad (.I(GND_net), .O(VN22_CLKB));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(71[3:12])
    IB OSC_CLK_pad (.I(OSC_CLK), .O(OSC_CLK_c));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(16[3:10])
    IB UART_DETB_TO_FPGA_pad_24 (.I(UART_DETB_TO_FPGA[24]), .O(UART_DETB_TO_FPGA_c_24));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_23 (.I(UART_DETB_TO_FPGA[23]), .O(UART_DETB_TO_FPGA_c_23));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_22 (.I(UART_DETB_TO_FPGA[22]), .O(UART_DETB_TO_FPGA_c_22));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_21 (.I(UART_DETB_TO_FPGA[21]), .O(UART_DETB_TO_FPGA_c_21));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_20 (.I(UART_DETB_TO_FPGA[20]), .O(UART_DETB_TO_FPGA_c_20));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_19 (.I(UART_DETB_TO_FPGA[19]), .O(UART_DETB_TO_FPGA_c_19));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_18 (.I(UART_DETB_TO_FPGA[18]), .O(UART_DETB_TO_FPGA_c_18));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_17 (.I(UART_DETB_TO_FPGA[17]), .O(UART_DETB_TO_FPGA_c_17));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_16 (.I(UART_DETB_TO_FPGA[16]), .O(UART_DETB_TO_FPGA_c_16));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_15 (.I(UART_DETB_TO_FPGA[15]), .O(UART_DETB_TO_FPGA_c_15));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_14 (.I(UART_DETB_TO_FPGA[14]), .O(UART_DETB_TO_FPGA_c_14));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_13 (.I(UART_DETB_TO_FPGA[13]), .O(UART_DETB_TO_FPGA_c_13));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_12 (.I(UART_DETB_TO_FPGA[12]), .O(UART_DETB_TO_FPGA_c_12));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_11 (.I(UART_DETB_TO_FPGA[11]), .O(UART_DETB_TO_FPGA_c_11));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_10 (.I(UART_DETB_TO_FPGA[10]), .O(UART_DETB_TO_FPGA_c_10));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_9 (.I(UART_DETB_TO_FPGA[9]), .O(UART_DETB_TO_FPGA_c_9));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_8 (.I(UART_DETB_TO_FPGA[8]), .O(UART_DETB_TO_FPGA_c_8));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_7 (.I(UART_DETB_TO_FPGA[7]), .O(UART_DETB_TO_FPGA_c_7));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_6 (.I(UART_DETB_TO_FPGA[6]), .O(UART_DETB_TO_FPGA_c_6));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_5 (.I(UART_DETB_TO_FPGA[5]), .O(UART_DETB_TO_FPGA_c_5));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_4 (.I(UART_DETB_TO_FPGA[4]), .O(UART_DETB_TO_FPGA_c_4));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_3 (.I(UART_DETB_TO_FPGA[3]), .O(UART_DETB_TO_FPGA_c_3));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_2 (.I(UART_DETB_TO_FPGA[2]), .O(UART_DETB_TO_FPGA_c_2));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_1 (.I(UART_DETB_TO_FPGA[1]), .O(UART_DETB_TO_FPGA_c_1));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB UART_DETB_TO_FPGA_pad_0 (.I(UART_DETB_TO_FPGA[0]), .O(UART_DETB_TO_FPGA_c_0));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(19[3:20])
    IB ADS_SDO_pad_1 (.I(ADS_SDO[1]), .O(ADS_SDO_c_1));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(38[3:10])
    IB ADS_SDO_pad_0 (.I(ADS_SDO[0]), .O(ADS_SDO_c_0));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(38[3:10])
    IB EXP_J303_D_1_pad (.I(UART_FTDI_TO_FPGA), .O(EXP_J303_D_1_c));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(47[3:20])
    IB EXP_J303_D_c_pad (.I(UART_RTSN_TO_FPGA), .O(EXP_J303_D_c_c));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(49[3:20])
    IB RPI0_CE_pad (.I(RPI0_CE), .O(RPI0_CE_c));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(52[3:10])
    IB RPI0_SCLK_pad (.I(RPI0_SCLK), .O(RPI0_SCLK_c));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(54[3:12])
    IB TRG_pad_3 (.I(TRG[3]), .O(TRG_c_3));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(60[3:6])
    IB TRG_pad_2 (.I(TRG[2]), .O(TRG_c_2));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(60[3:6])
    IB TRG_pad_1 (.I(TRG[1]), .O(TRG_c_1));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(60[3:6])
    IB TRG_pad_0 (.I(TRG[0]), .O(TRG_c_0));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(60[3:6])
    IB AUXIO_pad_1 (.I(AUXIO[1]), .O(AUXIO_c_1));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(61[3:8])
    IB AUXIO_pad_0 (.I(AUXIO[0]), .O(AUXIO_c_0));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(61[3:8])
    PFUMX i2065 (.BLUT(n3913), .ALUT(TxSRegxDN_7__N_838[5]), .C0(StatexDP_adj_1155[0]), 
          .Z(TxSRegxDN[5]));
    PFUMX i2057 (.BLUT(n3905), .ALUT(TxSRegxDN_7__N_838[6]), .C0(StatexDP_adj_1155[0]), 
          .Z(TxSRegxDN[6]));
    PFUMX i2055 (.BLUT(n3903), .ALUT(TxSRegxDN_7__N_838[7]), .C0(StatexDP_adj_1155[0]), 
          .Z(TxSRegxDN[7]));
    LUT4 i3331_3_lut (.A(SpiOutDatxD[7]), .B(UartTxDatxD[6]), .C(RAM0_SCLK_c), 
         .Z(SpiSRegxDN[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i3331_3_lut.init = 16'hcaca;
    GSR GSR_INST (.GSR(PllLockxS));
    LUT4 i22_3_lut (.A(n9_adj_1110), .B(UartTxDatxD[5]), .C(RAM0_SCLK_c), 
         .Z(SpiSRegxDN[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i22_3_lut.init = 16'hcaca;
    main_pll main_pll_inst (.OSC_CLK_c(OSC_CLK_c), .Clk96xC(Clk96xC), .PllLockxS(PllLockxS), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(240[18:26])
    LUT4 i23_4_lut (.A(n7), .B(n3003), .C(n8), .D(n2996), .Z(n9_adj_1110)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i23_4_lut.init = 16'hc505;
    LUT4 i22_3_lut_adj_176 (.A(n9), .B(UartTxDatxD[1]), .C(RAM0_SCLK_c), 
         .Z(SpiSRegxDN[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i22_3_lut_adj_176.init = 16'hcaca;
    LUT4 i23_4_lut_adj_177 (.A(n7), .B(n3003), .C(n8), .D(n3000), .Z(n9)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(355[3] 386[12])
    defparam i23_4_lut_adj_177.init = 16'hc505;
    
endmodule
//
// Verilog Description of module NN22Control_main
//

module NN22Control_main (Clk96xC, V5P1_B23_EN_c_19, V5P1_B01_EN_c_18, 
            UART_DETB_TO_FPGA_c_0, DETB_SELECT_c_0, GND_net, SRCB_SELECT_c_0, 
            DETB_SELECT_c_13, DETB_SELECT_c_12, DETB_SELECT_c_11, DETB_SELECT_c_10, 
            DETB_SELECT_c_9, DETB_SELECT_c_8, DETB_SELECT_c_7, DETB_SELECT_c_6, 
            DETB_SELECT_c_5, DETB_SELECT_c_4, DETB_SELECT_c_3, DETB_SELECT_c_2, 
            DETB_SELECT_c_1, UART_DETB_TO_FPGA_c_24, UART_DETB_TO_FPGA_c_23, 
            UART_DETB_TO_FPGA_c_22, UART_DETB_TO_FPGA_c_21, RPFP_RUN_c, 
            V5P1_RPI_EN_c, UART_DETB_TO_FPGA_c_20, UART_DETB_TO_FPGA_c_19, 
            UART_DETB_TO_FPGA_c_18, UART_DETB_TO_FPGA_c_17, UART_DETB_TO_FPGA_c_16, 
            UART_DETB_TO_FPGA_c_15, UART_DETB_TO_FPGA_c_14, UART_DETB_TO_FPGA_c_13, 
            UART_DETB_TO_FPGA_c_12, UART_DETB_TO_FPGA_c_11, UART_DETB_TO_FPGA_c_10, 
            UART_DETB_TO_FPGA_c_9, UART_DETB_TO_FPGA_c_8, UART_DETB_TO_FPGA_c_7, 
            UART_DETB_TO_FPGA_c_6, UART_DETB_TO_FPGA_c_5, UART_DETB_TO_FPGA_c_4, 
            UART_DETB_TO_FPGA_c_3, VN3P4_EN_c_24, UART_DETB_TO_FPGA_c_2, 
            UART_DETB_TO_FPGA_c_1, EXP_J303_D_c_3, FP_LED_0, DETB_RUN_c_3, 
            DETB_RUN_c_2, DETB_RUN_c_1, DETB_RUN_c_0, SRCB_RUN_c, VN22_EN_c_23, 
            V9P0_EN_c_22, V5P1_SRC_EN_c_21, SRCB_SELECT_c_6, SRCB_SELECT_c_5, 
            SRCB_SELECT_c_4, SRCB_SELECT_c_3, SRCB_SELECT_c_2, SRCB_SELECT_c_1, 
            DETB_SELECT_c_24, DETB_SELECT_c_23, DETB_SELECT_c_22, DETB_SELECT_c_21, 
            DETB_SELECT_c_20, DETB_SELECT_c_19, DETB_SELECT_c_18, DETB_SELECT_c_17, 
            DETB_SELECT_c_16, DETB_SELECT_c_15, DETB_SELECT_c_14, EXP_J303_D_0, 
            EXP_J303_D_c_c, RAM0_SIO_c_0, \UartTxDatxD[6] , \UartTxDatxD[5] , 
            \UartTxDatxD[4] , \UartTxDatxD[3] , \UartTxDatxD[1] , \UartTxDatxD[0] , 
            PllLockxS_N_1, VCC_net, UART_FPGA_TO_SRCB_c, EXP_J303_D_1_c, 
            \StatexDP[0] , MISOxDO_N_875, TxSRegxDN, RPI0_SCLK_c, RPI0_CE_c, 
            TxSRegxDN_7__N_838, n3903, n3905, n3913, n3926, n3932, 
            n3936, n3940, n4117, \TxSRegxDP[7] , SRCB_STEP_c_11, DETB_TRIGGER_c, 
            DETB_END_CYC_0, DETB_STATUS_SELECT_0, n726, n3000, n7, 
            n8, n3003, \SpiOutDatxD[1] , \SpiStatexDP[0] , RAM0_CEN_c, 
            RAM0_SCLK_c, SpiSRegxDN, Clk96xC_enable_267, Clk96xC_enable_238, 
            n9162, n734, n9946, n10539, \BitCntxDP[0] , n9433, RAM0_SIO_out_1, 
            \SpiOutDatxD[0] , \SpiOutDatxD[3] , \SpiOutDatxD[5] , \SpiOutDatxD[4] , 
            \SpiOutDatxD[7] , n2996, TRG_c_0, n9993, ADS_SDO_c_1, 
            ADS_SDO_c_0, AUXIO_c_1, AUXIO_c_0, TRG_c_3, TRG_c_2, TRG_c_1, 
            ADS_CSN_c);
    input Clk96xC;
    output V5P1_B23_EN_c_19;
    output V5P1_B01_EN_c_18;
    input UART_DETB_TO_FPGA_c_0;
    output DETB_SELECT_c_0;
    input GND_net;
    output SRCB_SELECT_c_0;
    output DETB_SELECT_c_13;
    output DETB_SELECT_c_12;
    output DETB_SELECT_c_11;
    output DETB_SELECT_c_10;
    output DETB_SELECT_c_9;
    output DETB_SELECT_c_8;
    output DETB_SELECT_c_7;
    output DETB_SELECT_c_6;
    output DETB_SELECT_c_5;
    output DETB_SELECT_c_4;
    output DETB_SELECT_c_3;
    output DETB_SELECT_c_2;
    output DETB_SELECT_c_1;
    input UART_DETB_TO_FPGA_c_24;
    input UART_DETB_TO_FPGA_c_23;
    input UART_DETB_TO_FPGA_c_22;
    input UART_DETB_TO_FPGA_c_21;
    output RPFP_RUN_c;
    output V5P1_RPI_EN_c;
    input UART_DETB_TO_FPGA_c_20;
    input UART_DETB_TO_FPGA_c_19;
    input UART_DETB_TO_FPGA_c_18;
    input UART_DETB_TO_FPGA_c_17;
    input UART_DETB_TO_FPGA_c_16;
    input UART_DETB_TO_FPGA_c_15;
    input UART_DETB_TO_FPGA_c_14;
    input UART_DETB_TO_FPGA_c_13;
    input UART_DETB_TO_FPGA_c_12;
    input UART_DETB_TO_FPGA_c_11;
    input UART_DETB_TO_FPGA_c_10;
    input UART_DETB_TO_FPGA_c_9;
    input UART_DETB_TO_FPGA_c_8;
    input UART_DETB_TO_FPGA_c_7;
    input UART_DETB_TO_FPGA_c_6;
    input UART_DETB_TO_FPGA_c_5;
    input UART_DETB_TO_FPGA_c_4;
    input UART_DETB_TO_FPGA_c_3;
    output VN3P4_EN_c_24;
    input UART_DETB_TO_FPGA_c_2;
    input UART_DETB_TO_FPGA_c_1;
    output EXP_J303_D_c_3;
    output FP_LED_0;
    output DETB_RUN_c_3;
    output DETB_RUN_c_2;
    output DETB_RUN_c_1;
    output DETB_RUN_c_0;
    output SRCB_RUN_c;
    output VN22_EN_c_23;
    output V9P0_EN_c_22;
    output V5P1_SRC_EN_c_21;
    output SRCB_SELECT_c_6;
    output SRCB_SELECT_c_5;
    output SRCB_SELECT_c_4;
    output SRCB_SELECT_c_3;
    output SRCB_SELECT_c_2;
    output SRCB_SELECT_c_1;
    output DETB_SELECT_c_24;
    output DETB_SELECT_c_23;
    output DETB_SELECT_c_22;
    output DETB_SELECT_c_21;
    output DETB_SELECT_c_20;
    output DETB_SELECT_c_19;
    output DETB_SELECT_c_18;
    output DETB_SELECT_c_17;
    output DETB_SELECT_c_16;
    output DETB_SELECT_c_15;
    output DETB_SELECT_c_14;
    output EXP_J303_D_0;
    input EXP_J303_D_c_c;
    output RAM0_SIO_c_0;
    output \UartTxDatxD[6] ;
    output \UartTxDatxD[5] ;
    output \UartTxDatxD[4] ;
    output \UartTxDatxD[3] ;
    output \UartTxDatxD[1] ;
    output \UartTxDatxD[0] ;
    input PllLockxS_N_1;
    input VCC_net;
    output UART_FPGA_TO_SRCB_c;
    input EXP_J303_D_1_c;
    output \StatexDP[0] ;
    output MISOxDO_N_875;
    input [7:0]TxSRegxDN;
    input RPI0_SCLK_c;
    input RPI0_CE_c;
    output [7:0]TxSRegxDN_7__N_838;
    output n3903;
    output n3905;
    output n3913;
    output n3926;
    output n3932;
    output n3936;
    output n3940;
    output n4117;
    output \TxSRegxDP[7] ;
    output SRCB_STEP_c_11;
    output DETB_TRIGGER_c;
    output DETB_END_CYC_0;
    output DETB_STATUS_SELECT_0;
    output n726;
    output n3000;
    output n7;
    output n8;
    output n3003;
    output \SpiOutDatxD[1] ;
    output \SpiStatexDP[0] ;
    output RAM0_CEN_c;
    output RAM0_SCLK_c;
    input [7:0]SpiSRegxDN;
    input Clk96xC_enable_267;
    input Clk96xC_enable_238;
    output n9162;
    output n734;
    output n9946;
    output n10539;
    output \BitCntxDP[0] ;
    input n9433;
    input RAM0_SIO_out_1;
    output \SpiOutDatxD[0] ;
    output \SpiOutDatxD[3] ;
    output \SpiOutDatxD[5] ;
    output \SpiOutDatxD[4] ;
    output \SpiOutDatxD[7] ;
    output n2996;
    input TRG_c_0;
    output n9993;
    input ADS_SDO_c_1;
    input ADS_SDO_c_0;
    input AUXIO_c_1;
    input AUXIO_c_0;
    input TRG_c_3;
    input TRG_c_2;
    input TRG_c_1;
    output ADS_CSN_c;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    wire [7:0]\PcntTxSRegxDP[1] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(148[9:22])
    wire [7:0]n488;
    wire [9:0]PCntAxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(142[9:17])
    wire [4:0]BrdSelectIxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(138[9:21])
    
    wire n9945;
    wire [24:0]DetBSelectxSN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(106[24:37])
    wire [7:0]\CfgFSMSRegxDP[4] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(83[9:22])
    wire [7:0]\CfgFSMSRegxDP[1] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(83[9:22])
    
    wire n9982;
    wire [7:0]CfgFSMSRegxDN_4__7__N_320;
    wire [7:0]\CfgFSMSRegxDP[5] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(83[9:22])
    wire [7:0]n270;
    
    wire n9983, n4861;
    wire [2:0]CfgByteCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(89[9:22])
    wire [2:0]CfgByteCntxDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(89[24:37])
    
    wire CfgOutRdyxDP, CfgOutRdyxDN;
    wire [24:0]UartDetBtoFPGAxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(109[9:26])
    
    wire n9277;
    wire [7:0]\PcntTxSRegxDP[0] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(148[9:22])
    
    wire Clk96xC_enable_73, n6497, n9276, n4864;
    wire [7:0]\PcntTxSRegxDN[0] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(148[24:37])
    wire [26:0]MainStatRegxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(99[9:23])
    wire [17:0]CfgRamBOutxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(94[9:21])
    wire [7:0]\CfgFSMSRegxDP[3] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(83[9:22])
    wire [7:0]\CfgFSMSRegxDP[2] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(83[9:22])
    
    wire n3;
    wire [7:0]n555;
    
    wire n8570;
    wire [9:0]PCntBxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(143[9:17])
    wire [9:0]n45;
    
    wire CfgUartRxDatRdyxS;
    wire [7:0]CfgFSMSRegxDN_2__7__N_50;
    
    wire n8569, UartDetBRxDatRdyxSP, n5365;
    wire [6:0]SrcBSelectxSN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(107[24:37])
    wire [7:0]CfgFSMSRegxDN_3__7__N_66;
    
    wire n4867;
    wire [7:0]CfgFSMSRegxDN_3__7__N_312;
    
    wire n8568, n8567, Clk96xC_enable_283, n4768, n4771, n9950, 
        n3958, n4810, n8566, n8565;
    wire [9:0]n45_adj_1109;
    
    wire n8564;
    wire [7:0]AuxDataxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(129[9:18])
    
    wire n3146, n3150, n9275, n3151, n8563, n8562, n3152, n4813, 
        n8561, n9274, n3153, \p_pcnts_memless.PCntAAdvancexS , n5, 
        n3_adj_1085, n8714;
    wire [7:0]\CfgFSMSRegxDN[2] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(83[24:37])
    wire [7:0]CfgFSMSRegxDN_2__7__N_42;
    
    wire n4816, n3154;
    wire [10:0]ClkCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(144[9:18])
    
    wire n2462;
    wire [10:0]n2;
    
    wire n3147, n9056, n9280, n9273, n9257, n9985, n9920, Clk96xC_enable_142;
    wire [7:0]\CfgFSMSRegxDP[0] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(83[9:22])
    
    wire n4271, Clk96xC_enable_82, n6541, Clk96xC_enable_63, n9978;
    wire [15:0]n1876;
    
    wire n82, n9271, n9272, n4834, n4750, n68, AuxDataAckxS, n9979, 
        CfgFSMSRegxDN_5__7__N_118, n9278, n9279;
    wire [7:0]n175;
    wire [7:0]CfgFSMSRegxDN_2__7__N_304;
    
    wire n9242, n9270, n9269, n4765, CfgFSMSRegxDN_5__7__N_121, n3_adj_1087, 
        n5_adj_1088, n3_adj_1089, n1, n9994, n9977, n2643;
    wire [7:0]ParDatfromMuxxD_7__N_159;
    wire [7:0]ParDatfromMuxxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(104[9:24])
    
    wire \p_pcnts_memless.PCntBAdvancexS , n9764, CfgFSMSRegxDN_5__7__N_114, 
        n8555, ClkCntxDN_10__N_340, n8554, n8553, n8552;
    wire [17:0]QB;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ram_b.vhd(29[9:11])
    
    wire n9970, n8551, n9987, n127, n10002, n5_adj_1090, n3_adj_1091, 
        MainStatRegWrEnxS, n4741, n8640, n9974, n9948, n9958, n9976, 
        n4;
    wire [2:0]CfgByteCntxDN_2__N_153;
    
    wire n9119, n7963, n9113, n9035, n9765, UartToBrdTxDatRdyxS, 
        n9952, n9951, n7917, n9953, n9954, n9955, n7949, n9980;
    wire [7:0]CfgUartRxDatxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(87[9:23])
    
    wire n4822, n9967, ParDatfromMuxRdyxS, Clk96xC_enable_128, n4825, 
        n9956, n9260, n9261, n9264, n4_adj_1092, n8673, n9949, 
        n10540, n6823, n9763, n5_adj_1093, n3_adj_1094, n9984, n4828, 
        n4831, n4837, n9265, n9266, n4840, n17, n18, n4843, 
        n10001, n4084, n5_adj_1095, n3802, n16, n6851, n27, n40, 
        n36, n28, CfgRamBWrEnxS, CfgRamAWrEnxS, n4846, n9941, n38, 
        n32, n9957, n4849, n34, n24, n5_adj_1096, n9268, n9267, 
        n5767, n9944, Clk96xC_enable_53, n9263, n8528, n4852, n4855, 
        n4858, n9262, n5_adj_1099, n3_adj_1100, n8527, n8526, n5_adj_1105, 
        n3_adj_1106, n8652, n9975, n8525, n8524, n5_adj_1107, n3_adj_1108;
    wire [8:0]CfgRamAOutxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(93[9:21])
    
    wire n3981, n3975, n3961, n295;
    wire [7:0]UartDetBRxDatxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(111[9:24])
    
    wire n3956, CfgStatexDN_2__N_293, n246, n3954;
    wire [7:0]CfgFSMSRegOutxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(84[9:24])
    
    wire n9152, n3149, n9981, n3148, n15, n14, n9258, UartDetBtoFPGASelxD, 
        n8806, UartDetBRxDatRdyxSN;
    wire [7:0]UartTxDatxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(122[9:20])
    
    wire UartTxDatRdyxS, UartBuffFullxS, UartBuffEmptyxS;
    
    FD1P3AX PcntTxSRegxDP_1___i1 (.D(PCntAxDP[8]), .SP(n488[0]), .CK(Clk96xC), 
            .Q(\PcntTxSRegxDP[1] [0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_1___i1.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(BrdSelectIxD[0]), .B(n9945), .C(BrdSelectIxD[3]), 
         .D(BrdSelectIxD[4]), .Z(DetBSelectxSN[24])) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hefff;
    LUT4 mux_56_i4_4_lut (.A(V5P1_B23_EN_c_19), .B(\CfgFSMSRegxDP[4] [3]), 
         .C(\CfgFSMSRegxDP[1] [5]), .D(n9982), .Z(CfgFSMSRegxDN_4__7__N_320[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_56_i4_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut (.A(CfgFSMSRegxDN_4__7__N_320[2]), .B(\CfgFSMSRegxDP[5] [2]), 
         .C(n270[4]), .D(n9983), .Z(n4861)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut.init = 16'heca0;
    FD1S3AX CfgByteCntxDP_i0 (.D(CfgByteCntxDN[0]), .CK(Clk96xC), .Q(CfgByteCntxDP[0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgByteCntxDP_i0.GSR = "ENABLED";
    LUT4 mux_56_i3_4_lut (.A(V5P1_B01_EN_c_18), .B(\CfgFSMSRegxDP[4] [2]), 
         .C(\CfgFSMSRegxDP[1] [5]), .D(n9982), .Z(CfgFSMSRegxDN_4__7__N_320[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_56_i3_4_lut.init = 16'hcac0;
    FD1S3AX CfgOutRdyxDP_222 (.D(CfgOutRdyxDN), .CK(Clk96xC), .Q(CfgOutRdyxDP)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgOutRdyxDP_222.GSR = "ENABLED";
    LUT4 i7105_3_lut (.A(UartDetBtoFPGAxDP[6]), .B(UartDetBtoFPGAxDP[7]), 
         .C(BrdSelectIxD[0]), .Z(n9277)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7105_3_lut.init = 16'hcaca;
    FD1P3IX PcntTxSRegxDP_0__i7 (.D(PCntAxDP[7]), .SP(Clk96xC_enable_73), 
            .CD(n6497), .CK(Clk96xC), .Q(\PcntTxSRegxDP[0] [7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_0__i7.GSR = "ENABLED";
    LUT4 i7104_3_lut (.A(UartDetBtoFPGAxDP[4]), .B(UartDetBtoFPGAxDP[5]), 
         .C(BrdSelectIxD[0]), .Z(n9276)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7104_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_101 (.A(CfgFSMSRegxDN_4__7__N_320[1]), .B(\CfgFSMSRegxDP[5] [1]), 
         .C(n270[4]), .D(n9983), .Z(n4864)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_101.init = 16'heca0;
    FD1P3AX PcntTxSRegxDP_0__i0 (.D(\PcntTxSRegxDN[0] [0]), .SP(Clk96xC_enable_73), 
            .CK(Clk96xC), .Q(\PcntTxSRegxDP[0] [0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_0__i0.GSR = "ENABLED";
    LUT4 mux_56_i2_4_lut (.A(MainStatRegxDP[17]), .B(CfgRamBOutxD[17]), 
         .C(\CfgFSMSRegxDP[1] [5]), .D(n9982), .Z(CfgFSMSRegxDN_4__7__N_320[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_56_i2_4_lut.init = 16'hcac0;
    LUT4 select_1227_Select_6_i3_4_lut (.A(\CfgFSMSRegxDP[3] [6]), .B(n270[5]), 
         .C(\CfgFSMSRegxDP[2] [6]), .D(CfgOutRdyxDP), .Z(n3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam select_1227_Select_6_i3_4_lut.init = 16'hc088;
    LUT4 i4604_2_lut (.A(\PcntTxSRegxDP[0] [1]), .B(n488[1]), .Z(n555[1])) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i4604_2_lut.init = 16'heeee;
    FD1S3AX UartDetBtoFPGAxDP_i0 (.D(UART_DETB_TO_FPGA_c_0), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i0.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i1 (.D(DetBSelectxSN[0]), .CK(Clk96xC), .Q(DETB_SELECT_c_0)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i1.GSR = "ENABLED";
    CCU2D PCntBxDP_1476_add_4_11 (.A0(PCntBxDP[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8570), .S0(n45[9]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476_add_4_11.INIT0 = 16'hfaaa;
    defparam PCntBxDP_1476_add_4_11.INIT1 = 16'h0000;
    defparam PCntBxDP_1476_add_4_11.INJECT1_0 = "NO";
    defparam PCntBxDP_1476_add_4_11.INJECT1_1 = "NO";
    LUT4 CfgFSMSRegxDP_2__7__I_0_284_i7_3_lut (.A(\CfgFSMSRegxDP[2] [6]), 
         .B(\CfgFSMSRegxDP[3] [6]), .C(CfgUartRxDatRdyxS), .Z(CfgFSMSRegxDN_2__7__N_50[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(327[5] 333[12])
    defparam CfgFSMSRegxDP_2__7__I_0_284_i7_3_lut.init = 16'hcaca;
    CCU2D PCntBxDP_1476_add_4_9 (.A0(PCntBxDP[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntBxDP[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8569), .COUT(n8570), .S0(n45[7]), .S1(n45[8]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476_add_4_9.INIT0 = 16'hfaaa;
    defparam PCntBxDP_1476_add_4_9.INIT1 = 16'hfaaa;
    defparam PCntBxDP_1476_add_4_9.INJECT1_0 = "NO";
    defparam PCntBxDP_1476_add_4_9.INJECT1_1 = "NO";
    FD1S3AX UartDetBRxDatRdyxSP_231 (.D(n5365), .CK(Clk96xC), .Q(UartDetBRxDatRdyxSP)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBRxDatRdyxSP_231.GSR = "ENABLED";
    FD1S3AX SrcBSelectxSP_i1 (.D(SrcBSelectxSN[0]), .CK(Clk96xC), .Q(SRCB_SELECT_c_0)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam SrcBSelectxSP_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_102 (.A(CfgFSMSRegxDN_3__7__N_66[7]), .B(\CfgFSMSRegxDP[4] [7]), 
         .C(n270[4]), .D(n9983), .Z(n4867)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_102.init = 16'heca0;
    LUT4 CfgFSMSRegxDN_3__7__I_0_i8_3_lut (.A(CfgFSMSRegxDN_3__7__N_312[7]), 
         .B(\CfgFSMSRegxDP[3] [7]), .C(\CfgFSMSRegxDP[1] [4]), .Z(CfgFSMSRegxDN_3__7__N_66[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam CfgFSMSRegxDN_3__7__I_0_i8_3_lut.init = 16'hcaca;
    CCU2D PCntBxDP_1476_add_4_7 (.A0(PCntBxDP[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntBxDP[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8568), .COUT(n8569), .S0(n45[5]), .S1(n45[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476_add_4_7.INIT0 = 16'hfaaa;
    defparam PCntBxDP_1476_add_4_7.INIT1 = 16'hfaaa;
    defparam PCntBxDP_1476_add_4_7.INJECT1_0 = "NO";
    defparam PCntBxDP_1476_add_4_7.INJECT1_1 = "NO";
    CCU2D PCntBxDP_1476_add_4_5 (.A0(PCntBxDP[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntBxDP[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8567), .COUT(n8568), .S0(n45[3]), .S1(n45[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476_add_4_5.INIT0 = 16'hfaaa;
    defparam PCntBxDP_1476_add_4_5.INIT1 = 16'hfaaa;
    defparam PCntBxDP_1476_add_4_5.INJECT1_0 = "NO";
    defparam PCntBxDP_1476_add_4_5.INJECT1_1 = "NO";
    FD1S3AX DetBSelectxSP_i14 (.D(DetBSelectxSN[13]), .CK(Clk96xC), .Q(DETB_SELECT_c_13)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i14.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i13 (.D(DetBSelectxSN[12]), .CK(Clk96xC), .Q(DETB_SELECT_c_12)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i13.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i12 (.D(DetBSelectxSN[11]), .CK(Clk96xC), .Q(DETB_SELECT_c_11)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i12.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_3__i0_i0 (.D(n4768), .SP(Clk96xC_enable_283), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[3] [0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_3__i0_i0.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i11 (.D(DetBSelectxSN[10]), .CK(Clk96xC), .Q(DETB_SELECT_c_10)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i11.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i10 (.D(DetBSelectxSN[9]), .CK(Clk96xC), .Q(DETB_SELECT_c_9)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i10.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i9 (.D(DetBSelectxSN[8]), .CK(Clk96xC), .Q(DETB_SELECT_c_8)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i9.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i8 (.D(DetBSelectxSN[7]), .CK(Clk96xC), .Q(DETB_SELECT_c_7)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i8.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i7 (.D(DetBSelectxSN[6]), .CK(Clk96xC), .Q(DETB_SELECT_c_6)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i7.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i6 (.D(DetBSelectxSN[5]), .CK(Clk96xC), .Q(DETB_SELECT_c_5)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i6.GSR = "ENABLED";
    LUT4 mux_55_i8_3_lut (.A(MainStatRegxDP[15]), .B(CfgRamBOutxD[15]), 
         .C(\CfgFSMSRegxDP[1] [5]), .Z(CfgFSMSRegxDN_3__7__N_312[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_55_i8_3_lut.init = 16'hcaca;
    FD1S3AX DetBSelectxSP_i5 (.D(DetBSelectxSN[4]), .CK(Clk96xC), .Q(DETB_SELECT_c_4)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i5.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i4 (.D(DetBSelectxSN[3]), .CK(Clk96xC), .Q(DETB_SELECT_c_3)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i4.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i3 (.D(DetBSelectxSN[2]), .CK(Clk96xC), .Q(DETB_SELECT_c_2)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_103 (.A(CfgFSMSRegxDN_3__7__N_66[6]), .B(\CfgFSMSRegxDP[4] [6]), 
         .C(n270[4]), .D(n9983), .Z(n4771)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_103.init = 16'heca0;
    LUT4 CfgFSMSRegxDN_3__7__I_0_i7_3_lut (.A(CfgFSMSRegxDN_3__7__N_312[6]), 
         .B(\CfgFSMSRegxDP[3] [6]), .C(\CfgFSMSRegxDP[1] [4]), .Z(CfgFSMSRegxDN_3__7__N_66[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam CfgFSMSRegxDN_3__7__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 mux_55_i7_3_lut (.A(MainStatRegxDP[14]), .B(CfgRamBOutxD[14]), 
         .C(\CfgFSMSRegxDP[1] [5]), .Z(CfgFSMSRegxDN_3__7__N_312[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_55_i7_3_lut.init = 16'hcaca;
    FD1S3AX DetBSelectxSP_i2 (.D(DetBSelectxSN[1]), .CK(Clk96xC), .Q(DETB_SELECT_c_1)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i2.GSR = "ENABLED";
    LUT4 i2105_3_lut_4_lut (.A(CfgOutRdyxDP), .B(n9950), .C(n270[4]), 
         .D(n270[5]), .Z(n3958)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(394[5] 396[12])
    defparam i2105_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_4_lut_adj_104 (.A(CfgFSMSRegxDN_3__7__N_66[5]), .B(\CfgFSMSRegxDP[4] [5]), 
         .C(n270[4]), .D(n9983), .Z(n4810)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_104.init = 16'heca0;
    CCU2D PCntBxDP_1476_add_4_3 (.A0(PCntBxDP[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntBxDP[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8566), .COUT(n8567), .S0(n45[1]), .S1(n45[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476_add_4_3.INIT0 = 16'hfaaa;
    defparam PCntBxDP_1476_add_4_3.INIT1 = 16'hfaaa;
    defparam PCntBxDP_1476_add_4_3.INJECT1_0 = "NO";
    defparam PCntBxDP_1476_add_4_3.INJECT1_1 = "NO";
    CCU2D PCntBxDP_1476_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntBxDP[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8566), .S1(n45[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476_add_4_1.INIT0 = 16'hF000;
    defparam PCntBxDP_1476_add_4_1.INIT1 = 16'h0555;
    defparam PCntBxDP_1476_add_4_1.INJECT1_0 = "NO";
    defparam PCntBxDP_1476_add_4_1.INJECT1_1 = "NO";
    CCU2D PCntAxDP_1477_add_4_11 (.A0(PCntAxDP[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8565), .S0(n45_adj_1109[9]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477_add_4_11.INIT0 = 16'hfaaa;
    defparam PCntAxDP_1477_add_4_11.INIT1 = 16'h0000;
    defparam PCntAxDP_1477_add_4_11.INJECT1_0 = "NO";
    defparam PCntAxDP_1477_add_4_11.INJECT1_1 = "NO";
    CCU2D PCntAxDP_1477_add_4_9 (.A0(PCntAxDP[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntAxDP[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8564), .COUT(n8565), .S0(n45_adj_1109[7]), 
          .S1(n45_adj_1109[8]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477_add_4_9.INIT0 = 16'hfaaa;
    defparam PCntAxDP_1477_add_4_9.INIT1 = 16'hfaaa;
    defparam PCntAxDP_1477_add_4_9.INJECT1_0 = "NO";
    defparam PCntAxDP_1477_add_4_9.INJECT1_1 = "NO";
    PFUMX mux_1394_i4 (.BLUT(n555[3]), .ALUT(AuxDataxD[3]), .C0(n3146), 
          .Z(n3150));
    FD1S3AX UartDetBtoFPGAxDP_i24 (.D(UART_DETB_TO_FPGA_c_24), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[24])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i24.GSR = "ENABLED";
    LUT4 i7103_3_lut (.A(UartDetBtoFPGAxDP[2]), .B(UartDetBtoFPGAxDP[3]), 
         .C(BrdSelectIxD[0]), .Z(n9275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7103_3_lut.init = 16'hcaca;
    FD1S3AX UartDetBtoFPGAxDP_i23 (.D(UART_DETB_TO_FPGA_c_23), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[23])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i23.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i22 (.D(UART_DETB_TO_FPGA_c_22), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[22])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i22.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i21 (.D(UART_DETB_TO_FPGA_c_21), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[21])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i21.GSR = "ENABLED";
    LUT4 CfgFSMSRegxDN_3__7__I_0_i6_3_lut (.A(CfgFSMSRegxDN_3__7__N_312[5]), 
         .B(\CfgFSMSRegxDP[3] [5]), .C(\CfgFSMSRegxDP[1] [4]), .Z(CfgFSMSRegxDN_3__7__N_66[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam CfgFSMSRegxDN_3__7__I_0_i6_3_lut.init = 16'hcaca;
    PFUMX mux_1394_i5 (.BLUT(n555[4]), .ALUT(AuxDataxD[4]), .C0(n3146), 
          .Z(n3151));
    CCU2D PCntAxDP_1477_add_4_7 (.A0(PCntAxDP[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntAxDP[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8563), .COUT(n8564), .S0(n45_adj_1109[5]), 
          .S1(n45_adj_1109[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477_add_4_7.INIT0 = 16'hfaaa;
    defparam PCntAxDP_1477_add_4_7.INIT1 = 16'hfaaa;
    defparam PCntAxDP_1477_add_4_7.INJECT1_0 = "NO";
    defparam PCntAxDP_1477_add_4_7.INJECT1_1 = "NO";
    CCU2D PCntAxDP_1477_add_4_5 (.A0(PCntAxDP[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntAxDP[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8562), .COUT(n8563), .S0(n45_adj_1109[3]), 
          .S1(n45_adj_1109[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477_add_4_5.INIT0 = 16'hfaaa;
    defparam PCntAxDP_1477_add_4_5.INIT1 = 16'hfaaa;
    defparam PCntAxDP_1477_add_4_5.INJECT1_0 = "NO";
    defparam PCntAxDP_1477_add_4_5.INJECT1_1 = "NO";
    LUT4 mux_55_i6_3_lut (.A(MainStatRegxDP[13]), .B(CfgRamBOutxD[13]), 
         .C(\CfgFSMSRegxDP[1] [5]), .Z(CfgFSMSRegxDN_3__7__N_312[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_55_i6_3_lut.init = 16'hcaca;
    PFUMX mux_1394_i6 (.BLUT(n555[5]), .ALUT(AuxDataxD[5]), .C0(n3146), 
          .Z(n3152));
    LUT4 i1_4_lut_adj_105 (.A(CfgFSMSRegxDN_3__7__N_66[4]), .B(\CfgFSMSRegxDP[4] [4]), 
         .C(n270[4]), .D(n9983), .Z(n4813)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_105.init = 16'heca0;
    LUT4 MainStatRegxDP_1__I_0_1_lut (.A(MainStatRegxDP[1]), .Z(RPFP_RUN_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(430[16:37])
    defparam MainStatRegxDP_1__I_0_1_lut.init = 16'h5555;
    CCU2D PCntAxDP_1477_add_4_3 (.A0(PCntAxDP[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntAxDP[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8561), .COUT(n8562), .S0(n45_adj_1109[1]), 
          .S1(n45_adj_1109[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477_add_4_3.INIT0 = 16'hfaaa;
    defparam PCntAxDP_1477_add_4_3.INIT1 = 16'hfaaa;
    defparam PCntAxDP_1477_add_4_3.INJECT1_0 = "NO";
    defparam PCntAxDP_1477_add_4_3.INJECT1_1 = "NO";
    LUT4 MainStatRegxDP_20__I_0_1_lut (.A(MainStatRegxDP[20]), .Z(V5P1_RPI_EN_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(436[18:40])
    defparam MainStatRegxDP_20__I_0_1_lut.init = 16'h5555;
    LUT4 i7102_3_lut (.A(UartDetBtoFPGAxDP[0]), .B(UartDetBtoFPGAxDP[1]), 
         .C(BrdSelectIxD[0]), .Z(n9274)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7102_3_lut.init = 16'hcaca;
    PFUMX mux_1394_i7 (.BLUT(n555[6]), .ALUT(AuxDataxD[6]), .C0(n3146), 
          .Z(n3153));
    FD1P3AX PCntAxDP_1477__i9 (.D(n45_adj_1109[9]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[9])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i9.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n5), .B(n3_adj_1085), .C(\CfgFSMSRegxDP[2] [5]), 
         .D(n8714), .Z(\CfgFSMSRegxDN[2] [5])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i3_4_lut.init = 16'heefe;
    CCU2D PCntAxDP_1477_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PCntAxDP[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8561), .S1(n45_adj_1109[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477_add_4_1.INIT0 = 16'hF000;
    defparam PCntAxDP_1477_add_4_1.INIT1 = 16'h0555;
    defparam PCntAxDP_1477_add_4_1.INJECT1_0 = "NO";
    defparam PCntAxDP_1477_add_4_1.INJECT1_1 = "NO";
    FD1P3AX PCntAxDP_1477__i8 (.D(n45_adj_1109[8]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i8.GSR = "ENABLED";
    FD1P3AX PCntAxDP_1477__i7 (.D(n45_adj_1109[7]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[7])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_106 (.A(CfgFSMSRegxDN_2__7__N_50[5]), .B(CfgFSMSRegxDN_2__7__N_42[5]), 
         .C(n270[1]), .D(n270[4]), .Z(n5)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_106.init = 16'heca0;
    LUT4 select_1227_Select_5_i3_4_lut (.A(\CfgFSMSRegxDP[3] [5]), .B(n270[5]), 
         .C(\CfgFSMSRegxDP[2] [5]), .D(CfgOutRdyxDP), .Z(n3_adj_1085)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam select_1227_Select_5_i3_4_lut.init = 16'hc088;
    LUT4 CfgFSMSRegxDN_3__7__I_0_i5_3_lut (.A(CfgFSMSRegxDN_3__7__N_312[4]), 
         .B(\CfgFSMSRegxDP[3] [4]), .C(\CfgFSMSRegxDP[1] [4]), .Z(CfgFSMSRegxDN_3__7__N_66[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam CfgFSMSRegxDN_3__7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 mux_55_i5_3_lut (.A(MainStatRegxDP[12]), .B(CfgRamBOutxD[12]), 
         .C(\CfgFSMSRegxDP[1] [5]), .Z(CfgFSMSRegxDN_3__7__N_312[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_55_i5_3_lut.init = 16'hcaca;
    FD1P3AX PCntAxDP_1477__i6 (.D(n45_adj_1109[6]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i6.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_107 (.A(CfgFSMSRegxDN_3__7__N_66[3]), .B(\CfgFSMSRegxDP[4] [3]), 
         .C(n270[4]), .D(n9983), .Z(n4816)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_107.init = 16'heca0;
    FD1P3AX PCntAxDP_1477__i5 (.D(n45_adj_1109[5]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i5.GSR = "ENABLED";
    FD1P3AX PCntAxDP_1477__i4 (.D(n45_adj_1109[4]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i4.GSR = "ENABLED";
    FD1P3AX PCntAxDP_1477__i3 (.D(n45_adj_1109[3]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i3.GSR = "ENABLED";
    FD1P3AX PCntAxDP_1477__i2 (.D(n45_adj_1109[2]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i2.GSR = "ENABLED";
    FD1P3AX PCntAxDP_1477__i1 (.D(n45_adj_1109[1]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i1.GSR = "ENABLED";
    PFUMX mux_1394_i8 (.BLUT(n555[7]), .ALUT(AuxDataxD[7]), .C0(n3146), 
          .Z(n3154));
    FD1S3IX ClkCntxDP_1475__i0 (.D(n2[0]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i0.GSR = "ENABLED";
    PFUMX mux_1394_i1 (.BLUT(n555[0]), .ALUT(AuxDataxD[0]), .C0(n3146), 
          .Z(n3147));
    FD1S3AX UartDetBtoFPGAxDP_i20 (.D(UART_DETB_TO_FPGA_c_20), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[20])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i20.GSR = "ENABLED";
    LUT4 CfgFSMSRegxDP_2__7__I_0_284_i6_3_lut (.A(\CfgFSMSRegxDP[2] [5]), 
         .B(\CfgFSMSRegxDP[3] [5]), .C(CfgUartRxDatRdyxS), .Z(CfgFSMSRegxDN_2__7__N_50[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(327[5] 333[12])
    defparam CfgFSMSRegxDP_2__7__I_0_284_i6_3_lut.init = 16'hcaca;
    FD1S3AX UartDetBtoFPGAxDP_i19 (.D(UART_DETB_TO_FPGA_c_19), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[19])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i19.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i18 (.D(UART_DETB_TO_FPGA_c_18), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[18])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i18.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i17 (.D(UART_DETB_TO_FPGA_c_17), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[17])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i17.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i16 (.D(UART_DETB_TO_FPGA_c_16), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[16])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i16.GSR = "ENABLED";
    FD1S3AY CfgStatexDP_FSM_i1 (.D(n9056), .CK(Clk96xC), .Q(n270[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam CfgStatexDP_FSM_i1.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i15 (.D(UART_DETB_TO_FPGA_c_15), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[15])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i15.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i14 (.D(UART_DETB_TO_FPGA_c_14), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[14])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i14.GSR = "ENABLED";
    L6MUX21 i7085 (.D0(n9280), .D1(n9273), .SD(BrdSelectIxD[3]), .Z(n9257));
    LUT4 CfgFSMSRegxDN_3__7__I_0_i4_3_lut (.A(CfgFSMSRegxDN_3__7__N_312[3]), 
         .B(\CfgFSMSRegxDP[3] [3]), .C(\CfgFSMSRegxDP[1] [4]), .Z(CfgFSMSRegxDN_3__7__N_66[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam CfgFSMSRegxDN_3__7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 mux_55_i4_3_lut (.A(MainStatRegxDP[11]), .B(CfgRamBOutxD[11]), 
         .C(\CfgFSMSRegxDP[1] [5]), .Z(CfgFSMSRegxDN_3__7__N_312[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_55_i4_3_lut.init = 16'hcaca;
    LUT4 CfgStatexDN_2__N_373_bdd_4_lut_7556 (.A(n270[2]), .B(n9985), .C(n270[4]), 
         .D(\CfgFSMSRegxDP[1] [7]), .Z(n9920)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam CfgStatexDN_2__N_373_bdd_4_lut_7556.init = 16'hf0f2;
    FD1S3AX UartDetBtoFPGAxDP_i13 (.D(UART_DETB_TO_FPGA_c_13), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[13])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i13.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i12 (.D(UART_DETB_TO_FPGA_c_12), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[12])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i12.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i11 (.D(UART_DETB_TO_FPGA_c_11), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[11])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i11.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i10 (.D(UART_DETB_TO_FPGA_c_10), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[10])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i10.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i9 (.D(UART_DETB_TO_FPGA_c_9), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[9])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i9.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i8 (.D(UART_DETB_TO_FPGA_c_8), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[8])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i8.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_1__i0_i0 (.D(\CfgFSMSRegxDP[2] [0]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[1] [0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_1__i0_i0.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i7 (.D(UART_DETB_TO_FPGA_c_7), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i7.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i6 (.D(UART_DETB_TO_FPGA_c_6), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i6.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i5 (.D(UART_DETB_TO_FPGA_c_5), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i5.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_0__i0_i0 (.D(\CfgFSMSRegxDP[1] [0]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[0] [0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_0__i0_i0.GSR = "ENABLED";
    FD1S3AY PcntTxStatexDP_FSM_i1 (.D(n4271), .CK(Clk96xC), .Q(n488[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam PcntTxStatexDP_FSM_i1.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i4 (.D(UART_DETB_TO_FPGA_c_4), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i4.GSR = "ENABLED";
    LUT4 i7234_4_lut (.A(n270[4]), .B(Clk96xC_enable_82), .C(n6541), .D(\CfgFSMSRegxDP[1] [4]), 
         .Z(Clk96xC_enable_63)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B))) */ ;
    defparam i7234_4_lut.init = 16'h44c4;
    FD1S3AX UartDetBtoFPGAxDP_i3 (.D(UART_DETB_TO_FPGA_c_3), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(UartDetBRxDatRdyxSP), .B(n9978), .C(CfgOutRdyxDP), 
         .D(n1876[9]), .Z(n82)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0400;
    L6MUX21 i7101 (.D0(n9271), .D1(n9272), .SD(BrdSelectIxD[2]), .Z(n9273));
    LUT4 i1_4_lut_adj_108 (.A(CfgFSMSRegxDN_3__7__N_66[2]), .B(\CfgFSMSRegxDP[4] [2]), 
         .C(n270[4]), .D(n9983), .Z(n4834)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_108.init = 16'heca0;
    LUT4 i1_4_lut_adj_109 (.A(CfgFSMSRegxDN_4__7__N_320[0]), .B(\CfgFSMSRegxDP[5] [0]), 
         .C(n270[4]), .D(n9983), .Z(n4750)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_109.init = 16'heca0;
    LUT4 mux_56_i1_4_lut (.A(MainStatRegxDP[16]), .B(CfgRamBOutxD[16]), 
         .C(\CfgFSMSRegxDP[1] [5]), .D(n9982), .Z(CfgFSMSRegxDN_4__7__N_320[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_56_i1_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_4_lut_adj_110 (.A(UartDetBRxDatRdyxSP), .B(n9978), .C(CfgOutRdyxDP), 
         .D(n68), .Z(AuxDataAckxS)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_110.init = 16'h0400;
    LUT4 i2051_3_lut_4_lut (.A(n9982), .B(n9979), .C(MainStatRegxDP[25]), 
         .D(\CfgFSMSRegxDP[5] [1]), .Z(CfgFSMSRegxDN_5__7__N_118)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam i2051_3_lut_4_lut.init = 16'hfd20;
    LUT4 CfgFSMSRegxDN_3__7__I_0_i3_3_lut (.A(CfgFSMSRegxDN_3__7__N_312[2]), 
         .B(\CfgFSMSRegxDP[3] [2]), .C(\CfgFSMSRegxDP[1] [4]), .Z(CfgFSMSRegxDN_3__7__N_66[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam CfgFSMSRegxDN_3__7__I_0_i3_3_lut.init = 16'hcaca;
    L6MUX21 i7108 (.D0(n9278), .D1(n9279), .SD(BrdSelectIxD[2]), .Z(n9280));
    PFUMX CfgFSMSRegxDN_2__7__I_0_i2 (.BLUT(n175[1]), .ALUT(CfgFSMSRegxDN_2__7__N_304[1]), 
          .C0(n9242), .Z(CfgFSMSRegxDN_2__7__N_42[1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;
    LUT4 i7098_3_lut (.A(UartDetBtoFPGAxDP[14]), .B(UartDetBtoFPGAxDP[15]), 
         .C(BrdSelectIxD[0]), .Z(n9270)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7098_3_lut.init = 16'hcaca;
    LUT4 i7097_3_lut (.A(UartDetBtoFPGAxDP[12]), .B(UartDetBtoFPGAxDP[13]), 
         .C(BrdSelectIxD[0]), .Z(n9269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7097_3_lut.init = 16'hcaca;
    LUT4 mux_55_i3_3_lut (.A(MainStatRegxDP[10]), .B(CfgRamBOutxD[10]), 
         .C(\CfgFSMSRegxDP[1] [5]), .Z(CfgFSMSRegxDN_3__7__N_312[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_55_i3_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_111 (.A(CfgFSMSRegxDN_3__7__N_66[1]), .B(\CfgFSMSRegxDP[4] [1]), 
         .C(n270[4]), .D(n9983), .Z(n4765)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_111.init = 16'heca0;
    LUT4 i2053_3_lut_4_lut (.A(n9982), .B(n9979), .C(VN3P4_EN_c_24), .D(\CfgFSMSRegxDP[5] [0]), 
         .Z(CfgFSMSRegxDN_5__7__N_121)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam i2053_3_lut_4_lut.init = 16'hfd20;
    LUT4 select_1231_Select_1_i3_4_lut_4_lut (.A(CfgByteCntxDP[1]), .B(CfgByteCntxDP[0]), 
         .C(CfgOutRdyxDP), .D(n270[5]), .Z(n3_adj_1087)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam select_1231_Select_1_i3_4_lut_4_lut.init = 16'ha900;
    FD1S3AX UartDetBtoFPGAxDP_i2 (.D(UART_DETB_TO_FPGA_c_2), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i2.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_112 (.A(n5_adj_1088), .B(n3_adj_1089), .C(\CfgFSMSRegxDP[2] [4]), 
         .D(n8714), .Z(\CfgFSMSRegxDN[2] [4])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i3_4_lut_adj_112.init = 16'heefe;
    LUT4 i1_4_lut_adj_113 (.A(CfgFSMSRegxDN_2__7__N_50[4]), .B(CfgFSMSRegxDN_2__7__N_42[4]), 
         .C(n270[1]), .D(n270[4]), .Z(n5_adj_1088)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_113.init = 16'heca0;
    LUT4 select_1231_Select_1_i1_4_lut_4_lut (.A(CfgByteCntxDP[1]), .B(CfgByteCntxDP[0]), 
         .C(CfgUartRxDatRdyxS), .D(n270[1]), .Z(n1)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(B+!(C (D)))) */ ;
    defparam select_1231_Select_1_i1_4_lut_4_lut.init = 16'h9a00;
    LUT4 i1_2_lut_rep_122 (.A(n270[3]), .B(n270[2]), .Z(n9994)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_2_lut_rep_122.init = 16'heeee;
    LUT4 select_1227_Select_4_i3_4_lut (.A(\CfgFSMSRegxDP[3] [4]), .B(n270[5]), 
         .C(\CfgFSMSRegxDP[2] [4]), .D(CfgOutRdyxDP), .Z(n3_adj_1089)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam select_1227_Select_4_i3_4_lut.init = 16'hc088;
    LUT4 ParDatfromMuxxD_7__I_0_i8_3_lut_4_lut (.A(\CfgFSMSRegxDP[0] [7]), 
         .B(n9977), .C(n2643), .D(ParDatfromMuxxD_7__N_159[7]), .Z(ParDatfromMuxxD[7])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam ParDatfromMuxxD_7__I_0_i8_3_lut_4_lut.init = 16'hefe0;
    FD1P3IX PCntBxDP_1476__i6 (.D(n45[6]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i6.GSR = "ENABLED";
    FD1S3AX UartDetBtoFPGAxDP_i1 (.D(UART_DETB_TO_FPGA_c_1), .CK(Clk96xC), 
            .Q(UartDetBtoFPGAxDP[1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam UartDetBtoFPGAxDP_i1.GSR = "ENABLED";
    PFUMX CfgFSMSRegxDN_2__7__I_0_i3 (.BLUT(n175[2]), .ALUT(CfgFSMSRegxDN_2__7__N_304[2]), 
          .C0(n9242), .Z(CfgFSMSRegxDN_2__7__N_42[2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;
    LUT4 CfgByteCntxDP_2__bdd_2_lut_3_lut (.A(n270[3]), .B(n270[2]), .C(CfgByteCntxDP[2]), 
         .Z(n9764)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam CfgByteCntxDP_2__bdd_2_lut_3_lut.init = 16'he0e0;
    LUT4 CfgFSMSRegxDN_3__7__I_0_i2_3_lut (.A(CfgFSMSRegxDN_3__7__N_312[1]), 
         .B(\CfgFSMSRegxDP[3] [1]), .C(\CfgFSMSRegxDP[1] [4]), .Z(CfgFSMSRegxDN_3__7__N_66[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam CfgFSMSRegxDN_3__7__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 CfgFSMSRegxDP_2__7__I_0_284_i5_3_lut (.A(\CfgFSMSRegxDP[2] [4]), 
         .B(\CfgFSMSRegxDP[3] [4]), .C(CfgUartRxDatRdyxS), .Z(CfgFSMSRegxDN_2__7__N_50[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(327[5] 333[12])
    defparam CfgFSMSRegxDP_2__7__I_0_284_i5_3_lut.init = 16'hcaca;
    LUT4 ParDatfromMuxxD_7__I_0_i7_3_lut_4_lut (.A(\CfgFSMSRegxDP[0] [6]), 
         .B(n9977), .C(n2643), .D(ParDatfromMuxxD_7__N_159[6]), .Z(ParDatfromMuxxD[6])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam ParDatfromMuxxD_7__I_0_i7_3_lut_4_lut.init = 16'hefe0;
    LUT4 i2049_3_lut_4_lut (.A(n9982), .B(n9979), .C(MainStatRegxDP[26]), 
         .D(\CfgFSMSRegxDP[5] [2]), .Z(CfgFSMSRegxDN_5__7__N_114)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam i2049_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_55_i2_3_lut (.A(MainStatRegxDP[9]), .B(CfgRamBOutxD[9]), .C(\CfgFSMSRegxDP[1] [5]), 
         .Z(CfgFSMSRegxDN_3__7__N_312[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_55_i2_3_lut.init = 16'hcaca;
    CCU2D add_6213_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8555), 
          .S0(ClkCntxDN_10__N_340));
    defparam add_6213_cout.INIT0 = 16'h0000;
    defparam add_6213_cout.INIT1 = 16'h0000;
    defparam add_6213_cout.INJECT1_0 = "NO";
    defparam add_6213_cout.INJECT1_1 = "NO";
    PFUMX CfgFSMSRegxDN_2__7__I_0_i4 (.BLUT(n175[3]), .ALUT(CfgFSMSRegxDN_2__7__N_304[3]), 
          .C0(n9242), .Z(CfgFSMSRegxDN_2__7__N_42[3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;
    CCU2D add_6213_10 (.A0(ClkCntxDP[9]), .B0(MainStatRegxDP[14]), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[10]), .B1(MainStatRegxDP[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8554), .COUT(n8555));
    defparam add_6213_10.INIT0 = 16'h5999;
    defparam add_6213_10.INIT1 = 16'h5999;
    defparam add_6213_10.INJECT1_0 = "NO";
    defparam add_6213_10.INJECT1_1 = "NO";
    CCU2D add_6213_8 (.A0(ClkCntxDP[7]), .B0(MainStatRegxDP[12]), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[8]), .B1(MainStatRegxDP[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8553), .COUT(n8554));
    defparam add_6213_8.INIT0 = 16'h5999;
    defparam add_6213_8.INIT1 = 16'h5999;
    defparam add_6213_8.INJECT1_0 = "NO";
    defparam add_6213_8.INJECT1_1 = "NO";
    CCU2D add_6213_6 (.A0(ClkCntxDP[5]), .B0(MainStatRegxDP[10]), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[6]), .B1(MainStatRegxDP[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8552), .COUT(n8553));
    defparam add_6213_6.INIT0 = 16'h5999;
    defparam add_6213_6.INIT1 = 16'h5999;
    defparam add_6213_6.INJECT1_0 = "NO";
    defparam add_6213_6.INJECT1_1 = "NO";
    LUT4 i6449_2_lut_rep_98 (.A(QB[6]), .B(QB[5]), .Z(n9970)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6449_2_lut_rep_98.init = 16'h8888;
    CCU2D add_6213_4 (.A0(ClkCntxDP[3]), .B0(EXP_J303_D_c_3), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[4]), .B1(MainStatRegxDP[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8551), .COUT(n8552));
    defparam add_6213_4.INIT0 = 16'h5999;
    defparam add_6213_4.INIT1 = 16'h5999;
    defparam add_6213_4.INJECT1_0 = "NO";
    defparam add_6213_4.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(QB[6]), .B(QB[5]), .C(n9987), .D(BrdSelectIxD[1]), 
         .Z(SrcBSelectxSN[4])) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1_2_lut_3_lut_4_lut_adj_114 (.A(QB[6]), .B(QB[5]), .C(n127), 
         .D(BrdSelectIxD[1]), .Z(SrcBSelectxSN[1])) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_114.init = 16'hfff7;
    LUT4 i2_3_lut_4_lut_adj_115 (.A(QB[6]), .B(QB[5]), .C(BrdSelectIxD[1]), 
         .D(n127), .Z(SrcBSelectxSN[3])) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_115.init = 16'hff7f;
    LUT4 i2_3_lut_4_lut_adj_116 (.A(QB[6]), .B(QB[5]), .C(BrdSelectIxD[2]), 
         .D(n10002), .Z(SrcBSelectxSN[2])) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_116.init = 16'hfff7;
    CCU2D add_6213_2 (.A0(ClkCntxDP[1]), .B0(ClkCntxDP[0]), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8551));
    defparam add_6213_2.INIT0 = 16'h7000;
    defparam add_6213_2.INIT1 = 16'h5aaa;
    defparam add_6213_2.INJECT1_0 = "NO";
    defparam add_6213_2.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_117 (.A(n5_adj_1090), .B(n3_adj_1091), .C(\CfgFSMSRegxDP[2] [3]), 
         .D(n8714), .Z(\CfgFSMSRegxDN[2] [3])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i3_4_lut_adj_117.init = 16'heefe;
    LUT4 i1_4_lut_adj_118 (.A(CfgFSMSRegxDN_2__7__N_50[3]), .B(CfgFSMSRegxDN_2__7__N_42[3]), 
         .C(n270[1]), .D(n270[4]), .Z(n5_adj_1090)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_118.init = 16'heca0;
    FD1P3AX MainStatRegxDP__i1 (.D(\CfgFSMSRegxDP[2] [0]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(FP_LED_0)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i1.GSR = "ENABLED";
    LUT4 select_1227_Select_3_i3_4_lut (.A(\CfgFSMSRegxDP[3] [3]), .B(n270[5]), 
         .C(\CfgFSMSRegxDP[2] [3]), .D(CfgOutRdyxDP), .Z(n3_adj_1091)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam select_1227_Select_3_i3_4_lut.init = 16'hc088;
    PFUMX CfgFSMSRegxDN_2__7__I_0_i5 (.BLUT(n175[4]), .ALUT(CfgFSMSRegxDN_2__7__N_304[4]), 
          .C0(n9242), .Z(CfgFSMSRegxDN_2__7__N_42[4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;
    LUT4 CfgFSMSRegxDP_2__7__I_0_284_i4_3_lut (.A(\CfgFSMSRegxDP[2] [3]), 
         .B(\CfgFSMSRegxDP[3] [3]), .C(CfgUartRxDatRdyxS), .Z(CfgFSMSRegxDN_2__7__N_50[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(327[5] 333[12])
    defparam CfgFSMSRegxDP_2__7__I_0_284_i4_3_lut.init = 16'hcaca;
    FD1P3AX CfgFSMSRegxDP_5__i0_i0 (.D(n4741), .SP(Clk96xC_enable_82), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[5] [0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_5__i0_i0.GSR = "ENABLED";
    PFUMX CfgFSMSRegxDN_2__7__I_0_i6 (.BLUT(n175[5]), .ALUT(CfgFSMSRegxDN_2__7__N_304[5]), 
          .C0(n9242), .Z(CfgFSMSRegxDN_2__7__N_42[5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;
    LUT4 i2_3_lut (.A(QB[5]), .B(QB[6]), .C(BrdSelectIxD[2]), .Z(n8640)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1P3AX PcntTxSRegxDP_0__i1 (.D(\PcntTxSRegxDN[0] [1]), .SP(Clk96xC_enable_73), 
            .CK(Clk96xC), .Q(\PcntTxSRegxDP[0] [1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_0__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_102 (.A(QB[5]), .B(QB[6]), .Z(n9974)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_rep_102.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_76_3_lut (.A(QB[5]), .B(QB[6]), .C(BrdSelectIxD[1]), 
         .Z(n9948)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_rep_76_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(QB[5]), .B(QB[6]), .C(BrdSelectIxD[2]), 
         .D(BrdSelectIxD[1]), .Z(n9945)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_rep_86_3_lut (.A(QB[5]), .B(QB[6]), .C(BrdSelectIxD[1]), 
         .Z(n9958)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_rep_86_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_104 (.A(CfgByteCntxDP[0]), .B(CfgByteCntxDP[1]), .Z(n9976)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(376[9:26])
    defparam i1_2_lut_rep_104.init = 16'heeee;
    LUT4 i2_3_lut_adj_119 (.A(BrdSelectIxD[0]), .B(n8640), .C(BrdSelectIxD[1]), 
         .Z(SrcBSelectxSN[5])) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i2_3_lut_adj_119.init = 16'hf7f7;
    LUT4 i2_2_lut_rep_78_3_lut (.A(CfgByteCntxDP[0]), .B(CfgByteCntxDP[1]), 
         .C(CfgByteCntxDP[2]), .Z(n9950)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(376[9:26])
    defparam i2_2_lut_rep_78_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_120 (.A(CfgByteCntxDP[0]), .B(CfgByteCntxDP[1]), 
         .C(n270[1]), .D(CfgByteCntxDP[2]), .Z(n4)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(376[9:26])
    defparam i1_2_lut_3_lut_4_lut_adj_120.init = 16'h0010;
    LUT4 CfgByteCntxDP_2__I_0_289_i3_3_lut_3_lut_4_lut (.A(CfgByteCntxDP[0]), 
         .B(CfgByteCntxDP[1]), .C(CfgOutRdyxDP), .D(CfgByteCntxDP[2]), 
         .Z(CfgByteCntxDN_2__N_153[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(376[9:26])
    defparam CfgByteCntxDP_2__I_0_289_i3_3_lut_3_lut_4_lut.init = 16'hfe01;
    LUT4 i1_2_lut_3_lut_4_lut_adj_121 (.A(BrdSelectIxD[1]), .B(n9974), .C(n9119), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[13])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_121.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_122 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7963), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[9])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_122.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_123 (.A(BrdSelectIxD[1]), .B(n9974), .C(n9113), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[21])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_123.init = 16'hfeff;
    LUT4 i1_4_lut_adj_124 (.A(n9035), .B(CfgByteCntxDN_2__N_153[2]), .C(n9765), 
         .D(n270[5]), .Z(CfgByteCntxDN[2])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_124.init = 16'hfefa;
    LUT4 i2284_2_lut_rep_105 (.A(n270[3]), .B(UartToBrdTxDatRdyxS), .Z(n9977)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i2284_2_lut_rep_105.init = 16'heeee;
    LUT4 i4704_2_lut_rep_80_3_lut (.A(n270[3]), .B(UartToBrdTxDatRdyxS), 
         .C(\CfgFSMSRegxDP[0] [6]), .Z(n9952)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i4704_2_lut_rep_80_3_lut.init = 16'hfefe;
    LUT4 i4703_2_lut_rep_79_3_lut (.A(n270[3]), .B(UartToBrdTxDatRdyxS), 
         .C(\CfgFSMSRegxDP[0] [7]), .Z(n9951)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i4703_2_lut_rep_79_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_125 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7917), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[5])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_125.init = 16'hfeff;
    LUT4 i4705_2_lut_rep_81_3_lut (.A(n270[3]), .B(UartToBrdTxDatRdyxS), 
         .C(\CfgFSMSRegxDP[0] [5]), .Z(n9953)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i4705_2_lut_rep_81_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_adj_126 (.A(n1876[7]), .B(n1876[8]), .C(n1876[9]), .Z(n68)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_126.init = 16'hfefe;
    LUT4 i4706_2_lut_rep_82_3_lut (.A(n270[3]), .B(UartToBrdTxDatRdyxS), 
         .C(\CfgFSMSRegxDP[0] [4]), .Z(n9954)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i4706_2_lut_rep_82_3_lut.init = 16'hfefe;
    LUT4 i228_2_lut_rep_106 (.A(n488[0]), .B(n488[4]), .Z(n9978)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i228_2_lut_rep_106.init = 16'heeee;
    LUT4 i1396_2_lut_rep_83_3_lut (.A(n488[0]), .B(n488[4]), .C(n68), 
         .Z(n9955)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i1396_2_lut_rep_83_3_lut.init = 16'h0e0e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_127 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7949), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[17])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_127.init = 16'hfeff;
    LUT4 i11_3_lut_4_lut_4_lut_4_lut (.A(n488[0]), .B(n488[4]), .C(n488[2]), 
         .D(n9980), .Z(Clk96xC_enable_73)) /* synthesis lut_function=(!(A (C)+!A (B+((D)+!C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i11_3_lut_4_lut_4_lut_4_lut.init = 16'h0a1a;
    LUT4 i1_4_lut_adj_128 (.A(\CfgFSMSRegxDP[5] [7]), .B(CfgUartRxDatxD[7]), 
         .C(n270[4]), .D(n9983), .Z(n4822)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_128.init = 16'heca0;
    LUT4 i1_2_lut_3_lut (.A(n488[0]), .B(n488[4]), .C(n68), .Z(n3146)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    FD1P3AX CfgFSMSRegxDP_4__i0_i0 (.D(n4750), .SP(Clk96xC_enable_63), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[4] [0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_4__i0_i0.GSR = "ENABLED";
    LUT4 i4500_2_lut_3_lut_3_lut_4_lut (.A(n488[0]), .B(n488[4]), .C(n488[2]), 
         .D(n9980), .Z(n6497)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i4500_2_lut_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_rep_95_4_lut (.A(n488[0]), .B(n488[4]), .C(CfgOutRdyxDP), 
         .D(UartDetBRxDatRdyxSP), .Z(n9967)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i2_3_lut_rep_95_4_lut.init = 16'h000e;
    LUT4 i2371_2_lut_3_lut (.A(n488[0]), .B(n488[4]), .C(QB[8]), .Z(n4271)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i2371_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_129 (.A(n488[0]), .B(n488[4]), .C(n68), 
         .D(n9980), .Z(ParDatfromMuxRdyxS)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i1_2_lut_3_lut_4_lut_adj_129.init = 16'hfff1;
    LUT4 i4562_2_lut_rep_107 (.A(\CfgFSMSRegxDP[1] [5]), .B(\CfgFSMSRegxDP[1] [4]), 
         .Z(n9979)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4562_2_lut_rep_107.init = 16'heeee;
    LUT4 i1_2_lut_rep_108 (.A(CfgOutRdyxDP), .B(UartDetBRxDatRdyxSP), .Z(n9980)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_108.init = 16'heeee;
    LUT4 i7252_2_lut_rep_70_2_lut_3_lut_4_lut (.A(CfgOutRdyxDP), .B(UartDetBRxDatRdyxSP), 
         .C(n488[4]), .D(n488[0]), .Z(Clk96xC_enable_128)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7252_2_lut_rep_70_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_130 (.A(\CfgFSMSRegxDP[5] [6]), .B(CfgUartRxDatxD[6]), 
         .C(n270[4]), .D(n9983), .Z(n4825)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_130.init = 16'heca0;
    LUT4 ParDatfromMuxxD_7__I_0_i6_3_lut_4_lut (.A(\CfgFSMSRegxDP[0] [5]), 
         .B(n9977), .C(n2643), .D(ParDatfromMuxxD_7__N_159[5]), .Z(ParDatfromMuxxD[5])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam ParDatfromMuxxD_7__I_0_i6_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1_2_lut_rep_84_3_lut_4_lut (.A(CfgOutRdyxDP), .B(UartDetBRxDatRdyxSP), 
         .C(n488[4]), .D(n488[0]), .Z(n9956)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i1_2_lut_rep_84_3_lut_4_lut.init = 16'heeef;
    PFUMX i7092 (.BLUT(n9260), .ALUT(n9261), .C0(BrdSelectIxD[1]), .Z(n9264));
    LUT4 i2_3_lut_adj_131 (.A(n1876[8]), .B(n4_adj_1092), .C(n9967), .Z(n8673)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i2_3_lut_adj_131.init = 16'hecec;
    LUT4 i1_2_lut_3_lut_4_lut_adj_132 (.A(BrdSelectIxD[1]), .B(n9974), .C(n9949), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_132.init = 16'hfffe;
    FD1P3IX PCntBxDP_1476__i7 (.D(n45[7]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[7])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i7.GSR = "ENABLED";
    PFUMX CfgFSMSRegxDN_2__7__I_0_i7 (.BLUT(n175[6]), .ALUT(CfgFSMSRegxDN_2__7__N_304[6]), 
          .C0(n9242), .Z(CfgFSMSRegxDN_2__7__N_42[6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;
    LUT4 i1_2_lut_3_lut_4_lut_adj_133 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7917), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[4])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_133.init = 16'hfffe;
    LUT4 i1_4_lut_adj_134 (.A(n9956), .B(n10540), .C(n1876[9]), .D(n6823), 
         .Z(n4_adj_1092)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;
    defparam i1_4_lut_adj_134.init = 16'ha0ec;
    LUT4 i1_2_lut_3_lut_4_lut_adj_135 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7949), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[16])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_135.init = 16'hfffe;
    PFUMX i7433 (.BLUT(n9764), .ALUT(n9763), .C0(n270[1]), .Z(n9765));
    LUT4 i3_4_lut_adj_136 (.A(n5_adj_1093), .B(n3_adj_1094), .C(\CfgFSMSRegxDP[2] [2]), 
         .D(n8714), .Z(\CfgFSMSRegxDN[2] [2])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i3_4_lut_adj_136.init = 16'heefe;
    LUT4 CfgFSMSRegxDP_1__6__I_0_2_lut_rep_110 (.A(\CfgFSMSRegxDP[1] [6]), 
         .B(\CfgFSMSRegxDP[0] [0]), .Z(n9982)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam CfgFSMSRegxDP_1__6__I_0_2_lut_rep_110.init = 16'h8888;
    PFUMX CfgFSMSRegxDN_2__7__I_0_i8 (.BLUT(n175[7]), .ALUT(CfgFSMSRegxDN_2__7__N_304[7]), 
          .C0(n9242), .Z(CfgFSMSRegxDN_2__7__N_42[7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;
    LUT4 i2_3_lut_4_lut_adj_137 (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(\CfgFSMSRegxDP[1] [5]), .D(n9984), .Z(MainStatRegWrEnxS)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam i2_3_lut_4_lut_adj_137.init = 16'h0008;
    LUT4 i1_4_lut_adj_138 (.A(\CfgFSMSRegxDP[5] [5]), .B(CfgUartRxDatxD[5]), 
         .C(n270[4]), .D(n9983), .Z(n4828)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_138.init = 16'heca0;
    LUT4 mux_48_i1_3_lut_4_lut (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(FP_LED_0), .D(\CfgFSMSRegxDP[2] [0]), .Z(n175[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam mux_48_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_48_i2_3_lut_4_lut (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(MainStatRegxDP[1]), .D(\CfgFSMSRegxDP[2] [1]), .Z(n175[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam mux_48_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 MainStatRegxDP_6__I_0_i4_1_lut (.A(MainStatRegxDP[6]), .Z(DETB_RUN_c_3)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(432[20:46])
    defparam MainStatRegxDP_6__I_0_i4_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_139 (.A(\CfgFSMSRegxDP[5] [4]), .B(CfgUartRxDatxD[4]), 
         .C(n270[4]), .D(n9983), .Z(n4831)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_139.init = 16'heca0;
    LUT4 i1_4_lut_adj_140 (.A(\CfgFSMSRegxDP[5] [3]), .B(CfgUartRxDatxD[3]), 
         .C(n270[4]), .D(n9983), .Z(n4837)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_140.init = 16'heca0;
    L6MUX21 i7094 (.D0(n9264), .D1(n9265), .SD(BrdSelectIxD[2]), .Z(n9266));
    PFUMX CfgFSMSRegxDN_2__7__I_0_i1 (.BLUT(n175[0]), .ALUT(CfgFSMSRegxDN_2__7__N_304[0]), 
          .C0(n9242), .Z(CfgFSMSRegxDN_2__7__N_42[0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;
    LUT4 i1_4_lut_adj_141 (.A(CfgFSMSRegxDN_2__7__N_50[2]), .B(CfgFSMSRegxDN_2__7__N_42[2]), 
         .C(n270[1]), .D(n270[4]), .Z(n5_adj_1093)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_141.init = 16'heca0;
    LUT4 MainStatRegxDP_6__I_0_i3_1_lut (.A(MainStatRegxDP[5]), .Z(DETB_RUN_c_2)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(432[20:46])
    defparam MainStatRegxDP_6__I_0_i3_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_142 (.A(CfgFSMSRegxDN_5__7__N_114), .B(CfgUartRxDatxD[2]), 
         .C(n270[4]), .D(n9983), .Z(n4840)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_142.init = 16'heca0;
    LUT4 select_1227_Select_2_i3_4_lut (.A(\CfgFSMSRegxDP[3] [2]), .B(n270[5]), 
         .C(\CfgFSMSRegxDP[2] [2]), .D(CfgOutRdyxDP), .Z(n3_adj_1094)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam select_1227_Select_2_i3_4_lut.init = 16'hc088;
    LUT4 MainStatRegxDP_6__I_0_i2_1_lut (.A(MainStatRegxDP[4]), .Z(DETB_RUN_c_1)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(432[20:46])
    defparam MainStatRegxDP_6__I_0_i2_1_lut.init = 16'h5555;
    LUT4 i3420_4_lut (.A(\p_pcnts_memless.PCntBAdvancexS ), .B(QB[17]), 
         .C(n17), .D(n18), .Z(\p_pcnts_memless.PCntAAdvancexS )) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam i3420_4_lut.init = 16'ha888;
    LUT4 i1_4_lut_adj_143 (.A(CfgFSMSRegxDN_5__7__N_118), .B(CfgUartRxDatxD[1]), 
         .C(n270[4]), .D(n9983), .Z(n4843)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_143.init = 16'heca0;
    LUT4 mux_48_i7_3_lut_4_lut (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(MainStatRegxDP[6]), .D(\CfgFSMSRegxDP[2] [6]), .Z(n175[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam mux_48_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_4_lut_adj_144 (.A(n1876[0]), .B(n9956), .C(n10001), .D(n1876[7]), 
         .Z(n4084)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(95[9:21])
    defparam i1_4_lut_adj_144.init = 16'heca0;
    LUT4 i7_4_lut (.A(PCntBxDP[0]), .B(PCntBxDP[8]), .C(PCntBxDP[9]), 
         .D(PCntBxDP[2]), .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 mux_48_i8_3_lut_4_lut (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(MainStatRegxDP[7]), .D(\CfgFSMSRegxDP[2] [7]), .Z(n175[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam mux_48_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 MainStatRegxDP_6__I_0_i1_1_lut (.A(MainStatRegxDP[3]), .Z(DETB_RUN_c_0)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(432[20:46])
    defparam MainStatRegxDP_6__I_0_i1_1_lut.init = 16'h5555;
    LUT4 i4539_2_lut_3_lut (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(\CfgFSMSRegxDP[1] [5]), .Z(n6541)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam i4539_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i3_4_lut_adj_145 (.A(n5_adj_1095), .B(n3802), .C(n9035), .D(n270[5]), 
         .Z(CfgByteCntxDN[0])) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i3_4_lut_adj_145.init = 16'hfbfa;
    LUT4 mux_48_i6_3_lut_4_lut (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(MainStatRegxDP[5]), .D(\CfgFSMSRegxDP[2] [5]), .Z(n175[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam mux_48_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_4_lut_adj_146 (.A(CfgByteCntxDP[0]), .B(CfgUartRxDatRdyxS), 
         .C(n9994), .D(n270[1]), .Z(n5_adj_1095)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_146.init = 16'he6a0;
    LUT4 CfgFSMSRegxDP_2__7__I_0_284_i3_3_lut (.A(\CfgFSMSRegxDP[2] [2]), 
         .B(\CfgFSMSRegxDP[3] [2]), .C(CfgUartRxDatRdyxS), .Z(CfgFSMSRegxDN_2__7__N_50[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(327[5] 333[12])
    defparam CfgFSMSRegxDP_2__7__I_0_284_i3_3_lut.init = 16'hcaca;
    LUT4 ParDatfromMuxxD_7__I_0_i5_3_lut_4_lut (.A(\CfgFSMSRegxDP[0] [4]), 
         .B(n9977), .C(n2643), .D(ParDatfromMuxxD_7__N_159[4]), .Z(ParDatfromMuxxD[4])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam ParDatfromMuxxD_7__I_0_i5_3_lut_4_lut.init = 16'hefe0;
    LUT4 i8_3_lut (.A(PCntBxDP[5]), .B(n16), .C(PCntBxDP[1]), .Z(n18)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8_3_lut.init = 16'h8080;
    LUT4 i1977_2_lut (.A(CfgByteCntxDP[0]), .B(CfgOutRdyxDP), .Z(n3802)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(373[5] 381[12])
    defparam i1977_2_lut.init = 16'h6666;
    LUT4 mux_48_i5_3_lut_4_lut (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(MainStatRegxDP[4]), .D(\CfgFSMSRegxDP[2] [4]), .Z(n175[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam mux_48_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 i6_4_lut (.A(PCntBxDP[7]), .B(PCntBxDP[3]), .C(PCntBxDP[4]), 
         .D(PCntBxDP[6]), .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_adj_147 (.A(UartToBrdTxDatRdyxS), .B(n270[4]), .C(n270[0]), 
         .Z(n9035)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_147.init = 16'hfefe;
    LUT4 i4603_2_lut (.A(\PcntTxSRegxDP[0] [2]), .B(n488[1]), .Z(n555[2])) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i4603_2_lut.init = 16'heeee;
    LUT4 MainStatRegxDP_2__I_0_1_lut (.A(MainStatRegxDP[2]), .Z(SRCB_RUN_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(431[16:37])
    defparam MainStatRegxDP_2__I_0_1_lut.init = 16'h5555;
    LUT4 i1187_3_lut_4_lut (.A(n9978), .B(n68), .C(UartDetBRxDatRdyxSP), 
         .D(CfgOutRdyxDP), .Z(n2643)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam i1187_3_lut_4_lut.init = 16'hff02;
    LUT4 i4456_2_lut (.A(ClkCntxDN_10__N_340), .B(n6851), .Z(\p_pcnts_memless.PCntBAdvancexS )) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(473[3] 483[10])
    defparam i4456_2_lut.init = 16'h8888;
    LUT4 mux_48_i3_3_lut_4_lut (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(MainStatRegxDP[2]), .D(\CfgFSMSRegxDP[2] [2]), .Z(n175[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam mux_48_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_48_i4_3_lut_4_lut (.A(\CfgFSMSRegxDP[1] [6]), .B(\CfgFSMSRegxDP[0] [0]), 
         .C(MainStatRegxDP[3]), .D(\CfgFSMSRegxDP[2] [3]), .Z(n175[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(340[6] 343[32])
    defparam mux_48_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_rep_130 (.A(BrdSelectIxD[0]), .B(BrdSelectIxD[1]), .Z(n10002)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_rep_130.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_148 (.A(BrdSelectIxD[0]), .B(BrdSelectIxD[1]), 
         .C(n8640), .Z(SrcBSelectxSN[6])) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_adj_148.init = 16'hbfbf;
    LUT4 i20_4_lut (.A(n27), .B(n40), .C(n36), .D(n28), .Z(n6851)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_111 (.A(n270[5]), .B(n270[1]), .Z(n9983)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_111.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(n270[5]), .B(n270[1]), .C(n270[4]), .Z(n8714)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_rep_112 (.A(\CfgFSMSRegxDP[1] [7]), .B(\CfgFSMSRegxDP[1] [4]), 
         .C(n270[2]), .Z(n9984)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_rep_112.init = 16'hdfdf;
    LUT4 i2_4_lut (.A(n3_adj_1087), .B(CfgByteCntxDP[1]), .C(n1), .D(n9994), 
         .Z(CfgByteCntxDN[1])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i4688_2_lut_4_lut (.A(\CfgFSMSRegxDP[1] [7]), .B(\CfgFSMSRegxDP[1] [4]), 
         .C(n270[2]), .D(\CfgFSMSRegxDP[1] [5]), .Z(CfgRamBWrEnxS)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4688_2_lut_4_lut.init = 16'h2000;
    LUT4 CfgFSMSRegxDP_1__5__I_0_301_2_lut_rep_113 (.A(\CfgFSMSRegxDP[1] [5]), 
         .B(\CfgFSMSRegxDP[1] [4]), .Z(n9985)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(335[8:63])
    defparam CfgFSMSRegxDP_1__5__I_0_301_2_lut_rep_113.init = 16'h8888;
    LUT4 i6_2_lut (.A(PCntBxDP[7]), .B(PCntBxDP[1]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i4689_2_lut_3_lut_4_lut_4_lut (.A(\CfgFSMSRegxDP[1] [5]), .B(\CfgFSMSRegxDP[1] [4]), 
         .C(\CfgFSMSRegxDP[1] [7]), .D(n270[2]), .Z(CfgRamAWrEnxS)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(335[8:63])
    defparam i4689_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_4_lut_adj_149 (.A(CfgFSMSRegxDN_4__7__N_320[7]), .B(\CfgFSMSRegxDP[5] [7]), 
         .C(n270[4]), .D(n9983), .Z(n4846)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_149.init = 16'heca0;
    LUT4 i1_2_lut_rep_69_3_lut_4_lut (.A(\CfgFSMSRegxDP[1] [5]), .B(\CfgFSMSRegxDP[1] [4]), 
         .C(\CfgFSMSRegxDP[1] [7]), .D(n270[2]), .Z(n9941)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(335[8:63])
    defparam i1_2_lut_rep_69_3_lut_4_lut.init = 16'h7000;
    LUT4 mux_56_i8_4_lut (.A(VN22_EN_c_23), .B(\CfgFSMSRegxDP[4] [7]), .C(\CfgFSMSRegxDP[1] [5]), 
         .D(n9982), .Z(CfgFSMSRegxDN_4__7__N_320[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_56_i8_4_lut.init = 16'hcac0;
    LUT4 i19_4_lut (.A(PCntAxDP[2]), .B(n38), .C(n32), .D(PCntAxDP[0]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_85_3_lut (.A(\CfgFSMSRegxDP[1] [5]), .B(\CfgFSMSRegxDP[1] [4]), 
         .C(n270[2]), .Z(n9957)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(335[8:63])
    defparam i1_2_lut_rep_85_3_lut.init = 16'h7070;
    LUT4 i15_4_lut (.A(FP_LED_0), .B(PCntBxDP[6]), .C(PCntAxDP[4]), .D(PCntAxDP[1]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_150 (.A(CfgFSMSRegxDN_4__7__N_320[6]), .B(\CfgFSMSRegxDP[5] [6]), 
         .C(n270[4]), .D(n9983), .Z(n4849)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_150.init = 16'heca0;
    LUT4 i7_2_lut (.A(PCntBxDP[5]), .B(PCntAxDP[5]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7_2_lut.init = 16'heeee;
    LUT4 mux_56_i7_4_lut (.A(V9P0_EN_c_22), .B(\CfgFSMSRegxDP[4] [6]), .C(\CfgFSMSRegxDP[1] [5]), 
         .D(n9982), .Z(CfgFSMSRegxDN_4__7__N_320[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_56_i7_4_lut.init = 16'hcac0;
    LUT4 i17_4_lut (.A(PCntBxDP[4]), .B(n34), .C(n24), .D(PCntBxDP[8]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i11_3_lut (.A(PCntAxDP[7]), .B(PCntBxDP[3]), .C(PCntAxDP[6]), 
         .Z(n32)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i11_3_lut.init = 16'hfefe;
    LUT4 i13_4_lut (.A(PCntAxDP[9]), .B(PCntAxDP[3]), .C(PCntAxDP[8]), 
         .D(PCntBxDP[9]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_151 (.A(n5_adj_1096), .B(n3), .C(\CfgFSMSRegxDP[2] [6]), 
         .D(n8714), .Z(\CfgFSMSRegxDN[2] [6])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i3_4_lut_adj_151.init = 16'heefe;
    LUT4 i7096_3_lut (.A(UartDetBtoFPGAxDP[10]), .B(UartDetBtoFPGAxDP[11]), 
         .C(BrdSelectIxD[0]), .Z(n9268)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7096_3_lut.init = 16'hcaca;
    LUT4 i3_2_lut (.A(PCntBxDP[2]), .B(PCntBxDP[0]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i7095_3_lut (.A(UartDetBtoFPGAxDP[8]), .B(UartDetBtoFPGAxDP[9]), 
         .C(BrdSelectIxD[0]), .Z(n9267)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7095_3_lut.init = 16'hcaca;
    PFUMX i7099 (.BLUT(n9267), .ALUT(n9268), .C0(BrdSelectIxD[1]), .Z(n9271));
    LUT4 i2_3_lut_adj_152 (.A(n5767), .B(n9944), .C(n10540), .Z(Clk96xC_enable_53)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i2_3_lut_adj_152.init = 16'hfbfb;
    LUT4 i7091_3_lut (.A(UartDetBtoFPGAxDP[22]), .B(UartDetBtoFPGAxDP[23]), 
         .C(BrdSelectIxD[0]), .Z(n9263)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7091_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_153 (.A(CfgFSMSRegxDN_2__7__N_50[6]), .B(CfgFSMSRegxDN_2__7__N_42[6]), 
         .C(n270[1]), .D(n270[4]), .Z(n5_adj_1096)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_153.init = 16'heca0;
    FD1P3AX CfgFSMSRegxDP_4__i0_i7 (.D(n4846), .SP(Clk96xC_enable_63), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[4] [7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_4__i0_i7.GSR = "ENABLED";
    CCU2D ClkCntxDP_1475_add_4_11 (.A0(ClkCntxDP[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8528), .S0(n2[9]), .S1(n2[10]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475_add_4_11.INIT0 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_11.INIT1 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_11.INJECT1_0 = "NO";
    defparam ClkCntxDP_1475_add_4_11.INJECT1_1 = "NO";
    FD1P3AX CfgFSMSRegxDP_4__i0_i6 (.D(n4849), .SP(Clk96xC_enable_63), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[4] [6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_4__i0_i6.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_4__i0_i5 (.D(n4852), .SP(Clk96xC_enable_63), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[4] [5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_4__i0_i5.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_4__i0_i4 (.D(n4855), .SP(Clk96xC_enable_63), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[4] [4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_4__i0_i4.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_4__i0_i3 (.D(n4858), .SP(Clk96xC_enable_63), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[4] [3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_4__i0_i3.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_4__i0_i2 (.D(n4861), .SP(Clk96xC_enable_63), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[4] [2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_4__i0_i2.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_4__i0_i1 (.D(n4864), .SP(Clk96xC_enable_63), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[4] [1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_4__i0_i1.GSR = "ENABLED";
    LUT4 i7090_3_lut (.A(UartDetBtoFPGAxDP[20]), .B(UartDetBtoFPGAxDP[21]), 
         .C(BrdSelectIxD[0]), .Z(n9262)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7090_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_154 (.A(n5_adj_1099), .B(n3_adj_1100), .C(\CfgFSMSRegxDP[2] [1]), 
         .D(n8714), .Z(\CfgFSMSRegxDN[2] [1])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i3_4_lut_adj_154.init = 16'heefe;
    LUT4 i1_4_lut_adj_155 (.A(CfgFSMSRegxDN_4__7__N_320[5]), .B(\CfgFSMSRegxDP[5] [5]), 
         .C(n270[4]), .D(n9983), .Z(n4852)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_155.init = 16'heca0;
    LUT4 i1_4_lut_adj_156 (.A(CfgFSMSRegxDN_2__7__N_50[1]), .B(CfgFSMSRegxDN_2__7__N_42[1]), 
         .C(n270[1]), .D(n270[4]), .Z(n5_adj_1099)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_156.init = 16'heca0;
    LUT4 select_1227_Select_1_i3_4_lut (.A(\CfgFSMSRegxDP[3] [1]), .B(n270[5]), 
         .C(\CfgFSMSRegxDP[2] [1]), .D(CfgOutRdyxDP), .Z(n3_adj_1100)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam select_1227_Select_1_i3_4_lut.init = 16'hc088;
    LUT4 mux_56_i6_4_lut (.A(V5P1_SRC_EN_c_21), .B(\CfgFSMSRegxDP[4] [5]), 
         .C(\CfgFSMSRegxDP[1] [5]), .D(n9982), .Z(CfgFSMSRegxDN_4__7__N_320[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_56_i6_4_lut.init = 16'hcac0;
    PFUMX i7093 (.BLUT(n9262), .ALUT(n9263), .C0(BrdSelectIxD[1]), .Z(n9265));
    CCU2D ClkCntxDP_1475_add_4_9 (.A0(ClkCntxDP[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8527), .COUT(n8528), .S0(n2[7]), .S1(n2[8]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475_add_4_9.INIT0 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_9.INIT1 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_9.INJECT1_0 = "NO";
    defparam ClkCntxDP_1475_add_4_9.INJECT1_1 = "NO";
    CCU2D ClkCntxDP_1475_add_4_7 (.A0(ClkCntxDP[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8526), .COUT(n8527), .S0(n2[5]), .S1(n2[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475_add_4_7.INIT0 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_7.INIT1 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_7.INJECT1_0 = "NO";
    defparam ClkCntxDP_1475_add_4_7.INJECT1_1 = "NO";
    LUT4 CfgFSMSRegxDP_2__7__I_0_284_i2_3_lut (.A(\CfgFSMSRegxDP[2] [1]), 
         .B(\CfgFSMSRegxDP[3] [1]), .C(CfgUartRxDatRdyxS), .Z(CfgFSMSRegxDN_2__7__N_50[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(327[5] 333[12])
    defparam CfgFSMSRegxDP_2__7__I_0_284_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_157 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7917), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[6])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_157.init = 16'hfffd;
    LUT4 i1_4_lut_adj_158 (.A(CfgFSMSRegxDN_4__7__N_320[4]), .B(\CfgFSMSRegxDP[5] [4]), 
         .C(n270[4]), .D(n9983), .Z(n4855)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_158.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_159 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7949), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[18])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_159.init = 16'hfffd;
    LUT4 i3_4_lut_adj_160 (.A(n5_adj_1105), .B(n3_adj_1106), .C(\CfgFSMSRegxDP[2] [0]), 
         .D(n8714), .Z(\CfgFSMSRegxDN[2] [0])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i3_4_lut_adj_160.init = 16'heefe;
    LUT4 i1_4_lut_adj_161 (.A(CfgFSMSRegxDN_2__7__N_50[0]), .B(CfgFSMSRegxDN_2__7__N_42[0]), 
         .C(n270[1]), .D(n270[4]), .Z(n5_adj_1105)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_161.init = 16'heca0;
    LUT4 i2_2_lut_3_lut_4_lut (.A(CfgByteCntxDP[2]), .B(n9976), .C(n270[5]), 
         .D(CfgOutRdyxDP), .Z(n8652)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(376[9:26])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0010;
    FD1P3IX PcntTxSRegxDP_0__i2 (.D(PCntAxDP[2]), .SP(Clk96xC_enable_73), 
            .CD(n6497), .CK(Clk96xC), .Q(\PcntTxSRegxDP[0] [2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_0__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_162 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7963), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[10])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_162.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_163 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7963), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[11])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_163.init = 16'hfdff;
    LUT4 select_1227_Select_0_i3_4_lut (.A(\CfgFSMSRegxDP[3] [0]), .B(n270[5]), 
         .C(\CfgFSMSRegxDP[2] [0]), .D(CfgOutRdyxDP), .Z(n3_adj_1106)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam select_1227_Select_0_i3_4_lut.init = 16'hc088;
    LUT4 i2_3_lut_4_lut_adj_164 (.A(BrdSelectIxD[1]), .B(n9974), .C(n9975), 
         .D(n127), .Z(DetBSelectxSN[3])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i2_3_lut_4_lut_adj_164.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_165 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7917), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[7])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_165.init = 16'hfdff;
    CCU2D ClkCntxDP_1475_add_4_5 (.A0(ClkCntxDP[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8525), .COUT(n8526), .S0(n2[3]), .S1(n2[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475_add_4_5.INIT0 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_5.INIT1 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_5.INJECT1_0 = "NO";
    defparam ClkCntxDP_1475_add_4_5.INJECT1_1 = "NO";
    FD1P3IX PcntTxSRegxDP_0__i3 (.D(PCntAxDP[3]), .SP(Clk96xC_enable_73), 
            .CD(n6497), .CK(Clk96xC), .Q(\PcntTxSRegxDP[0] [3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_0__i3.GSR = "ENABLED";
    LUT4 CfgFSMSRegxDP_2__7__I_0_284_i1_3_lut (.A(\CfgFSMSRegxDP[2] [0]), 
         .B(\CfgFSMSRegxDP[3] [0]), .C(CfgUartRxDatRdyxS), .Z(CfgFSMSRegxDN_2__7__N_50[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(327[5] 333[12])
    defparam CfgFSMSRegxDP_2__7__I_0_284_i1_3_lut.init = 16'hcaca;
    FD1P3IX PcntTxSRegxDP_0__i4 (.D(PCntAxDP[4]), .SP(Clk96xC_enable_73), 
            .CD(n6497), .CK(Clk96xC), .Q(\PcntTxSRegxDP[0] [4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_0__i4.GSR = "ENABLED";
    CCU2D ClkCntxDP_1475_add_4_3 (.A0(ClkCntxDP[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8524), .COUT(n8525), .S0(n2[1]), .S1(n2[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475_add_4_3.INIT0 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_3.INIT1 = 16'hfaaa;
    defparam ClkCntxDP_1475_add_4_3.INJECT1_0 = "NO";
    defparam ClkCntxDP_1475_add_4_3.INJECT1_1 = "NO";
    LUT4 mux_56_i5_4_lut (.A(MainStatRegxDP[20]), .B(\CfgFSMSRegxDP[4] [4]), 
         .C(\CfgFSMSRegxDP[1] [5]), .D(n9982), .Z(CfgFSMSRegxDN_4__7__N_320[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_56_i5_4_lut.init = 16'hcac0;
    LUT4 i3_4_lut_adj_166 (.A(n5_adj_1107), .B(n3_adj_1108), .C(\CfgFSMSRegxDP[2] [7]), 
         .D(n8714), .Z(\CfgFSMSRegxDN[2] [7])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i3_4_lut_adj_166.init = 16'heefe;
    LUT4 i1_4_lut_adj_167 (.A(CfgFSMSRegxDN_4__7__N_320[3]), .B(\CfgFSMSRegxDP[5] [3]), 
         .C(n270[4]), .D(n9983), .Z(n4858)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_167.init = 16'heca0;
    FD1P3IX PcntTxSRegxDP_0__i5 (.D(PCntAxDP[5]), .SP(Clk96xC_enable_73), 
            .CD(n6497), .CK(Clk96xC), .Q(\PcntTxSRegxDP[0] [5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_0__i5.GSR = "ENABLED";
    FD1P3IX PcntTxSRegxDP_0__i6 (.D(PCntAxDP[6]), .SP(Clk96xC_enable_73), 
            .CD(n6497), .CK(Clk96xC), .Q(\PcntTxSRegxDP[0] [6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_0__i6.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_5__i0_i7 (.D(n4822), .SP(Clk96xC_enable_82), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[5] [7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_5__i0_i7.GSR = "ENABLED";
    LUT4 i7262_4_lut (.A(n9982), .B(Clk96xC_enable_82), .C(n9979), .D(n270[4]), 
         .Z(Clk96xC_enable_283)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i7262_4_lut.init = 16'hc8cc;
    LUT4 i1_4_lut_adj_168 (.A(CfgFSMSRegxDN_3__7__N_66[0]), .B(\CfgFSMSRegxDP[4] [0]), 
         .C(n270[4]), .D(n9983), .Z(n4768)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_168.init = 16'heca0;
    FD1P3AX CfgFSMSRegxDP_5__i0_i6 (.D(n4825), .SP(Clk96xC_enable_82), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[5] [6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_5__i0_i6.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_169 (.A(CfgFSMSRegxDN_2__7__N_50[7]), .B(CfgFSMSRegxDN_2__7__N_42[7]), 
         .C(n270[1]), .D(n270[4]), .Z(n5_adj_1107)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_169.init = 16'heca0;
    LUT4 CfgFSMSRegxDN_3__7__I_0_i1_3_lut (.A(CfgFSMSRegxDN_3__7__N_312[0]), 
         .B(CfgRamAOutxD[8]), .C(\CfgFSMSRegxDP[1] [4]), .Z(CfgFSMSRegxDN_3__7__N_66[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam CfgFSMSRegxDN_3__7__I_0_i1_3_lut.init = 16'hcaca;
    FD1P3AX CfgFSMSRegxDP_5__i0_i5 (.D(n4828), .SP(Clk96xC_enable_82), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[5] [5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_5__i0_i5.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_5__i0_i4 (.D(n4831), .SP(Clk96xC_enable_82), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[5] [4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_5__i0_i4.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_5__i0_i3 (.D(n4837), .SP(Clk96xC_enable_82), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[5] [3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_5__i0_i3.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_5__i0_i2 (.D(n4840), .SP(Clk96xC_enable_82), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[5] [2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_5__i0_i2.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_5__i0_i1 (.D(n4843), .SP(Clk96xC_enable_82), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[5] [1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_5__i0_i1.GSR = "ENABLED";
    LUT4 i1046_2_lut (.A(ClkCntxDN_10__N_340), .B(n6851), .Z(n2462)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(473[3] 483[10])
    defparam i1046_2_lut.init = 16'hbbbb;
    LUT4 select_1227_Select_7_i3_4_lut (.A(\CfgFSMSRegxDP[3] [7]), .B(n270[5]), 
         .C(\CfgFSMSRegxDP[2] [7]), .D(CfgOutRdyxDP), .Z(n3_adj_1108)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam select_1227_Select_7_i3_4_lut.init = 16'hc088;
    LUT4 mux_55_i1_3_lut (.A(EXP_J303_D_c_3), .B(CfgRamBOutxD[8]), .C(\CfgFSMSRegxDP[1] [5]), 
         .Z(CfgFSMSRegxDN_3__7__N_312[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_55_i1_3_lut.init = 16'hcaca;
    LUT4 i2127_4_lut (.A(n488[4]), .B(Clk96xC_enable_128), .C(QB[8]), 
         .D(n488[3]), .Z(n3981)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i2127_4_lut.init = 16'heca0;
    CCU2D ClkCntxDP_1475_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ClkCntxDP[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8524), .S1(n2[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475_add_4_1.INIT0 = 16'hF000;
    defparam ClkCntxDP_1475_add_4_1.INIT1 = 16'h0555;
    defparam ClkCntxDP_1475_add_4_1.INJECT1_0 = "NO";
    defparam ClkCntxDP_1475_add_4_1.INJECT1_1 = "NO";
    LUT4 CfgFSMSRegxDP_2__7__I_0_284_i8_3_lut (.A(\CfgFSMSRegxDP[2] [7]), 
         .B(\CfgFSMSRegxDP[3] [7]), .C(CfgUartRxDatRdyxS), .Z(CfgFSMSRegxDN_2__7__N_50[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(327[5] 333[12])
    defparam CfgFSMSRegxDP_2__7__I_0_284_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_170 (.A(BrdSelectIxD[1]), .B(n9974), .C(n9113), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[23])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_170.init = 16'hfdff;
    LUT4 i7089_3_lut (.A(UartDetBtoFPGAxDP[18]), .B(UartDetBtoFPGAxDP[19]), 
         .C(BrdSelectIxD[0]), .Z(n9261)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7089_3_lut.init = 16'hcaca;
    LUT4 i2121_4_lut (.A(n488[1]), .B(QB[8]), .C(Clk96xC_enable_128), 
         .D(n488[0]), .Z(n3975)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i2121_4_lut.init = 16'hce0a;
    LUT4 CfgStatexDN_2__N_373_bdd_4_lut (.A(n9950), .B(CfgOutRdyxDP), .C(n9920), 
         .D(n270[5]), .Z(CfgOutRdyxDN)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam CfgStatexDN_2__N_373_bdd_4_lut.init = 16'h22f0;
    LUT4 i2107_1_lut (.A(n270[2]), .Z(n3961)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i2107_1_lut.init = 16'h5555;
    FD1P3AX MainStatRegxDP__i27 (.D(\CfgFSMSRegxDP[5] [2]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[26])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i27.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i26 (.D(\CfgFSMSRegxDP[5] [1]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[25])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i26.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i25 (.D(\CfgFSMSRegxDP[5] [0]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(VN3P4_EN_c_24)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i25.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i24 (.D(\CfgFSMSRegxDP[4] [7]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(VN22_EN_c_23)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i24.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_171 (.A(BrdSelectIxD[1]), .B(n9974), .C(n7949), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[19])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_171.init = 16'hfdff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_172 (.A(BrdSelectIxD[1]), .B(n9974), .C(n9119), 
         .D(BrdSelectIxD[0]), .Z(DetBSelectxSN[15])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_3_lut_4_lut_adj_172.init = 16'hfdff;
    LUT4 reduce_or_137_i1_3_lut (.A(UartToBrdTxDatRdyxS), .B(CfgOutRdyxDP), 
         .C(n270[3]), .Z(n295)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam reduce_or_137_i1_3_lut.init = 16'hbaba;
    LUT4 i7088_3_lut (.A(UartDetBtoFPGAxDP[16]), .B(UartDetBtoFPGAxDP[17]), 
         .C(BrdSelectIxD[0]), .Z(n9260)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7088_3_lut.init = 16'hcaca;
    FD1P3AX MainStatRegxDP__i23 (.D(\CfgFSMSRegxDP[4] [6]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(V9P0_EN_c_22)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i23.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i22 (.D(\CfgFSMSRegxDP[4] [5]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(V5P1_SRC_EN_c_21)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i22.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i21 (.D(\CfgFSMSRegxDP[4] [4]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[20])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i21.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i20 (.D(\CfgFSMSRegxDP[4] [3]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(V5P1_B23_EN_c_19)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i20.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i19 (.D(\CfgFSMSRegxDP[4] [2]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(V5P1_B01_EN_c_18)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i19.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i18 (.D(\CfgFSMSRegxDP[4] [1]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[17])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i18.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i17 (.D(\CfgFSMSRegxDP[4] [0]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[16])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i17.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i16 (.D(\CfgFSMSRegxDP[3] [7]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[15])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i16.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i15 (.D(\CfgFSMSRegxDP[3] [6]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[14])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i15.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i14 (.D(\CfgFSMSRegxDP[3] [5]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[13])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i14.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i13 (.D(\CfgFSMSRegxDP[3] [4]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[12])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i13.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i12 (.D(\CfgFSMSRegxDP[3] [3]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[11])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i12.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i11 (.D(\CfgFSMSRegxDP[3] [2]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[10])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i11.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i10 (.D(\CfgFSMSRegxDP[3] [1]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[9])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i10.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i9 (.D(\CfgFSMSRegxDP[3] [0]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(EXP_J303_D_c_3)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i9.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i8 (.D(\CfgFSMSRegxDP[2] [7]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i8.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i7 (.D(\CfgFSMSRegxDP[2] [6]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i7.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i6 (.D(\CfgFSMSRegxDP[2] [5]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i6.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i5 (.D(\CfgFSMSRegxDP[2] [4]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i5.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i4 (.D(\CfgFSMSRegxDP[2] [3]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i4.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i3 (.D(\CfgFSMSRegxDP[2] [2]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i3.GSR = "ENABLED";
    FD1P3AX MainStatRegxDP__i2 (.D(\CfgFSMSRegxDP[2] [1]), .SP(MainStatRegWrEnxS), 
            .CK(Clk96xC), .Q(MainStatRegxDP[1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(411[3] 415[10])
    defparam MainStatRegxDP__i2.GSR = "ENABLED";
    LUT4 ParDatfromMuxxD_7__I_10_i8_4_lut (.A(n3154), .B(UartDetBRxDatxD[7]), 
         .C(UartDetBRxDatRdyxSP), .D(n9955), .Z(ParDatfromMuxxD_7__N_159[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_10_i8_4_lut.init = 16'hc0ca;
    LUT4 i2103_4_lut (.A(n270[3]), .B(\CfgFSMSRegxDP[1] [7]), .C(CfgOutRdyxDP), 
         .D(n9957), .Z(n3956)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i2103_4_lut.init = 16'hb3a0;
    LUT4 ParDatfromMuxxD_7__I_10_i7_4_lut (.A(n3153), .B(UartDetBRxDatxD[6]), 
         .C(UartDetBRxDatRdyxSP), .D(n9955), .Z(ParDatfromMuxxD_7__N_159[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_10_i7_4_lut.init = 16'hc0ca;
    LUT4 mux_54_i8_3_lut (.A(CfgRamBOutxD[7]), .B(CfgRamAOutxD[7]), .C(\CfgFSMSRegxDP[1] [4]), 
         .Z(CfgFSMSRegxDN_2__7__N_304[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_54_i8_3_lut.init = 16'hcaca;
    LUT4 i2101_4_lut (.A(n270[1]), .B(CfgStatexDN_2__N_293), .C(n246), 
         .D(n270[0]), .Z(n3954)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i2101_4_lut.init = 16'heca0;
    LUT4 ParDatfromMuxxD_7__I_10_i6_4_lut (.A(n3152), .B(UartDetBRxDatxD[5]), 
         .C(UartDetBRxDatRdyxSP), .D(n9955), .Z(ParDatfromMuxxD_7__N_159[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_10_i6_4_lut.init = 16'hc0ca;
    LUT4 ParDatfromMuxxD_7__I_10_i5_4_lut (.A(n3151), .B(UartDetBRxDatxD[4]), 
         .C(UartDetBRxDatRdyxSP), .D(n9955), .Z(ParDatfromMuxxD_7__N_159[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_10_i5_4_lut.init = 16'hc0ca;
    LUT4 ParDatfromMuxxD_7__I_0_i4_3_lut (.A(ParDatfromMuxxD_7__N_159[3]), 
         .B(CfgFSMSRegOutxD[3]), .C(n2643), .Z(ParDatfromMuxxD[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 i7256_3_lut (.A(n270[5]), .B(n9152), .C(CfgOutRdyxDP), .Z(Clk96xC_enable_82)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam i7256_3_lut.init = 16'h4c4c;
    LUT4 mux_54_i7_3_lut (.A(CfgRamBOutxD[6]), .B(CfgRamAOutxD[6]), .C(\CfgFSMSRegxDP[1] [4]), 
         .Z(CfgFSMSRegxDN_2__7__N_304[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_54_i7_3_lut.init = 16'hcaca;
    FD1S3AX PcntTxStatexDP_FSM_i5 (.D(n3981), .CK(Clk96xC), .Q(n488[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam PcntTxStatexDP_FSM_i5.GSR = "ENABLED";
    LUT4 ParDatfromMuxxD_7__I_10_i4_4_lut (.A(n3150), .B(UartDetBRxDatxD[3]), 
         .C(UartDetBRxDatRdyxSP), .D(n9955), .Z(ParDatfromMuxxD_7__N_159[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_10_i4_4_lut.init = 16'hc0ca;
    LUT4 ParDatfromMuxxD_7__I_0_i3_3_lut (.A(ParDatfromMuxxD_7__N_159[2]), 
         .B(CfgFSMSRegOutxD[2]), .C(n2643), .Z(ParDatfromMuxxD[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_0_i3_3_lut.init = 16'hcaca;
    FD1P3AX PcntTxStatexDP_FSM_i4 (.D(n488[2]), .SP(Clk96xC_enable_128), 
            .CK(Clk96xC), .Q(n488[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam PcntTxStatexDP_FSM_i4.GSR = "ENABLED";
    FD1P3AX PcntTxStatexDP_FSM_i3 (.D(n488[1]), .SP(Clk96xC_enable_128), 
            .CK(Clk96xC), .Q(n488[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam PcntTxStatexDP_FSM_i3.GSR = "ENABLED";
    FD1S3AX PcntTxStatexDP_FSM_i2 (.D(n3975), .CK(Clk96xC), .Q(n488[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam PcntTxStatexDP_FSM_i2.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_0__i0_i7 (.D(\CfgFSMSRegxDP[1] [7]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[0] [7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_0__i0_i7.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_0__i0_i6 (.D(\CfgFSMSRegxDP[1] [6]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[0] [6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_0__i0_i6.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_0__i0_i5 (.D(\CfgFSMSRegxDP[1] [5]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[0] [5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_0__i0_i5.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_0__i0_i4 (.D(\CfgFSMSRegxDP[1] [4]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[0] [4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_0__i0_i4.GSR = "ENABLED";
    LUT4 ParDatfromMuxxD_7__I_10_i3_4_lut (.A(n3149), .B(UartDetBRxDatxD[2]), 
         .C(UartDetBRxDatRdyxSP), .D(n9955), .Z(ParDatfromMuxxD_7__N_159[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_10_i3_4_lut.init = 16'hc0ca;
    FD1P3AX CfgFSMSRegxDP_0__i0_i3 (.D(\CfgFSMSRegxDP[1] [3]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[0] [3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_0__i0_i3.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_0__i0_i2 (.D(\CfgFSMSRegxDP[1] [2]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[0] [2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_0__i0_i2.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_0__i0_i1 (.D(\CfgFSMSRegxDP[1] [1]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[0] [1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_0__i0_i1.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_1__i0_i7 (.D(\CfgFSMSRegxDP[2] [7]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[1] [7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_1__i0_i7.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_1__i0_i6 (.D(\CfgFSMSRegxDP[2] [6]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[1] [6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_1__i0_i6.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_1__i0_i5 (.D(\CfgFSMSRegxDP[2] [5]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[1] [5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_1__i0_i5.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_1__i0_i4 (.D(\CfgFSMSRegxDP[2] [4]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[1] [4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_1__i0_i4.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_1__i0_i3 (.D(\CfgFSMSRegxDP[2] [3]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[1] [3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_1__i0_i3.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_1__i0_i2 (.D(\CfgFSMSRegxDP[2] [2]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[1] [2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_1__i0_i2.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_1__i0_i1 (.D(\CfgFSMSRegxDP[2] [1]), .SP(Clk96xC_enable_142), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[1] [1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_1__i0_i1.GSR = "ENABLED";
    FD1S3IX CfgStatexDP_FSM_i7 (.D(n9985), .CK(Clk96xC), .CD(n3961), .Q(UartToBrdTxDatRdyxS));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam CfgStatexDP_FSM_i7.GSR = "ENABLED";
    LUT4 i14_4_lut (.A(n270[4]), .B(CfgUartRxDatRdyxS), .C(n270[1]), .D(n270[5]), 
         .Z(n9152)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i14_4_lut.init = 16'hcfca;
    LUT4 mux_54_i1_3_lut (.A(CfgRamBOutxD[0]), .B(CfgRamAOutxD[0]), .C(\CfgFSMSRegxDP[1] [4]), 
         .Z(CfgFSMSRegxDN_2__7__N_304[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_54_i1_3_lut.init = 16'hcaca;
    LUT4 ParDatfromMuxxD_7__I_0_i2_3_lut (.A(ParDatfromMuxxD_7__N_159[1]), 
         .B(CfgFSMSRegOutxD[1]), .C(n2643), .Z(ParDatfromMuxxD[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_0_i2_3_lut.init = 16'hcaca;
    FD1S3AX CfgStatexDP_FSM_i6 (.D(n3958), .CK(Clk96xC), .Q(n270[5]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam CfgStatexDP_FSM_i6.GSR = "ENABLED";
    FD1S3AX CfgStatexDP_FSM_i5 (.D(n295), .CK(Clk96xC), .Q(n270[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam CfgStatexDP_FSM_i5.GSR = "ENABLED";
    FD1S3AX CfgStatexDP_FSM_i4 (.D(n3956), .CK(Clk96xC), .Q(n270[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam CfgStatexDP_FSM_i4.GSR = "ENABLED";
    FD1S3IX CfgStatexDP_FSM_i3 (.D(n4), .CK(Clk96xC), .CD(n9981), .Q(n270[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam CfgStatexDP_FSM_i3.GSR = "ENABLED";
    FD1S3AX CfgStatexDP_FSM_i2 (.D(n3954), .CK(Clk96xC), .Q(n270[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam CfgStatexDP_FSM_i2.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1475__i10 (.D(n2[10]), .CK(Clk96xC), .CD(n2462), 
            .Q(ClkCntxDP[10])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i10.GSR = "ENABLED";
    LUT4 ParDatfromMuxxD_7__I_10_i2_4_lut (.A(n3148), .B(UartDetBRxDatxD[1]), 
         .C(UartDetBRxDatRdyxSP), .D(n9955), .Z(ParDatfromMuxxD_7__N_159[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_10_i2_4_lut.init = 16'hc0ca;
    FD1S3IX ClkCntxDP_1475__i9 (.D(n2[9]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[9])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i9.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1475__i8 (.D(n2[8]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i8.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1475__i7 (.D(n2[7]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[7])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i7.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1475__i6 (.D(n2[6]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i6.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1475__i5 (.D(n2[5]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i5.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1475__i4 (.D(n2[4]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i4.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1475__i3 (.D(n2[3]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i3.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1475__i2 (.D(n2[2]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i2.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1475__i1 (.D(n2[1]), .CK(Clk96xC), .CD(n2462), .Q(ClkCntxDP[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam ClkCntxDP_1475__i1.GSR = "ENABLED";
    LUT4 ParDatfromMuxxD_7__I_0_i1_3_lut (.A(ParDatfromMuxxD_7__N_159[0]), 
         .B(CfgFSMSRegOutxD[0]), .C(n2643), .Z(ParDatfromMuxxD[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 ParDatfromMuxxD_7__I_10_i1_4_lut (.A(n3147), .B(UartDetBRxDatxD[0]), 
         .C(UartDetBRxDatRdyxSP), .D(n9955), .Z(ParDatfromMuxxD_7__N_159[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(600[3] 616[10])
    defparam ParDatfromMuxxD_7__I_10_i1_4_lut.init = 16'hc0ca;
    FD1P3AX PCntAxDP_1477__i0 (.D(n45_adj_1109[0]), .SP(\p_pcnts_memless.PCntAAdvancexS ), 
            .CK(Clk96xC), .Q(PCntAxDP[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntAxDP_1477__i0.GSR = "ENABLED";
    FD1P3IX PCntBxDP_1476__i0 (.D(n45[0]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i0.GSR = "ENABLED";
    LUT4 i4488_3_lut (.A(\CfgFSMSRegxDP[0] [0]), .B(UartToBrdTxDatRdyxS), 
         .C(n270[3]), .Z(CfgFSMSRegOutxD[0])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i4488_3_lut.init = 16'hcece;
    LUT4 i4614_3_lut (.A(\CfgFSMSRegxDP[0] [1]), .B(UartToBrdTxDatRdyxS), 
         .C(n270[3]), .Z(CfgFSMSRegOutxD[1])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i4614_3_lut.init = 16'hcece;
    LUT4 i4609_3_lut (.A(\CfgFSMSRegxDP[0] [3]), .B(UartToBrdTxDatRdyxS), 
         .C(n270[3]), .Z(CfgFSMSRegOutxD[3])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i4609_3_lut.init = 16'hcece;
    PFUMX i7100 (.BLUT(n9269), .ALUT(n9270), .C0(BrdSelectIxD[1]), .Z(n9272));
    LUT4 mux_54_i6_3_lut (.A(CfgRamBOutxD[5]), .B(CfgRamAOutxD[5]), .C(\CfgFSMSRegxDP[1] [4]), 
         .Z(CfgFSMSRegxDN_2__7__N_304[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_54_i6_3_lut.init = 16'hcaca;
    LUT4 i4613_3_lut (.A(\CfgFSMSRegxDP[0] [2]), .B(UartToBrdTxDatRdyxS), 
         .C(n270[3]), .Z(CfgFSMSRegOutxD[2])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i4613_3_lut.init = 16'hcece;
    LUT4 mux_244_i1_3_lut (.A(PCntAxDP[0]), .B(\PcntTxSRegxDP[1] [0]), .C(n488[2]), 
         .Z(\PcntTxSRegxDN[0] [0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam mux_244_i1_3_lut.init = 16'hcaca;
    LUT4 mux_54_i5_3_lut (.A(CfgRamBOutxD[4]), .B(CfgRamAOutxD[4]), .C(\CfgFSMSRegxDP[1] [4]), 
         .Z(CfgFSMSRegxDN_2__7__N_304[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_54_i5_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_173 (.A(n9941), .B(n270[0]), .C(n8652), .D(CfgStatexDN_2__N_293), 
         .Z(n9056)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_173.init = 16'hfafe;
    LUT4 mux_54_i4_3_lut (.A(CfgRamBOutxD[3]), .B(CfgRamAOutxD[3]), .C(\CfgFSMSRegxDP[1] [4]), 
         .Z(CfgFSMSRegxDN_2__7__N_304[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_54_i4_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut (.A(n15), .B(CfgUartRxDatxD[6]), .C(n14), .D(CfgUartRxDatRdyxS), 
         .Z(CfgStatexDN_2__N_293)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i6_4_lut_adj_174 (.A(CfgUartRxDatxD[1]), .B(CfgUartRxDatxD[7]), 
         .C(CfgUartRxDatxD[2]), .D(CfgUartRxDatxD[3]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_174.init = 16'h8000;
    FD1P3IX PCntBxDP_1476__i1 (.D(n45[1]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i1.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(CfgUartRxDatxD[0]), .B(CfgUartRxDatxD[4]), .C(CfgUartRxDatxD[5]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut.init = 16'h8080;
    LUT4 mux_54_i3_3_lut (.A(CfgRamBOutxD[2]), .B(CfgRamAOutxD[2]), .C(\CfgFSMSRegxDP[1] [4]), 
         .Z(CfgFSMSRegxDN_2__7__N_304[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_54_i3_3_lut.init = 16'hcaca;
    LUT4 i1298_4_lut (.A(CfgUartRxDatRdyxS), .B(CfgOutRdyxDP), .C(n270[5]), 
         .D(n270[1]), .Z(Clk96xC_enable_142)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1298_4_lut.init = 16'h3a30;
    LUT4 CfgByteCntxDP_2__bdd_4_lut (.A(CfgByteCntxDP[2]), .B(n9976), .C(n9994), 
         .D(CfgUartRxDatRdyxS), .Z(n9763)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B+!(D))) */ ;
    defparam CfgByteCntxDP_2__bdd_4_lut.init = 16'hb9aa;
    FD1P3AX CfgFSMSRegxDP_3__i0_i7 (.D(n4867), .SP(Clk96xC_enable_283), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[3] [7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_3__i0_i7.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_3__i0_i6 (.D(n4771), .SP(Clk96xC_enable_283), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[3] [6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_3__i0_i6.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_3__i0_i5 (.D(n4810), .SP(Clk96xC_enable_283), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[3] [5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_3__i0_i5.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_3__i0_i4 (.D(n4813), .SP(Clk96xC_enable_283), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[3] [4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_3__i0_i4.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_3__i0_i3 (.D(n4816), .SP(Clk96xC_enable_283), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[3] [3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_3__i0_i3.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_3__i0_i2 (.D(n4834), .SP(Clk96xC_enable_283), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[3] [2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_3__i0_i2.GSR = "ENABLED";
    FD1P3AX CfgFSMSRegxDP_3__i0_i1 (.D(n4765), .SP(Clk96xC_enable_283), 
            .CK(Clk96xC), .Q(\CfgFSMSRegxDP[3] [1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_3__i0_i1.GSR = "ENABLED";
    FD1S3AX SrcBSelectxSP_i7 (.D(SrcBSelectxSN[6]), .CK(Clk96xC), .Q(SRCB_SELECT_c_6)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam SrcBSelectxSP_i7.GSR = "ENABLED";
    LUT4 i7087_3_lut (.A(n9257), .B(n9258), .C(BrdSelectIxD[4]), .Z(UartDetBtoFPGASelxD)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7087_3_lut.init = 16'hcaca;
    LUT4 i7086_3_lut (.A(n9266), .B(n8806), .C(BrdSelectIxD[3]), .Z(n9258)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7086_3_lut.init = 16'hcaca;
    LUT4 i7263_2_lut (.A(\CfgFSMSRegxDP[1] [4]), .B(\CfgFSMSRegxDP[1] [5]), 
         .Z(n9242)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam i7263_2_lut.init = 16'heeee;
    LUT4 mux_54_i2_3_lut (.A(CfgRamBOutxD[1]), .B(CfgRamAOutxD[1]), .C(\CfgFSMSRegxDP[1] [4]), 
         .Z(CfgFSMSRegxDN_2__7__N_304[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(356[5] 368[12])
    defparam mux_54_i2_3_lut.init = 16'hcaca;
    PFUMX i7106 (.BLUT(n9274), .ALUT(n9275), .C0(BrdSelectIxD[1]), .Z(n9278));
    FD1S3AX SrcBSelectxSP_i6 (.D(SrcBSelectxSN[5]), .CK(Clk96xC), .Q(SRCB_SELECT_c_5)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam SrcBSelectxSP_i6.GSR = "ENABLED";
    FD1S3AX SrcBSelectxSP_i5 (.D(SrcBSelectxSN[4]), .CK(Clk96xC), .Q(SRCB_SELECT_c_4)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam SrcBSelectxSP_i5.GSR = "ENABLED";
    FD1S3AX SrcBSelectxSP_i4 (.D(SrcBSelectxSN[3]), .CK(Clk96xC), .Q(SRCB_SELECT_c_3)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam SrcBSelectxSP_i4.GSR = "ENABLED";
    FD1S3AX SrcBSelectxSP_i3 (.D(SrcBSelectxSN[2]), .CK(Clk96xC), .Q(SRCB_SELECT_c_2)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam SrcBSelectxSP_i3.GSR = "ENABLED";
    FD1S3AX SrcBSelectxSP_i2 (.D(SrcBSelectxSN[1]), .CK(Clk96xC), .Q(SRCB_SELECT_c_1)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam SrcBSelectxSP_i2.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i25 (.D(DetBSelectxSN[24]), .CK(Clk96xC), .Q(DETB_SELECT_c_24)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i25.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i24 (.D(DetBSelectxSN[23]), .CK(Clk96xC), .Q(DETB_SELECT_c_23)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i24.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i23 (.D(DetBSelectxSN[22]), .CK(Clk96xC), .Q(DETB_SELECT_c_22)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i23.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i22 (.D(DetBSelectxSN[21]), .CK(Clk96xC), .Q(DETB_SELECT_c_21)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i22.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i21 (.D(DetBSelectxSN[20]), .CK(Clk96xC), .Q(DETB_SELECT_c_20)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i21.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i20 (.D(DetBSelectxSN[19]), .CK(Clk96xC), .Q(DETB_SELECT_c_19)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i20.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i19 (.D(DetBSelectxSN[18]), .CK(Clk96xC), .Q(DETB_SELECT_c_18)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i19.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i18 (.D(DetBSelectxSN[17]), .CK(Clk96xC), .Q(DETB_SELECT_c_17)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i18.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i17 (.D(DetBSelectxSN[16]), .CK(Clk96xC), .Q(DETB_SELECT_c_16)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i17.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i16 (.D(DetBSelectxSN[15]), .CK(Clk96xC), .Q(DETB_SELECT_c_15)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i16.GSR = "ENABLED";
    FD1S3AX DetBSelectxSP_i15 (.D(DetBSelectxSN[14]), .CK(Clk96xC), .Q(DETB_SELECT_c_14)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam DetBSelectxSP_i15.GSR = "ENABLED";
    FD1S3AX CfgFSMSRegxDP_2__i6 (.D(\CfgFSMSRegxDN[2] [6]), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[2] [6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_2__i6.GSR = "ENABLED";
    FD1S3AX CfgFSMSRegxDP_2__i5 (.D(\CfgFSMSRegxDN[2] [5]), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[2] [5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_2__i5.GSR = "ENABLED";
    FD1S3AX CfgFSMSRegxDP_2__i4 (.D(\CfgFSMSRegxDN[2] [4]), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[2] [4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_2__i4.GSR = "ENABLED";
    FD1S3AX CfgFSMSRegxDP_2__i3 (.D(\CfgFSMSRegxDN[2] [3]), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[2] [3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_2__i3.GSR = "ENABLED";
    FD1S3AX CfgByteCntxDP_i2 (.D(CfgByteCntxDN[2]), .CK(Clk96xC), .Q(CfgByteCntxDP[2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgByteCntxDP_i2.GSR = "ENABLED";
    FD1S3AX CfgFSMSRegxDP_2__i2 (.D(\CfgFSMSRegxDN[2] [2]), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[2] [2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_2__i2.GSR = "ENABLED";
    FD1S3AX CfgByteCntxDP_i1 (.D(CfgByteCntxDN[1]), .CK(Clk96xC), .Q(CfgByteCntxDP[1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgByteCntxDP_i1.GSR = "ENABLED";
    FD1S3AX CfgFSMSRegxDP_2__i1 (.D(\CfgFSMSRegxDN[2] [1]), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[2] [1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_2__i1.GSR = "ENABLED";
    FD1P3AX PcntTxSRegxDP_1___i2 (.D(PCntAxDP[9]), .SP(n488[0]), .CK(Clk96xC), 
            .Q(\PcntTxSRegxDP[1] [1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(517[3] 523[10])
    defparam PcntTxSRegxDP_1___i2.GSR = "ENABLED";
    FD1S3AX CfgFSMSRegxDP_2__i0 (.D(\CfgFSMSRegxDN[2] [0]), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[2] [0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_2__i0.GSR = "ENABLED";
    FD1P3IX PCntBxDP_1476__i8 (.D(n45[8]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i8.GSR = "ENABLED";
    FD1P3IX PCntBxDP_1476__i9 (.D(n45[9]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[9])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i9.GSR = "ENABLED";
    FD1P3IX PCntBxDP_1476__i2 (.D(n45[2]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i2.GSR = "ENABLED";
    FD1P3IX PCntBxDP_1476__i3 (.D(n45[3]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i3.GSR = "ENABLED";
    FD1P3IX PCntBxDP_1476__i4 (.D(n45[4]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i4.GSR = "ENABLED";
    FD1P3IX PCntBxDP_1476__i5 (.D(n45[5]), .SP(\p_pcnts_memless.PCntBAdvancexS ), 
            .CD(\p_pcnts_memless.PCntAAdvancexS ), .CK(Clk96xC), .Q(PCntBxDP[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam PCntBxDP_1476__i5.GSR = "ENABLED";
    LUT4 i4490_2_lut (.A(\PcntTxSRegxDP[0] [0]), .B(n488[1]), .Z(n555[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i4490_2_lut.init = 16'h2222;
    LUT4 i4598_2_lut (.A(\PcntTxSRegxDP[0] [7]), .B(n488[1]), .Z(n555[7])) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i4598_2_lut.init = 16'heeee;
    LUT4 i3370_3_lut (.A(CfgOutRdyxDP), .B(UartDetBRxDatRdyxSN), .C(UartDetBRxDatRdyxSP), 
         .Z(n5365)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(571[3] 581[10])
    defparam i3370_3_lut.init = 16'hecec;
    FD1S3AX CfgFSMSRegxDP_2__i7 (.D(\CfgFSMSRegxDN[2] [7]), .CK(Clk96xC), 
            .Q(\CfgFSMSRegxDP[2] [7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=26, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(295[3] 305[10])
    defparam CfgFSMSRegxDP_2__i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_175 (.A(CfgFSMSRegxDN_5__7__N_121), .B(CfgUartRxDatxD[0]), 
         .C(n270[4]), .D(n9983), .Z(n4741)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(320[3] 400[12])
    defparam i1_4_lut_adj_175.init = 16'heca0;
    LUT4 i4599_2_lut (.A(\PcntTxSRegxDP[0] [6]), .B(n488[1]), .Z(n555[6])) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i4599_2_lut.init = 16'heeee;
    LUT4 mux_244_i2_3_lut (.A(PCntAxDP[1]), .B(\PcntTxSRegxDP[1] [1]), .C(n488[2]), 
         .Z(\PcntTxSRegxDN[0] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam mux_244_i2_3_lut.init = 16'hcaca;
    LUT4 i4600_2_lut (.A(\PcntTxSRegxDP[0] [5]), .B(n488[1]), .Z(n555[5])) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i4600_2_lut.init = 16'heeee;
    LUT4 i4601_2_lut (.A(\PcntTxSRegxDP[0] [4]), .B(n488[1]), .Z(n555[4])) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i4601_2_lut.init = 16'heeee;
    LUT4 i4602_2_lut (.A(\PcntTxSRegxDP[0] [3]), .B(n488[1]), .Z(n555[3])) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(532[3] 565[12])
    defparam i4602_2_lut.init = 16'heeee;
    PFUMX i7107 (.BLUT(n9276), .ALUT(n9277), .C0(BrdSelectIxD[1]), .Z(n9279));
    PFUMX mux_1394_i2 (.BLUT(n555[1]), .ALUT(AuxDataxD[1]), .C0(n3146), 
          .Z(n3148));
    PFUMX mux_1394_i3 (.BLUT(n555[2]), .ALUT(AuxDataxD[2]), .C0(n3146), 
          .Z(n3149));
    \uart_tx_with_fifo(8)  uart_to_ftdi_inst (.Clk96xC(Clk96xC), .EXP_J303_D_0(EXP_J303_D_0), 
            .GND_net(GND_net), .EXP_J303_D_c_c(EXP_J303_D_c_c), .RAM0_SIO_c_0(RAM0_SIO_c_0), 
            .\UartTxDatxD[6] (\UartTxDatxD[6] ), .\UartTxDatxD[5] (\UartTxDatxD[5] ), 
            .\UartTxDatxD[4] (\UartTxDatxD[4] ), .\UartTxDatxD[3] (\UartTxDatxD[3] ), 
            .\UartTxDatxD[2] (UartTxDatxD[2]), .\UartTxDatxD[1] (\UartTxDatxD[1] ), 
            .\UartTxDatxD[0] (\UartTxDatxD[0] ), .UartTxDatRdyxS(UartTxDatRdyxS), 
            .PllLockxS_N_1(PllLockxS_N_1), .UartBuffFullxS(UartBuffFullxS), 
            .UartBuffEmptyxS(UartBuffEmptyxS), .VCC_net(VCC_net));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(703[22:39])
    \uart_tx_with_fifo(16)  uart_to_brd_inst (.UART_FPGA_TO_SRCB_c(UART_FPGA_TO_SRCB_c), 
            .Clk96xC(Clk96xC), .GND_net(GND_net), .n9951(n9951), .n9952(n9952), 
            .n9953(n9953), .n9954(n9954), .\CfgFSMSRegOutxD[3] (CfgFSMSRegOutxD[3]), 
            .\CfgFSMSRegOutxD[2] (CfgFSMSRegOutxD[2]), .\CfgFSMSRegOutxD[1] (CfgFSMSRegOutxD[1]), 
            .\CfgFSMSRegOutxD[0] (CfgFSMSRegOutxD[0]), .UartToBrdTxDatRdyxS(UartToBrdTxDatRdyxS), 
            .PllLockxS_N_1(PllLockxS_N_1), .VCC_net(VCC_net));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(688[21:38])
    \uart_rx(8)  uart_from_ftdi_inst (.CfgUartRxDatRdyxS(CfgUartRxDatRdyxS), 
            .Clk96xC(Clk96xC), .CfgUartRxDatxD({CfgUartRxDatxD}), .n9981(n9981), 
            .CfgByteCntxDP({CfgByteCntxDP}), .n246(n246), .EXP_J303_D_1_c(EXP_J303_D_1_c));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(730[24:31])
    \uart_rx(16)  uart_from_detb_inst (.Clk96xC(Clk96xC), .UartDetBRxDatxD({UartDetBRxDatxD}), 
            .UartDetBRxDatRdyxSN(UartDetBRxDatRdyxSN), .UartDetBtoFPGASelxD(UartDetBtoFPGASelxD));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(678[24:31])
    spi_rxtx_with_fifo spi_to_rpi_zero (.GND_net(GND_net), .StatexDP({Open_0, 
            \StatexDP[0] }), .MISOxDO_N_875(MISOxDO_N_875), .Clk96xC(Clk96xC), 
            .TxSRegxDN({TxSRegxDN}), .RPI0_SCLK_c(RPI0_SCLK_c), .RPI0_CE_c(RPI0_CE_c), 
            .TxSRegxDN_7__N_838({TxSRegxDN_7__N_838}), .n3903(n3903), .n3905(n3905), 
            .n3913(n3913), .n3926(n3926), .n3932(n3932), .n3936(n3936), 
            .n3940(n3940), .n4117(n4117), .\TxSRegxDP[7] (\TxSRegxDP[7] ), 
            .UartTxDatRdyxS(UartTxDatRdyxS), .RAM0_SIO_c_0(RAM0_SIO_c_0), 
            .\UartTxDatxD[6] (\UartTxDatxD[6] ), .\UartTxDatxD[5] (\UartTxDatxD[5] ), 
            .\UartTxDatxD[4] (\UartTxDatxD[4] ), .\UartTxDatxD[3] (\UartTxDatxD[3] ), 
            .\UartTxDatxD[2] (UartTxDatxD[2]), .\UartTxDatxD[1] (\UartTxDatxD[1] ), 
            .\UartTxDatxD[0] (\UartTxDatxD[0] ), .VCC_net(VCC_net), .PllLockxS_N_1(PllLockxS_N_1));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(718[20:38])
    ram_b ram_b_inst (.BrdSelectIxD({BrdSelectIxD}), .n9119(n9119), .n7963(n7963), 
          .n127(n127), .n9948(n9948), .n9975(n9975), .\DetBSelectxSN[1] (DetBSelectxSN[1]), 
          .\DetBSelectxSN[8] (DetBSelectxSN[8]), .\CfgFSMSRegxDP[4][1] (\CfgFSMSRegxDP[4] [1]), 
          .\CfgFSMSRegxDP[4][0] (\CfgFSMSRegxDP[4] [0]), .\CfgFSMSRegxDP[3] ({\CfgFSMSRegxDP[3] }), 
          .GND_net(GND_net), .\CfgFSMSRegxDP[1][1] (\CfgFSMSRegxDP[1] [1]), 
          .\CfgFSMSRegxDP[1][0] (\CfgFSMSRegxDP[1] [0]), .\CfgFSMSRegxDP[0] ({\CfgFSMSRegxDP[0] }), 
          .PCntBxDP({PCntBxDP}), .Clk96xC(Clk96xC), .VCC_net(VCC_net), 
          .CfgRamBWrEnxS(CfgRamBWrEnxS), .PllLockxS_N_1(PllLockxS_N_1), 
          .CfgRamBOutxD({CfgRamBOutxD}), .RamBEndxS(QB[17]), .SRCB_STEP_c_11(SRCB_STEP_c_11), 
          .DETB_TRIGGER_c(DETB_TRIGGER_c), .DETB_END_CYC_0(DETB_END_CYC_0), 
          .\CfgFSMSRegxDP[2] ({\CfgFSMSRegxDP[2] }), .PCntTxTrgxS(QB[8]), 
          .AuxTxTrgxS(QB[7]), .UartBRxEnxS(QB[6]), .SrcBSelectxD(QB[5]), 
          .n9987(n9987), .n9974(n9974), .\DetBSelectxSN[20] (DetBSelectxSN[20]), 
          .n9970(n9970), .\SrcBSelectxSN[0] (SrcBSelectxSN[0]), .\DetBSelectxSN[22] (DetBSelectxSN[22]), 
          .n7917(n7917), .n9949(n9949), .n9113(n9113), .n7949(n7949), 
          .n9958(n9958), .\DetBSelectxSN[2] (DetBSelectxSN[2]), .\DetBSelectxSN[12] (DetBSelectxSN[12]), 
          .\DetBSelectxSN[14] (DetBSelectxSN[14]), .\UartDetBtoFPGAxDP[24] (UartDetBtoFPGAxDP[24]), 
          .n8806(n8806)) /* synthesis NGD_DRC_MASK=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    ram_a ram_a_inst (.\CfgFSMSRegxDP[3][0] (\CfgFSMSRegxDP[3] [0]), .\CfgFSMSRegxDP[2] ({\CfgFSMSRegxDP[2] }), 
          .GND_net(GND_net), .\CfgFSMSRegxDP[1][1] (\CfgFSMSRegxDP[1] [1]), 
          .\CfgFSMSRegxDP[1][0] (\CfgFSMSRegxDP[1] [0]), .\CfgFSMSRegxDP[0] ({\CfgFSMSRegxDP[0] }), 
          .PCntAxDP({PCntAxDP}), .Clk96xC(Clk96xC), .VCC_net(VCC_net), 
          .CfgRamAWrEnxS(CfgRamAWrEnxS), .PllLockxS_N_1(PllLockxS_N_1), 
          .CfgRamAOutxD({CfgRamAOutxD}), .DETB_STATUS_SELECT_0(DETB_STATUS_SELECT_0)) /* synthesis NGD_DRC_MASK=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(763[15:20])
    ext_fifo ext_fifo_inst (.Clk96xC(Clk96xC), .n726(n726), .n3000(n3000), 
            .UartBuffFullxS(UartBuffFullxS), .UartTxDatRdyxS(UartTxDatRdyxS), 
            .n7(n7), .n8(n8), .n3003(n3003), .\SpiOutDatxD[1] (\SpiOutDatxD[1] ), 
            .GND_net(GND_net), .\SpiStatexDP[0] (\SpiStatexDP[0] ), .RAM0_CEN_c(RAM0_CEN_c), 
            .RAM0_SCLK_c(RAM0_SCLK_c), .\UartTxDatxD[0] (\UartTxDatxD[0] ), 
            .SpiSRegxDN({SpiSRegxDN}), .Clk96xC_enable_267(Clk96xC_enable_267), 
            .Clk96xC_enable_238(Clk96xC_enable_238), .EXP_J303_D_c_3(EXP_J303_D_c_3), 
            .n9162(n9162), .n734(n734), .n9946(n9946), .UartBuffEmptyxS(UartBuffEmptyxS), 
            .n10539(n10539), .\BitCntxDP[0] (\BitCntxDP[0] ), .VCC_net(VCC_net), 
            .n9433(n9433), .RAM0_SIO_out_1(RAM0_SIO_out_1), .\SpiOutDatxD[0] (\SpiOutDatxD[0] ), 
            .\UartTxDatxD[2] (UartTxDatxD[2]), .\SpiOutDatxD[3] (\SpiOutDatxD[3] ), 
            .\SpiOutDatxD[5] (\SpiOutDatxD[5] ), .\SpiOutDatxD[4] (\SpiOutDatxD[4] ), 
            .RAM0_SIO_c_0(RAM0_SIO_c_0), .\UartTxDatxD[6] (\UartTxDatxD[6] ), 
            .\UartTxDatxD[5] (\UartTxDatxD[5] ), .\UartTxDatxD[4] (\UartTxDatxD[4] ), 
            .\UartTxDatxD[3] (\UartTxDatxD[3] ), .\UartTxDatxD[1] (\UartTxDatxD[1] ), 
            .\SpiOutDatxD[7] (\SpiOutDatxD[7] ), .n2996(n2996), .ParDatfromMuxxD({ParDatfromMuxxD}), 
            .ParDatfromMuxRdyxS(ParDatfromMuxRdyxS), .PllLockxS_N_1(PllLockxS_N_1));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(653[18:26])
    aux_adc_rx aux_adc_rx_inst (.n1892(n1876[0]), .n1884(n1876[8]), .n1885(n1876[7]), 
            .AuxDataxD({AuxDataxD}), .n1883(n1876[9]), .n10540(n10540), 
            .Clk96xC(Clk96xC), .Clk96xC_enable_53(Clk96xC_enable_53), .DETB_TRIGGER_c(DETB_TRIGGER_c), 
            .AuxTxTrgxS(QB[7]), .TRG_c_0(TRG_c_0), .n5767(n5767), .n9993(n9993), 
            .ADS_SDO_c_1(ADS_SDO_c_1), .ADS_SDO_c_0(ADS_SDO_c_0), .n6823(n6823), 
            .n82(n82), .n10001(n10001), .n8673(n8673), .AuxDataAckxS(AuxDataAckxS), 
            .n4084(n4084), .GND_net(GND_net), .AUXIO_c_1(AUXIO_c_1), .AUXIO_c_0(AUXIO_c_0), 
            .TRG_c_3(TRG_c_3), .TRG_c_2(TRG_c_2), .TRG_c_1(TRG_c_1), .n9944(n9944), 
            .ADS_CSN_c(ADS_CSN_c));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(743[20:30])
    
endmodule
//
// Verilog Description of module \uart_tx_with_fifo(8) 
//

module \uart_tx_with_fifo(8)  (Clk96xC, EXP_J303_D_0, GND_net, EXP_J303_D_c_c, 
            RAM0_SIO_c_0, \UartTxDatxD[6] , \UartTxDatxD[5] , \UartTxDatxD[4] , 
            \UartTxDatxD[3] , \UartTxDatxD[2] , \UartTxDatxD[1] , \UartTxDatxD[0] , 
            UartTxDatRdyxS, PllLockxS_N_1, UartBuffFullxS, UartBuffEmptyxS, 
            VCC_net);
    input Clk96xC;
    output EXP_J303_D_0;
    input GND_net;
    input EXP_J303_D_c_c;
    input RAM0_SIO_c_0;
    input \UartTxDatxD[6] ;
    input \UartTxDatxD[5] ;
    input \UartTxDatxD[4] ;
    input \UartTxDatxD[3] ;
    input \UartTxDatxD[2] ;
    input \UartTxDatxD[1] ;
    input \UartTxDatxD[0] ;
    input UartTxDatRdyxS;
    input PllLockxS_N_1;
    output UartBuffFullxS;
    output UartBuffEmptyxS;
    input VCC_net;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    wire [7:0]n1456;
    
    wire n10003, n9972, n4053;
    wire [2:0]CTSnSRegxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(40[9:20])
    
    wire SerDatxDN, n9184, n4, n9023;
    wire [3:0]BitCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(38[9:18])
    
    wire n9966;
    wire [3:0]n21;
    wire [2:0]ClkCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(37[9:18])
    wire [2:0]n17;
    
    wire n5, n6, n4055, Clk96xC_enable_216, Clk96xC_enable_285, Clk96xC_enable_126;
    wire [8:0]SRegxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(34[9:16])
    
    wire FIFOEmptyxS, n1473, FIFORdEnxS;
    wire [7:0]FIFODataxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(33[9:19])
    wire [8:0]SRegxDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(34[18:25])
    
    LUT4 i2195_4_lut (.A(n1456[0]), .B(n1456[4]), .C(n10003), .D(n9972), 
         .Z(n4053)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i2195_4_lut.init = 16'heca0;
    FD1S3AX CTSnSRegxDP_i0 (.D(CTSnSRegxDP[1]), .CK(Clk96xC), .Q(CTSnSRegxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam CTSnSRegxDP_i0.GSR = "ENABLED";
    FD1S3AX SerDatxDP_45 (.D(SerDatxDN), .CK(Clk96xC), .Q(EXP_J303_D_0)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SerDatxDP_45.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(n1456[4]), .B(n9184), .C(n9972), .D(n4), .Z(n9023)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i12_4_lut.init = 16'h3a0a;
    LUT4 i6345_3_lut_4_lut (.A(BitCntxDP[1]), .B(n9966), .C(BitCntxDP[2]), 
         .D(BitCntxDP[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam i6345_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7020_3_lut (.A(BitCntxDP[2]), .B(BitCntxDP[1]), .C(BitCntxDP[0]), 
         .Z(n9184)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7020_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut (.A(BitCntxDP[3]), .B(n1456[3]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i6367_3_lut (.A(ClkCntxDP[2]), .B(ClkCntxDP[1]), .C(ClkCntxDP[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam i6367_3_lut.init = 16'h6a6a;
    LUT4 i2197_4_lut (.A(n1456[3]), .B(n1456[2]), .C(n5), .D(n6), .Z(n4055)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i2197_4_lut.init = 16'heeec;
    LUT4 i1_2_lut_adj_99 (.A(BitCntxDP[2]), .B(BitCntxDP[1]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(110[9:22])
    defparam i1_2_lut_adj_99.init = 16'heeee;
    LUT4 i2_3_lut (.A(BitCntxDP[0]), .B(BitCntxDP[3]), .C(n9972), .Z(n6)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(110[9:22])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 i2_3_lut_rep_100 (.A(ClkCntxDP[0]), .B(ClkCntxDP[2]), .C(ClkCntxDP[1]), 
         .Z(n9972)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i2_3_lut_rep_100.init = 16'h8080;
    LUT4 i6325_2_lut_rep_94_4_lut (.A(ClkCntxDP[0]), .B(ClkCntxDP[2]), .C(ClkCntxDP[1]), 
         .D(BitCntxDP[0]), .Z(n9966)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i6325_2_lut_rep_94_4_lut.init = 16'h8000;
    LUT4 i6323_2_lut_4_lut (.A(ClkCntxDP[0]), .B(ClkCntxDP[2]), .C(ClkCntxDP[1]), 
         .D(BitCntxDP[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i6323_2_lut_4_lut.init = 16'h7f80;
    FD1S3IX ClkCntxDP_1483__i1 (.D(n17[1]), .CK(Clk96xC), .CD(Clk96xC_enable_216), 
            .Q(ClkCntxDP[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam ClkCntxDP_1483__i1.GSR = "ENABLED";
    FD1S3AY StatexDP_FSM_i1 (.D(n4053), .CK(Clk96xC), .Q(n1456[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i1.GSR = "ENABLED";
    LUT4 reduce_nor_1505_i1_2_lut (.A(n1456[2]), .B(n1456[3]), .Z(Clk96xC_enable_285)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_nor_1505_i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_100 (.A(n1456[3]), .B(n1456[2]), .Z(Clk96xC_enable_126)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_100.init = 16'h4444;
    FD1P3IX BitCntxDP_1485__i1 (.D(n21[1]), .SP(Clk96xC_enable_285), .CD(Clk96xC_enable_126), 
            .CK(Clk96xC), .Q(BitCntxDP[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam BitCntxDP_1485__i1.GSR = "ENABLED";
    LUT4 i4519_2_lut (.A(SRegxDP[0]), .B(n1456[3]), .Z(SerDatxDN)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i4519_2_lut.init = 16'hbbbb;
    FD1P3IX BitCntxDP_1485__i2 (.D(n21[2]), .SP(Clk96xC_enable_285), .CD(Clk96xC_enable_126), 
            .CK(Clk96xC), .Q(BitCntxDP[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam BitCntxDP_1485__i2.GSR = "ENABLED";
    FD1P3IX BitCntxDP_1485__i3 (.D(n21[3]), .SP(Clk96xC_enable_285), .CD(Clk96xC_enable_126), 
            .CK(Clk96xC), .Q(BitCntxDP[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam BitCntxDP_1485__i3.GSR = "ENABLED";
    LUT4 i4475_2_lut_rep_131 (.A(FIFOEmptyxS), .B(CTSnSRegxDP[0]), .Z(n10003)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4475_2_lut_rep_131.init = 16'heeee;
    LUT4 i635_2_lut_3_lut (.A(FIFOEmptyxS), .B(CTSnSRegxDP[0]), .C(n1456[0]), 
         .Z(n1473)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i635_2_lut_3_lut.init = 16'h1010;
    FD1S3AX StatexDP_FSM_i5 (.D(n9023), .CK(Clk96xC), .Q(n1456[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i5.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1483__i2 (.D(n17[2]), .CK(Clk96xC), .CD(Clk96xC_enable_216), 
            .Q(ClkCntxDP[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam ClkCntxDP_1483__i2.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i4 (.D(n4055), .CK(Clk96xC), .Q(n1456[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i4.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i3 (.D(FIFORdEnxS), .CK(Clk96xC), .Q(n1456[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i3.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i2 (.D(n1473), .CK(Clk96xC), .Q(FIFORdEnxS));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i2.GSR = "ENABLED";
    LUT4 i6338_2_lut_3_lut_4_lut (.A(n9972), .B(BitCntxDP[0]), .C(BitCntxDP[2]), 
         .D(BitCntxDP[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam i6338_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i6358_1_lut (.A(ClkCntxDP[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam i6358_1_lut.init = 16'h5555;
    FD1P3IX SRegxDP_i8 (.D(FIFODataxD[7]), .SP(Clk96xC_enable_126), .CD(GND_net), 
            .CK(Clk96xC), .Q(SRegxDP[8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i8.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1483__i0 (.D(n17[0]), .CK(Clk96xC), .CD(Clk96xC_enable_216), 
            .Q(ClkCntxDP[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam ClkCntxDP_1483__i0.GSR = "ENABLED";
    FD1P3IX SRegxDP_i0 (.D(SRegxDP[1]), .SP(Clk96xC_enable_216), .CD(Clk96xC_enable_126), 
            .CK(Clk96xC), .Q(SRegxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i0.GSR = "ENABLED";
    FD1S3AX CTSnSRegxDP_i2 (.D(EXP_J303_D_c_c), .CK(Clk96xC), .Q(CTSnSRegxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam CTSnSRegxDP_i2.GSR = "ENABLED";
    LUT4 mux_664_i8_3_lut (.A(FIFODataxD[6]), .B(SRegxDP[8]), .C(n1456[3]), 
         .Z(SRegxDN[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_664_i8_3_lut.init = 16'hcaca;
    LUT4 mux_664_i7_3_lut (.A(FIFODataxD[5]), .B(SRegxDP[7]), .C(n1456[3]), 
         .Z(SRegxDN[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_664_i7_3_lut.init = 16'hcaca;
    LUT4 mux_664_i6_3_lut (.A(FIFODataxD[4]), .B(SRegxDP[6]), .C(n1456[3]), 
         .Z(SRegxDN[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_664_i6_3_lut.init = 16'hcaca;
    LUT4 mux_664_i5_3_lut (.A(FIFODataxD[3]), .B(SRegxDP[5]), .C(n1456[3]), 
         .Z(SRegxDN[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_664_i5_3_lut.init = 16'hcaca;
    FD1S3AX CTSnSRegxDP_i1 (.D(CTSnSRegxDP[2]), .CK(Clk96xC), .Q(CTSnSRegxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam CTSnSRegxDP_i1.GSR = "ENABLED";
    LUT4 mux_664_i4_3_lut (.A(FIFODataxD[2]), .B(SRegxDP[4]), .C(n1456[3]), 
         .Z(SRegxDN[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_664_i4_3_lut.init = 16'hcaca;
    FD1P3AX SRegxDP_i7 (.D(SRegxDN[7]), .SP(Clk96xC_enable_216), .CK(Clk96xC), 
            .Q(SRegxDP[7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i7.GSR = "ENABLED";
    FD1P3AX SRegxDP_i6 (.D(SRegxDN[6]), .SP(Clk96xC_enable_216), .CK(Clk96xC), 
            .Q(SRegxDP[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i6.GSR = "ENABLED";
    FD1P3AX SRegxDP_i5 (.D(SRegxDN[5]), .SP(Clk96xC_enable_216), .CK(Clk96xC), 
            .Q(SRegxDP[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i5.GSR = "ENABLED";
    FD1P3AX SRegxDP_i4 (.D(SRegxDN[4]), .SP(Clk96xC_enable_216), .CK(Clk96xC), 
            .Q(SRegxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i4.GSR = "ENABLED";
    FD1P3AX SRegxDP_i3 (.D(SRegxDN[3]), .SP(Clk96xC_enable_216), .CK(Clk96xC), 
            .Q(SRegxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i3.GSR = "ENABLED";
    FD1P3AX SRegxDP_i2 (.D(SRegxDN[2]), .SP(Clk96xC_enable_216), .CK(Clk96xC), 
            .Q(SRegxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i2.GSR = "ENABLED";
    FD1P3AX SRegxDP_i1 (.D(SRegxDN[1]), .SP(Clk96xC_enable_216), .CK(Clk96xC), 
            .Q(SRegxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=22, LSE_RCOL=39, LSE_LLINE=703, LSE_RLINE=703 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i1.GSR = "ENABLED";
    LUT4 mux_664_i3_3_lut (.A(FIFODataxD[1]), .B(SRegxDP[3]), .C(n1456[3]), 
         .Z(SRegxDN[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_664_i3_3_lut.init = 16'hcaca;
    LUT4 mux_664_i2_3_lut (.A(FIFODataxD[0]), .B(SRegxDP[2]), .C(n1456[3]), 
         .Z(SRegxDN[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_664_i2_3_lut.init = 16'hcaca;
    LUT4 i6331_2_lut_3_lut (.A(n9972), .B(BitCntxDP[0]), .C(BitCntxDP[1]), 
         .Z(n21[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam i6331_2_lut_3_lut.init = 16'h7878;
    LUT4 i1294_3_lut (.A(n1456[2]), .B(n9972), .C(n1456[3]), .Z(Clk96xC_enable_216)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i1294_3_lut.init = 16'hcaca;
    LUT4 i6360_2_lut (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam i6360_2_lut.init = 16'h6666;
    FD1P3IX BitCntxDP_1485__i0 (.D(n21[0]), .SP(Clk96xC_enable_285), .CD(Clk96xC_enable_126), 
            .CK(Clk96xC), .Q(BitCntxDP[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam BitCntxDP_1485__i0.GSR = "ENABLED";
    uart_fifo uart_fifo_inst (.RAM0_SIO_c_0(RAM0_SIO_c_0), .\UartTxDatxD[6] (\UartTxDatxD[6] ), 
            .\UartTxDatxD[5] (\UartTxDatxD[5] ), .\UartTxDatxD[4] (\UartTxDatxD[4] ), 
            .\UartTxDatxD[3] (\UartTxDatxD[3] ), .\UartTxDatxD[2] (\UartTxDatxD[2] ), 
            .\UartTxDatxD[1] (\UartTxDatxD[1] ), .\UartTxDatxD[0] (\UartTxDatxD[0] ), 
            .Clk96xC(Clk96xC), .UartTxDatRdyxS(UartTxDatRdyxS), .FIFORdEnxS(FIFORdEnxS), 
            .PllLockxS_N_1(PllLockxS_N_1), .FIFODataxD({FIFODataxD}), .FIFOEmptyxS(FIFOEmptyxS), 
            .UartBuffFullxS(UartBuffFullxS), .UartBuffEmptyxS(UartBuffEmptyxS), 
            .VCC_net(VCC_net), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(124[19:28])
    
endmodule
//
// Verilog Description of module uart_fifo
//

module uart_fifo (RAM0_SIO_c_0, \UartTxDatxD[6] , \UartTxDatxD[5] , \UartTxDatxD[4] , 
            \UartTxDatxD[3] , \UartTxDatxD[2] , \UartTxDatxD[1] , \UartTxDatxD[0] , 
            Clk96xC, UartTxDatRdyxS, FIFORdEnxS, PllLockxS_N_1, FIFODataxD, 
            FIFOEmptyxS, UartBuffFullxS, UartBuffEmptyxS, VCC_net, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input RAM0_SIO_c_0;
    input \UartTxDatxD[6] ;
    input \UartTxDatxD[5] ;
    input \UartTxDatxD[4] ;
    input \UartTxDatxD[3] ;
    input \UartTxDatxD[2] ;
    input \UartTxDatxD[1] ;
    input \UartTxDatxD[0] ;
    input Clk96xC;
    input UartTxDatRdyxS;
    input FIFORdEnxS;
    input PllLockxS_N_1;
    output [7:0]FIFODataxD;
    output FIFOEmptyxS;
    output UartBuffFullxS;
    output UartBuffEmptyxS;
    input VCC_net;
    input GND_net;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    FIFO8KB uart_fifo_0_0 (.DI0(\UartTxDatxD[0] ), .DI1(\UartTxDatxD[1] ), 
            .DI2(\UartTxDatxD[2] ), .DI3(\UartTxDatxD[3] ), .DI4(\UartTxDatxD[4] ), 
            .DI5(\UartTxDatxD[5] ), .DI6(\UartTxDatxD[6] ), .DI7(RAM0_SIO_c_0), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .FULLI(UartBuffFullxS), .EMPTYI(FIFOEmptyxS), 
            .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), 
            .WE(UartTxDatRdyxS), .RE(FIFORdEnxS), .ORE(FIFORdEnxS), .CLKW(Clk96xC), 
            .CLKR(Clk96xC), .RST(PllLockxS_N_1), .RPRST(PllLockxS_N_1), 
            .DO0(FIFODataxD[0]), .DO1(FIFODataxD[1]), .DO2(FIFODataxD[2]), 
            .DO3(FIFODataxD[3]), .DO4(FIFODataxD[4]), .DO5(FIFODataxD[5]), 
            .DO6(FIFODataxD[6]), .DO7(FIFODataxD[7]), .EF(FIFOEmptyxS), 
            .AEF(UartBuffEmptyxS), .FF(UartBuffFullxS)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=43, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=124, LSE_RLINE=124 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(124[19:28])
    defparam uart_fifo_0_0.DATA_WIDTH_W = 9;
    defparam uart_fifo_0_0.DATA_WIDTH_R = 9;
    defparam uart_fifo_0_0.REGMODE = "NOREG";
    defparam uart_fifo_0_0.RESETMODE = "ASYNC";
    defparam uart_fifo_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam uart_fifo_0_0.CSDECODE_W = "0b11";
    defparam uart_fifo_0_0.CSDECODE_R = "0b11";
    defparam uart_fifo_0_0.AEPOINTER = "0b01100000000000";
    defparam uart_fifo_0_0.AEPOINTER1 = "0b01100000001000";
    defparam uart_fifo_0_0.AFPOINTER = "0b01110000000000";
    defparam uart_fifo_0_0.AFPOINTER1 = "0b01101111111000";
    defparam uart_fifo_0_0.FULLPOINTER = "0b10000000000000";
    defparam uart_fifo_0_0.FULLPOINTER1 = "0b01111111111000";
    defparam uart_fifo_0_0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module \uart_tx_with_fifo(16) 
//

module \uart_tx_with_fifo(16)  (UART_FPGA_TO_SRCB_c, Clk96xC, GND_net, 
            n9951, n9952, n9953, n9954, \CfgFSMSRegOutxD[3] , \CfgFSMSRegOutxD[2] , 
            \CfgFSMSRegOutxD[1] , \CfgFSMSRegOutxD[0] , UartToBrdTxDatRdyxS, 
            PllLockxS_N_1, VCC_net);
    output UART_FPGA_TO_SRCB_c;
    input Clk96xC;
    input GND_net;
    input n9951;
    input n9952;
    input n9953;
    input n9954;
    input \CfgFSMSRegOutxD[3] ;
    input \CfgFSMSRegOutxD[2] ;
    input \CfgFSMSRegOutxD[1] ;
    input \CfgFSMSRegOutxD[0] ;
    input UartToBrdTxDatRdyxS;
    input PllLockxS_N_1;
    input VCC_net;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    wire SerDatxDN;
    wire [3:0]BitCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(38[9:18])
    
    wire n9961;
    wire [3:0]n21;
    
    wire Clk96xC_enable_201, Clk96xC_enable_125;
    wire [3:0]ClkCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(37[9:18])
    
    wire Clk96xC_enable_286;
    wire [3:0]n21_adj_1075;
    wire [7:0]n1319;
    
    wire n9174, SRegxDN_8__N_736, n8, n9019, n4047, n5, n6, n4049, 
        FIFOEmptyxS, n1336;
    wire [8:0]SRegxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(34[9:16])
    
    wire FIFORdEnxS;
    wire [7:0]FIFODataxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(33[9:19])
    wire [8:0]SRegxDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(34[18:25])
    
    FD1S3AX SerDatxDP_45 (.D(SerDatxDN), .CK(Clk96xC), .Q(UART_FPGA_TO_SRCB_c)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SerDatxDP_45.GSR = "ENABLED";
    LUT4 i6395_3_lut_4_lut (.A(BitCntxDP[1]), .B(n9961), .C(BitCntxDP[2]), 
         .D(BitCntxDP[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam i6395_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX BitCntxDP_1482__i3 (.D(n21[3]), .SP(Clk96xC_enable_201), .CD(Clk96xC_enable_125), 
            .CK(Clk96xC), .Q(BitCntxDP[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam BitCntxDP_1482__i3.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1480__i2 (.D(n21_adj_1075[2]), .CK(Clk96xC), .CD(Clk96xC_enable_286), 
            .Q(ClkCntxDP[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam ClkCntxDP_1480__i2.GSR = "ENABLED";
    FD1S3IX ClkCntxDP_1480__i1 (.D(n21_adj_1075[1]), .CK(Clk96xC), .CD(Clk96xC_enable_286), 
            .Q(ClkCntxDP[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam ClkCntxDP_1480__i1.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(n1319[4]), .B(n9174), .C(SRegxDN_8__N_736), .D(n8), 
         .Z(n9019)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i12_4_lut.init = 16'h3a0a;
    LUT4 i7010_2_lut (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .Z(n9174)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7010_2_lut.init = 16'heeee;
    LUT4 i3_3_lut (.A(BitCntxDP[2]), .B(BitCntxDP[3]), .C(n1319[3]), .Z(n8)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i3_3_lut.init = 16'h4040;
    FD1S3AY StatexDP_FSM_i1 (.D(n4047), .CK(Clk96xC), .Q(n1319[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i1.GSR = "ENABLED";
    LUT4 i6417_2_lut_3_lut (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .C(ClkCntxDP[2]), 
         .Z(n21_adj_1075[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam i6417_2_lut_3_lut.init = 16'h7878;
    LUT4 i6424_3_lut_4_lut (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .C(ClkCntxDP[2]), 
         .D(ClkCntxDP[3]), .Z(n21_adj_1075[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam i6424_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2191_4_lut (.A(n1319[3]), .B(n1319[2]), .C(n5), .D(n6), .Z(n4049)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i2191_4_lut.init = 16'heeec;
    LUT4 i1_2_lut (.A(BitCntxDP[2]), .B(BitCntxDP[1]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(110[9:22])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(BitCntxDP[0]), .B(BitCntxDP[3]), .C(SRegxDN_8__N_736), 
         .Z(n6)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(110[9:22])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 i570_2_lut (.A(FIFOEmptyxS), .B(n1319[0]), .Z(n1336)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i570_2_lut.init = 16'h4444;
    LUT4 i4514_2_lut (.A(SRegxDP[0]), .B(n1319[3]), .Z(SerDatxDN)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i4514_2_lut.init = 16'hbbbb;
    FD1S3IX ClkCntxDP_1480__i3 (.D(n21_adj_1075[3]), .CK(Clk96xC), .CD(Clk96xC_enable_286), 
            .Q(ClkCntxDP[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam ClkCntxDP_1480__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_98 (.A(n1319[2]), .B(n1319[3]), .Z(Clk96xC_enable_201)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_98.init = 16'heeee;
    LUT4 i3418_2_lut (.A(n1319[2]), .B(n1319[3]), .Z(Clk96xC_enable_125)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam i3418_2_lut.init = 16'h2222;
    LUT4 i3_4_lut (.A(ClkCntxDP[1]), .B(ClkCntxDP[2]), .C(ClkCntxDP[3]), 
         .D(ClkCntxDP[0]), .Z(SRegxDN_8__N_736)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i3_4_lut.init = 16'h8000;
    FD1P3IX BitCntxDP_1482__i1 (.D(n21[1]), .SP(Clk96xC_enable_201), .CD(Clk96xC_enable_125), 
            .CK(Clk96xC), .Q(BitCntxDP[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam BitCntxDP_1482__i1.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i5 (.D(n9019), .CK(Clk96xC), .Q(n1319[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i5.GSR = "ENABLED";
    FD1P3IX BitCntxDP_1482__i2 (.D(n21[2]), .SP(Clk96xC_enable_201), .CD(Clk96xC_enable_125), 
            .CK(Clk96xC), .Q(BitCntxDP[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam BitCntxDP_1482__i2.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i4 (.D(n4049), .CK(Clk96xC), .Q(n1319[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i4.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i3 (.D(FIFORdEnxS), .CK(Clk96xC), .Q(n1319[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i3.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i2 (.D(n1336), .CK(Clk96xC), .Q(FIFORdEnxS));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam StatexDP_FSM_i2.GSR = "ENABLED";
    FD1P3IX SRegxDP_i8 (.D(FIFODataxD[7]), .SP(Clk96xC_enable_125), .CD(GND_net), 
            .CK(Clk96xC), .Q(SRegxDP[8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i8.GSR = "ENABLED";
    LUT4 i6408_1_lut (.A(ClkCntxDP[0]), .Z(n21_adj_1075[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam i6408_1_lut.init = 16'h5555;
    FD1S3IX ClkCntxDP_1480__i0 (.D(n21_adj_1075[0]), .CK(Clk96xC), .CD(Clk96xC_enable_286), 
            .Q(ClkCntxDP[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam ClkCntxDP_1480__i0.GSR = "ENABLED";
    LUT4 i6375_2_lut_rep_89 (.A(SRegxDN_8__N_736), .B(BitCntxDP[0]), .Z(n9961)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam i6375_2_lut_rep_89.init = 16'h8888;
    FD1P3IX BitCntxDP_1482__i0 (.D(n21[0]), .SP(Clk96xC_enable_201), .CD(Clk96xC_enable_125), 
            .CK(Clk96xC), .Q(BitCntxDP[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam BitCntxDP_1482__i0.GSR = "ENABLED";
    LUT4 i6381_2_lut_3_lut (.A(SRegxDN_8__N_736), .B(BitCntxDP[0]), .C(BitCntxDP[1]), 
         .Z(n21[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam i6381_2_lut_3_lut.init = 16'h7878;
    LUT4 i6388_2_lut_3_lut_4_lut (.A(SRegxDN_8__N_736), .B(BitCntxDP[0]), 
         .C(BitCntxDP[2]), .D(BitCntxDP[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam i6388_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i6373_2_lut (.A(SRegxDN_8__N_736), .B(BitCntxDP[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(108[19:28])
    defparam i6373_2_lut.init = 16'h6666;
    FD1P3AX SRegxDP_i7 (.D(SRegxDN[7]), .SP(Clk96xC_enable_286), .CK(Clk96xC), 
            .Q(SRegxDP[7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i7.GSR = "ENABLED";
    FD1P3AX SRegxDP_i6 (.D(SRegxDN[6]), .SP(Clk96xC_enable_286), .CK(Clk96xC), 
            .Q(SRegxDP[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i6.GSR = "ENABLED";
    FD1P3AX SRegxDP_i5 (.D(SRegxDN[5]), .SP(Clk96xC_enable_286), .CK(Clk96xC), 
            .Q(SRegxDP[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i5.GSR = "ENABLED";
    FD1P3AX SRegxDP_i4 (.D(SRegxDN[4]), .SP(Clk96xC_enable_286), .CK(Clk96xC), 
            .Q(SRegxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i4.GSR = "ENABLED";
    FD1P3AX SRegxDP_i3 (.D(SRegxDN[3]), .SP(Clk96xC_enable_286), .CK(Clk96xC), 
            .Q(SRegxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i3.GSR = "ENABLED";
    FD1P3AX SRegxDP_i2 (.D(SRegxDN[2]), .SP(Clk96xC_enable_286), .CK(Clk96xC), 
            .Q(SRegxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i2.GSR = "ENABLED";
    FD1P3AX SRegxDP_i1 (.D(SRegxDN[1]), .SP(Clk96xC_enable_286), .CK(Clk96xC), 
            .Q(SRegxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i1.GSR = "ENABLED";
    LUT4 mux_599_i8_3_lut (.A(FIFODataxD[6]), .B(SRegxDP[8]), .C(n1319[3]), 
         .Z(SRegxDN[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_599_i8_3_lut.init = 16'hcaca;
    LUT4 mux_599_i7_3_lut (.A(FIFODataxD[5]), .B(SRegxDP[7]), .C(n1319[3]), 
         .Z(SRegxDN[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_599_i7_3_lut.init = 16'hcaca;
    LUT4 mux_599_i6_3_lut (.A(FIFODataxD[4]), .B(SRegxDP[6]), .C(n1319[3]), 
         .Z(SRegxDN[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_599_i6_3_lut.init = 16'hcaca;
    LUT4 mux_599_i5_3_lut (.A(FIFODataxD[3]), .B(SRegxDP[5]), .C(n1319[3]), 
         .Z(SRegxDN[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_599_i5_3_lut.init = 16'hcaca;
    LUT4 mux_599_i4_3_lut (.A(FIFODataxD[2]), .B(SRegxDP[4]), .C(n1319[3]), 
         .Z(SRegxDN[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_599_i4_3_lut.init = 16'hcaca;
    LUT4 mux_599_i3_3_lut (.A(FIFODataxD[1]), .B(SRegxDP[3]), .C(n1319[3]), 
         .Z(SRegxDN[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_599_i3_3_lut.init = 16'hcaca;
    LUT4 mux_599_i2_3_lut (.A(FIFODataxD[0]), .B(SRegxDP[2]), .C(n1319[3]), 
         .Z(SRegxDN[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam mux_599_i2_3_lut.init = 16'hcaca;
    LUT4 i1292_3_lut (.A(n1319[2]), .B(SRegxDN_8__N_736), .C(n1319[3]), 
         .Z(Clk96xC_enable_286)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i1292_3_lut.init = 16'hcaca;
    LUT4 i6410_2_lut (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .Z(n21_adj_1075[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(86[16:25])
    defparam i6410_2_lut.init = 16'h6666;
    FD1P3IX SRegxDP_i0 (.D(SRegxDP[1]), .SP(Clk96xC_enable_286), .CD(Clk96xC_enable_125), 
            .CK(Clk96xC), .Q(SRegxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=21, LSE_RCOL=38, LSE_LLINE=688, LSE_RLINE=688 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(63[3] 77[10])
    defparam SRegxDP_i0.GSR = "ENABLED";
    LUT4 i2189_4_lut (.A(n1319[0]), .B(n1319[4]), .C(FIFOEmptyxS), .D(SRegxDN_8__N_736), 
         .Z(n4047)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(91[3] 120[12])
    defparam i2189_4_lut.init = 16'heca0;
    uart_fifo_U0 uart_fifo_inst (.n9951(n9951), .n9952(n9952), .n9953(n9953), 
            .n9954(n9954), .\CfgFSMSRegOutxD[3] (\CfgFSMSRegOutxD[3] ), 
            .\CfgFSMSRegOutxD[2] (\CfgFSMSRegOutxD[2] ), .\CfgFSMSRegOutxD[1] (\CfgFSMSRegOutxD[1] ), 
            .\CfgFSMSRegOutxD[0] (\CfgFSMSRegOutxD[0] ), .Clk96xC(Clk96xC), 
            .UartToBrdTxDatRdyxS(UartToBrdTxDatRdyxS), .FIFORdEnxS(FIFORdEnxS), 
            .PllLockxS_N_1(PllLockxS_N_1), .FIFODataxD({FIFODataxD}), .FIFOEmptyxS(FIFOEmptyxS), 
            .GND_net(GND_net), .VCC_net(VCC_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(124[19:28])
    
endmodule
//
// Verilog Description of module uart_fifo_U0
//

module uart_fifo_U0 (n9951, n9952, n9953, n9954, \CfgFSMSRegOutxD[3] , 
            \CfgFSMSRegOutxD[2] , \CfgFSMSRegOutxD[1] , \CfgFSMSRegOutxD[0] , 
            Clk96xC, UartToBrdTxDatRdyxS, FIFORdEnxS, PllLockxS_N_1, 
            FIFODataxD, FIFOEmptyxS, GND_net, VCC_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input n9951;
    input n9952;
    input n9953;
    input n9954;
    input \CfgFSMSRegOutxD[3] ;
    input \CfgFSMSRegOutxD[2] ;
    input \CfgFSMSRegOutxD[1] ;
    input \CfgFSMSRegOutxD[0] ;
    input Clk96xC;
    input UartToBrdTxDatRdyxS;
    input FIFORdEnxS;
    input PllLockxS_N_1;
    output [7:0]FIFODataxD;
    output FIFOEmptyxS;
    input GND_net;
    input VCC_net;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    wire BuffFullxSO;
    
    FIFO8KB uart_fifo_0_0 (.DI0(\CfgFSMSRegOutxD[0] ), .DI1(\CfgFSMSRegOutxD[1] ), 
            .DI2(\CfgFSMSRegOutxD[2] ), .DI3(\CfgFSMSRegOutxD[3] ), .DI4(n9954), 
            .DI5(n9953), .DI6(n9952), .DI7(n9951), .DI8(GND_net), .DI9(GND_net), 
            .DI10(GND_net), .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), 
            .DI14(GND_net), .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), 
            .FULLI(BuffFullxSO), .EMPTYI(FIFOEmptyxS), .CSW1(VCC_net), 
            .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), .WE(UartToBrdTxDatRdyxS), 
            .RE(FIFORdEnxS), .ORE(FIFORdEnxS), .CLKW(Clk96xC), .CLKR(Clk96xC), 
            .RST(PllLockxS_N_1), .RPRST(PllLockxS_N_1), .DO0(FIFODataxD[0]), 
            .DO1(FIFODataxD[1]), .DO2(FIFODataxD[2]), .DO3(FIFODataxD[3]), 
            .DO4(FIFODataxD[4]), .DO5(FIFODataxD[5]), .DO6(FIFODataxD[6]), 
            .DO7(FIFODataxD[7]), .EF(FIFOEmptyxS), .FF(BuffFullxSO)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=43, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=124, LSE_RLINE=124 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_tx_with_fifo.vhd(124[19:28])
    defparam uart_fifo_0_0.DATA_WIDTH_W = 9;
    defparam uart_fifo_0_0.DATA_WIDTH_R = 9;
    defparam uart_fifo_0_0.REGMODE = "NOREG";
    defparam uart_fifo_0_0.RESETMODE = "ASYNC";
    defparam uart_fifo_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam uart_fifo_0_0.CSDECODE_W = "0b11";
    defparam uart_fifo_0_0.CSDECODE_R = "0b11";
    defparam uart_fifo_0_0.AEPOINTER = "0b01100000000000";
    defparam uart_fifo_0_0.AEPOINTER1 = "0b01100000001000";
    defparam uart_fifo_0_0.AFPOINTER = "0b01110000000000";
    defparam uart_fifo_0_0.AFPOINTER1 = "0b01101111111000";
    defparam uart_fifo_0_0.FULLPOINTER = "0b10000000000000";
    defparam uart_fifo_0_0.FULLPOINTER1 = "0b01111111111000";
    defparam uart_fifo_0_0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module \uart_rx(8) 
//

module \uart_rx(8)  (CfgUartRxDatRdyxS, Clk96xC, CfgUartRxDatxD, n9981, 
            CfgByteCntxDP, n246, EXP_J303_D_1_c);
    output CfgUartRxDatRdyxS;
    input Clk96xC;
    output [7:0]CfgUartRxDatxD;
    output n9981;
    input [2:0]CfgByteCntxDP;
    output n246;
    input EXP_J303_D_1_c;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    wire [7:0]n1729;
    
    wire n9959, n4069;
    wire [3:0]ClkCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(35[9:18])
    wire [3:0]ClkCntxDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(35[20:29])
    wire [2:0]BitCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(36[9:18])
    
    wire Clk96xC_enable_20;
    wire [2:0]BitCntxDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(36[20:29])
    wire [2:0]InSRegxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(32[9:18])
    
    wire Clk96xC_enable_89, n9064, n8709, n4067, n1746, n4065, n10005, 
        n10004, n9986, n9331, Clk96xC_enable_198, n4499;
    
    LUT4 i2209_3_lut (.A(n1729[4]), .B(CfgUartRxDatRdyxS), .C(n9959), 
         .Z(n4069)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i2209_3_lut.init = 16'hecec;
    FD1S3AX ClkCntxDP_i0 (.D(ClkCntxDN[0]), .CK(Clk96xC), .Q(ClkCntxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ClkCntxDP_i0.GSR = "ENABLED";
    FD1P3AX BitCntxDP_i0 (.D(BitCntxDN[0]), .SP(Clk96xC_enable_20), .CK(Clk96xC), 
            .Q(BitCntxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam BitCntxDP_i0.GSR = "ENABLED";
    FD1S3AX InSRegxDP_i0 (.D(InSRegxDP[1]), .CK(Clk96xC), .Q(InSRegxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam InSRegxDP_i0.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(BitCntxDP[0]), .B(Clk96xC_enable_89), .C(BitCntxDP[2]), 
         .D(BitCntxDP[1]), .Z(n9064)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0004;
    LUT4 i2207_3_lut (.A(n1729[2]), .B(n1729[1]), .C(n8709), .Z(n4067)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i2207_3_lut.init = 16'hecec;
    LUT4 i3_4_lut (.A(n9959), .B(BitCntxDP[0]), .C(BitCntxDP[1]), .D(BitCntxDP[2]), 
         .Z(n8709)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(86[9:22])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i724_2_lut (.A(InSRegxDP[0]), .B(n1729[0]), .Z(n1746)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i724_2_lut.init = 16'h4444;
    LUT4 i2205_4_lut (.A(n1729[0]), .B(n9959), .C(InSRegxDP[0]), .D(n1729[4]), 
         .Z(n4065)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i2205_4_lut.init = 16'hb3a0;
    FD1P3AX ParDatSRegxDP__i0 (.D(CfgUartRxDatxD[1]), .SP(Clk96xC_enable_89), 
            .CK(Clk96xC), .Q(CfgUartRxDatxD[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i0.GSR = "ENABLED";
    FD1S3AY StatexDP_FSM_i1 (.D(n4065), .CK(Clk96xC), .Q(n1729[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i1.GSR = "ENABLED";
    LUT4 i95_1_lut_rep_109 (.A(CfgUartRxDatRdyxS), .Z(n9981)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i95_1_lut_rep_109.init = 16'h5555;
    LUT4 i99_2_lut_3_lut_4_lut_4_lut (.A(CfgUartRxDatRdyxS), .B(CfgByteCntxDP[2]), 
         .C(CfgByteCntxDP[1]), .D(CfgByteCntxDP[0]), .Z(n246)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i99_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i4564_4_lut_then_3_lut (.A(n1729[1]), .B(n1729[2]), .C(ClkCntxDP[2]), 
         .Z(n10005)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i4564_4_lut_then_3_lut.init = 16'hf2f2;
    LUT4 i4564_4_lut_else_3_lut (.A(n1729[1]), .B(n1729[2]), .C(ClkCntxDP[1]), 
         .D(ClkCntxDP[2]), .Z(n10004)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A (C (D)+!C !(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i4564_4_lut_else_3_lut.init = 16'hf22f;
    LUT4 i1_2_lut_rep_114 (.A(ClkCntxDP[0]), .B(ClkCntxDP[1]), .Z(n9986)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(81[8:21])
    defparam i1_2_lut_rep_114.init = 16'heeee;
    LUT4 i3_3_lut_rep_87_4_lut (.A(ClkCntxDP[0]), .B(ClkCntxDP[1]), .C(ClkCntxDP[3]), 
         .D(ClkCntxDP[2]), .Z(n9959)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(81[8:21])
    defparam i3_3_lut_rep_87_4_lut.init = 16'hfffe;
    LUT4 i7178_3_lut_4_lut (.A(ClkCntxDP[0]), .B(ClkCntxDP[1]), .C(ClkCntxDP[3]), 
         .D(ClkCntxDP[2]), .Z(n9331)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(81[8:21])
    defparam i7178_3_lut_4_lut.init = 16'h0f1e;
    FD1S3AX StatexDP_FSM_i5 (.D(n4069), .CK(Clk96xC), .Q(n1729[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_116 (.A(n1729[1]), .B(n1729[2]), .Z(Clk96xC_enable_20)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_116.init = 16'heeee;
    LUT4 i1_3_lut_3_lut (.A(n1729[1]), .B(n1729[2]), .C(n9959), .Z(Clk96xC_enable_198)) /* synthesis lut_function=(!(A (B (C))+!A ((C)+!B))) */ ;
    defparam i1_3_lut_3_lut.init = 16'h2e2e;
    FD1S3AX StatexDP_FSM_i4 (.D(n9064), .CK(Clk96xC), .Q(CfgUartRxDatRdyxS));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i4.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i3 (.D(n4067), .CK(Clk96xC), .Q(n1729[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i3.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i2 (.D(n1746), .CK(Clk96xC), .Q(n1729[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i2.GSR = "ENABLED";
    LUT4 i7213_2_lut_3_lut (.A(n1729[1]), .B(n1729[2]), .C(ClkCntxDP[0]), 
         .Z(ClkCntxDN[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i7213_2_lut_3_lut.init = 16'h0d0d;
    LUT4 i1_4_lut_4_lut (.A(n1729[1]), .B(n1729[2]), .C(n9331), .D(n9959), 
         .Z(ClkCntxDN[3])) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i1_4_lut_4_lut.init = 16'h2f23;
    LUT4 i4532_3_lut (.A(BitCntxDP[0]), .B(n1729[2]), .C(n9959), .Z(BitCntxDN[0])) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i4532_3_lut.init = 16'hb7b7;
    FD1P3AX ParDatSRegxDP__i7 (.D(InSRegxDP[0]), .SP(Clk96xC_enable_89), 
            .CK(Clk96xC), .Q(CfgUartRxDatxD[7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i7.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i6 (.D(CfgUartRxDatxD[7]), .SP(Clk96xC_enable_89), 
            .CK(Clk96xC), .Q(CfgUartRxDatxD[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i6.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i5 (.D(CfgUartRxDatxD[6]), .SP(Clk96xC_enable_89), 
            .CK(Clk96xC), .Q(CfgUartRxDatxD[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i5.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i4 (.D(CfgUartRxDatxD[5]), .SP(Clk96xC_enable_89), 
            .CK(Clk96xC), .Q(CfgUartRxDatxD[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i4.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i3 (.D(CfgUartRxDatxD[4]), .SP(Clk96xC_enable_89), 
            .CK(Clk96xC), .Q(CfgUartRxDatxD[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i3.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i2 (.D(CfgUartRxDatxD[3]), .SP(Clk96xC_enable_89), 
            .CK(Clk96xC), .Q(CfgUartRxDatxD[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i2.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i1 (.D(CfgUartRxDatxD[2]), .SP(Clk96xC_enable_89), 
            .CK(Clk96xC), .Q(CfgUartRxDatxD[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i1.GSR = "ENABLED";
    LUT4 i1147_2_lut_4_lut (.A(n9986), .B(ClkCntxDP[2]), .C(ClkCntxDP[3]), 
         .D(n1729[2]), .Z(Clk96xC_enable_89)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(81[8:21])
    defparam i1147_2_lut_4_lut.init = 16'h0100;
    FD1S3AX InSRegxDP_i2 (.D(EXP_J303_D_1_c), .CK(Clk96xC), .Q(InSRegxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam InSRegxDP_i2.GSR = "ENABLED";
    FD1S3AX InSRegxDP_i1 (.D(InSRegxDP[2]), .CK(Clk96xC), .Q(InSRegxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam InSRegxDP_i1.GSR = "ENABLED";
    FD1P3AX BitCntxDP_i2 (.D(BitCntxDN[2]), .SP(Clk96xC_enable_198), .CK(Clk96xC), 
            .Q(BitCntxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam BitCntxDP_i2.GSR = "ENABLED";
    FD1P3AX BitCntxDP_i1 (.D(BitCntxDN[1]), .SP(Clk96xC_enable_198), .CK(Clk96xC), 
            .Q(BitCntxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam BitCntxDP_i1.GSR = "ENABLED";
    FD1S3AX ClkCntxDP_i3 (.D(ClkCntxDN[3]), .CK(Clk96xC), .Q(ClkCntxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ClkCntxDP_i3.GSR = "ENABLED";
    FD1S3AX ClkCntxDP_i2 (.D(ClkCntxDN[2]), .CK(Clk96xC), .Q(ClkCntxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ClkCntxDP_i2.GSR = "ENABLED";
    FD1S3AX ClkCntxDP_i1 (.D(ClkCntxDN[1]), .CK(Clk96xC), .Q(ClkCntxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=730, LSE_RLINE=730 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ClkCntxDP_i1.GSR = "ENABLED";
    LUT4 i7231_4_lut (.A(BitCntxDP[2]), .B(n1729[2]), .C(BitCntxDP[1]), 
         .D(BitCntxDP[0]), .Z(BitCntxDN[2])) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B (C+(D)))) */ ;
    defparam i7231_4_lut.init = 16'hbbb7;
    LUT4 i7237_3_lut (.A(BitCntxDP[1]), .B(n1729[2]), .C(BitCntxDP[0]), 
         .Z(BitCntxDN[1])) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam i7237_3_lut.init = 16'hb7b7;
    LUT4 mux_757_i2_4_lut (.A(n4499), .B(n9959), .C(n1729[2]), .D(n1729[1]), 
         .Z(ClkCntxDN[1])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam mux_757_i2_4_lut.init = 16'h7075;
    LUT4 i1_2_lut (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .Z(n4499)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    PFUMX i7557 (.BLUT(n10004), .ALUT(n10005), .C0(ClkCntxDP[0]), .Z(ClkCntxDN[2]));
    
endmodule
//
// Verilog Description of module \uart_rx(16) 
//

module \uart_rx(16)  (Clk96xC, UartDetBRxDatxD, UartDetBRxDatRdyxSN, UartDetBtoFPGASelxD);
    input Clk96xC;
    output [7:0]UartDetBRxDatxD;
    output UartDetBRxDatRdyxSN;
    input UartDetBtoFPGASelxD;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    wire [4:0]ClkCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(35[9:18])
    wire [4:0]ClkCntxDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(35[20:29])
    wire [2:0]BitCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(36[9:18])
    
    wire Clk96xC_enable_13;
    wire [2:0]BitCntxDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(36[20:29])
    wire [2:0]InSRegxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(32[9:18])
    
    wire Clk96xC_enable_195, n9973;
    wire [7:0]n1191;
    
    wire n4029, n4485, n4503, n9, n6, Clk96xC_enable_269, n9335, 
        n4035, n9062, n8699, n4033, n1208, n4505;
    
    FD1S3AX ClkCntxDP_i0 (.D(ClkCntxDN[0]), .CK(Clk96xC), .Q(ClkCntxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ClkCntxDP_i0.GSR = "ENABLED";
    FD1P3AX BitCntxDP_i0 (.D(BitCntxDN[0]), .SP(Clk96xC_enable_13), .CK(Clk96xC), 
            .Q(BitCntxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam BitCntxDP_i0.GSR = "ENABLED";
    FD1S3AX InSRegxDP_i0 (.D(InSRegxDP[1]), .CK(Clk96xC), .Q(InSRegxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam InSRegxDP_i0.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i0 (.D(UartDetBRxDatxD[1]), .SP(Clk96xC_enable_195), 
            .CK(Clk96xC), .Q(UartDetBRxDatxD[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i0.GSR = "ENABLED";
    LUT4 i1681_2_lut_rep_101 (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .Z(n9973)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(64[16:25])
    defparam i1681_2_lut_rep_101.init = 16'heeee;
    FD1S3AY StatexDP_FSM_i1 (.D(n4029), .CK(Clk96xC), .Q(n1191[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .C(ClkCntxDP[2]), 
         .Z(n4485)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(64[16:25])
    defparam i1_2_lut_3_lut.init = 16'h1e1e;
    LUT4 i1_2_lut_3_lut_4_lut (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .C(ClkCntxDP[3]), 
         .D(ClkCntxDP[2]), .Z(n4503)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(64[16:25])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i4503_3_lut (.A(BitCntxDP[0]), .B(n1191[2]), .C(n9), .Z(BitCntxDN[0])) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i4503_3_lut.init = 16'hb7b7;
    LUT4 i4_4_lut (.A(ClkCntxDP[3]), .B(ClkCntxDP[1]), .C(ClkCntxDP[2]), 
         .D(n6), .Z(n9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(ClkCntxDP[0]), .B(ClkCntxDP[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_126 (.A(n1191[1]), .B(n1191[2]), .Z(Clk96xC_enable_13)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_126.init = 16'heeee;
    LUT4 i1_3_lut_3_lut (.A(n1191[1]), .B(n1191[2]), .C(n9), .Z(Clk96xC_enable_269)) /* synthesis lut_function=(!(A (B (C))+!A ((C)+!B))) */ ;
    defparam i1_3_lut_3_lut.init = 16'h2e2e;
    LUT4 i7218_2_lut_3_lut (.A(n1191[1]), .B(n1191[2]), .C(ClkCntxDP[0]), 
         .Z(ClkCntxDN[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i7218_2_lut_3_lut.init = 16'h0d0d;
    LUT4 i1_4_lut_4_lut (.A(n1191[1]), .B(n1191[2]), .C(n9335), .D(n9), 
         .Z(ClkCntxDN[4])) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i1_4_lut_4_lut.init = 16'h2f23;
    LUT4 i2178_3_lut (.A(n1191[4]), .B(UartDetBRxDatRdyxSN), .C(n9), .Z(n4035)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i2178_3_lut.init = 16'hecec;
    LUT4 i2_4_lut (.A(BitCntxDP[0]), .B(Clk96xC_enable_195), .C(BitCntxDP[2]), 
         .D(BitCntxDP[1]), .Z(n9062)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0004;
    LUT4 i7182_3_lut_4_lut (.A(ClkCntxDP[2]), .B(n9973), .C(ClkCntxDP[4]), 
         .D(ClkCntxDP[3]), .Z(n9335)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(64[16:25])
    defparam i7182_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i2176_3_lut (.A(n1191[2]), .B(n1191[1]), .C(n8699), .Z(n4033)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i2176_3_lut.init = 16'hecec;
    LUT4 i3_4_lut (.A(n9), .B(BitCntxDP[0]), .C(BitCntxDP[1]), .D(BitCntxDP[2]), 
         .Z(n8699)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(86[9:22])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i509_2_lut (.A(InSRegxDP[0]), .B(n1191[0]), .Z(n1208)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i509_2_lut.init = 16'h4444;
    LUT4 i1116_2_lut (.A(n9), .B(n1191[2]), .Z(Clk96xC_enable_195)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i1116_2_lut.init = 16'h4444;
    FD1S3AX StatexDP_FSM_i5 (.D(n4035), .CK(Clk96xC), .Q(n1191[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i5.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i4 (.D(n9062), .CK(Clk96xC), .Q(UartDetBRxDatRdyxSN));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i4.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i3 (.D(n4033), .CK(Clk96xC), .Q(n1191[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i3.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i2 (.D(n1208), .CK(Clk96xC), .Q(n1191[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam StatexDP_FSM_i2.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i7 (.D(InSRegxDP[0]), .SP(Clk96xC_enable_195), 
            .CK(Clk96xC), .Q(UartDetBRxDatxD[7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i7.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i6 (.D(UartDetBRxDatxD[7]), .SP(Clk96xC_enable_195), 
            .CK(Clk96xC), .Q(UartDetBRxDatxD[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i6.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i5 (.D(UartDetBRxDatxD[6]), .SP(Clk96xC_enable_195), 
            .CK(Clk96xC), .Q(UartDetBRxDatxD[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i5.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i4 (.D(UartDetBRxDatxD[5]), .SP(Clk96xC_enable_195), 
            .CK(Clk96xC), .Q(UartDetBRxDatxD[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i4.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i3 (.D(UartDetBRxDatxD[4]), .SP(Clk96xC_enable_195), 
            .CK(Clk96xC), .Q(UartDetBRxDatxD[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i3.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i2 (.D(UartDetBRxDatxD[3]), .SP(Clk96xC_enable_195), 
            .CK(Clk96xC), .Q(UartDetBRxDatxD[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i2.GSR = "ENABLED";
    FD1P3AX ParDatSRegxDP__i1 (.D(UartDetBRxDatxD[2]), .SP(Clk96xC_enable_195), 
            .CK(Clk96xC), .Q(UartDetBRxDatxD[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ParDatSRegxDP__i1.GSR = "ENABLED";
    FD1S3AX InSRegxDP_i2 (.D(UartDetBtoFPGASelxD), .CK(Clk96xC), .Q(InSRegxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam InSRegxDP_i2.GSR = "ENABLED";
    FD1S3AX InSRegxDP_i1 (.D(InSRegxDP[2]), .CK(Clk96xC), .Q(InSRegxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam InSRegxDP_i1.GSR = "ENABLED";
    FD1P3AX BitCntxDP_i2 (.D(BitCntxDN[2]), .SP(Clk96xC_enable_269), .CK(Clk96xC), 
            .Q(BitCntxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam BitCntxDP_i2.GSR = "ENABLED";
    FD1P3AX BitCntxDP_i1 (.D(BitCntxDN[1]), .SP(Clk96xC_enable_269), .CK(Clk96xC), 
            .Q(BitCntxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam BitCntxDP_i1.GSR = "ENABLED";
    FD1S3AX ClkCntxDP_i4 (.D(ClkCntxDN[4]), .CK(Clk96xC), .Q(ClkCntxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ClkCntxDP_i4.GSR = "ENABLED";
    FD1S3AX ClkCntxDP_i3 (.D(ClkCntxDN[3]), .CK(Clk96xC), .Q(ClkCntxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ClkCntxDP_i3.GSR = "ENABLED";
    FD1S3AX ClkCntxDP_i2 (.D(ClkCntxDN[2]), .CK(Clk96xC), .Q(ClkCntxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ClkCntxDP_i2.GSR = "ENABLED";
    FD1S3AX ClkCntxDP_i1 (.D(ClkCntxDN[1]), .CK(Clk96xC), .Q(ClkCntxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=24, LSE_RCOL=31, LSE_LLINE=678, LSE_RLINE=678 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(42[3] 56[10])
    defparam ClkCntxDP_i1.GSR = "ENABLED";
    LUT4 i7245_4_lut (.A(BitCntxDP[2]), .B(n1191[2]), .C(BitCntxDP[1]), 
         .D(BitCntxDP[0]), .Z(BitCntxDN[2])) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B (C+(D)))) */ ;
    defparam i7245_4_lut.init = 16'hbbb7;
    LUT4 i7248_3_lut (.A(BitCntxDP[1]), .B(n1191[2]), .C(BitCntxDP[0]), 
         .Z(BitCntxDN[1])) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam i7248_3_lut.init = 16'hb7b7;
    LUT4 i2172_4_lut (.A(n1191[0]), .B(n9), .C(InSRegxDP[0]), .D(n1191[4]), 
         .Z(n4029)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i2172_4_lut.init = 16'hb3a0;
    LUT4 i4574_4_lut (.A(n4503), .B(n1191[1]), .C(n9), .D(n1191[2]), 
         .Z(ClkCntxDN[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam i4574_4_lut.init = 16'h5fdd;
    LUT4 mux_542_i3_4_lut (.A(n4485), .B(n9), .C(n1191[2]), .D(n1191[1]), 
         .Z(ClkCntxDN[2])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam mux_542_i3_4_lut.init = 16'h7075;
    LUT4 mux_542_i2_4_lut (.A(n4505), .B(n9), .C(n1191[2]), .D(n1191[1]), 
         .Z(ClkCntxDN[1])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/uart_rx.vhd(70[3] 99[12])
    defparam mux_542_i2_4_lut.init = 16'h7075;
    LUT4 i1_2_lut_adj_97 (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .Z(n4505)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_97.init = 16'h6666;
    
endmodule
//
// Verilog Description of module spi_rxtx_with_fifo
//

module spi_rxtx_with_fifo (GND_net, StatexDP, MISOxDO_N_875, Clk96xC, 
            TxSRegxDN, RPI0_SCLK_c, RPI0_CE_c, TxSRegxDN_7__N_838, n3903, 
            n3905, n3913, n3926, n3932, n3936, n3940, n4117, \TxSRegxDP[7] , 
            UartTxDatRdyxS, RAM0_SIO_c_0, \UartTxDatxD[6] , \UartTxDatxD[5] , 
            \UartTxDatxD[4] , \UartTxDatxD[3] , \UartTxDatxD[2] , \UartTxDatxD[1] , 
            \UartTxDatxD[0] , VCC_net, PllLockxS_N_1);
    input GND_net;
    output [1:0]StatexDP;
    output MISOxDO_N_875;
    input Clk96xC;
    input [7:0]TxSRegxDN;
    input RPI0_SCLK_c;
    input RPI0_CE_c;
    output [7:0]TxSRegxDN_7__N_838;
    output n3903;
    output n3905;
    output n3913;
    output n3926;
    output n3932;
    output n3936;
    output n3940;
    output n4117;
    output \TxSRegxDP[7] ;
    input UartTxDatRdyxS;
    input RAM0_SIO_c_0;
    input \UartTxDatxD[6] ;
    input \UartTxDatxD[5] ;
    input \UartTxDatxD[4] ;
    input \UartTxDatxD[3] ;
    input \UartTxDatxD[2] ;
    input \UartTxDatxD[1] ;
    input \UartTxDatxD[0] ;
    input VCC_net;
    input PllLockxS_N_1;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    wire n8494;
    wire [9:0]FIFOWrAddrxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(32[9:22])
    wire [9:0]FIFOWrAddrxDN_9__N_814;
    
    wire n8493, n8492;
    wire [1:0]StatexDP_c;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(30[9:17])
    
    wire n8491, n8490;
    wire [7:0]TxSRegxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(40[9:18])
    
    wire Clk96xC_enable_209;
    wire [1:0]SCKSRegxSP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(46[9:19])
    wire [2:0]BitCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(42[9:18])
    
    wire Clk96xC_enable_202, n9996, n6758;
    wire [1:0]StatexDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(30[19:27])
    
    wire CSnxSP, FIFOWrAddrxDN_9__N_824, n9995, n9964;
    wire [2:0]n183;
    wire [7:0]FIFOOutDataxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(39[9:22])
    
    wire n9997, n9604, n5417;
    wire [9:0]FIFOBytesAvailableFullxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(35[9:33])
    
    wire FIFOEmptyxS, n9066, n9965, n8539;
    wire [9:0]FIFORdAddrxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(33[9:22])
    wire [9:0]FIFORdAddrxDN_9__N_827;
    
    wire n8538, n8537, n8536, n8535, n8534, n8533, n8532, n8531, 
        n8530, n8231, BuffFullxSO, n8230, n8229, n8216, n8215, 
        n8214;
    
    CCU2D FIFOWrAddrxDP_9__I_0_11 (.A0(FIFOWrAddrxDP[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8494), .S0(FIFOWrAddrxDN_9__N_814[9]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam FIFOWrAddrxDP_9__I_0_11.INIT0 = 16'h5aaa;
    defparam FIFOWrAddrxDP_9__I_0_11.INIT1 = 16'h0000;
    defparam FIFOWrAddrxDP_9__I_0_11.INJECT1_0 = "NO";
    defparam FIFOWrAddrxDP_9__I_0_11.INJECT1_1 = "NO";
    CCU2D FIFOWrAddrxDP_9__I_0_9 (.A0(FIFOWrAddrxDP[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFOWrAddrxDP[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8493), .COUT(n8494), .S0(FIFOWrAddrxDN_9__N_814[7]), 
          .S1(FIFOWrAddrxDN_9__N_814[8]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam FIFOWrAddrxDP_9__I_0_9.INIT0 = 16'h5aaa;
    defparam FIFOWrAddrxDP_9__I_0_9.INIT1 = 16'h5aaa;
    defparam FIFOWrAddrxDP_9__I_0_9.INJECT1_0 = "NO";
    defparam FIFOWrAddrxDP_9__I_0_9.INJECT1_1 = "NO";
    CCU2D FIFOWrAddrxDP_9__I_0_7 (.A0(FIFOWrAddrxDP[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFOWrAddrxDP[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8492), .COUT(n8493), .S0(FIFOWrAddrxDN_9__N_814[5]), 
          .S1(FIFOWrAddrxDN_9__N_814[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam FIFOWrAddrxDP_9__I_0_7.INIT0 = 16'h5aaa;
    defparam FIFOWrAddrxDP_9__I_0_7.INIT1 = 16'h5aaa;
    defparam FIFOWrAddrxDP_9__I_0_7.INJECT1_0 = "NO";
    defparam FIFOWrAddrxDP_9__I_0_7.INJECT1_1 = "NO";
    LUT4 i7266_2_lut (.A(StatexDP[0]), .B(StatexDP_c[1]), .Z(MISOxDO_N_875)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(105[2] 155[14])
    defparam i7266_2_lut.init = 16'h1111;
    CCU2D FIFOWrAddrxDP_9__I_0_5 (.A0(FIFOWrAddrxDP[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFOWrAddrxDP[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8491), .COUT(n8492), .S0(FIFOWrAddrxDN_9__N_814[3]), 
          .S1(FIFOWrAddrxDN_9__N_814[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam FIFOWrAddrxDP_9__I_0_5.INIT0 = 16'h5aaa;
    defparam FIFOWrAddrxDP_9__I_0_5.INIT1 = 16'h5aaa;
    defparam FIFOWrAddrxDP_9__I_0_5.INJECT1_0 = "NO";
    defparam FIFOWrAddrxDP_9__I_0_5.INJECT1_1 = "NO";
    CCU2D FIFOWrAddrxDP_9__I_0_3 (.A0(FIFOWrAddrxDP[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFOWrAddrxDP[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8490), .COUT(n8491), .S0(FIFOWrAddrxDN_9__N_814[1]), 
          .S1(FIFOWrAddrxDN_9__N_814[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam FIFOWrAddrxDP_9__I_0_3.INIT0 = 16'h5aaa;
    defparam FIFOWrAddrxDP_9__I_0_3.INIT1 = 16'h5aaa;
    defparam FIFOWrAddrxDP_9__I_0_3.INJECT1_0 = "NO";
    defparam FIFOWrAddrxDP_9__I_0_3.INJECT1_1 = "NO";
    FD1P3AX TxSRegxDP_i0 (.D(TxSRegxDN[0]), .SP(Clk96xC_enable_209), .CK(Clk96xC), 
            .Q(TxSRegxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam TxSRegxDP_i0.GSR = "ENABLED";
    FD1S3AX SCKSRegxSP_i0 (.D(RPI0_SCLK_c), .CK(Clk96xC), .Q(SCKSRegxSP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam SCKSRegxSP_i0.GSR = "ENABLED";
    FD1P3IX BitCntxDP_i0 (.D(n6758), .SP(Clk96xC_enable_202), .CD(n9996), 
            .CK(Clk96xC), .Q(BitCntxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam BitCntxDP_i0.GSR = "ENABLED";
    CCU2D FIFOWrAddrxDP_9__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFOWrAddrxDP[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8490), .S1(FIFOWrAddrxDN_9__N_814[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam FIFOWrAddrxDP_9__I_0_1.INIT0 = 16'hF000;
    defparam FIFOWrAddrxDP_9__I_0_1.INIT1 = 16'h5555;
    defparam FIFOWrAddrxDP_9__I_0_1.INJECT1_0 = "NO";
    defparam FIFOWrAddrxDP_9__I_0_1.INJECT1_1 = "NO";
    FD1S3AX StatexDP_i0 (.D(StatexDN[0]), .CK(Clk96xC), .Q(StatexDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam StatexDP_i0.GSR = "ENABLED";
    FD1S3AY CSnxSP_71 (.D(RPI0_CE_c), .CK(Clk96xC), .Q(CSnxSP)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam CSnxSP_71.GSR = "ENABLED";
    FD1P3AX FIFOWrAddrxDP_i0_i0 (.D(FIFOWrAddrxDN_9__N_814[0]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i0.GSR = "ENABLED";
    LUT4 i1718_2_lut_rep_123 (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .Z(n9995)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(144[20:29])
    defparam i1718_2_lut_rep_123.init = 16'h8888;
    LUT4 i1593_2_lut_rep_92_3_lut (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .C(BitCntxDP[2]), 
         .Z(n9964)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(144[20:29])
    defparam i1593_2_lut_rep_92_3_lut.init = 16'h8080;
    LUT4 i4631_3_lut_4_lut_2_lut (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .Z(n183[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(144[20:29])
    defparam i4631_3_lut_4_lut_2_lut.init = 16'h6666;
    LUT4 i4630_3_lut_2_lut_3_lut (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .C(BitCntxDP[2]), 
         .Z(n183[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(144[20:29])
    defparam i4630_3_lut_2_lut_3_lut.init = 16'h7878;
    LUT4 i7207_2_lut_3_lut_1_lut (.A(BitCntxDP[0]), .Z(n6758)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(144[20:29])
    defparam i7207_2_lut_3_lut_1_lut.init = 16'h5555;
    LUT4 i4479_2_lut_3_lut_4_lut (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .C(FIFOOutDataxD[0]), 
         .D(BitCntxDP[2]), .Z(TxSRegxDN_7__N_838[0])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(144[20:29])
    defparam i4479_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 n168_bdd_4_lut (.A(n9964), .B(CSnxSP), .C(StatexDP_c[1]), .D(n9997), 
         .Z(n9604)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;
    defparam n168_bdd_4_lut.init = 16'h3032;
    LUT4 i2977_1_lut_rep_124 (.A(StatexDP[0]), .Z(n9996)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i2977_1_lut_rep_124.init = 16'h5555;
    LUT4 i3429_2_lut_2_lut (.A(StatexDP[0]), .B(StatexDP_c[1]), .Z(n5417)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i3429_2_lut_2_lut.init = 16'h4444;
    LUT4 equal_37_i3_2_lut_rep_125 (.A(SCKSRegxSP[0]), .B(SCKSRegxSP[1]), 
         .Z(n9997)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(138[11:28])
    defparam equal_37_i3_2_lut_rep_125.init = 16'hbbbb;
    LUT4 i5_1_lut_2_lut_3_lut (.A(SCKSRegxSP[0]), .B(SCKSRegxSP[1]), .C(CSnxSP), 
         .Z(Clk96xC_enable_202)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(138[11:28])
    defparam i5_1_lut_2_lut_3_lut.init = 16'h0404;
    LUT4 i7210_2_lut_3_lut_4_lut (.A(SCKSRegxSP[0]), .B(SCKSRegxSP[1]), 
         .C(StatexDP[0]), .D(CSnxSP), .Z(Clk96xC_enable_209)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(138[11:28])
    defparam i7210_2_lut_3_lut_4_lut.init = 16'h0f4f;
    LUT4 i4670_3_lut_4_lut_4_lut (.A(StatexDP_c[1]), .B(FIFOBytesAvailableFullxD[7]), 
         .C(FIFOBytesAvailableFullxD[9]), .D(FIFOBytesAvailableFullxD[8]), 
         .Z(n3903)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i4670_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i4452_3_lut_4_lut_4_lut (.A(StatexDP_c[1]), .B(FIFOBytesAvailableFullxD[6]), 
         .C(FIFOBytesAvailableFullxD[9]), .D(FIFOBytesAvailableFullxD[8]), 
         .Z(n3905)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i4452_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i4671_3_lut_4_lut_4_lut (.A(StatexDP_c[1]), .B(FIFOBytesAvailableFullxD[5]), 
         .C(FIFOBytesAvailableFullxD[9]), .D(FIFOBytesAvailableFullxD[8]), 
         .Z(n3913)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i4671_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i4676_3_lut_4_lut_4_lut (.A(StatexDP_c[1]), .B(FIFOBytesAvailableFullxD[4]), 
         .C(FIFOBytesAvailableFullxD[9]), .D(FIFOBytesAvailableFullxD[8]), 
         .Z(n3926)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i4676_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i4679_3_lut_4_lut_4_lut (.A(StatexDP_c[1]), .B(FIFOBytesAvailableFullxD[3]), 
         .C(FIFOBytesAvailableFullxD[9]), .D(FIFOBytesAvailableFullxD[8]), 
         .Z(n3932)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i4679_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i4680_3_lut_4_lut_4_lut (.A(StatexDP_c[1]), .B(FIFOBytesAvailableFullxD[2]), 
         .C(FIFOBytesAvailableFullxD[9]), .D(FIFOBytesAvailableFullxD[8]), 
         .Z(n3936)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i4680_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i4681_3_lut_4_lut_4_lut (.A(StatexDP_c[1]), .B(FIFOBytesAvailableFullxD[1]), 
         .C(FIFOBytesAvailableFullxD[9]), .D(FIFOBytesAvailableFullxD[8]), 
         .Z(n3940)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i4681_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i4693_3_lut_4_lut_4_lut (.A(StatexDP_c[1]), .B(FIFOBytesAvailableFullxD[0]), 
         .C(FIFOBytesAvailableFullxD[9]), .D(FIFOBytesAvailableFullxD[8]), 
         .Z(n4117)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam i4693_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i1_4_lut (.A(BitCntxDP[0]), .B(BitCntxDP[1]), .C(BitCntxDP[2]), 
         .D(FIFOEmptyxS), .Z(n9066)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0002;
    LUT4 i4522_2_lut_rep_93_3_lut (.A(SCKSRegxSP[0]), .B(SCKSRegxSP[1]), 
         .C(CSnxSP), .Z(n9965)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(138[11:28])
    defparam i4522_2_lut_rep_93_3_lut.init = 16'hfbfb;
    CCU2D add_1218_11 (.A0(FIFORdAddrxDP[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8539), .S0(FIFORdAddrxDN_9__N_827[9]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(136[5] 151[12])
    defparam add_1218_11.INIT0 = 16'h5aaa;
    defparam add_1218_11.INIT1 = 16'h0000;
    defparam add_1218_11.INJECT1_0 = "NO";
    defparam add_1218_11.INJECT1_1 = "NO";
    CCU2D add_1218_9 (.A0(FIFORdAddrxDP[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFORdAddrxDP[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8538), .COUT(n8539), .S0(FIFORdAddrxDN_9__N_827[7]), 
          .S1(FIFORdAddrxDN_9__N_827[8]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(136[5] 151[12])
    defparam add_1218_9.INIT0 = 16'h5aaa;
    defparam add_1218_9.INIT1 = 16'h5aaa;
    defparam add_1218_9.INJECT1_0 = "NO";
    defparam add_1218_9.INJECT1_1 = "NO";
    CCU2D add_1218_7 (.A0(FIFORdAddrxDP[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFORdAddrxDP[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8537), .COUT(n8538), .S0(FIFORdAddrxDN_9__N_827[5]), 
          .S1(FIFORdAddrxDN_9__N_827[6]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(136[5] 151[12])
    defparam add_1218_7.INIT0 = 16'h5aaa;
    defparam add_1218_7.INIT1 = 16'h5aaa;
    defparam add_1218_7.INJECT1_0 = "NO";
    defparam add_1218_7.INJECT1_1 = "NO";
    CCU2D add_1218_5 (.A0(FIFORdAddrxDP[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFORdAddrxDP[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8536), .COUT(n8537), .S0(FIFORdAddrxDN_9__N_827[3]), 
          .S1(FIFORdAddrxDN_9__N_827[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(136[5] 151[12])
    defparam add_1218_5.INIT0 = 16'h5aaa;
    defparam add_1218_5.INIT1 = 16'h5aaa;
    defparam add_1218_5.INJECT1_0 = "NO";
    defparam add_1218_5.INJECT1_1 = "NO";
    CCU2D add_1218_3 (.A0(FIFORdAddrxDP[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFORdAddrxDP[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8535), .COUT(n8536), .S0(FIFORdAddrxDN_9__N_827[1]), 
          .S1(FIFORdAddrxDN_9__N_827[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(136[5] 151[12])
    defparam add_1218_3.INIT0 = 16'h5aaa;
    defparam add_1218_3.INIT1 = 16'h5aaa;
    defparam add_1218_3.INJECT1_0 = "NO";
    defparam add_1218_3.INJECT1_1 = "NO";
    CCU2D add_1218_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9066), .B1(n9965), .C1(FIFORdAddrxDP[0]), .D1(GND_net), 
          .COUT(n8535), .S1(FIFORdAddrxDN_9__N_827[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(136[5] 151[12])
    defparam add_1218_1.INIT0 = 16'hF000;
    defparam add_1218_1.INIT1 = 16'hd2d2;
    defparam add_1218_1.INJECT1_0 = "NO";
    defparam add_1218_1.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_11 (.A0(FIFOWrAddrxDP[9]), .B0(FIFORdAddrxDP[9]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8534), .S0(FIFOBytesAvailableFullxD[9]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(74[30:43])
    defparam sub_19_add_2_11.INIT0 = 16'h5999;
    defparam sub_19_add_2_11.INIT1 = 16'h0000;
    defparam sub_19_add_2_11.INJECT1_0 = "NO";
    defparam sub_19_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_9 (.A0(FIFOWrAddrxDP[7]), .B0(FIFORdAddrxDP[7]), 
          .C0(GND_net), .D0(GND_net), .A1(FIFOWrAddrxDP[8]), .B1(FIFORdAddrxDP[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8533), .COUT(n8534), .S0(FIFOBytesAvailableFullxD[7]), 
          .S1(FIFOBytesAvailableFullxD[8]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(74[30:43])
    defparam sub_19_add_2_9.INIT0 = 16'h5999;
    defparam sub_19_add_2_9.INIT1 = 16'h5999;
    defparam sub_19_add_2_9.INJECT1_0 = "NO";
    defparam sub_19_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_7 (.A0(FIFOWrAddrxDP[5]), .B0(FIFORdAddrxDP[5]), 
          .C0(GND_net), .D0(GND_net), .A1(FIFOWrAddrxDP[6]), .B1(FIFORdAddrxDP[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8532), .COUT(n8533), .S0(FIFOBytesAvailableFullxD[5]), 
          .S1(FIFOBytesAvailableFullxD[6]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(74[30:43])
    defparam sub_19_add_2_7.INIT0 = 16'h5999;
    defparam sub_19_add_2_7.INIT1 = 16'h5999;
    defparam sub_19_add_2_7.INJECT1_0 = "NO";
    defparam sub_19_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_5 (.A0(FIFOWrAddrxDP[3]), .B0(FIFORdAddrxDP[3]), 
          .C0(GND_net), .D0(GND_net), .A1(FIFOWrAddrxDP[4]), .B1(FIFORdAddrxDP[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8531), .COUT(n8532), .S0(FIFOBytesAvailableFullxD[3]), 
          .S1(FIFOBytesAvailableFullxD[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(74[30:43])
    defparam sub_19_add_2_5.INIT0 = 16'h5999;
    defparam sub_19_add_2_5.INIT1 = 16'h5999;
    defparam sub_19_add_2_5.INJECT1_0 = "NO";
    defparam sub_19_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_3 (.A0(FIFOWrAddrxDP[1]), .B0(FIFORdAddrxDP[1]), 
          .C0(GND_net), .D0(GND_net), .A1(FIFOWrAddrxDP[2]), .B1(FIFORdAddrxDP[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8530), .COUT(n8531), .S0(FIFOBytesAvailableFullxD[1]), 
          .S1(FIFOBytesAvailableFullxD[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(74[30:43])
    defparam sub_19_add_2_3.INIT0 = 16'h5999;
    defparam sub_19_add_2_3.INIT1 = 16'h5999;
    defparam sub_19_add_2_3.INJECT1_0 = "NO";
    defparam sub_19_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FIFOWrAddrxDP[0]), .B1(FIFORdAddrxDP[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8530), .S1(FIFOBytesAvailableFullxD[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(74[30:43])
    defparam sub_19_add_2_1.INIT0 = 16'h0000;
    defparam sub_19_add_2_1.INIT1 = 16'h5999;
    defparam sub_19_add_2_1.INJECT1_0 = "NO";
    defparam sub_19_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_96 (.A(StatexDP_c[1]), .B(StatexDP[0]), .C(CSnxSP), 
         .Z(StatexDN[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(113[3] 154[12])
    defparam i1_4_lut_adj_96.init = 16'h0d0d;
    CCU2D FIFOWrAddrxDN_9__N_814_9__I_0_10 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8231), .S0(BuffFullxSO));
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_10.INIT0 = 16'hFFFF;
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_10.INIT1 = 16'h0000;
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_10.INJECT1_0 = "NO";
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_10.INJECT1_1 = "NO";
    CCU2D FIFOWrAddrxDN_9__N_814_9__I_0_10_6213 (.A0(FIFORdAddrxDP[3]), .B0(FIFOWrAddrxDN_9__N_814[3]), 
          .C0(FIFORdAddrxDP[2]), .D0(FIFOWrAddrxDN_9__N_814[2]), .A1(FIFORdAddrxDP[1]), 
          .B1(FIFOWrAddrxDN_9__N_814[1]), .C1(FIFORdAddrxDP[0]), .D1(FIFOWrAddrxDN_9__N_814[0]), 
          .CIN(n8230), .COUT(n8231));
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_10_6213.INIT0 = 16'h9009;
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_10_6213.INIT1 = 16'h9009;
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_10_6213.INJECT1_0 = "YES";
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_10_6213.INJECT1_1 = "YES";
    FD1P3AX FIFOWrAddrxDP_i0_i9 (.D(FIFOWrAddrxDN_9__N_814[9]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[9])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i9.GSR = "ENABLED";
    FD1P3AX FIFOWrAddrxDP_i0_i8 (.D(FIFOWrAddrxDN_9__N_814[8]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i8.GSR = "ENABLED";
    FD1P3AX FIFOWrAddrxDP_i0_i7 (.D(FIFOWrAddrxDN_9__N_814[7]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i7.GSR = "ENABLED";
    FD1P3AX FIFOWrAddrxDP_i0_i6 (.D(FIFOWrAddrxDN_9__N_814[6]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i6.GSR = "ENABLED";
    FD1P3AX FIFOWrAddrxDP_i0_i5 (.D(FIFOWrAddrxDN_9__N_814[5]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i5.GSR = "ENABLED";
    FD1P3AX FIFOWrAddrxDP_i0_i4 (.D(FIFOWrAddrxDN_9__N_814[4]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i4.GSR = "ENABLED";
    FD1P3AX FIFOWrAddrxDP_i0_i3 (.D(FIFOWrAddrxDN_9__N_814[3]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i3.GSR = "ENABLED";
    FD1P3AX FIFOWrAddrxDP_i0_i2 (.D(FIFOWrAddrxDN_9__N_814[2]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i2.GSR = "ENABLED";
    FD1P3AX FIFOWrAddrxDP_i0_i1 (.D(FIFOWrAddrxDN_9__N_814[1]), .SP(FIFOWrAddrxDN_9__N_824), 
            .CK(Clk96xC), .Q(FIFOWrAddrxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFOWrAddrxDP_i0_i1.GSR = "ENABLED";
    FD1P3IX FIFORdAddrxDP_i0 (.D(FIFORdAddrxDN_9__N_827[0]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i0.GSR = "ENABLED";
    FD1P3IX FIFORdAddrxDP_i1 (.D(FIFORdAddrxDN_9__N_827[1]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i1.GSR = "ENABLED";
    FD1P3IX FIFORdAddrxDP_i2 (.D(FIFORdAddrxDN_9__N_827[2]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i2.GSR = "ENABLED";
    FD1P3IX FIFORdAddrxDP_i3 (.D(FIFORdAddrxDN_9__N_827[3]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i3.GSR = "ENABLED";
    CCU2D FIFOWrAddrxDN_9__N_814_9__I_0_8 (.A0(FIFORdAddrxDP[7]), .B0(FIFOWrAddrxDN_9__N_814[7]), 
          .C0(FIFORdAddrxDP[6]), .D0(FIFOWrAddrxDN_9__N_814[6]), .A1(FIFORdAddrxDP[5]), 
          .B1(FIFOWrAddrxDN_9__N_814[5]), .C1(FIFORdAddrxDP[4]), .D1(FIFOWrAddrxDN_9__N_814[4]), 
          .CIN(n8229), .COUT(n8230));
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_8.INIT0 = 16'h9009;
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_8.INIT1 = 16'h9009;
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_8.INJECT1_0 = "YES";
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_8.INJECT1_1 = "YES";
    CCU2D FIFOWrAddrxDN_9__N_814_9__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFORdAddrxDP[9]), .B1(FIFOWrAddrxDN_9__N_814[9]), 
          .C1(FIFORdAddrxDP[8]), .D1(FIFOWrAddrxDN_9__N_814[8]), .COUT(n8229));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(68[25:58])
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_0.INIT0 = 16'hF000;
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_0.INIT1 = 16'h9009;
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_0.INJECT1_0 = "NO";
    defparam FIFOWrAddrxDN_9__N_814_9__I_0_0.INJECT1_1 = "YES";
    FD1P3IX FIFORdAddrxDP_i4 (.D(FIFORdAddrxDN_9__N_827[4]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i4.GSR = "ENABLED";
    FD1P3IX FIFORdAddrxDP_i5 (.D(FIFORdAddrxDN_9__N_827[5]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i5.GSR = "ENABLED";
    FD1S3IX StatexDP_i1 (.D(n9604), .CK(Clk96xC), .CD(n9996), .Q(StatexDP_c[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam StatexDP_i1.GSR = "ENABLED";
    FD1P3IX BitCntxDP_i2 (.D(n183[2]), .SP(Clk96xC_enable_202), .CD(n9996), 
            .CK(Clk96xC), .Q(BitCntxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam BitCntxDP_i2.GSR = "ENABLED";
    FD1P3IX FIFORdAddrxDP_i6 (.D(FIFORdAddrxDN_9__N_827[6]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i6.GSR = "ENABLED";
    FD1P3IX FIFORdAddrxDP_i7 (.D(FIFORdAddrxDN_9__N_827[7]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i7.GSR = "ENABLED";
    FD1P3IX FIFORdAddrxDP_i8 (.D(FIFORdAddrxDN_9__N_827[8]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i8.GSR = "ENABLED";
    FD1P3IX FIFORdAddrxDP_i9 (.D(FIFORdAddrxDN_9__N_827[9]), .SP(StatexDP_c[1]), 
            .CD(n5417), .CK(Clk96xC), .Q(FIFORdAddrxDP[9])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam FIFORdAddrxDP_i9.GSR = "ENABLED";
    FD1P3IX BitCntxDP_i1 (.D(n183[1]), .SP(Clk96xC_enable_202), .CD(n9996), 
            .CK(Clk96xC), .Q(BitCntxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam BitCntxDP_i1.GSR = "ENABLED";
    FD1S3AX SCKSRegxSP_i1 (.D(SCKSRegxSP[0]), .CK(Clk96xC), .Q(SCKSRegxSP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam SCKSRegxSP_i1.GSR = "ENABLED";
    FD1P3AX TxSRegxDP_i7 (.D(TxSRegxDN[7]), .SP(Clk96xC_enable_209), .CK(Clk96xC), 
            .Q(\TxSRegxDP[7] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam TxSRegxDP_i7.GSR = "ENABLED";
    FD1P3AX TxSRegxDP_i6 (.D(TxSRegxDN[6]), .SP(Clk96xC_enable_209), .CK(Clk96xC), 
            .Q(TxSRegxDP[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam TxSRegxDP_i6.GSR = "ENABLED";
    FD1P3AX TxSRegxDP_i5 (.D(TxSRegxDN[5]), .SP(Clk96xC_enable_209), .CK(Clk96xC), 
            .Q(TxSRegxDP[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam TxSRegxDP_i5.GSR = "ENABLED";
    FD1P3AX TxSRegxDP_i4 (.D(TxSRegxDN[4]), .SP(Clk96xC_enable_209), .CK(Clk96xC), 
            .Q(TxSRegxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam TxSRegxDP_i4.GSR = "ENABLED";
    FD1P3AX TxSRegxDP_i3 (.D(TxSRegxDN[3]), .SP(Clk96xC_enable_209), .CK(Clk96xC), 
            .Q(TxSRegxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam TxSRegxDP_i3.GSR = "ENABLED";
    FD1P3AX TxSRegxDP_i2 (.D(TxSRegxDN[2]), .SP(Clk96xC_enable_209), .CK(Clk96xC), 
            .Q(TxSRegxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam TxSRegxDP_i2.GSR = "ENABLED";
    FD1P3AX TxSRegxDP_i1 (.D(TxSRegxDN[1]), .SP(Clk96xC_enable_209), .CK(Clk96xC), 
            .Q(TxSRegxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=718, LSE_RLINE=718 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(84[3] 102[10])
    defparam TxSRegxDP_i1.GSR = "ENABLED";
    LUT4 i7258_2_lut (.A(UartTxDatRdyxS), .B(BuffFullxSO), .Z(FIFOWrAddrxDN_9__N_824)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(72[39:77])
    defparam i7258_2_lut.init = 16'h2222;
    LUT4 mux_40_i6_3_lut_4_lut (.A(n9995), .B(BitCntxDP[2]), .C(FIFOOutDataxD[5]), 
         .D(TxSRegxDP[4]), .Z(TxSRegxDN_7__N_838[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_40_i6_3_lut_4_lut.init = 16'hf780;
    CCU2D FIFORdAddrxDP_9__I_0_10 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8216), .S0(FIFOEmptyxS));
    defparam FIFORdAddrxDP_9__I_0_10.INIT0 = 16'hFFFF;
    defparam FIFORdAddrxDP_9__I_0_10.INIT1 = 16'h0000;
    defparam FIFORdAddrxDP_9__I_0_10.INJECT1_0 = "NO";
    defparam FIFORdAddrxDP_9__I_0_10.INJECT1_1 = "NO";
    LUT4 mux_40_i8_3_lut_4_lut (.A(n9995), .B(BitCntxDP[2]), .C(FIFOOutDataxD[7]), 
         .D(TxSRegxDP[6]), .Z(TxSRegxDN_7__N_838[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_40_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_40_i7_3_lut_4_lut (.A(n9995), .B(BitCntxDP[2]), .C(FIFOOutDataxD[6]), 
         .D(TxSRegxDP[5]), .Z(TxSRegxDN_7__N_838[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_40_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_40_i5_3_lut_4_lut (.A(n9995), .B(BitCntxDP[2]), .C(FIFOOutDataxD[4]), 
         .D(TxSRegxDP[3]), .Z(TxSRegxDN_7__N_838[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_40_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_40_i4_3_lut_4_lut (.A(n9995), .B(BitCntxDP[2]), .C(FIFOOutDataxD[3]), 
         .D(TxSRegxDP[2]), .Z(TxSRegxDN_7__N_838[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_40_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_40_i3_3_lut_4_lut (.A(n9995), .B(BitCntxDP[2]), .C(FIFOOutDataxD[2]), 
         .D(TxSRegxDP[1]), .Z(TxSRegxDN_7__N_838[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_40_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_40_i2_3_lut_4_lut (.A(n9995), .B(BitCntxDP[2]), .C(FIFOOutDataxD[1]), 
         .D(TxSRegxDP[0]), .Z(TxSRegxDN_7__N_838[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_40_i2_3_lut_4_lut.init = 16'hf780;
    CCU2D FIFORdAddrxDP_9__I_0_10_6210 (.A0(FIFOWrAddrxDP[3]), .B0(FIFORdAddrxDP[3]), 
          .C0(FIFOWrAddrxDP[2]), .D0(FIFORdAddrxDP[2]), .A1(FIFOWrAddrxDP[1]), 
          .B1(FIFORdAddrxDP[1]), .C1(FIFOWrAddrxDP[0]), .D1(FIFORdAddrxDP[0]), 
          .CIN(n8215), .COUT(n8216));
    defparam FIFORdAddrxDP_9__I_0_10_6210.INIT0 = 16'h9009;
    defparam FIFORdAddrxDP_9__I_0_10_6210.INIT1 = 16'h9009;
    defparam FIFORdAddrxDP_9__I_0_10_6210.INJECT1_0 = "YES";
    defparam FIFORdAddrxDP_9__I_0_10_6210.INJECT1_1 = "YES";
    CCU2D FIFORdAddrxDP_9__I_0_8 (.A0(FIFOWrAddrxDP[7]), .B0(FIFORdAddrxDP[7]), 
          .C0(FIFOWrAddrxDP[6]), .D0(FIFORdAddrxDP[6]), .A1(FIFOWrAddrxDP[5]), 
          .B1(FIFORdAddrxDP[5]), .C1(FIFOWrAddrxDP[4]), .D1(FIFORdAddrxDP[4]), 
          .CIN(n8214), .COUT(n8215));
    defparam FIFORdAddrxDP_9__I_0_8.INIT0 = 16'h9009;
    defparam FIFORdAddrxDP_9__I_0_8.INIT1 = 16'h9009;
    defparam FIFORdAddrxDP_9__I_0_8.INJECT1_0 = "YES";
    defparam FIFORdAddrxDP_9__I_0_8.INJECT1_1 = "YES";
    CCU2D FIFORdAddrxDP_9__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FIFOWrAddrxDP[9]), .B1(FIFORdAddrxDP[9]), 
          .C1(FIFOWrAddrxDP[8]), .D1(FIFORdAddrxDP[8]), .COUT(n8214));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(67[26:55])
    defparam FIFORdAddrxDP_9__I_0_0.INIT0 = 16'hF000;
    defparam FIFORdAddrxDP_9__I_0_0.INIT1 = 16'h9009;
    defparam FIFORdAddrxDP_9__I_0_0.INJECT1_0 = "NO";
    defparam FIFORdAddrxDP_9__I_0_0.INJECT1_1 = "YES";
    spi_txrx_ram spi_txrx_ram_inst (.RAM0_SIO_c_0(RAM0_SIO_c_0), .\UartTxDatxD[6] (\UartTxDatxD[6] ), 
            .\UartTxDatxD[5] (\UartTxDatxD[5] ), .\UartTxDatxD[4] (\UartTxDatxD[4] ), 
            .\UartTxDatxD[3] (\UartTxDatxD[3] ), .\UartTxDatxD[2] (\UartTxDatxD[2] ), 
            .\UartTxDatxD[1] (\UartTxDatxD[1] ), .\UartTxDatxD[0] (\UartTxDatxD[0] ), 
            .GND_net(GND_net), .FIFOWrAddrxDP({FIFOWrAddrxDP}), .FIFORdAddrxDP({FIFORdAddrxDP}), 
            .Clk96xC(Clk96xC), .VCC_net(VCC_net), .UartTxDatRdyxS(UartTxDatRdyxS), 
            .PllLockxS_N_1(PllLockxS_N_1), .FIFOOutDataxD({FIFOOutDataxD})) /* synthesis NGD_DRC_MASK=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(159[22:34])
    
endmodule
//
// Verilog Description of module spi_txrx_ram
//

module spi_txrx_ram (RAM0_SIO_c_0, \UartTxDatxD[6] , \UartTxDatxD[5] , 
            \UartTxDatxD[4] , \UartTxDatxD[3] , \UartTxDatxD[2] , \UartTxDatxD[1] , 
            \UartTxDatxD[0] , GND_net, FIFOWrAddrxDP, FIFORdAddrxDP, 
            Clk96xC, VCC_net, UartTxDatRdyxS, PllLockxS_N_1, FIFOOutDataxD) /* synthesis NGD_DRC_MASK=1 */ ;
    input RAM0_SIO_c_0;
    input \UartTxDatxD[6] ;
    input \UartTxDatxD[5] ;
    input \UartTxDatxD[4] ;
    input \UartTxDatxD[3] ;
    input \UartTxDatxD[2] ;
    input \UartTxDatxD[1] ;
    input \UartTxDatxD[0] ;
    input GND_net;
    input [9:0]FIFOWrAddrxDP;
    input [9:0]FIFORdAddrxDP;
    input Clk96xC;
    input VCC_net;
    input UartTxDatRdyxS;
    input PllLockxS_N_1;
    output [7:0]FIFOOutDataxD;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    DP8KC spi_txrx_ram_0_0_0 (.DIA0(\UartTxDatxD[0] ), .DIA1(\UartTxDatxD[1] ), 
          .DIA2(\UartTxDatxD[2] ), .DIA3(\UartTxDatxD[3] ), .DIA4(\UartTxDatxD[4] ), 
          .DIA5(\UartTxDatxD[5] ), .DIA6(\UartTxDatxD[6] ), .DIA7(RAM0_SIO_c_0), 
          .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), .ADA2(GND_net), 
          .ADA3(FIFOWrAddrxDP[0]), .ADA4(FIFOWrAddrxDP[1]), .ADA5(FIFOWrAddrxDP[2]), 
          .ADA6(FIFOWrAddrxDP[3]), .ADA7(FIFOWrAddrxDP[4]), .ADA8(FIFOWrAddrxDP[5]), 
          .ADA9(FIFOWrAddrxDP[6]), .ADA10(FIFOWrAddrxDP[7]), .ADA11(FIFOWrAddrxDP[8]), 
          .ADA12(FIFOWrAddrxDP[9]), .CEA(VCC_net), .OCEA(VCC_net), .CLKA(Clk96xC), 
          .WEA(UartTxDatRdyxS), .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), 
          .RSTA(PllLockxS_N_1), .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), 
          .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), 
          .DIB7(GND_net), .DIB8(GND_net), .ADB0(VCC_net), .ADB1(GND_net), 
          .ADB2(GND_net), .ADB3(FIFORdAddrxDP[0]), .ADB4(FIFORdAddrxDP[1]), 
          .ADB5(FIFORdAddrxDP[2]), .ADB6(FIFORdAddrxDP[3]), .ADB7(FIFORdAddrxDP[4]), 
          .ADB8(FIFORdAddrxDP[5]), .ADB9(FIFORdAddrxDP[6]), .ADB10(FIFORdAddrxDP[7]), 
          .ADB11(FIFORdAddrxDP[8]), .ADB12(FIFORdAddrxDP[9]), .CEB(VCC_net), 
          .OCEB(VCC_net), .CLKB(Clk96xC), .WEB(GND_net), .CSB0(GND_net), 
          .CSB1(GND_net), .CSB2(GND_net), .RSTB(PllLockxS_N_1), .DOB0(FIFOOutDataxD[0]), 
          .DOB1(FIFOOutDataxD[1]), .DOB2(FIFOOutDataxD[2]), .DOB3(FIFOOutDataxD[3]), 
          .DOB4(FIFOOutDataxD[4]), .DOB5(FIFOOutDataxD[5]), .DOB6(FIFOOutDataxD[6]), 
          .DOB7(FIFOOutDataxD[7])) /* synthesis MEM_LPC_FILE="spi_txrx_ram.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=46, LSE_LCOL=22, LSE_RCOL=34, LSE_LLINE=159, LSE_RLINE=159 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/spi_rxtx_with_fifo.vhd(159[22:34])
    defparam spi_txrx_ram_0_0_0.DATA_WIDTH_A = 9;
    defparam spi_txrx_ram_0_0_0.DATA_WIDTH_B = 9;
    defparam spi_txrx_ram_0_0_0.REGMODE_A = "NOREG";
    defparam spi_txrx_ram_0_0_0.REGMODE_B = "NOREG";
    defparam spi_txrx_ram_0_0_0.CSDECODE_A = "0b000";
    defparam spi_txrx_ram_0_0_0.CSDECODE_B = "0b000";
    defparam spi_txrx_ram_0_0_0.WRITEMODE_A = "NORMAL";
    defparam spi_txrx_ram_0_0_0.WRITEMODE_B = "NORMAL";
    defparam spi_txrx_ram_0_0_0.GSR = "ENABLED";
    defparam spi_txrx_ram_0_0_0.RESETMODE = "ASYNC";
    defparam spi_txrx_ram_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam spi_txrx_ram_0_0_0.INIT_DATA = "STATIC";
    defparam spi_txrx_ram_0_0_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam spi_txrx_ram_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module ram_b
//

module ram_b (BrdSelectIxD, n9119, n7963, n127, n9948, n9975, \DetBSelectxSN[1] , 
            \DetBSelectxSN[8] , \CfgFSMSRegxDP[4][1] , \CfgFSMSRegxDP[4][0] , 
            \CfgFSMSRegxDP[3] , GND_net, \CfgFSMSRegxDP[1][1] , \CfgFSMSRegxDP[1][0] , 
            \CfgFSMSRegxDP[0] , PCntBxDP, Clk96xC, VCC_net, CfgRamBWrEnxS, 
            PllLockxS_N_1, CfgRamBOutxD, RamBEndxS, SRCB_STEP_c_11, 
            DETB_TRIGGER_c, DETB_END_CYC_0, \CfgFSMSRegxDP[2] , PCntTxTrgxS, 
            AuxTxTrgxS, UartBRxEnxS, SrcBSelectxD, n9987, n9974, \DetBSelectxSN[20] , 
            n9970, \SrcBSelectxSN[0] , \DetBSelectxSN[22] , n7917, n9949, 
            n9113, n7949, n9958, \DetBSelectxSN[2] , \DetBSelectxSN[12] , 
            \DetBSelectxSN[14] , \UartDetBtoFPGAxDP[24] , n8806) /* synthesis NGD_DRC_MASK=1 */ ;
    output [4:0]BrdSelectIxD;
    output n9119;
    output n7963;
    output n127;
    input n9948;
    output n9975;
    output \DetBSelectxSN[1] ;
    output \DetBSelectxSN[8] ;
    input \CfgFSMSRegxDP[4][1] ;
    input \CfgFSMSRegxDP[4][0] ;
    input [7:0]\CfgFSMSRegxDP[3] ;
    input GND_net;
    input \CfgFSMSRegxDP[1][1] ;
    input \CfgFSMSRegxDP[1][0] ;
    input [7:0]\CfgFSMSRegxDP[0] ;
    input [9:0]PCntBxDP;
    input Clk96xC;
    input VCC_net;
    input CfgRamBWrEnxS;
    input PllLockxS_N_1;
    output [17:0]CfgRamBOutxD;
    output RamBEndxS;
    output SRCB_STEP_c_11;
    output DETB_TRIGGER_c;
    output DETB_END_CYC_0;
    input [7:0]\CfgFSMSRegxDP[2] ;
    output PCntTxTrgxS;
    output AuxTxTrgxS;
    output UartBRxEnxS;
    output SrcBSelectxD;
    output n9987;
    input n9974;
    output \DetBSelectxSN[20] ;
    input n9970;
    output \SrcBSelectxSN[0] ;
    output \DetBSelectxSN[22] ;
    output n7917;
    output n9949;
    output n9113;
    output n7949;
    input n9958;
    output \DetBSelectxSN[2] ;
    output \DetBSelectxSN[12] ;
    output \DetBSelectxSN[14] ;
    input \UartDetBtoFPGAxDP[24] ;
    output n8806;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    wire n9989, n10000;
    
    LUT4 i1_2_lut_3_lut (.A(BrdSelectIxD[4]), .B(BrdSelectIxD[3]), .C(BrdSelectIxD[2]), 
         .Z(n9119)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_3_lut_adj_86 (.A(BrdSelectIxD[4]), .B(BrdSelectIxD[3]), 
         .C(BrdSelectIxD[2]), .Z(n7963)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_adj_86.init = 16'hfbfb;
    LUT4 i1_2_lut (.A(BrdSelectIxD[0]), .B(BrdSelectIxD[2]), .Z(n127)) /* synthesis lut_function=((B)+!A) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i2_3_lut_4_lut (.A(BrdSelectIxD[2]), .B(n9948), .C(BrdSelectIxD[0]), 
         .D(n9975), .Z(\DetBSelectxSN[1] )) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i2_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_4_lut (.A(BrdSelectIxD[2]), .B(n9948), .C(n9989), 
         .D(BrdSelectIxD[0]), .Z(\DetBSelectxSN[8] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    DP8KC ram_b_0_1_0 (.DIA0(\CfgFSMSRegxDP[3] [1]), .DIA1(\CfgFSMSRegxDP[3] [2]), 
          .DIA2(\CfgFSMSRegxDP[3] [3]), .DIA3(\CfgFSMSRegxDP[3] [4]), .DIA4(\CfgFSMSRegxDP[3] [5]), 
          .DIA5(\CfgFSMSRegxDP[3] [6]), .DIA6(\CfgFSMSRegxDP[3] [7]), .DIA7(\CfgFSMSRegxDP[4][0] ), 
          .DIA8(\CfgFSMSRegxDP[4][1] ), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(\CfgFSMSRegxDP[0] [0]), .ADA4(\CfgFSMSRegxDP[0] [1]), 
          .ADA5(\CfgFSMSRegxDP[0] [2]), .ADA6(\CfgFSMSRegxDP[0] [3]), .ADA7(\CfgFSMSRegxDP[0] [4]), 
          .ADA8(\CfgFSMSRegxDP[0] [5]), .ADA9(\CfgFSMSRegxDP[0] [6]), .ADA10(\CfgFSMSRegxDP[0] [7]), 
          .ADA11(\CfgFSMSRegxDP[1][0] ), .ADA12(\CfgFSMSRegxDP[1][1] ), 
          .CEA(VCC_net), .OCEA(VCC_net), .CLKA(Clk96xC), .WEA(CfgRamBWrEnxS), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(PllLockxS_N_1), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(VCC_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(PCntBxDP[0]), .ADB4(PCntBxDP[1]), .ADB5(PCntBxDP[2]), 
          .ADB6(PCntBxDP[3]), .ADB7(PCntBxDP[4]), .ADB8(PCntBxDP[5]), 
          .ADB9(PCntBxDP[6]), .ADB10(PCntBxDP[7]), .ADB11(PCntBxDP[8]), 
          .ADB12(PCntBxDP[9]), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(Clk96xC), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(PllLockxS_N_1), .DOA0(CfgRamBOutxD[9]), .DOA1(CfgRamBOutxD[10]), 
          .DOA2(CfgRamBOutxD[11]), .DOA3(CfgRamBOutxD[12]), .DOA4(CfgRamBOutxD[13]), 
          .DOA5(CfgRamBOutxD[14]), .DOA6(CfgRamBOutxD[15]), .DOA7(CfgRamBOutxD[16]), 
          .DOA8(CfgRamBOutxD[17]), .DOB0(DETB_END_CYC_0), .DOB1(DETB_TRIGGER_c), 
          .DOB2(SRCB_STEP_c_11), .DOB8(RamBEndxS)) /* synthesis MEM_LPC_FILE="ram_b.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=15, LSE_RCOL=20, LSE_LLINE=785, LSE_RLINE=785 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam ram_b_0_1_0.DATA_WIDTH_A = 9;
    defparam ram_b_0_1_0.DATA_WIDTH_B = 9;
    defparam ram_b_0_1_0.REGMODE_A = "NOREG";
    defparam ram_b_0_1_0.REGMODE_B = "OUTREG";
    defparam ram_b_0_1_0.CSDECODE_A = "0b000";
    defparam ram_b_0_1_0.CSDECODE_B = "0b000";
    defparam ram_b_0_1_0.WRITEMODE_A = "NORMAL";
    defparam ram_b_0_1_0.WRITEMODE_B = "NORMAL";
    defparam ram_b_0_1_0.GSR = "ENABLED";
    defparam ram_b_0_1_0.RESETMODE = "SYNC";
    defparam ram_b_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ram_b_0_1_0.INIT_DATA = "STATIC";
    defparam ram_b_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ram_b_0_0_1 (.DIA0(\CfgFSMSRegxDP[2] [0]), .DIA1(\CfgFSMSRegxDP[2] [1]), 
          .DIA2(\CfgFSMSRegxDP[2] [2]), .DIA3(\CfgFSMSRegxDP[2] [3]), .DIA4(\CfgFSMSRegxDP[2] [4]), 
          .DIA5(\CfgFSMSRegxDP[2] [5]), .DIA6(\CfgFSMSRegxDP[2] [6]), .DIA7(\CfgFSMSRegxDP[2] [7]), 
          .DIA8(\CfgFSMSRegxDP[3] [0]), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(\CfgFSMSRegxDP[0] [0]), .ADA4(\CfgFSMSRegxDP[0] [1]), 
          .ADA5(\CfgFSMSRegxDP[0] [2]), .ADA6(\CfgFSMSRegxDP[0] [3]), .ADA7(\CfgFSMSRegxDP[0] [4]), 
          .ADA8(\CfgFSMSRegxDP[0] [5]), .ADA9(\CfgFSMSRegxDP[0] [6]), .ADA10(\CfgFSMSRegxDP[0] [7]), 
          .ADA11(\CfgFSMSRegxDP[1][0] ), .ADA12(\CfgFSMSRegxDP[1][1] ), 
          .CEA(VCC_net), .OCEA(VCC_net), .CLKA(Clk96xC), .WEA(CfgRamBWrEnxS), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(PllLockxS_N_1), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(VCC_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(PCntBxDP[0]), .ADB4(PCntBxDP[1]), .ADB5(PCntBxDP[2]), 
          .ADB6(PCntBxDP[3]), .ADB7(PCntBxDP[4]), .ADB8(PCntBxDP[5]), 
          .ADB9(PCntBxDP[6]), .ADB10(PCntBxDP[7]), .ADB11(PCntBxDP[8]), 
          .ADB12(PCntBxDP[9]), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(Clk96xC), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(PllLockxS_N_1), .DOA0(CfgRamBOutxD[0]), .DOA1(CfgRamBOutxD[1]), 
          .DOA2(CfgRamBOutxD[2]), .DOA3(CfgRamBOutxD[3]), .DOA4(CfgRamBOutxD[4]), 
          .DOA5(CfgRamBOutxD[5]), .DOA6(CfgRamBOutxD[6]), .DOA7(CfgRamBOutxD[7]), 
          .DOA8(CfgRamBOutxD[8]), .DOB0(BrdSelectIxD[0]), .DOB1(BrdSelectIxD[1]), 
          .DOB2(BrdSelectIxD[2]), .DOB3(BrdSelectIxD[3]), .DOB4(BrdSelectIxD[4]), 
          .DOB5(SrcBSelectxD), .DOB6(UartBRxEnxS), .DOB7(AuxTxTrgxS), 
          .DOB8(PCntTxTrgxS)) /* synthesis MEM_LPC_FILE="ram_b.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=15, LSE_RCOL=20, LSE_LLINE=785, LSE_RLINE=785 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam ram_b_0_0_1.DATA_WIDTH_A = 9;
    defparam ram_b_0_0_1.DATA_WIDTH_B = 9;
    defparam ram_b_0_0_1.REGMODE_A = "NOREG";
    defparam ram_b_0_0_1.REGMODE_B = "OUTREG";
    defparam ram_b_0_0_1.CSDECODE_A = "0b000";
    defparam ram_b_0_0_1.CSDECODE_B = "0b000";
    defparam ram_b_0_0_1.WRITEMODE_A = "NORMAL";
    defparam ram_b_0_0_1.WRITEMODE_B = "NORMAL";
    defparam ram_b_0_0_1.GSR = "ENABLED";
    defparam ram_b_0_0_1.RESETMODE = "SYNC";
    defparam ram_b_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam ram_b_0_0_1.INIT_DATA = "STATIC";
    defparam ram_b_0_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_b_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i1_2_lut_3_lut_4_lut_adj_87 (.A(n9987), .B(n10000), .C(n9974), 
         .D(BrdSelectIxD[1]), .Z(\DetBSelectxSN[20] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_4_lut_adj_87.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_88 (.A(BrdSelectIxD[1]), .B(n9970), .C(BrdSelectIxD[0]), 
         .D(BrdSelectIxD[2]), .Z(\SrcBSelectxSN[0] )) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i2_3_lut_4_lut_adj_88.init = 16'hfffb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(n9987), .B(n10000), .C(n9974), 
         .D(BrdSelectIxD[1]), .Z(\DetBSelectxSN[22] )) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'hfeff;
    LUT4 i1_2_lut_rep_103 (.A(BrdSelectIxD[4]), .B(BrdSelectIxD[3]), .Z(n9975)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_rep_103.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_90 (.A(BrdSelectIxD[4]), .B(BrdSelectIxD[3]), 
         .C(BrdSelectIxD[2]), .Z(n7917)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_adj_90.init = 16'hefef;
    LUT4 i1_2_lut_rep_77_3_lut (.A(BrdSelectIxD[4]), .B(BrdSelectIxD[3]), 
         .C(BrdSelectIxD[2]), .Z(n9949)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_rep_77_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_128 (.A(BrdSelectIxD[3]), .B(BrdSelectIxD[4]), .Z(n10000)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_rep_128.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_91 (.A(BrdSelectIxD[3]), .B(BrdSelectIxD[4]), 
         .C(BrdSelectIxD[2]), .Z(n9113)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_adj_91.init = 16'hbfbf;
    LUT4 i1_2_lut_3_lut_adj_92 (.A(BrdSelectIxD[3]), .B(BrdSelectIxD[4]), 
         .C(BrdSelectIxD[2]), .Z(n7949)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_adj_92.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_115 (.A(BrdSelectIxD[0]), .B(BrdSelectIxD[2]), .Z(n9987)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(623[57:72])
    defparam i1_2_lut_rep_115.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_93 (.A(BrdSelectIxD[2]), .B(n9975), .C(n9958), 
         .D(BrdSelectIxD[0]), .Z(\DetBSelectxSN[2] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_4_lut_adj_93.init = 16'hfffe;
    LUT4 i1_2_lut_rep_117 (.A(BrdSelectIxD[4]), .B(BrdSelectIxD[3]), .Z(n9989)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_rep_117.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_94 (.A(n9989), .B(n9987), .C(n9974), 
         .D(BrdSelectIxD[1]), .Z(\DetBSelectxSN[12] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_4_lut_adj_94.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_95 (.A(n9989), .B(n9987), .C(n9974), 
         .D(BrdSelectIxD[1]), .Z(\DetBSelectxSN[14] )) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(785[15:20])
    defparam i1_2_lut_3_lut_4_lut_adj_95.init = 16'hfeff;
    LUT4 i3_4_lut (.A(BrdSelectIxD[1]), .B(\UartDetBtoFPGAxDP[24] ), .C(BrdSelectIxD[2]), 
         .D(BrdSelectIxD[0]), .Z(n8806)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0004;
    
endmodule
//
// Verilog Description of module ram_a
//

module ram_a (\CfgFSMSRegxDP[3][0] , \CfgFSMSRegxDP[2] , GND_net, \CfgFSMSRegxDP[1][1] , 
            \CfgFSMSRegxDP[1][0] , \CfgFSMSRegxDP[0] , PCntAxDP, Clk96xC, 
            VCC_net, CfgRamAWrEnxS, PllLockxS_N_1, CfgRamAOutxD, DETB_STATUS_SELECT_0) /* synthesis NGD_DRC_MASK=1 */ ;
    input \CfgFSMSRegxDP[3][0] ;
    input [7:0]\CfgFSMSRegxDP[2] ;
    input GND_net;
    input \CfgFSMSRegxDP[1][1] ;
    input \CfgFSMSRegxDP[1][0] ;
    input [7:0]\CfgFSMSRegxDP[0] ;
    input [9:0]PCntAxDP;
    input Clk96xC;
    input VCC_net;
    input CfgRamAWrEnxS;
    input PllLockxS_N_1;
    output [8:0]CfgRamAOutxD;
    output DETB_STATUS_SELECT_0;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    DP8KC ram_a_0_0_0 (.DIA0(\CfgFSMSRegxDP[2] [0]), .DIA1(\CfgFSMSRegxDP[2] [1]), 
          .DIA2(\CfgFSMSRegxDP[2] [2]), .DIA3(\CfgFSMSRegxDP[2] [3]), .DIA4(\CfgFSMSRegxDP[2] [4]), 
          .DIA5(\CfgFSMSRegxDP[2] [5]), .DIA6(\CfgFSMSRegxDP[2] [6]), .DIA7(\CfgFSMSRegxDP[2] [7]), 
          .DIA8(\CfgFSMSRegxDP[3][0] ), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(\CfgFSMSRegxDP[0] [0]), .ADA4(\CfgFSMSRegxDP[0] [1]), 
          .ADA5(\CfgFSMSRegxDP[0] [2]), .ADA6(\CfgFSMSRegxDP[0] [3]), .ADA7(\CfgFSMSRegxDP[0] [4]), 
          .ADA8(\CfgFSMSRegxDP[0] [5]), .ADA9(\CfgFSMSRegxDP[0] [6]), .ADA10(\CfgFSMSRegxDP[0] [7]), 
          .ADA11(\CfgFSMSRegxDP[1][0] ), .ADA12(\CfgFSMSRegxDP[1][1] ), 
          .CEA(VCC_net), .OCEA(VCC_net), .CLKA(Clk96xC), .WEA(CfgRamAWrEnxS), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(PllLockxS_N_1), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(VCC_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(PCntAxDP[0]), .ADB4(PCntAxDP[1]), .ADB5(PCntAxDP[2]), 
          .ADB6(PCntAxDP[3]), .ADB7(PCntAxDP[4]), .ADB8(PCntAxDP[5]), 
          .ADB9(PCntAxDP[6]), .ADB10(PCntAxDP[7]), .ADB11(PCntAxDP[8]), 
          .ADB12(PCntAxDP[9]), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(Clk96xC), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(PllLockxS_N_1), .DOA0(CfgRamAOutxD[0]), .DOA1(CfgRamAOutxD[1]), 
          .DOA2(CfgRamAOutxD[2]), .DOA3(CfgRamAOutxD[3]), .DOA4(CfgRamAOutxD[4]), 
          .DOA5(CfgRamAOutxD[5]), .DOA6(CfgRamAOutxD[6]), .DOA7(CfgRamAOutxD[7]), 
          .DOA8(CfgRamAOutxD[8]), .DOB0(DETB_STATUS_SELECT_0)) /* synthesis MEM_LPC_FILE="ram_a.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=15, LSE_RCOL=20, LSE_LLINE=763, LSE_RLINE=763 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_main.vhd(763[15:20])
    defparam ram_a_0_0_0.DATA_WIDTH_A = 9;
    defparam ram_a_0_0_0.DATA_WIDTH_B = 9;
    defparam ram_a_0_0_0.REGMODE_A = "NOREG";
    defparam ram_a_0_0_0.REGMODE_B = "OUTREG";
    defparam ram_a_0_0_0.CSDECODE_A = "0b000";
    defparam ram_a_0_0_0.CSDECODE_B = "0b000";
    defparam ram_a_0_0_0.WRITEMODE_A = "NORMAL";
    defparam ram_a_0_0_0.WRITEMODE_B = "NORMAL";
    defparam ram_a_0_0_0.GSR = "ENABLED";
    defparam ram_a_0_0_0.RESETMODE = "SYNC";
    defparam ram_a_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ram_a_0_0_0.INIT_DATA = "STATIC";
    defparam ram_a_0_0_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_a_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module ext_fifo
//

module ext_fifo (Clk96xC, n726, n3000, UartBuffFullxS, UartTxDatRdyxS, 
            n7, n8, n3003, \SpiOutDatxD[1] , GND_net, \SpiStatexDP[0] , 
            RAM0_CEN_c, RAM0_SCLK_c, \UartTxDatxD[0] , SpiSRegxDN, Clk96xC_enable_267, 
            Clk96xC_enable_238, EXP_J303_D_c_3, n9162, n734, n9946, 
            UartBuffEmptyxS, n10539, \BitCntxDP[0] , VCC_net, n9433, 
            RAM0_SIO_out_1, \SpiOutDatxD[0] , \UartTxDatxD[2] , \SpiOutDatxD[3] , 
            \SpiOutDatxD[5] , \SpiOutDatxD[4] , RAM0_SIO_c_0, \UartTxDatxD[6] , 
            \UartTxDatxD[5] , \UartTxDatxD[4] , \UartTxDatxD[3] , \UartTxDatxD[1] , 
            \SpiOutDatxD[7] , n2996, ParDatfromMuxxD, ParDatfromMuxRdyxS, 
            PllLockxS_N_1);
    input Clk96xC;
    output n726;
    output n3000;
    input UartBuffFullxS;
    output UartTxDatRdyxS;
    output n7;
    output n8;
    output n3003;
    output \SpiOutDatxD[1] ;
    input GND_net;
    output \SpiStatexDP[0] ;
    output RAM0_CEN_c;
    output RAM0_SCLK_c;
    output \UartTxDatxD[0] ;
    input [7:0]SpiSRegxDN;
    input Clk96xC_enable_267;
    input Clk96xC_enable_238;
    input EXP_J303_D_c_3;
    output n9162;
    output n734;
    output n9946;
    input UartBuffEmptyxS;
    output n10539;
    output \BitCntxDP[0] ;
    input VCC_net;
    input n9433;
    input RAM0_SIO_out_1;
    output \SpiOutDatxD[0] ;
    output \UartTxDatxD[2] ;
    output \SpiOutDatxD[3] ;
    output \SpiOutDatxD[5] ;
    output \SpiOutDatxD[4] ;
    output RAM0_SIO_c_0;
    output \UartTxDatxD[6] ;
    output \UartTxDatxD[5] ;
    output \UartTxDatxD[4] ;
    output \UartTxDatxD[3] ;
    output \UartTxDatxD[1] ;
    output \SpiOutDatxD[7] ;
    output n2996;
    input [7:0]ParDatfromMuxxD;
    input ParDatfromMuxRdyxS;
    input PllLockxS_N_1;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    wire [23:0]NextAddrxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(59[9:20])
    
    wire Clk96xC_enable_47, n8734;
    wire [7:0]IntFIFODataOutxD;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(52[9:25])
    
    wire n9947, ExtFIFOEmptyxS, n9936;
    wire [22:0]ExtFIFOWrAddrxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(57[9:25])
    
    wire n4755;
    wire [31:0]n708;
    
    wire n2, n8664, n4733, Clk96xC_enable_107;
    wire [22:0]ExtFIFORdAddrxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(58[9:25])
    
    wire n9935, n8715;
    wire [7:0]n2994;
    
    wire n4, n8718, n4758, n2_adj_1046, n8687, n8471;
    wire [22:0]ExtFIFORdAddrxDN_22__N_574;
    
    wire n8472;
    wire [1:0]SpiStatexDN;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(49[22:33])
    
    wire ExtFIFOFullxSP, ExtFIFOFullxSN, RamCSnxSN, Clk96xC_enable_276, 
        n8719, n8701, n1057, n9991, n3930, n8728, n8703, n4761, 
        n2_adj_1047, n8689, n4776, n2_adj_1048, n8710, n3307;
    wire [22:0]ExtFIFOFullxSN_N_655;
    wire [22:0]ExtFIFOWrAddrxDN_22__N_619;
    
    wire n8761, n9050, n4661, n9937, n3993, n4015, n4731, n2_adj_1049, 
        n6701;
    wire [9:0]ByteCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(55[9:19])
    
    wire n6766, n8488, n9939, n4779, n2_adj_1050, n8711, n8487, 
        n8560;
    wire [9:0]n45;
    
    wire n8486, n8559, n8485, n8558, n4782, n2_adj_1051, n8713, 
        n8557, n8556, n8707, n8484, n8657, n8705, n8_adj_1052, 
        n8700, n8720, n5427, n4743, n2_adj_1053, n9971, n9084, 
        n8483, n8482, n8481, n8480, n8479, n4734, n2_adj_1054, 
        n8478, SpiStatexDN_1__N_654, n4_adj_1055, IntFIFOEmptyxS, n8550, 
        n4659, n4660, n8473;
    wire [4:0]StatexDN_4__N_402;
    
    wire n8731, n8549, n8732, n8548, n8219, n8220, n4191, n8737, 
        n8729, n8733, n8547, n4791, n2_adj_1056, n8546, n8545, 
        n8544, n8543, n8542, n8541, n8470, n8540, n8475, n8476, 
        n8469, n8468, n8467, n8466, n8474, n4_adj_1057, n8221, 
        n811, n4019, n1, n9938, n8223, n8227, n8228, n4017, 
        n9067, n8226, Clk96xC_enable_200, n5384, n8222, n9151, n16, 
        n4_adj_1058, n8717, n9163, n9186, n9198;
    wire [2:0]BitCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(54[9:18])
    
    wire n8823, n8218;
    wire [2:0]BitCntxDN_2__N_476;
    
    wire n4737, n2_adj_1059, n8225, n4818, n2_adj_1060, n8224, n9943, 
        n9160, IntFIFORdEnxS, n4746, n8217, n4_adj_1061, n2_adj_1062, 
        n4_adj_1063, n10, n9038, n6, n4_adj_1064, n4_adj_1065, n4_adj_1066, 
        n4785, n2_adj_1067, n4_adj_1068, n4788, n2_adj_1069, n4_adj_1070;
    
    FD1P3AX NextAddrxDP_i0_i0 (.D(n8734), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i0.GSR = "ENABLED";
    LUT4 mux_1281_i3_3_lut (.A(NextAddrxDP[18]), .B(IntFIFODataOutxD[2]), 
         .C(n726), .Z(n3000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1281_i3_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_64 (.A(n9947), .B(ExtFIFOEmptyxS), .C(UartBuffFullxS), 
         .Z(n9936)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_64.init = 16'hfefe;
    LUT4 i2_4_lut (.A(ExtFIFOWrAddrxDP[20]), .B(n4755), .C(n708[10]), 
         .D(n2), .Z(n8664)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut.init = 16'hffec;
    LUT4 i1_4_lut (.A(NextAddrxDP[20]), .B(n4733), .C(NextAddrxDP[12]), 
         .D(Clk96xC_enable_107), .Z(n4755)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut.init = 16'hc088;
    LUT4 select_1230_Select_20_i2_2_lut (.A(ExtFIFORdAddrxDP[20]), .B(n708[1]), 
         .Z(n2)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_20_i2_2_lut.init = 16'h8888;
    LUT4 select_1229_Select_0_i8_2_lut_rep_63_4_lut (.A(n9947), .B(ExtFIFOEmptyxS), 
         .C(UartBuffFullxS), .D(UartTxDatRdyxS), .Z(n9935)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam select_1229_Select_0_i8_2_lut_rep_63_4_lut.init = 16'hfe00;
    FD1P3AX NextAddrxDP_i0_i14 (.D(n8715), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[14])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i14.GSR = "ENABLED";
    LUT4 mux_1289_i2_4_lut (.A(n7), .B(n2994[1]), .C(n8), .D(n3003), 
         .Z(\SpiOutDatxD[1] )) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!(C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1289_i2_4_lut.init = 16'hc5f5;
    LUT4 mux_1281_i2_3_lut (.A(NextAddrxDP[17]), .B(IntFIFODataOutxD[1]), 
         .C(n726), .Z(n2994[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1281_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut (.A(n9947), .B(ExtFIFOEmptyxS), .C(UartBuffFullxS), 
         .D(UartTxDatRdyxS), .Z(n4)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    FD1P3AX NextAddrxDP_i0_i13 (.D(n8718), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[13])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i13.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_28 (.A(ExtFIFOWrAddrxDP[19]), .B(n4758), .C(n708[10]), 
         .D(n2_adj_1046), .Z(n8687)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_28.init = 16'hffec;
    CCU2D add_38_13 (.A0(ExtFIFORdAddrxDP[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8471), .COUT(n8472), .S0(ExtFIFORdAddrxDN_22__N_574[11]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[12]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_13.INIT0 = 16'h5aaa;
    defparam add_38_13.INIT1 = 16'h5aaa;
    defparam add_38_13.INJECT1_0 = "NO";
    defparam add_38_13.INJECT1_1 = "NO";
    FD1S3AX SpiStatexDP_i0 (.D(SpiStatexDN[0]), .CK(Clk96xC), .Q(\SpiStatexDP[0] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam SpiStatexDP_i0.GSR = "ENABLED";
    FD1S3AX ExtFIFOFullxSP_107 (.D(ExtFIFOFullxSN), .CK(Clk96xC), .Q(ExtFIFOFullxSP)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOFullxSP_107.GSR = "ENABLED";
    FD1S3AX RamCSnxSP_108 (.D(RamCSnxSN), .CK(Clk96xC), .Q(RAM0_CEN_c)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam RamCSnxSP_108.GSR = "ENABLED";
    FD1S3IX RamSCKxSP_109 (.D(\SpiStatexDP[0] ), .CK(Clk96xC), .CD(RAM0_SCLK_c), 
            .Q(RAM0_SCLK_c)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam RamSCKxSP_109.GSR = "ENABLED";
    FD1P3AX SpiSRegxDP_i0 (.D(SpiSRegxDN[0]), .SP(Clk96xC_enable_276), .CK(Clk96xC), 
            .Q(\UartTxDatxD[0] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam SpiSRegxDP_i0.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i12 (.D(n8719), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[12])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i12.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i11 (.D(n8701), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[11])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i11.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_29 (.A(NextAddrxDP[19]), .B(n4733), .C(NextAddrxDP[11]), 
         .D(Clk96xC_enable_107), .Z(n4758)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_29.init = 16'hc088;
    LUT4 i2081_4_lut (.A(n708[21]), .B(Clk96xC_enable_107), .C(n1057), 
         .D(n9991), .Z(n3930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2081_4_lut.init = 16'hcfca;
    LUT4 select_1230_Select_19_i2_2_lut (.A(ExtFIFORdAddrxDP[19]), .B(n708[1]), 
         .Z(n2_adj_1046)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_19_i2_2_lut.init = 16'h8888;
    FD1P3AX NextAddrxDP_i0_i10 (.D(n8728), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[10])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i10.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i9 (.D(n8703), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[9])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i9.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_30 (.A(ExtFIFOWrAddrxDP[18]), .B(n4761), .C(n708[10]), 
         .D(n2_adj_1047), .Z(n8689)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_30.init = 16'hffec;
    LUT4 i1_4_lut_adj_31 (.A(NextAddrxDP[18]), .B(n4733), .C(NextAddrxDP[10]), 
         .D(Clk96xC_enable_107), .Z(n4761)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_31.init = 16'hc088;
    LUT4 select_1230_Select_18_i2_2_lut (.A(ExtFIFORdAddrxDP[18]), .B(n708[1]), 
         .Z(n2_adj_1047)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_18_i2_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_32 (.A(ExtFIFOWrAddrxDP[17]), .B(n4776), .C(n708[10]), 
         .D(n2_adj_1048), .Z(n8710)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_32.init = 16'hffec;
    FD1P3IX ExtFIFORdAddrxDP__i0 (.D(ExtFIFORdAddrxDN_22__N_574[0]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i0.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i0 (.D(ExtFIFOWrAddrxDN_22__N_619[0]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOFullxSN_N_655[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_119 (.A(n708[10]), .B(n708[1]), .Z(n9991)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_2_lut_rep_119.init = 16'heeee;
    LUT4 i1_4_lut_4_lut (.A(Clk96xC_enable_107), .B(n708[10]), .C(n8761), 
         .D(n708[9]), .Z(n9050)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hfff4;
    LUT4 i2137_4_lut_4_lut (.A(Clk96xC_enable_107), .B(n4661), .C(n708[1]), 
         .D(n9937), .Z(n3993)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i2137_4_lut_4_lut.init = 16'hdc50;
    LUT4 i2159_4_lut_4_lut (.A(Clk96xC_enable_107), .B(n708[0]), .C(n708[17]), 
         .D(EXP_J303_D_c_3), .Z(n4015)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i2159_4_lut_4_lut.init = 16'hdc50;
    LUT4 i2_4_lut_adj_33 (.A(ExtFIFOWrAddrxDP[11]), .B(n4731), .C(n708[10]), 
         .D(n2_adj_1049), .Z(n8701)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_33.init = 16'hffec;
    LUT4 i1_4_lut_adj_34 (.A(NextAddrxDP[17]), .B(n4733), .C(NextAddrxDP[9]), 
         .D(Clk96xC_enable_107), .Z(n4776)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_34.init = 16'hc088;
    LUT4 i2_4_lut_adj_35 (.A(n9947), .B(n6701), .C(ByteCntxDP[3]), .D(ByteCntxDP[2]), 
         .Z(n6766)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_35.init = 16'hfefa;
    LUT4 i1_2_lut_3_lut (.A(n708[10]), .B(n708[1]), .C(n4733), .Z(Clk96xC_enable_47)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    CCU2D add_61_23 (.A0(ExtFIFOWrAddrxDP[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8488), .S0(ExtFIFOWrAddrxDN_22__N_619[21]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[22]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_23.INIT0 = 16'h5aaa;
    defparam add_61_23.INIT1 = 16'h5aaa;
    defparam add_61_23.INJECT1_0 = "NO";
    defparam add_61_23.INJECT1_1 = "NO";
    LUT4 select_1230_Select_17_i2_2_lut (.A(ExtFIFORdAddrxDP[17]), .B(n708[1]), 
         .Z(n2_adj_1048)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_17_i2_2_lut.init = 16'h8888;
    LUT4 i6998_3_lut_4_lut_4_lut (.A(n708[10]), .B(n708[1]), .C(n9939), 
         .D(n708[21]), .Z(n9162)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i6998_3_lut_4_lut_4_lut.init = 16'h4544;
    LUT4 i2_4_lut_adj_36 (.A(ExtFIFOWrAddrxDP[16]), .B(n4779), .C(n708[10]), 
         .D(n2_adj_1050), .Z(n8711)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_36.init = 16'hffec;
    CCU2D add_61_21 (.A0(ExtFIFOWrAddrxDP[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8487), .COUT(n8488), .S0(ExtFIFOWrAddrxDN_22__N_619[19]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[20]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_21.INIT0 = 16'h5aaa;
    defparam add_61_21.INIT1 = 16'h5aaa;
    defparam add_61_21.INJECT1_0 = "NO";
    defparam add_61_21.INJECT1_1 = "NO";
    CCU2D ByteCntxDP_1479_add_4_11 (.A0(ByteCntxDP[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8560), .S0(n45[9]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479_add_4_11.INIT0 = 16'hfaaa;
    defparam ByteCntxDP_1479_add_4_11.INIT1 = 16'h0000;
    defparam ByteCntxDP_1479_add_4_11.INJECT1_0 = "NO";
    defparam ByteCntxDP_1479_add_4_11.INJECT1_1 = "NO";
    CCU2D add_61_19 (.A0(ExtFIFOWrAddrxDP[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8486), .COUT(n8487), .S0(ExtFIFOWrAddrxDN_22__N_619[17]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[18]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_19.INIT0 = 16'h5aaa;
    defparam add_61_19.INIT1 = 16'h5aaa;
    defparam add_61_19.INJECT1_0 = "NO";
    defparam add_61_19.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_37 (.A(NextAddrxDP[16]), .B(n4733), .C(NextAddrxDP[8]), 
         .D(Clk96xC_enable_107), .Z(n4779)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_37.init = 16'hc088;
    LUT4 i4699_2_lut (.A(ByteCntxDP[0]), .B(ByteCntxDP[1]), .Z(n6701)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4699_2_lut.init = 16'heeee;
    LUT4 select_1230_Select_16_i2_2_lut (.A(ExtFIFORdAddrxDP[16]), .B(n708[1]), 
         .Z(n2_adj_1050)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_16_i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(n726), .B(n734), .Z(n1057)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D ByteCntxDP_1479_add_4_9 (.A0(ByteCntxDP[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ByteCntxDP[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8559), .COUT(n8560), .S0(n45[7]), .S1(n45[8]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479_add_4_9.INIT0 = 16'hfaaa;
    defparam ByteCntxDP_1479_add_4_9.INIT1 = 16'hfaaa;
    defparam ByteCntxDP_1479_add_4_9.INJECT1_0 = "NO";
    defparam ByteCntxDP_1479_add_4_9.INJECT1_1 = "NO";
    CCU2D add_61_17 (.A0(ExtFIFOWrAddrxDP[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8485), .COUT(n8486), .S0(ExtFIFOWrAddrxDN_22__N_619[15]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[16]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_17.INIT0 = 16'h5aaa;
    defparam add_61_17.INIT1 = 16'h5aaa;
    defparam add_61_17.INJECT1_0 = "NO";
    defparam add_61_17.INJECT1_1 = "NO";
    CCU2D ByteCntxDP_1479_add_4_7 (.A0(ByteCntxDP[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ByteCntxDP[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8558), .COUT(n8559), .S0(n45[5]), .S1(n45[6]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479_add_4_7.INIT0 = 16'hfaaa;
    defparam ByteCntxDP_1479_add_4_7.INIT1 = 16'hfaaa;
    defparam ByteCntxDP_1479_add_4_7.INJECT1_0 = "NO";
    defparam ByteCntxDP_1479_add_4_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_38 (.A(ExtFIFOWrAddrxDP[15]), .B(n4782), .C(n708[10]), 
         .D(n2_adj_1051), .Z(n8713)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_38.init = 16'hffec;
    CCU2D ByteCntxDP_1479_add_4_5 (.A0(ByteCntxDP[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ByteCntxDP[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8557), .COUT(n8558), .S0(n45[3]), .S1(n45[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479_add_4_5.INIT0 = 16'hfaaa;
    defparam ByteCntxDP_1479_add_4_5.INIT1 = 16'hfaaa;
    defparam ByteCntxDP_1479_add_4_5.INJECT1_0 = "NO";
    defparam ByteCntxDP_1479_add_4_5.INJECT1_1 = "NO";
    CCU2D ByteCntxDP_1479_add_4_3 (.A0(ByteCntxDP[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ByteCntxDP[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8556), .COUT(n8557), .S0(n45[1]), .S1(n45[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479_add_4_3.INIT0 = 16'hfaaa;
    defparam ByteCntxDP_1479_add_4_3.INIT1 = 16'hfaaa;
    defparam ByteCntxDP_1479_add_4_3.INJECT1_0 = "NO";
    defparam ByteCntxDP_1479_add_4_3.INJECT1_1 = "NO";
    FD1P3AX NextAddrxDP_i0_i8 (.D(n8707), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i8.GSR = "ENABLED";
    CCU2D add_61_15 (.A0(ExtFIFOWrAddrxDP[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8484), .COUT(n8485), .S0(ExtFIFOWrAddrxDN_22__N_619[13]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[14]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_15.INIT0 = 16'h5aaa;
    defparam add_61_15.INIT1 = 16'h5aaa;
    defparam add_61_15.INJECT1_0 = "NO";
    defparam add_61_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_39 (.A(NextAddrxDP[15]), .B(n4733), .C(NextAddrxDP[7]), 
         .D(Clk96xC_enable_107), .Z(n4782)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_39.init = 16'hc088;
    FD1P3AX NextAddrxDP_i0_i7 (.D(n8657), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i7.GSR = "ENABLED";
    LUT4 select_1230_Select_15_i2_2_lut (.A(ExtFIFORdAddrxDP[15]), .B(n708[1]), 
         .Z(n2_adj_1051)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_15_i2_2_lut.init = 16'h8888;
    FD1P3AX NextAddrxDP_i0_i6 (.D(n8705), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i6.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(n708[10]), .B(n708[1]), .C(n9946), .D(n726), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_74 (.A(n708[4]), .B(n4733), .C(n708[13]), .Z(n9946)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_74.init = 16'hfefe;
    LUT4 i1283_2_lut_4_lut (.A(n708[4]), .B(n4733), .C(n708[13]), .D(n726), 
         .Z(n3003)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1283_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_rep_75 (.A(ByteCntxDP[4]), .B(ByteCntxDP[5]), .C(n8_adj_1052), 
         .D(ByteCntxDP[8]), .Z(n9947)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_rep_75.init = 16'hfffe;
    FD1P3AX NextAddrxDP_i0_i5 (.D(n8700), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_40 (.A(NextAddrxDP[11]), .B(n4733), .C(NextAddrxDP[3]), 
         .D(Clk96xC_enable_107), .Z(n4731)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_40.init = 16'hc088;
    FD1P3AX NextAddrxDP_i0_i4 (.D(n8720), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i4.GSR = "ENABLED";
    LUT4 i7184_2_lut_rep_97 (.A(RAM0_SCLK_c), .B(\SpiStatexDP[0] ), .Z(Clk96xC_enable_276)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i7184_2_lut_rep_97.init = 16'h9999;
    LUT4 i3432_2_lut_2_lut (.A(RAM0_SCLK_c), .B(\SpiStatexDP[0] ), .Z(n5427)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i3432_2_lut_2_lut.init = 16'h1111;
    CCU2D ByteCntxDP_1479_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ByteCntxDP[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8556), .S1(n45[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479_add_4_1.INIT0 = 16'hF000;
    defparam ByteCntxDP_1479_add_4_1.INIT1 = 16'h0555;
    defparam ByteCntxDP_1479_add_4_1.INJECT1_0 = "NO";
    defparam ByteCntxDP_1479_add_4_1.INJECT1_1 = "NO";
    LUT4 select_1230_Select_11_i2_2_lut (.A(ExtFIFORdAddrxDP[11]), .B(n708[1]), 
         .Z(n2_adj_1049)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_11_i2_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_41 (.A(ExtFIFOWrAddrxDP[10]), .B(n4743), .C(n708[10]), 
         .D(n2_adj_1053), .Z(n8728)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_41.init = 16'hffec;
    LUT4 i1_4_lut_adj_42 (.A(NextAddrxDP[10]), .B(n4733), .C(NextAddrxDP[2]), 
         .D(Clk96xC_enable_107), .Z(n4743)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_42.init = 16'hc088;
    LUT4 ParDatReqxSI_I_0_2_lut_rep_65 (.A(UartBuffEmptyxS), .B(ExtFIFOEmptyxS), 
         .Z(n9937)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(156[11:54])
    defparam ParDatReqxSI_I_0_2_lut_rep_65.init = 16'h2222;
    LUT4 select_1230_Select_10_i2_2_lut (.A(ExtFIFORdAddrxDP[10]), .B(n708[1]), 
         .Z(n2_adj_1053)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_10_i2_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(UartBuffEmptyxS), .B(ExtFIFOEmptyxS), .C(n4661), 
         .D(n9971), .Z(n9084)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(156[11:54])
    defparam i2_3_lut_4_lut.init = 16'hd000;
    CCU2D add_61_13 (.A0(ExtFIFOWrAddrxDP[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8483), .COUT(n8484), .S0(ExtFIFOWrAddrxDN_22__N_619[11]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[12]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_13.INIT0 = 16'h5aaa;
    defparam add_61_13.INIT1 = 16'h5aaa;
    defparam add_61_13.INJECT1_0 = "NO";
    defparam add_61_13.INJECT1_1 = "NO";
    CCU2D add_61_11 (.A0(ExtFIFOWrAddrxDP[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8482), .COUT(n8483), .S0(ExtFIFOWrAddrxDN_22__N_619[9]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[10]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_11.INIT0 = 16'h5aaa;
    defparam add_61_11.INIT1 = 16'h5aaa;
    defparam add_61_11.INJECT1_0 = "NO";
    defparam add_61_11.INJECT1_1 = "NO";
    FD1S3JX StatexDP_FSM_i1 (.D(n9084), .CK(Clk96xC), .PD(n708[16]), .Q(n708[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i1.GSR = "ENABLED";
    CCU2D add_61_9 (.A0(ExtFIFOWrAddrxDP[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8481), .COUT(n8482), .S0(ExtFIFOWrAddrxDN_22__N_619[7]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[8]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_9.INIT0 = 16'h5aaa;
    defparam add_61_9.INIT1 = 16'h5aaa;
    defparam add_61_9.INJECT1_0 = "NO";
    defparam add_61_9.INJECT1_1 = "NO";
    CCU2D add_61_7 (.A0(ExtFIFOWrAddrxDP[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8480), .COUT(n8481), .S0(ExtFIFOWrAddrxDN_22__N_619[5]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_7.INIT0 = 16'h5aaa;
    defparam add_61_7.INIT1 = 16'h5aaa;
    defparam add_61_7.INJECT1_0 = "NO";
    defparam add_61_7.INJECT1_1 = "NO";
    CCU2D add_61_5 (.A0(ExtFIFOWrAddrxDP[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8479), .COUT(n8480), .S0(ExtFIFOWrAddrxDN_22__N_619[3]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_5.INIT0 = 16'h5aaa;
    defparam add_61_5.INIT1 = 16'h5aaa;
    defparam add_61_5.INJECT1_0 = "NO";
    defparam add_61_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_43 (.A(ExtFIFOWrAddrxDP[9]), .B(n4734), .C(n708[10]), 
         .D(n2_adj_1054), .Z(n8703)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_43.init = 16'hffec;
    LUT4 i1_4_lut_adj_44 (.A(NextAddrxDP[9]), .B(n4733), .C(NextAddrxDP[1]), 
         .D(Clk96xC_enable_107), .Z(n4734)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_44.init = 16'hc088;
    CCU2D add_61_3 (.A0(ExtFIFOWrAddrxDP[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8478), .COUT(n8479), .S0(ExtFIFOWrAddrxDN_22__N_619[1]), 
          .S1(ExtFIFOWrAddrxDN_22__N_619[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_3.INIT0 = 16'h5aaa;
    defparam add_61_3.INIT1 = 16'h5aaa;
    defparam add_61_3.INJECT1_0 = "NO";
    defparam add_61_3.INJECT1_1 = "NO";
    CCU2D add_61_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SpiStatexDN_1__N_654), .B1(n4_adj_1055), .C1(ExtFIFOFullxSN_N_655[0]), 
          .D1(GND_net), .COUT(n8478), .S1(ExtFIFOWrAddrxDN_22__N_619[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_61_1.INIT0 = 16'hF000;
    defparam add_61_1.INIT1 = 16'h7878;
    defparam add_61_1.INJECT1_0 = "NO";
    defparam add_61_1.INJECT1_1 = "NO";
    LUT4 i4462_2_lut_rep_99 (.A(ExtFIFOFullxSP), .B(IntFIFOEmptyxS), .Z(n9971)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4462_2_lut_rep_99.init = 16'heeee;
    CCU2D add_1469_23 (.A0(ExtFIFOWrAddrxDP[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8550), .S0(ExtFIFOFullxSN_N_655[22]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_23.INIT0 = 16'h5aaa;
    defparam add_1469_23.INIT1 = 16'h0000;
    defparam add_1469_23.INJECT1_0 = "NO";
    defparam add_1469_23.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(ExtFIFOFullxSP), .B(IntFIFOEmptyxS), .C(UartTxDatRdyxS), 
         .D(n9936), .Z(n4659)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_45 (.A(ExtFIFOFullxSP), .B(IntFIFOEmptyxS), 
         .C(UartTxDatRdyxS), .D(n9936), .Z(n4660)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_45.init = 16'he000;
    LUT4 select_1230_Select_9_i2_2_lut (.A(ExtFIFORdAddrxDP[9]), .B(n708[1]), 
         .Z(n2_adj_1054)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_9_i2_2_lut.init = 16'h8888;
    CCU2D add_38_15 (.A0(ExtFIFORdAddrxDP[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8472), .COUT(n8473), .S0(ExtFIFORdAddrxDN_22__N_574[13]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[14]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_15.INIT0 = 16'h5aaa;
    defparam add_38_15.INIT1 = 16'h5aaa;
    defparam add_38_15.INJECT1_0 = "NO";
    defparam add_38_15.INJECT1_1 = "NO";
    LUT4 i7204_2_lut_2_lut_3_lut (.A(ExtFIFOFullxSP), .B(IntFIFOEmptyxS), 
         .C(n9947), .Z(StatexDN_4__N_402[3])) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i7204_2_lut_2_lut_3_lut.init = 16'h0101;
    FD1P3AX NextAddrxDP_i0_i3 (.D(n8731), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i3.GSR = "ENABLED";
    CCU2D add_1469_21 (.A0(ExtFIFOWrAddrxDP[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8549), .COUT(n8550), .S0(ExtFIFOFullxSN_N_655[20]), 
          .S1(ExtFIFOFullxSN_N_655[21]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_21.INIT0 = 16'h5aaa;
    defparam add_1469_21.INIT1 = 16'h5aaa;
    defparam add_1469_21.INJECT1_0 = "NO";
    defparam add_1469_21.INJECT1_1 = "NO";
    FD1P3AX NextAddrxDP_i0_i2 (.D(n8732), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i2.GSR = "ENABLED";
    CCU2D add_1469_19 (.A0(ExtFIFOWrAddrxDP[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8548), .COUT(n8549), .S0(ExtFIFOFullxSN_N_655[18]), 
          .S1(ExtFIFOFullxSN_N_655[19]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_19.INIT0 = 16'h5aaa;
    defparam add_1469_19.INIT1 = 16'h5aaa;
    defparam add_1469_19.INJECT1_0 = "NO";
    defparam add_1469_19.INJECT1_1 = "NO";
    CCU2D ExtFIFORdAddrxDP_22__I_0_19 (.A0(ExtFIFOWrAddrxDP[11]), .B0(ExtFIFORdAddrxDP[11]), 
          .C0(ExtFIFOWrAddrxDP[10]), .D0(ExtFIFORdAddrxDP[10]), .A1(ExtFIFOWrAddrxDP[9]), 
          .B1(ExtFIFORdAddrxDP[9]), .C1(ExtFIFOWrAddrxDP[8]), .D1(ExtFIFORdAddrxDP[8]), 
          .CIN(n8219), .COUT(n8220));
    defparam ExtFIFORdAddrxDP_22__I_0_19.INIT0 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_19.INIT1 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_19.INJECT1_0 = "YES";
    defparam ExtFIFORdAddrxDP_22__I_0_19.INJECT1_1 = "YES";
    FD1P3AX NextAddrxDP_i0_i23 (.D(n4191), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[23])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i23.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i22 (.D(n8737), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[22])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i22.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i21 (.D(n8729), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[21])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i21.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i1 (.D(n8733), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i1.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i20 (.D(n8664), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[20])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i20.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i19 (.D(n8687), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[19])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i19.GSR = "ENABLED";
    CCU2D add_1469_17 (.A0(ExtFIFOWrAddrxDP[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8547), .COUT(n8548), .S0(ExtFIFOFullxSN_N_655[16]), 
          .S1(ExtFIFOFullxSN_N_655[17]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_17.INIT0 = 16'h5aaa;
    defparam add_1469_17.INIT1 = 16'h5aaa;
    defparam add_1469_17.INJECT1_0 = "NO";
    defparam add_1469_17.INJECT1_1 = "NO";
    FD1P3AX NextAddrxDP_i0_i18 (.D(n8689), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[18])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i18.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i17 (.D(n8710), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[17])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i17.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i16 (.D(n8711), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[16])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i16.GSR = "ENABLED";
    FD1P3AX NextAddrxDP_i0_i15 (.D(n8713), .SP(Clk96xC_enable_47), .CK(Clk96xC), 
            .Q(NextAddrxDP[15])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam NextAddrxDP_i0_i15.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_46 (.A(ExtFIFOWrAddrxDP[12]), .B(n4791), .C(n708[10]), 
         .D(n2_adj_1056), .Z(n8719)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_46.init = 16'hffec;
    LUT4 i1_4_lut_adj_47 (.A(NextAddrxDP[12]), .B(n4733), .C(NextAddrxDP[4]), 
         .D(Clk96xC_enable_107), .Z(n4791)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_47.init = 16'hc088;
    CCU2D add_1469_15 (.A0(ExtFIFOWrAddrxDP[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8546), .COUT(n8547), .S0(ExtFIFOFullxSN_N_655[14]), 
          .S1(ExtFIFOFullxSN_N_655[15]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_15.INIT0 = 16'h5aaa;
    defparam add_1469_15.INIT1 = 16'h5aaa;
    defparam add_1469_15.INJECT1_0 = "NO";
    defparam add_1469_15.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_48 (.A(UartBuffEmptyxS), .B(ExtFIFOEmptyxS), 
         .C(n9971), .D(n4661), .Z(n8761)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(156[11:54])
    defparam i2_3_lut_4_lut_adj_48.init = 16'h0d00;
    CCU2D add_1469_13 (.A0(ExtFIFOWrAddrxDP[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8545), .COUT(n8546), .S0(ExtFIFOFullxSN_N_655[12]), 
          .S1(ExtFIFOFullxSN_N_655[13]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_13.INIT0 = 16'h5aaa;
    defparam add_1469_13.INIT1 = 16'h5aaa;
    defparam add_1469_13.INJECT1_0 = "NO";
    defparam add_1469_13.INJECT1_1 = "NO";
    CCU2D add_1469_11 (.A0(ExtFIFOWrAddrxDP[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8544), .COUT(n8545), .S0(ExtFIFOFullxSN_N_655[10]), 
          .S1(ExtFIFOFullxSN_N_655[11]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_11.INIT0 = 16'h5aaa;
    defparam add_1469_11.INIT1 = 16'h5aaa;
    defparam add_1469_11.INJECT1_0 = "NO";
    defparam add_1469_11.INJECT1_1 = "NO";
    CCU2D add_1469_9 (.A0(ExtFIFOWrAddrxDP[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8543), .COUT(n8544), .S0(ExtFIFOFullxSN_N_655[8]), 
          .S1(ExtFIFOFullxSN_N_655[9]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_9.INIT0 = 16'h5aaa;
    defparam add_1469_9.INIT1 = 16'h5aaa;
    defparam add_1469_9.INJECT1_0 = "NO";
    defparam add_1469_9.INJECT1_1 = "NO";
    CCU2D add_1469_7 (.A0(ExtFIFOWrAddrxDP[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8542), .COUT(n8543), .S0(ExtFIFOFullxSN_N_655[6]), 
          .S1(ExtFIFOFullxSN_N_655[7]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_7.INIT0 = 16'h5aaa;
    defparam add_1469_7.INIT1 = 16'h5aaa;
    defparam add_1469_7.INJECT1_0 = "NO";
    defparam add_1469_7.INJECT1_1 = "NO";
    CCU2D add_1469_5 (.A0(ExtFIFOWrAddrxDP[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8541), .COUT(n8542), .S0(ExtFIFOFullxSN_N_655[4]), 
          .S1(ExtFIFOFullxSN_N_655[5]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_5.INIT0 = 16'h5aaa;
    defparam add_1469_5.INIT1 = 16'h5aaa;
    defparam add_1469_5.INJECT1_0 = "NO";
    defparam add_1469_5.INJECT1_1 = "NO";
    CCU2D add_38_11 (.A0(ExtFIFORdAddrxDP[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8470), .COUT(n8471), .S0(ExtFIFORdAddrxDN_22__N_574[9]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[10]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_11.INIT0 = 16'h5aaa;
    defparam add_38_11.INIT1 = 16'h5aaa;
    defparam add_38_11.INJECT1_0 = "NO";
    defparam add_38_11.INJECT1_1 = "NO";
    CCU2D add_1469_3 (.A0(ExtFIFOWrAddrxDP[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFOWrAddrxDP[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8540), .COUT(n8541), .S0(ExtFIFOFullxSN_N_655[2]), 
          .S1(ExtFIFOFullxSN_N_655[3]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_3.INIT0 = 16'h5aaa;
    defparam add_1469_3.INIT1 = 16'h5aaa;
    defparam add_1469_3.INJECT1_0 = "NO";
    defparam add_1469_3.INJECT1_1 = "NO";
    CCU2D add_38_21 (.A0(ExtFIFORdAddrxDP[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8475), .COUT(n8476), .S0(ExtFIFORdAddrxDN_22__N_574[19]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[20]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_21.INIT0 = 16'h5aaa;
    defparam add_38_21.INIT1 = 16'h5aaa;
    defparam add_38_21.INJECT1_0 = "NO";
    defparam add_38_21.INJECT1_1 = "NO";
    CCU2D add_38_9 (.A0(ExtFIFORdAddrxDP[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8469), .COUT(n8470), .S0(ExtFIFORdAddrxDN_22__N_574[7]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[8]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_9.INIT0 = 16'h5aaa;
    defparam add_38_9.INIT1 = 16'h5aaa;
    defparam add_38_9.INJECT1_0 = "NO";
    defparam add_38_9.INJECT1_1 = "NO";
    CCU2D add_38_7 (.A0(ExtFIFORdAddrxDP[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8468), .COUT(n8469), .S0(ExtFIFORdAddrxDN_22__N_574[5]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_7.INIT0 = 16'h5aaa;
    defparam add_38_7.INIT1 = 16'h5aaa;
    defparam add_38_7.INJECT1_0 = "NO";
    defparam add_38_7.INJECT1_1 = "NO";
    LUT4 select_1230_Select_12_i2_2_lut (.A(ExtFIFORdAddrxDP[12]), .B(n708[1]), 
         .Z(n2_adj_1056)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_12_i2_2_lut.init = 16'h8888;
    CCU2D add_38_5 (.A0(ExtFIFORdAddrxDP[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8467), .COUT(n8468), .S0(ExtFIFORdAddrxDN_22__N_574[3]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_5.INIT0 = 16'h5aaa;
    defparam add_38_5.INIT1 = 16'h5aaa;
    defparam add_38_5.INJECT1_0 = "NO";
    defparam add_38_5.INJECT1_1 = "NO";
    CCU2D add_38_3 (.A0(ExtFIFORdAddrxDP[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8466), .COUT(n8467), .S0(ExtFIFORdAddrxDN_22__N_574[1]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_3.INIT0 = 16'h5aaa;
    defparam add_38_3.INIT1 = 16'h5aaa;
    defparam add_38_3.INJECT1_0 = "NO";
    defparam add_38_3.INJECT1_1 = "NO";
    CCU2D add_38_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SpiStatexDN_1__N_654), .B1(n4_adj_1055), .C1(ExtFIFORdAddrxDP[0]), 
          .D1(GND_net), .COUT(n8466), .S1(ExtFIFORdAddrxDN_22__N_574[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_1.INIT0 = 16'hF000;
    defparam add_38_1.INIT1 = 16'h7878;
    defparam add_38_1.INJECT1_0 = "NO";
    defparam add_38_1.INJECT1_1 = "NO";
    CCU2D add_1469_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ExtFIFOWrAddrxDP[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8540), .S1(ExtFIFOFullxSN_N_655[1]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_1469_1.INIT0 = 16'hF000;
    defparam add_1469_1.INIT1 = 16'h5555;
    defparam add_1469_1.INJECT1_0 = "NO";
    defparam add_1469_1.INJECT1_1 = "NO";
    CCU2D add_38_19 (.A0(ExtFIFORdAddrxDP[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8474), .COUT(n8475), .S0(ExtFIFORdAddrxDN_22__N_574[17]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[18]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_19.INIT0 = 16'h5aaa;
    defparam add_38_19.INIT1 = 16'h5aaa;
    defparam add_38_19.INJECT1_0 = "NO";
    defparam add_38_19.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(ExtFIFOFullxSN_N_655[0]), .B(n4_adj_1057), .C(n708[10]), 
         .Z(n8734)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_3_lut.init = 16'hecec;
    CCU2D ExtFIFORdAddrxDP_22__I_0_21 (.A0(ExtFIFOWrAddrxDP[7]), .B0(ExtFIFORdAddrxDP[7]), 
          .C0(ExtFIFOWrAddrxDP[6]), .D0(ExtFIFORdAddrxDP[6]), .A1(ExtFIFOWrAddrxDP[5]), 
          .B1(ExtFIFORdAddrxDP[5]), .C1(ExtFIFOWrAddrxDP[4]), .D1(ExtFIFORdAddrxDP[4]), 
          .CIN(n8220), .COUT(n8221));
    defparam ExtFIFORdAddrxDP_22__I_0_21.INIT0 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_21.INIT1 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_21.INJECT1_0 = "YES";
    defparam ExtFIFORdAddrxDP_22__I_0_21.INJECT1_1 = "YES";
    LUT4 i2163_4_lut (.A(n10539), .B(n811), .C(n6766), .D(EXP_J303_D_c_3), 
         .Z(n4019)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2163_4_lut.init = 16'heece;
    LUT4 i1_2_lut_rep_66_4_lut (.A(n708[5]), .B(n1), .C(n734), .D(n708[21]), 
         .Z(n9938)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_66_4_lut.init = 16'h0100;
    CCU2D add_38_17 (.A0(ExtFIFORdAddrxDP[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8473), .COUT(n8474), .S0(ExtFIFORdAddrxDN_22__N_574[15]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[16]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_17.INIT0 = 16'h5aaa;
    defparam add_38_17.INIT1 = 16'h5aaa;
    defparam add_38_17.INJECT1_0 = "NO";
    defparam add_38_17.INJECT1_1 = "NO";
    CCU2D ExtFIFOFullxSN_I_0_0 (.A0(ExtFIFORdAddrxDP[22]), .B0(ExtFIFOFullxSN_N_655[22]), 
          .C0(GND_net), .D0(GND_net), .A1(ExtFIFORdAddrxDP[21]), .B1(ExtFIFOFullxSN_N_655[21]), 
          .C1(ExtFIFORdAddrxDP[20]), .D1(ExtFIFOFullxSN_N_655[20]), .COUT(n8223));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(94[29:68])
    defparam ExtFIFOFullxSN_I_0_0.INIT0 = 16'h9000;
    defparam ExtFIFOFullxSN_I_0_0.INIT1 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_0.INJECT1_0 = "NO";
    defparam ExtFIFOFullxSN_I_0_0.INJECT1_1 = "YES";
    CCU2D ExtFIFOFullxSN_I_0_23_6212 (.A0(ExtFIFORdAddrxDP[3]), .B0(ExtFIFOFullxSN_N_655[3]), 
          .C0(ExtFIFORdAddrxDP[2]), .D0(ExtFIFOFullxSN_N_655[2]), .A1(ExtFIFORdAddrxDP[1]), 
          .B1(ExtFIFOFullxSN_N_655[1]), .C1(ExtFIFORdAddrxDP[0]), .D1(ExtFIFOFullxSN_N_655[0]), 
          .CIN(n8227), .COUT(n8228));
    defparam ExtFIFOFullxSN_I_0_23_6212.INIT0 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_23_6212.INIT1 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_23_6212.INJECT1_0 = "YES";
    defparam ExtFIFOFullxSN_I_0_23_6212.INJECT1_1 = "YES";
    LUT4 i2161_3_lut (.A(Clk96xC_enable_107), .B(n708[20]), .C(n708[21]), 
         .Z(n4017)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2161_3_lut.init = 16'hdcdc;
    LUT4 i1_4_lut_adj_49 (.A(NextAddrxDP[0]), .B(ExtFIFORdAddrxDP[0]), .C(n9067), 
         .D(n708[1]), .Z(n4_adj_1057)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_49.init = 16'heca0;
    CCU2D ExtFIFOFullxSN_I_0_21 (.A0(ExtFIFORdAddrxDP[7]), .B0(ExtFIFOFullxSN_N_655[7]), 
          .C0(ExtFIFORdAddrxDP[6]), .D0(ExtFIFOFullxSN_N_655[6]), .A1(ExtFIFORdAddrxDP[5]), 
          .B1(ExtFIFOFullxSN_N_655[5]), .C1(ExtFIFORdAddrxDP[4]), .D1(ExtFIFOFullxSN_N_655[4]), 
          .CIN(n8226), .COUT(n8227));
    defparam ExtFIFOFullxSN_I_0_21.INIT0 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_21.INIT1 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_21.INJECT1_0 = "YES";
    defparam ExtFIFOFullxSN_I_0_21.INJECT1_1 = "YES";
    FD1P3IX ByteCntxDP_1479__i1 (.D(n45[1]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i1.GSR = "ENABLED";
    CCU2D ExtFIFORdAddrxDP_22__I_0_23 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8222), .S0(ExtFIFOEmptyxS));
    defparam ExtFIFORdAddrxDP_22__I_0_23.INIT0 = 16'hFFFF;
    defparam ExtFIFORdAddrxDP_22__I_0_23.INIT1 = 16'h0000;
    defparam ExtFIFORdAddrxDP_22__I_0_23.INJECT1_0 = "NO";
    defparam ExtFIFORdAddrxDP_22__I_0_23.INJECT1_1 = "NO";
    LUT4 i6989_3_lut (.A(NextAddrxDP[16]), .B(IntFIFODataOutxD[0]), .C(n726), 
         .Z(n9151)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i6989_3_lut.init = 16'hcaca;
    FD1P3IX ByteCntxDP_1479__i2 (.D(n45[2]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i2.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_50 (.A(n16), .B(n4660), .C(n10539), .D(n4_adj_1058), 
         .Z(n8717)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_50.init = 16'hfeee;
    LUT4 i3_4_lut (.A(n708[11]), .B(n708[12]), .C(n708[2]), .D(n708[3]), 
         .Z(n4733)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_51 (.A(n6766), .B(EXP_J303_D_c_3), .Z(n4_adj_1058)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_2_lut_adj_51.init = 16'h2222;
    FD1P3IX ByteCntxDP_1479__i3 (.D(n45[3]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i3.GSR = "ENABLED";
    LUT4 i6999_3_lut (.A(NextAddrxDP[19]), .B(IntFIFODataOutxD[3]), .C(n726), 
         .Z(n9163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i6999_3_lut.init = 16'hcaca;
    LUT4 i7034_4_lut (.A(n9186), .B(n726), .C(n708[13]), .D(Clk96xC_enable_107), 
         .Z(n9198)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i7034_4_lut.init = 16'hfaee;
    LUT4 i7022_2_lut (.A(StatexDN_4__N_402[3]), .B(n708[15]), .Z(n9186)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7022_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_adj_52 (.A(BitCntxDP[1]), .B(BitCntxDP[2]), .C(\BitCntxDP[0] ), 
         .Z(SpiStatexDN_1__N_654)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_52.init = 16'h8080;
    FD1P3IX ByteCntxDP_1479__i4 (.D(n45[4]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i4.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_53 (.A(n4), .B(n734), .C(n708[5]), .D(Clk96xC_enable_107), 
         .Z(n8823)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(65[9:18])
    defparam i1_4_lut_adj_53.init = 16'hfaee;
    FD1P3IX ByteCntxDP_1479__i5 (.D(n45[5]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i5.GSR = "ENABLED";
    CCU2D ExtFIFORdAddrxDP_22__I_0_23_6211 (.A0(ExtFIFOWrAddrxDP[3]), .B0(ExtFIFORdAddrxDP[3]), 
          .C0(ExtFIFOWrAddrxDP[2]), .D0(ExtFIFORdAddrxDP[2]), .A1(ExtFIFOWrAddrxDP[1]), 
          .B1(ExtFIFORdAddrxDP[1]), .C1(ExtFIFOFullxSN_N_655[0]), .D1(ExtFIFORdAddrxDP[0]), 
          .CIN(n8221), .COUT(n8222));
    defparam ExtFIFORdAddrxDP_22__I_0_23_6211.INIT0 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_23_6211.INIT1 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_23_6211.INJECT1_0 = "YES";
    defparam ExtFIFORdAddrxDP_22__I_0_23_6211.INJECT1_1 = "YES";
    FD1P3AX BitCntxDP_i0 (.D(n9433), .SP(VCC_net), .CK(Clk96xC), .Q(\BitCntxDP[0] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam BitCntxDP_i0.GSR = "ENABLED";
    CCU2D ExtFIFORdAddrxDP_22__I_0_17 (.A0(ExtFIFOWrAddrxDP[15]), .B0(ExtFIFORdAddrxDP[15]), 
          .C0(ExtFIFOWrAddrxDP[14]), .D0(ExtFIFORdAddrxDP[14]), .A1(ExtFIFOWrAddrxDP[13]), 
          .B1(ExtFIFORdAddrxDP[13]), .C1(ExtFIFOWrAddrxDP[12]), .D1(ExtFIFORdAddrxDP[12]), 
          .CIN(n8218), .COUT(n8219));
    defparam ExtFIFORdAddrxDP_22__I_0_17.INIT0 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_17.INIT1 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_17.INJECT1_0 = "YES";
    defparam ExtFIFORdAddrxDP_22__I_0_17.INJECT1_1 = "YES";
    LUT4 i1630_2_lut (.A(BitCntxDP[1]), .B(\BitCntxDP[0] ), .Z(BitCntxDN_2__N_476[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(372[18:27])
    defparam i1630_2_lut.init = 16'h6666;
    LUT4 i1637_3_lut (.A(BitCntxDP[2]), .B(BitCntxDP[1]), .C(\BitCntxDP[0] ), 
         .Z(BitCntxDN_2__N_476[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(372[18:27])
    defparam i1637_3_lut.init = 16'h6a6a;
    LUT4 i2_4_lut_adj_54 (.A(ExtFIFOWrAddrxDP[8]), .B(n4737), .C(n708[10]), 
         .D(n2_adj_1059), .Z(n8707)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_54.init = 16'hffec;
    LUT4 i1_4_lut_adj_55 (.A(NextAddrxDP[8]), .B(n4733), .C(NextAddrxDP[0]), 
         .D(Clk96xC_enable_107), .Z(n4737)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_55.init = 16'hc088;
    LUT4 select_1230_Select_8_i2_2_lut (.A(ExtFIFORdAddrxDP[8]), .B(n708[1]), 
         .Z(n2_adj_1059)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_8_i2_2_lut.init = 16'h8888;
    FD1S3AX StatexDP_FSM_i23 (.D(n4019), .CK(Clk96xC), .Q(n3307));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i23.GSR = "ENABLED";
    CCU2D ExtFIFOFullxSN_I_0_19 (.A0(ExtFIFORdAddrxDP[11]), .B0(ExtFIFOFullxSN_N_655[11]), 
          .C0(ExtFIFORdAddrxDP[10]), .D0(ExtFIFOFullxSN_N_655[10]), .A1(ExtFIFORdAddrxDP[9]), 
          .B1(ExtFIFOFullxSN_N_655[9]), .C1(ExtFIFORdAddrxDP[8]), .D1(ExtFIFOFullxSN_N_655[8]), 
          .CIN(n8225), .COUT(n8226));
    defparam ExtFIFOFullxSN_I_0_19.INIT0 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_19.INIT1 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_19.INJECT1_0 = "YES";
    defparam ExtFIFOFullxSN_I_0_19.INJECT1_1 = "YES";
    LUT4 i2_4_lut_adj_56 (.A(ExtFIFOWrAddrxDP[22]), .B(n4818), .C(n708[10]), 
         .D(n2_adj_1060), .Z(n8737)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_56.init = 16'hffec;
    CCU2D ExtFIFOFullxSN_I_0_17 (.A0(ExtFIFORdAddrxDP[15]), .B0(ExtFIFOFullxSN_N_655[15]), 
          .C0(ExtFIFORdAddrxDP[14]), .D0(ExtFIFOFullxSN_N_655[14]), .A1(ExtFIFORdAddrxDP[13]), 
          .B1(ExtFIFOFullxSN_N_655[13]), .C1(ExtFIFORdAddrxDP[12]), .D1(ExtFIFOFullxSN_N_655[12]), 
          .CIN(n8224), .COUT(n8225));
    defparam ExtFIFOFullxSN_I_0_17.INIT0 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_17.INIT1 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_17.INJECT1_0 = "YES";
    defparam ExtFIFOFullxSN_I_0_17.INJECT1_1 = "YES";
    LUT4 i2931_3_lut (.A(n9151), .B(RAM0_SIO_out_1), .C(RAM0_SCLK_c), 
         .Z(\SpiOutDatxD[0] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2931_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_88 (.A(RAM0_SCLK_c), .B(SpiStatexDN_1__N_654), .C(\SpiStatexDP[0] ), 
         .Z(Clk96xC_enable_107)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_88.init = 16'h8080;
    FD1S3AX StatexDP_FSM_i22 (.D(n4017), .CK(Clk96xC), .Q(n708[21]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i22.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i21 (.D(n708[19]), .CK(Clk96xC), .Q(n708[20]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i21.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i20 (.D(n708[18]), .CK(Clk96xC), .Q(n708[19]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i20.GSR = "ENABLED";
    FD1S3IX StatexDP_FSM_i19 (.D(n708[17]), .CK(Clk96xC), .CD(n9943), 
            .Q(n708[18]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i19.GSR = "ENABLED";
    LUT4 i3892_1_lut_rep_71_3_lut (.A(RAM0_SCLK_c), .B(SpiStatexDN_1__N_654), 
         .C(\SpiStatexDP[0] ), .Z(n9943)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i3892_1_lut_rep_71_3_lut.init = 16'h7f7f;
    FD1S3AX StatexDP_FSM_i18 (.D(n4015), .CK(Clk96xC), .Q(n708[17]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i18.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i17 (.D(n8717), .CK(Clk96xC), .Q(n708[16]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i17.GSR = "ENABLED";
    FD1S3IX StatexDP_FSM_i16 (.D(n726), .CK(Clk96xC), .CD(n9943), .Q(n708[15]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i16.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i15 (.D(n9198), .CK(Clk96xC), .Q(n726));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i15.GSR = "ENABLED";
    FD1P3AX StatexDP_FSM_i14 (.D(n708[12]), .SP(Clk96xC_enable_107), .CK(Clk96xC), 
            .Q(n708[13]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i14.GSR = "ENABLED";
    FD1P3AX StatexDP_FSM_i13 (.D(n708[11]), .SP(Clk96xC_enable_107), .CK(Clk96xC), 
            .Q(n708[12]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i13.GSR = "ENABLED";
    FD1P3AX StatexDP_FSM_i12 (.D(n708[10]), .SP(Clk96xC_enable_107), .CK(Clk96xC), 
            .Q(n708[11]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i12.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i11 (.D(n9050), .CK(Clk96xC), .Q(n708[10]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i11.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i10 (.D(n708[8]), .CK(Clk96xC), .Q(n708[9]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i10.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i9 (.D(n4659), .CK(Clk96xC), .Q(n708[8]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i9.GSR = "ENABLED";
    FD1S3IX StatexDP_FSM_i8 (.D(n734), .CK(Clk96xC), .CD(n9943), .Q(UartTxDatRdyxS));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i8.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i7 (.D(n8823), .CK(Clk96xC), .Q(n734));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i7.GSR = "ENABLED";
    FD1P3AX StatexDP_FSM_i6 (.D(n708[4]), .SP(Clk96xC_enable_107), .CK(Clk96xC), 
            .Q(n708[5]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i6.GSR = "ENABLED";
    FD1P3AX StatexDP_FSM_i5 (.D(n708[3]), .SP(Clk96xC_enable_107), .CK(Clk96xC), 
            .Q(n708[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i5.GSR = "ENABLED";
    FD1P3AX StatexDP_FSM_i4 (.D(n708[2]), .SP(Clk96xC_enable_107), .CK(Clk96xC), 
            .Q(n708[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i4.GSR = "ENABLED";
    FD1P3AX StatexDP_FSM_i3 (.D(n708[1]), .SP(Clk96xC_enable_107), .CK(Clk96xC), 
            .Q(n708[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i3.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i2 (.D(n3993), .CK(Clk96xC), .Q(n708[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_57 (.A(RAM0_SCLK_c), .B(SpiStatexDN_1__N_654), 
         .C(\SpiStatexDP[0] ), .D(n4733), .Z(n9067)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i1_2_lut_4_lut_adj_57.init = 16'h7f00;
    FD1P3IX ByteCntxDP_1479__i6 (.D(n45[6]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i6.GSR = "ENABLED";
    FD1P3IX ByteCntxDP_1479__i7 (.D(n45[7]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i7.GSR = "ENABLED";
    FD1P3IX ByteCntxDP_1479__i8 (.D(n45[8]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i8.GSR = "ENABLED";
    FD1P3IX ByteCntxDP_1479__i9 (.D(n45[9]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i9.GSR = "ENABLED";
    FD1P3IX BitCntxDP_i1 (.D(BitCntxDN_2__N_476[1]), .SP(Clk96xC_enable_276), 
            .CD(n5427), .CK(Clk96xC), .Q(BitCntxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam BitCntxDP_i1.GSR = "ENABLED";
    FD1P3IX BitCntxDP_i2 (.D(BitCntxDN_2__N_476[2]), .SP(Clk96xC_enable_276), 
            .CD(n5427), .CK(Clk96xC), .Q(BitCntxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam BitCntxDP_i2.GSR = "ENABLED";
    LUT4 i6996_2_lut_4_lut (.A(RAM0_SCLK_c), .B(SpiStatexDN_1__N_654), .C(\SpiStatexDP[0] ), 
         .D(n1057), .Z(n9160)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6996_2_lut_4_lut.init = 16'h8000;
    LUT4 i2933_3_lut (.A(n9163), .B(\UartTxDatxD[2] ), .C(RAM0_SCLK_c), 
         .Z(\SpiOutDatxD[3] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2933_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_58 (.A(NextAddrxDP[22]), .B(n4733), .C(NextAddrxDP[14]), 
         .D(Clk96xC_enable_107), .Z(n4818)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_58.init = 16'hc088;
    LUT4 i1_2_lut_4_lut_adj_59 (.A(RAM0_SCLK_c), .B(SpiStatexDN_1__N_654), 
         .C(\SpiStatexDP[0] ), .D(n708[21]), .Z(n811)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_59.init = 16'h8000;
    CCU2D add_38_23 (.A0(ExtFIFORdAddrxDP[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ExtFIFORdAddrxDP[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8476), .S0(ExtFIFORdAddrxDN_22__N_574[21]), 
          .S1(ExtFIFORdAddrxDN_22__N_574[22]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/vh2008/ieee/numeric_std_2008.vhd(2193[12:13])
    defparam add_38_23.INIT0 = 16'h5aaa;
    defparam add_38_23.INIT1 = 16'h5aaa;
    defparam add_38_23.INJECT1_0 = "NO";
    defparam add_38_23.INJECT1_1 = "NO";
    LUT4 i454_4_lut (.A(n708[13]), .B(StatexDN_4__N_402[3]), .C(n708[15]), 
         .D(Clk96xC_enable_107), .Z(IntFIFORdEnxS)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i454_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_60 (.A(NextAddrxDP[21]), .B(n4733), .C(NextAddrxDP[13]), 
         .D(Clk96xC_enable_107), .Z(n4746)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_60.init = 16'hc088;
    CCU2D ExtFIFORdAddrxDP_22__I_0_15 (.A0(ExtFIFOWrAddrxDP[19]), .B0(ExtFIFORdAddrxDP[19]), 
          .C0(ExtFIFOWrAddrxDP[18]), .D0(ExtFIFORdAddrxDP[18]), .A1(ExtFIFOWrAddrxDP[17]), 
          .B1(ExtFIFORdAddrxDP[17]), .C1(ExtFIFOWrAddrxDP[16]), .D1(ExtFIFORdAddrxDP[16]), 
          .CIN(n8217), .COUT(n8218));
    defparam ExtFIFORdAddrxDP_22__I_0_15.INIT0 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_15.INIT1 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_15.INJECT1_0 = "YES";
    defparam ExtFIFORdAddrxDP_22__I_0_15.INJECT1_1 = "YES";
    LUT4 mux_1289_i6_4_lut (.A(n7), .B(n2994[5]), .C(n8), .D(n3003), 
         .Z(\SpiOutDatxD[5] )) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1289_i6_4_lut.init = 16'hc505;
    FD1P3IX ByteCntxDP_1479__i0 (.D(n45[0]), .SP(Clk96xC_enable_200), .CD(n5384), 
            .CK(Clk96xC), .Q(ByteCntxDP[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(329[20:30])
    defparam ByteCntxDP_1479__i0.GSR = "ENABLED";
    LUT4 select_1230_Select_22_i2_2_lut (.A(ExtFIFORdAddrxDP[22]), .B(n708[1]), 
         .Z(n2_adj_1060)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_22_i2_2_lut.init = 16'h8888;
    CCU2D ExtFIFOFullxSN_I_0_23 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8228), .S0(ExtFIFOFullxSN));
    defparam ExtFIFOFullxSN_I_0_23.INIT0 = 16'hFFFF;
    defparam ExtFIFOFullxSN_I_0_23.INIT1 = 16'h0000;
    defparam ExtFIFOFullxSN_I_0_23.INJECT1_0 = "NO";
    defparam ExtFIFOFullxSN_I_0_23.INJECT1_1 = "NO";
    LUT4 i3886_4_lut (.A(\SpiStatexDP[0] ), .B(SpiStatexDN_1__N_654), .C(RAM0_SCLK_c), 
         .D(n1), .Z(SpiStatexDN[0])) /* synthesis lut_function=(!(A (B (C))+!A (C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(49[9:20])
    defparam i3886_4_lut.init = 16'h2a2f;
    LUT4 i2_3_lut_adj_61 (.A(ExtFIFOWrAddrxDP[7]), .B(n4_adj_1061), .C(n708[10]), 
         .Z(n8657)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_3_lut_adj_61.init = 16'hecec;
    LUT4 select_1230_Select_21_i2_2_lut (.A(ExtFIFORdAddrxDP[21]), .B(n708[1]), 
         .Z(n2_adj_1062)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_21_i2_2_lut.init = 16'h8888;
    LUT4 mux_1281_i6_3_lut (.A(NextAddrxDP[21]), .B(IntFIFODataOutxD[5]), 
         .C(n726), .Z(n2994[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1281_i6_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_62 (.A(NextAddrxDP[7]), .B(ExtFIFORdAddrxDP[7]), .C(n9067), 
         .D(n708[1]), .Z(n4_adj_1061)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_62.init = 16'heca0;
    LUT4 i2_3_lut_adj_63 (.A(ExtFIFOWrAddrxDP[6]), .B(n4_adj_1063), .C(n708[10]), 
         .Z(n8705)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_3_lut_adj_63.init = 16'hecec;
    LUT4 i1_4_lut_adj_64 (.A(NextAddrxDP[6]), .B(ExtFIFORdAddrxDP[6]), .C(n9067), 
         .D(n708[1]), .Z(n4_adj_1063)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_64.init = 16'heca0;
    LUT4 i5_3_lut (.A(n708[9]), .B(n10), .C(n9038), .Z(n1)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(n708[20]), .B(n708[0]), .C(UartTxDatRdyxS), .D(n708[15]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i4_4_lut.init = 16'hfffe;
    FD1P3IX ExtFIFOWrAddrxDP__i22 (.D(ExtFIFOWrAddrxDN_22__N_619[22]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[22])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i22.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_65 (.A(n708[8]), .B(n708[18]), .C(n10539), .D(n6), 
         .Z(n9038)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i4_4_lut_adj_65.init = 16'hfffe;
    FD1P3IX ExtFIFOWrAddrxDP__i21 (.D(ExtFIFOWrAddrxDN_22__N_619[21]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[21])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i21.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i20 (.D(ExtFIFOWrAddrxDN_22__N_619[20]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[20])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i20.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i19 (.D(ExtFIFOWrAddrxDN_22__N_619[19]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[19])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i19.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i18 (.D(ExtFIFOWrAddrxDN_22__N_619[18]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[18])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i18.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i17 (.D(ExtFIFOWrAddrxDN_22__N_619[17]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[17])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i17.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_66 (.A(n708[19]), .B(n708[16]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_2_lut_adj_66.init = 16'heeee;
    FD1P3IX ExtFIFOWrAddrxDP__i16 (.D(ExtFIFOWrAddrxDN_22__N_619[16]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[16])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i16.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i15 (.D(ExtFIFOWrAddrxDN_22__N_619[15]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[15])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i15.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i14 (.D(ExtFIFOWrAddrxDN_22__N_619[14]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[14])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i14.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i13 (.D(ExtFIFOWrAddrxDN_22__N_619[13]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[13])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i13.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i12 (.D(ExtFIFOWrAddrxDN_22__N_619[12]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[12])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i12.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i11 (.D(ExtFIFOWrAddrxDN_22__N_619[11]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[11])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i11.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i10 (.D(ExtFIFOWrAddrxDN_22__N_619[10]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[10])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i10.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_67 (.A(n16), .B(n9935), .C(n9084), .D(n9038), 
         .Z(RamCSnxSN)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i3_4_lut_adj_67.init = 16'hfffe;
    FD1P3IX ExtFIFOWrAddrxDP__i9 (.D(ExtFIFOWrAddrxDN_22__N_619[9]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[9])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i9.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i8 (.D(ExtFIFOWrAddrxDN_22__N_619[8]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i8.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i7 (.D(ExtFIFOWrAddrxDN_22__N_619[7]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i7.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i6 (.D(ExtFIFOWrAddrxDN_22__N_619[6]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i6.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i5 (.D(ExtFIFOWrAddrxDN_22__N_619[5]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i5.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i4 (.D(ExtFIFOWrAddrxDN_22__N_619[4]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i4.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i3 (.D(ExtFIFOWrAddrxDN_22__N_619[3]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i3.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i2 (.D(ExtFIFOWrAddrxDN_22__N_619[2]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i2.GSR = "ENABLED";
    FD1P3IX ExtFIFOWrAddrxDP__i1 (.D(ExtFIFOWrAddrxDN_22__N_619[1]), .SP(Clk96xC_enable_238), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFOWrAddrxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFOWrAddrxDP__i1.GSR = "ENABLED";
    LUT4 select_1229_Select_0_i16_2_lut (.A(StatexDN_4__N_402[3]), .B(n708[15]), 
         .Z(n16)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1229_Select_0_i16_2_lut.init = 16'h4444;
    FD1P3IX ExtFIFORdAddrxDP__i22 (.D(ExtFIFORdAddrxDN_22__N_574[22]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[22])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i22.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i21 (.D(ExtFIFORdAddrxDN_22__N_574[21]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[21])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i21.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i20 (.D(ExtFIFORdAddrxDN_22__N_574[20]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[20])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i20.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i19 (.D(ExtFIFORdAddrxDN_22__N_574[19]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[19])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i19.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i18 (.D(ExtFIFORdAddrxDN_22__N_574[18]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[18])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i18.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i17 (.D(ExtFIFORdAddrxDN_22__N_574[17]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[17])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i17.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i16 (.D(ExtFIFORdAddrxDN_22__N_574[16]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[16])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i16.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i15 (.D(ExtFIFORdAddrxDN_22__N_574[15]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[15])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i15.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i14 (.D(ExtFIFORdAddrxDN_22__N_574[14]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[14])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i14.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i13 (.D(ExtFIFORdAddrxDN_22__N_574[13]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[13])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i13.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i12 (.D(ExtFIFORdAddrxDN_22__N_574[12]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[12])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i12.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i11 (.D(ExtFIFORdAddrxDN_22__N_574[11]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[11])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i11.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i10 (.D(ExtFIFORdAddrxDN_22__N_574[10]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[10])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i10.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i9 (.D(ExtFIFORdAddrxDN_22__N_574[9]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[9])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i9.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i8 (.D(ExtFIFORdAddrxDN_22__N_574[8]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i8.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i7 (.D(ExtFIFORdAddrxDN_22__N_574[7]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i7.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i6 (.D(ExtFIFORdAddrxDN_22__N_574[6]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i6.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i5 (.D(ExtFIFORdAddrxDN_22__N_574[5]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i5.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i4 (.D(ExtFIFORdAddrxDN_22__N_574[4]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i4.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i3 (.D(ExtFIFORdAddrxDN_22__N_574[3]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i3.GSR = "ENABLED";
    LUT4 mux_1289_i5_4_lut (.A(n9938), .B(n2994[4]), .C(n8), .D(n3003), 
         .Z(\SpiOutDatxD[4] )) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1289_i5_4_lut.init = 16'hca0a;
    FD1P3IX ExtFIFORdAddrxDP__i2 (.D(ExtFIFORdAddrxDN_22__N_574[2]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i2.GSR = "ENABLED";
    FD1P3IX ExtFIFORdAddrxDP__i1 (.D(ExtFIFORdAddrxDN_22__N_574[1]), .SP(Clk96xC_enable_267), 
            .CD(n3307), .CK(Clk96xC), .Q(ExtFIFORdAddrxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam ExtFIFORdAddrxDP__i1.GSR = "ENABLED";
    FD1P3AX SpiSRegxDP_i7 (.D(SpiSRegxDN[7]), .SP(Clk96xC_enable_276), .CK(Clk96xC), 
            .Q(RAM0_SIO_c_0)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam SpiSRegxDP_i7.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_68 (.A(ExtFIFOWrAddrxDP[5]), .B(n4_adj_1064), .C(n708[10]), 
         .Z(n8700)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_3_lut_adj_68.init = 16'hecec;
    LUT4 i1_4_lut_adj_69 (.A(NextAddrxDP[5]), .B(ExtFIFORdAddrxDP[5]), .C(n9067), 
         .D(n708[1]), .Z(n4_adj_1064)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_69.init = 16'heca0;
    LUT4 i2_3_lut_adj_70 (.A(ExtFIFOWrAddrxDP[4]), .B(n4_adj_1065), .C(n708[10]), 
         .Z(n8720)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_3_lut_adj_70.init = 16'hecec;
    LUT4 i1_4_lut_adj_71 (.A(NextAddrxDP[4]), .B(ExtFIFORdAddrxDP[4]), .C(n9067), 
         .D(n708[1]), .Z(n4_adj_1065)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_71.init = 16'heca0;
    FD1P3AX SpiSRegxDP_i6 (.D(SpiSRegxDN[6]), .SP(Clk96xC_enable_276), .CK(Clk96xC), 
            .Q(\UartTxDatxD[6] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam SpiSRegxDP_i6.GSR = "ENABLED";
    FD1P3AX SpiSRegxDP_i5 (.D(SpiSRegxDN[5]), .SP(Clk96xC_enable_276), .CK(Clk96xC), 
            .Q(\UartTxDatxD[5] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam SpiSRegxDP_i5.GSR = "ENABLED";
    FD1P3AX SpiSRegxDP_i4 (.D(SpiSRegxDN[4]), .SP(Clk96xC_enable_276), .CK(Clk96xC), 
            .Q(\UartTxDatxD[4] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam SpiSRegxDP_i4.GSR = "ENABLED";
    FD1P3AX SpiSRegxDP_i3 (.D(SpiSRegxDN[3]), .SP(Clk96xC_enable_276), .CK(Clk96xC), 
            .Q(\UartTxDatxD[3] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam SpiSRegxDP_i3.GSR = "ENABLED";
    FD1P3AX SpiSRegxDP_i2 (.D(SpiSRegxDN[2]), .SP(Clk96xC_enable_276), .CK(Clk96xC), 
            .Q(\UartTxDatxD[2] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam SpiSRegxDP_i2.GSR = "ENABLED";
    FD1P3AX SpiSRegxDP_i1 (.D(SpiSRegxDN[1]), .SP(Clk96xC_enable_276), .CK(Clk96xC), 
            .Q(\UartTxDatxD[1] )) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=653, LSE_RLINE=653 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(101[3] 129[10])
    defparam SpiSRegxDP_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_72 (.A(\SpiStatexDP[0] ), .B(RAM0_SCLK_c), .Z(n4_adj_1055)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_72.init = 16'h8888;
    CCU2D ExtFIFORdAddrxDP_22__I_0_0 (.A0(ExtFIFOWrAddrxDP[22]), .B0(ExtFIFORdAddrxDP[22]), 
          .C0(GND_net), .D0(GND_net), .A1(ExtFIFOWrAddrxDP[21]), .B1(ExtFIFORdAddrxDP[21]), 
          .C1(ExtFIFOWrAddrxDP[20]), .D1(ExtFIFORdAddrxDP[20]), .COUT(n8217));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(93[29:64])
    defparam ExtFIFORdAddrxDP_22__I_0_0.INIT0 = 16'h9000;
    defparam ExtFIFORdAddrxDP_22__I_0_0.INIT1 = 16'h9009;
    defparam ExtFIFORdAddrxDP_22__I_0_0.INJECT1_0 = "NO";
    defparam ExtFIFORdAddrxDP_22__I_0_0.INJECT1_1 = "YES";
    LUT4 i2_3_lut_adj_73 (.A(ExtFIFOWrAddrxDP[3]), .B(n4_adj_1066), .C(n708[10]), 
         .Z(n8731)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_3_lut_adj_73.init = 16'hecec;
    LUT4 i1_4_lut_adj_74 (.A(NextAddrxDP[3]), .B(ExtFIFORdAddrxDP[3]), .C(n9067), 
         .D(n708[1]), .Z(n4_adj_1066)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_74.init = 16'heca0;
    LUT4 i2_4_lut_adj_75 (.A(ExtFIFOWrAddrxDP[14]), .B(n4785), .C(n708[10]), 
         .D(n2_adj_1067), .Z(n8715)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_75.init = 16'hffec;
    LUT4 i1_4_lut_adj_76 (.A(NextAddrxDP[14]), .B(n4733), .C(NextAddrxDP[6]), 
         .D(Clk96xC_enable_107), .Z(n4785)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_76.init = 16'hc088;
    CCU2D ExtFIFOFullxSN_I_0_15 (.A0(ExtFIFORdAddrxDP[19]), .B0(ExtFIFOFullxSN_N_655[19]), 
          .C0(ExtFIFORdAddrxDP[18]), .D0(ExtFIFOFullxSN_N_655[18]), .A1(ExtFIFORdAddrxDP[17]), 
          .B1(ExtFIFOFullxSN_N_655[17]), .C1(ExtFIFORdAddrxDP[16]), .D1(ExtFIFOFullxSN_N_655[16]), 
          .CIN(n8223), .COUT(n8224));
    defparam ExtFIFOFullxSN_I_0_15.INIT0 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_15.INIT1 = 16'h9009;
    defparam ExtFIFOFullxSN_I_0_15.INJECT1_0 = "YES";
    defparam ExtFIFOFullxSN_I_0_15.INJECT1_1 = "YES";
    LUT4 mux_1281_i5_3_lut (.A(NextAddrxDP[20]), .B(IntFIFODataOutxD[4]), 
         .C(n726), .Z(n2994[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1281_i5_3_lut.init = 16'hcaca;
    LUT4 select_1230_Select_14_i2_2_lut (.A(ExtFIFORdAddrxDP[14]), .B(n708[1]), 
         .Z(n2_adj_1067)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_14_i2_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_67 (.A(n708[5]), .B(n1), .C(n734), .Z(n9939)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_67.init = 16'hfefe;
    LUT4 i2_4_lut_adj_77 (.A(ExtFIFOWrAddrxDP[21]), .B(n4746), .C(n708[10]), 
         .D(n2_adj_1062), .Z(n8729)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_77.init = 16'hffec;
    LUT4 mux_1289_i8_4_lut (.A(n9938), .B(n2994[7]), .C(n8), .D(n3003), 
         .Z(\SpiOutDatxD[7] )) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1289_i8_4_lut.init = 16'hca0a;
    LUT4 mux_1281_i8_3_lut (.A(NextAddrxDP[23]), .B(IntFIFODataOutxD[7]), 
         .C(n726), .Z(n2994[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1281_i8_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_adj_78 (.A(ExtFIFOWrAddrxDP[2]), .B(n4_adj_1068), .C(n708[10]), 
         .Z(n8732)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_3_lut_adj_78.init = 16'hecec;
    LUT4 i1_2_lut_adj_79 (.A(n708[0]), .B(EXP_J303_D_c_3), .Z(n4661)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_2_lut_adj_79.init = 16'h2222;
    LUT4 i2_4_lut_adj_80 (.A(ExtFIFOWrAddrxDP[13]), .B(n4788), .C(n708[10]), 
         .D(n2_adj_1069), .Z(n8718)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_4_lut_adj_80.init = 16'hffec;
    LUT4 i1_4_lut_adj_81 (.A(NextAddrxDP[13]), .B(n4733), .C(NextAddrxDP[5]), 
         .D(Clk96xC_enable_107), .Z(n4788)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_81.init = 16'hc088;
    FD1S3AX StatexDP_FSM_i23_rep_132 (.D(n4019), .CK(Clk96xC), .Q(n10539));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam StatexDP_FSM_i23_rep_132.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_82 (.A(NextAddrxDP[2]), .B(ExtFIFORdAddrxDP[2]), .C(n9067), 
         .D(n708[1]), .Z(n4_adj_1068)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_82.init = 16'heca0;
    LUT4 select_1230_Select_13_i2_2_lut (.A(ExtFIFORdAddrxDP[13]), .B(n708[1]), 
         .Z(n2_adj_1069)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam select_1230_Select_13_i2_2_lut.init = 16'h8888;
    LUT4 i2294_4_lut (.A(NextAddrxDP[23]), .B(n4733), .C(NextAddrxDP[15]), 
         .D(Clk96xC_enable_107), .Z(n4191)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2294_4_lut.init = 16'hc088;
    LUT4 mux_1281_i7_3_lut (.A(NextAddrxDP[22]), .B(IntFIFODataOutxD[6]), 
         .C(n726), .Z(n2996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam mux_1281_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_83 (.A(n708[5]), .B(n1), .C(n734), .D(n708[21]), 
         .Z(n7)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_83.init = 16'hfffe;
    LUT4 i3_3_lut (.A(ByteCntxDP[9]), .B(ByteCntxDP[6]), .C(ByteCntxDP[7]), 
         .Z(n8_adj_1052)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(328[8:22])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i2082_3_lut_rep_68 (.A(n3930), .B(n6766), .C(n10539), .Z(Clk96xC_enable_200)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2082_3_lut_rep_68.init = 16'h3a3a;
    LUT4 i2_3_lut_adj_84 (.A(ExtFIFOWrAddrxDP[1]), .B(n4_adj_1070), .C(n708[10]), 
         .Z(n8733)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i2_3_lut_adj_84.init = 16'hecec;
    LUT4 i1_4_lut_3_lut (.A(n3930), .B(n10539), .C(n9160), .Z(n5384)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_adj_85 (.A(NextAddrxDP[1]), .B(ExtFIFORdAddrxDP[1]), .C(n9067), 
         .D(n708[1]), .Z(n4_adj_1070)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(151[3] 341[12])
    defparam i1_4_lut_adj_85.init = 16'heca0;
    ext_fifo_int_fifo int_fifo_inst (.ParDatfromMuxxD({ParDatfromMuxxD}), 
            .Clk96xC(Clk96xC), .ParDatfromMuxRdyxS(ParDatfromMuxRdyxS), 
            .IntFIFORdEnxS(IntFIFORdEnxS), .PllLockxS_N_1(PllLockxS_N_1), 
            .IntFIFODataOutxD({IntFIFODataOutxD}), .IntFIFOEmptyxS(IntFIFOEmptyxS), 
            .GND_net(GND_net), .VCC_net(VCC_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(390[18:35])
    
endmodule
//
// Verilog Description of module ext_fifo_int_fifo
//

module ext_fifo_int_fifo (ParDatfromMuxxD, Clk96xC, ParDatfromMuxRdyxS, 
            IntFIFORdEnxS, PllLockxS_N_1, IntFIFODataOutxD, IntFIFOEmptyxS, 
            GND_net, VCC_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input [7:0]ParDatfromMuxxD;
    input Clk96xC;
    input ParDatfromMuxRdyxS;
    input IntFIFORdEnxS;
    input PllLockxS_N_1;
    output [7:0]IntFIFODataOutxD;
    output IntFIFOEmptyxS;
    input GND_net;
    input VCC_net;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    wire Full;
    
    FIFO8KB ext_fifo_int_fifo_0_0 (.DI0(ParDatfromMuxxD[0]), .DI1(ParDatfromMuxxD[1]), 
            .DI2(ParDatfromMuxxD[2]), .DI3(ParDatfromMuxxD[3]), .DI4(ParDatfromMuxxD[4]), 
            .DI5(ParDatfromMuxxD[5]), .DI6(ParDatfromMuxxD[6]), .DI7(ParDatfromMuxxD[7]), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .FULLI(Full), .EMPTYI(IntFIFOEmptyxS), 
            .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), 
            .WE(ParDatfromMuxRdyxS), .RE(IntFIFORdEnxS), .ORE(IntFIFORdEnxS), 
            .CLKW(Clk96xC), .CLKR(Clk96xC), .RST(PllLockxS_N_1), .RPRST(PllLockxS_N_1), 
            .DO0(IntFIFODataOutxD[0]), .DO1(IntFIFODataOutxD[1]), .DO2(IntFIFODataOutxD[2]), 
            .DO3(IntFIFODataOutxD[3]), .DO4(IntFIFODataOutxD[4]), .DO5(IntFIFODataOutxD[5]), 
            .DO6(IntFIFODataOutxD[6]), .DO7(IntFIFODataOutxD[7]), .EF(IntFIFOEmptyxS), 
            .FF(Full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=48, LSE_LCOL=18, LSE_RCOL=35, LSE_LLINE=390, LSE_RLINE=390 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/ext_fifo.vhd(390[18:35])
    defparam ext_fifo_int_fifo_0_0.DATA_WIDTH_W = 9;
    defparam ext_fifo_int_fifo_0_0.DATA_WIDTH_R = 9;
    defparam ext_fifo_int_fifo_0_0.REGMODE = "NOREG";
    defparam ext_fifo_int_fifo_0_0.RESETMODE = "ASYNC";
    defparam ext_fifo_int_fifo_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ext_fifo_int_fifo_0_0.CSDECODE_W = "0b11";
    defparam ext_fifo_int_fifo_0_0.CSDECODE_R = "0b11";
    defparam ext_fifo_int_fifo_0_0.AEPOINTER = "0b00000001010000";
    defparam ext_fifo_int_fifo_0_0.AEPOINTER1 = "0b00000001011000";
    defparam ext_fifo_int_fifo_0_0.AFPOINTER = "0b00111111100000";
    defparam ext_fifo_int_fifo_0_0.AFPOINTER1 = "0b00111111011000";
    defparam ext_fifo_int_fifo_0_0.FULLPOINTER = "0b10000000000000";
    defparam ext_fifo_int_fifo_0_0.FULLPOINTER1 = "0b01111111111000";
    defparam ext_fifo_int_fifo_0_0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module aux_adc_rx
//

module aux_adc_rx (n1892, n1884, n1885, AuxDataxD, n1883, n10540, 
            Clk96xC, Clk96xC_enable_53, DETB_TRIGGER_c, AuxTxTrgxS, 
            TRG_c_0, n5767, n9993, ADS_SDO_c_1, ADS_SDO_c_0, n6823, 
            n82, n10001, n8673, AuxDataAckxS, n4084, GND_net, AUXIO_c_1, 
            AUXIO_c_0, TRG_c_3, TRG_c_2, TRG_c_1, n9944, ADS_CSN_c);
    output n1892;
    output n1884;
    output n1885;
    output [7:0]AuxDataxD;
    output n1883;
    output n10540;
    input Clk96xC;
    input Clk96xC_enable_53;
    input DETB_TRIGGER_c;
    input AuxTxTrgxS;
    input TRG_c_0;
    output n5767;
    output n9993;
    input ADS_SDO_c_1;
    input ADS_SDO_c_0;
    output n6823;
    input n82;
    output n10001;
    input n8673;
    input AuxDataAckxS;
    input n4084;
    input GND_net;
    input AUXIO_c_1;
    input AUXIO_c_0;
    input TRG_c_3;
    input TRG_c_2;
    input TRG_c_1;
    output n9944;
    output ADS_CSN_c;
    
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    wire [15:0]n1876;
    
    wire n5409;
    wire [23:0]\ADCAccxDP[0] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(56[9:18])
    wire [7:0]DigAuxxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(58[9:18])
    
    wire Clk96xC_enable_50;
    wire [3:0]BitCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(47[9:18])
    
    wire n9990, n9962;
    wire [3:0]n21;
    wire [1:0]ClkCntxDP;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(46[9:18])
    
    wire n9845, n9852, n9963, n5776, Clk96xC_enable_188;
    wire [23:0]ADCAccxDN_0__23__N_977;
    
    wire AcqTrgLastxSP, TxTrgLastxSP;
    wire [23:0]\ADCAccxDP[1] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(56[9:18])
    wire [23:0]\ADCAccxDN[1] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(56[20:29])
    
    wire n9992, n4082;
    wire [11:0]\ADCSregxDP[1] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(54[9:19])
    
    wire Clk96xC_enable_118;
    wire [11:0]\ADCSregxDP[0] ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(54[9:19])
    
    wire n108, n9968, n4619, n9999, n8692, n9080, n2645, n8522;
    wire [23:0]ADCAccxDN_1__23__N_1001;
    
    wire n8521, n8520, n8519, n8518, n8517, n8516, n8515, n8514, 
        n8513, n8512, n8509, n8508, n8507, n8506, n8505, n8504, 
        n8503, n8502, n8501, n8500, n8499, n8498;
    
    LUT4 i3414_2_lut_3_lut_4_lut_4_lut_4_lut (.A(n1876[3]), .B(n1876[5]), 
         .C(n1892), .D(n1876[4]), .Z(n5409)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam i3414_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h1110;
    LUT4 mux_863_i2_4_lut (.A(\ADCAccxDP[0] [1]), .B(DigAuxxDP[1]), .C(n1884), 
         .D(n1885), .Z(AuxDataxD[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_863_i2_4_lut.init = 16'hcfca;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(n1876[3]), .B(n1876[5]), .C(n1892), 
         .D(n1876[4]), .Z(Clk96xC_enable_50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hfffe;
    LUT4 i6306_2_lut_rep_118 (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .Z(n9990)) /* synthesis lut_function=(A (B)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam i6306_2_lut_rep_118.init = 16'h8888;
    LUT4 i3_3_lut_rep_90_4_lut (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .C(BitCntxDP[2]), 
         .D(BitCntxDP[3]), .Z(n9962)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam i3_3_lut_rep_90_4_lut.init = 16'h8000;
    LUT4 i6310_2_lut_3_lut (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .C(BitCntxDP[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam i6310_2_lut_3_lut.init = 16'h7878;
    LUT4 i6317_3_lut_4_lut (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .C(BitCntxDP[2]), 
         .D(BitCntxDP[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam i6317_3_lut_4_lut.init = 16'h7f80;
    LUT4 ClkCntxDP_1__bdd_4_lut (.A(ClkCntxDP[1]), .B(ClkCntxDP[0]), .C(n1876[5]), 
         .D(n9962), .Z(n9845)) /* synthesis lut_function=(A ((C (D))+!B)+!A !((C (D))+!B)) */ ;
    defparam ClkCntxDP_1__bdd_4_lut.init = 16'ha666;
    LUT4 ClkCntxDP_0__bdd_3_lut (.A(ClkCntxDP[0]), .B(n1876[5]), .C(n9962), 
         .Z(n9852)) /* synthesis lut_function=(A (B (C))+!A !(B (C))) */ ;
    defparam ClkCntxDP_0__bdd_3_lut.init = 16'h9595;
    LUT4 i7221_2_lut_4_lut (.A(n1883), .B(n9963), .C(n1876[6]), .D(n10540), 
         .Z(n5776)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7221_2_lut_4_lut.init = 16'h0001;
    FD1P3IX BitCntxDP_1487__i0 (.D(n21[0]), .SP(Clk96xC_enable_53), .CD(n5776), 
            .CK(Clk96xC), .Q(BitCntxDP[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam BitCntxDP_1487__i0.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i0 (.D(ADCAccxDN_0__23__N_977[0]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i0.GSR = "ENABLED";
    FD1S3AX AcqTrgLastxSP_59 (.D(DETB_TRIGGER_c), .CK(Clk96xC), .Q(AcqTrgLastxSP)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam AcqTrgLastxSP_59.GSR = "ENABLED";
    FD1S3AX TxTrgLastxSP_60 (.D(AuxTxTrgxS), .CK(Clk96xC), .Q(TxTrgLastxSP)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam TxTrgLastxSP_60.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i0 (.D(\ADCAccxDN[1] [0]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i0.GSR = "ENABLED";
    FD1S3AX DigAuxxDP_i1 (.D(TRG_c_0), .CK(Clk96xC), .Q(DigAuxxDP[0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam DigAuxxDP_i1.GSR = "ENABLED";
    LUT4 i2222_3_lut_4_lut (.A(n9992), .B(n9962), .C(n1876[4]), .D(n1876[5]), 
         .Z(n4082)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i2222_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i1592_2_lut_rep_120 (.A(ClkCntxDP[0]), .B(ClkCntxDP[1]), .Z(n9992)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1592_2_lut_rep_120.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(ClkCntxDP[0]), .B(ClkCntxDP[1]), .C(n1876[5]), 
         .D(n9962), .Z(n5767)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i7225_2_lut_rep_121 (.A(n1876[3]), .B(n1876[4]), .Z(n9993)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7225_2_lut_rep_121.init = 16'h1111;
    LUT4 i1_2_lut_rep_91_3_lut (.A(n1876[3]), .B(n1876[4]), .C(n1876[5]), 
         .Z(n9963)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_91_3_lut.init = 16'hfefe;
    FD1P3AX ADCSregxDP_1___i0 (.D(ADS_SDO_c_1), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i0.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i0 (.D(ADS_SDO_c_0), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [0])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i0.GSR = "ENABLED";
    LUT4 i6303_2_lut (.A(BitCntxDP[1]), .B(BitCntxDP[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam i6303_2_lut.init = 16'h6666;
    LUT4 i1_4_lut (.A(n108), .B(n10540), .C(n9968), .D(n6823), .Z(n4619)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'hdc50;
    LUT4 i20_2_lut (.A(DETB_TRIGGER_c), .B(AcqTrgLastxSP), .Z(n108)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(103[11:50])
    defparam i20_2_lut.init = 16'h2222;
    LUT4 i4819_4_lut (.A(BitCntxDP[3]), .B(BitCntxDP[2]), .C(BitCntxDP[1]), 
         .D(BitCntxDP[0]), .Z(n6823)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i4819_4_lut.init = 16'heeea;
    FD1P3IX ClkCntxDP_1490__i0 (.D(n9852), .SP(Clk96xC_enable_50), .CD(n5409), 
            .CK(Clk96xC), .Q(ClkCntxDP[0]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam ClkCntxDP_1490__i0.GSR = "ENABLED";
    FD1P3IX ClkCntxDP_1490__i1 (.D(n9845), .SP(Clk96xC_enable_50), .CD(n5409), 
            .CK(Clk96xC), .Q(ClkCntxDP[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam ClkCntxDP_1490__i1.GSR = "ENABLED";
    LUT4 i4547_3_lut_3_lut (.A(n1884), .B(n1885), .C(\ADCAccxDP[0] [7]), 
         .Z(AuxDataxD[7])) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam i4547_3_lut_3_lut.init = 16'h5454;
    LUT4 i4548_3_lut_3_lut (.A(n1884), .B(n1885), .C(\ADCAccxDP[0] [6]), 
         .Z(AuxDataxD[6])) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam i4548_3_lut_3_lut.init = 16'h5454;
    FD1P3IX BitCntxDP_1487__i1 (.D(n21[1]), .SP(Clk96xC_enable_53), .CD(n5776), 
            .CK(Clk96xC), .Q(BitCntxDP[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam BitCntxDP_1487__i1.GSR = "ENABLED";
    FD1S3JX StatexDP_FSM_i1 (.D(n4619), .CK(Clk96xC), .PD(n1876[6]), .Q(n1892));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i1.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i11 (.D(n82), .CK(Clk96xC), .Q(n1876[10]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i11.GSR = "ENABLED";
    FD1P3IX BitCntxDP_1487__i2 (.D(n21[2]), .SP(Clk96xC_enable_53), .CD(n5776), 
            .CK(Clk96xC), .Q(BitCntxDP[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam BitCntxDP_1487__i2.GSR = "ENABLED";
    FD1P3IX BitCntxDP_1487__i3 (.D(n21[3]), .SP(Clk96xC_enable_53), .CD(n5776), 
            .CK(Clk96xC), .Q(BitCntxDP[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam BitCntxDP_1487__i3.GSR = "ENABLED";
    LUT4 i769_1_lut_rep_127 (.A(ClkCntxDP[1]), .Z(n9999)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(120[8:46])
    defparam i769_1_lut_rep_127.init = 16'h5555;
    LUT4 i2_4_lut_4_lut (.A(ClkCntxDP[1]), .B(n1876[2]), .C(n5767), .D(n1876[3]), 
         .Z(n8692)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(120[8:46])
    defparam i2_4_lut_4_lut.init = 16'hfdfc;
    LUT4 TxTrgxSI_I_0_2_lut_rep_129 (.A(AuxTxTrgxS), .B(TxTrgLastxSP), .Z(n10001)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(101[8:45])
    defparam TxTrgxSI_I_0_2_lut_rep_129.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(AuxTxTrgxS), .B(TxTrgLastxSP), .C(n108), 
         .D(n1892), .Z(n9080)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(101[8:45])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hd000;
    LUT4 i1_2_lut_rep_96_3_lut (.A(AuxTxTrgxS), .B(TxTrgLastxSP), .C(n1892), 
         .Z(n9968)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(101[8:45])
    defparam i1_2_lut_rep_96_3_lut.init = 16'hd0d0;
    LUT4 i1189_1_lut (.A(n1876[5]), .Z(n2645)) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam i1189_1_lut.init = 16'h5555;
    LUT4 mux_863_i1_4_lut_4_lut (.A(n1885), .B(n1884), .C(DigAuxxDP[0]), 
         .D(\ADCAccxDP[0] [0]), .Z(AuxDataxD[0])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_863_i1_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_863_i3_4_lut_4_lut (.A(n1885), .B(n1884), .C(DigAuxxDP[2]), 
         .D(\ADCAccxDP[0] [2]), .Z(AuxDataxD[2])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_863_i3_4_lut_4_lut.init = 16'hd1c0;
    FD1S3AX StatexDP_FSM_i10 (.D(n8673), .CK(Clk96xC), .Q(n1883));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i10.GSR = "ENABLED";
    FD1P3AX StatexDP_FSM_i9 (.D(n1885), .SP(AuxDataAckxS), .CK(Clk96xC), 
            .Q(n1884));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i9.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i8 (.D(n4084), .CK(Clk96xC), .Q(n1885));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i8.GSR = "ENABLED";
    FD1S3IX StatexDP_FSM_i7 (.D(n9962), .CK(Clk96xC), .CD(n2645), .Q(n1876[6]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i7.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i6 (.D(n4082), .CK(Clk96xC), .Q(n1876[5]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i6.GSR = "ENABLED";
    FD1S3IX StatexDP_FSM_i5 (.D(n1876[3]), .CK(Clk96xC), .CD(n9999), .Q(n1876[4]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i5.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i4 (.D(n8692), .CK(Clk96xC), .Q(n1876[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i4.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i3 (.D(n1876[1]), .CK(Clk96xC), .Q(n1876[2]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i3.GSR = "ENABLED";
    FD1S3AX StatexDP_FSM_i2 (.D(n9080), .CK(Clk96xC), .Q(n1876[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i2.GSR = "ENABLED";
    LUT4 i6301_1_lut (.A(BitCntxDP[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(181[18:27])
    defparam i6301_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(n1876[6]), .B(n10540), .Z(Clk96xC_enable_188)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 mux_869_i1_4_lut (.A(\ADCAccxDP[1] [0]), .B(\ADCAccxDP[1] [8]), 
         .C(n10540), .D(\ADCSregxDP[1] [0]), .Z(\ADCAccxDN[1] [0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i1_4_lut.init = 16'hc5ca;
    CCU2D ADCAccxDP_1__23__I_0_24 (.A0(\ADCAccxDP[1] [22]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [23]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8522), .S0(ADCAccxDN_1__23__N_1001[22]), 
          .S1(ADCAccxDN_1__23__N_1001[23]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_24.INIT0 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_24.INIT1 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_24.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_24.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_1__23__I_0_22 (.A0(\ADCAccxDP[1] [20]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [21]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8521), .COUT(n8522), .S0(ADCAccxDN_1__23__N_1001[20]), 
          .S1(ADCAccxDN_1__23__N_1001[21]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_22.INIT0 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_22.INIT1 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_22.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_22.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_1__23__I_0_20 (.A0(\ADCAccxDP[1] [18]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [19]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8520), .COUT(n8521), .S0(ADCAccxDN_1__23__N_1001[18]), 
          .S1(ADCAccxDN_1__23__N_1001[19]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_20.INIT0 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_20.INIT1 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_20.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_20.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_1__23__I_0_18 (.A0(\ADCAccxDP[1] [16]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [17]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8519), .COUT(n8520), .S0(ADCAccxDN_1__23__N_1001[16]), 
          .S1(ADCAccxDN_1__23__N_1001[17]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_18.INIT0 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_18.INIT1 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_18.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_18.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_1__23__I_0_16 (.A0(\ADCAccxDP[1] [14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [15]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8518), .COUT(n8519), .S0(ADCAccxDN_1__23__N_1001[14]), 
          .S1(ADCAccxDN_1__23__N_1001[15]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_16.INIT0 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_16.INIT1 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_16.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_16.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_1__23__I_0_14 (.A0(\ADCAccxDP[1] [12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8517), .COUT(n8518), .S0(ADCAccxDN_1__23__N_1001[12]), 
          .S1(ADCAccxDN_1__23__N_1001[13]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_14.INIT0 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_14.INIT1 = 16'h5aaa;
    defparam ADCAccxDP_1__23__I_0_14.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_14.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_1__23__I_0_12 (.A0(\ADCAccxDP[1] [10]), .B0(\ADCSregxDP[1] [10]), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [11]), .B1(\ADCSregxDP[1] [11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8516), .COUT(n8517), .S0(ADCAccxDN_1__23__N_1001[10]), 
          .S1(ADCAccxDN_1__23__N_1001[11]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_12.INIT0 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_12.INIT1 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_12.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_12.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_1__23__I_0_10 (.A0(\ADCAccxDP[1] [8]), .B0(\ADCSregxDP[1] [8]), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [9]), .B1(\ADCSregxDP[1] [9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8515), .COUT(n8516), .S0(ADCAccxDN_1__23__N_1001[8]), 
          .S1(ADCAccxDN_1__23__N_1001[9]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_10.INIT0 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_10.INIT1 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_10.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_10.INJECT1_1 = "NO";
    FD1P3AX ADCSregxDP_0___i11 (.D(\ADCSregxDP[0] [10]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [11])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i11.GSR = "ENABLED";
    CCU2D ADCAccxDP_1__23__I_0_8 (.A0(\ADCAccxDP[1] [6]), .B0(\ADCSregxDP[1] [6]), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [7]), .B1(\ADCSregxDP[1] [7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8514), .COUT(n8515), .S0(ADCAccxDN_1__23__N_1001[6]), 
          .S1(ADCAccxDN_1__23__N_1001[7]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_8.INIT0 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_8.INIT1 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_8.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_8.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_1__23__I_0_6 (.A0(\ADCAccxDP[1] [4]), .B0(\ADCSregxDP[1] [4]), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [5]), .B1(\ADCSregxDP[1] [5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8513), .COUT(n8514), .S0(ADCAccxDN_1__23__N_1001[4]), 
          .S1(ADCAccxDN_1__23__N_1001[5]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_6.INIT0 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_6.INIT1 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_6.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_6.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_1__23__I_0_4 (.A0(\ADCAccxDP[1] [2]), .B0(\ADCSregxDP[1] [2]), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [3]), .B1(\ADCSregxDP[1] [3]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8512), .COUT(n8513), .S0(ADCAccxDN_1__23__N_1001[2]), 
          .S1(ADCAccxDN_1__23__N_1001[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_4.INIT0 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_4.INIT1 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_4.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_4.INJECT1_1 = "NO";
    FD1P3AX ADCSregxDP_0___i10 (.D(\ADCSregxDP[0] [9]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [10])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i10.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i9 (.D(\ADCSregxDP[0] [8]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [9])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i9.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i8 (.D(\ADCSregxDP[0] [7]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i8.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i7 (.D(\ADCSregxDP[0] [6]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i7.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i6 (.D(\ADCSregxDP[0] [5]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i6.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i5 (.D(\ADCSregxDP[0] [4]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i5.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i4 (.D(\ADCSregxDP[0] [3]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i4.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i3 (.D(\ADCSregxDP[0] [2]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i3.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i2 (.D(\ADCSregxDP[0] [1]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i2.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_0___i1 (.D(\ADCSregxDP[0] [0]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[0] [1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_0___i1.GSR = "ENABLED";
    CCU2D ADCAccxDP_1__23__I_0_2 (.A0(\ADCAccxDP[1] [0]), .B0(\ADCSregxDP[1] [0]), 
          .C0(GND_net), .D0(GND_net), .A1(\ADCAccxDP[1] [1]), .B1(\ADCSregxDP[1] [1]), 
          .C1(GND_net), .D1(GND_net), .COUT(n8512), .S1(ADCAccxDN_1__23__N_1001[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_1__23__I_0_2.INIT0 = 16'h7000;
    defparam ADCAccxDP_1__23__I_0_2.INIT1 = 16'h5666;
    defparam ADCAccxDP_1__23__I_0_2.INJECT1_0 = "NO";
    defparam ADCAccxDP_1__23__I_0_2.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_0__23__I_0_25 (.A0(GND_net), .B0(n10540), .C0(\ADCAccxDP[1] [6]), 
          .D0(\ADCAccxDP[0] [22]), .A1(GND_net), .B1(n10540), .C1(\ADCAccxDP[1] [7]), 
          .D1(\ADCAccxDP[0] [23]), .CIN(n8509), .S0(ADCAccxDN_0__23__N_977[22]), 
          .S1(ADCAccxDN_0__23__N_977[23]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_25.INIT0 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_25.INIT1 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_25.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_25.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_0__23__I_0_23 (.A0(GND_net), .B0(n10540), .C0(\ADCAccxDP[1] [4]), 
          .D0(\ADCAccxDP[0] [20]), .A1(GND_net), .B1(n10540), .C1(\ADCAccxDP[1] [5]), 
          .D1(\ADCAccxDP[0] [21]), .CIN(n8508), .COUT(n8509), .S0(ADCAccxDN_0__23__N_977[20]), 
          .S1(ADCAccxDN_0__23__N_977[21]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_23.INIT0 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_23.INIT1 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_23.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_23.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_0__23__I_0_21 (.A0(GND_net), .B0(n10540), .C0(\ADCAccxDP[1] [2]), 
          .D0(\ADCAccxDP[0] [18]), .A1(GND_net), .B1(n10540), .C1(\ADCAccxDP[1] [3]), 
          .D1(\ADCAccxDP[0] [19]), .CIN(n8507), .COUT(n8508), .S0(ADCAccxDN_0__23__N_977[18]), 
          .S1(ADCAccxDN_0__23__N_977[19]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_21.INIT0 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_21.INIT1 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_21.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_21.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_0__23__I_0_19 (.A0(GND_net), .B0(n10540), .C0(\ADCAccxDP[1] [0]), 
          .D0(\ADCAccxDP[0] [16]), .A1(GND_net), .B1(n10540), .C1(\ADCAccxDP[1] [1]), 
          .D1(\ADCAccxDP[0] [17]), .CIN(n8506), .COUT(n8507), .S0(ADCAccxDN_0__23__N_977[16]), 
          .S1(ADCAccxDN_0__23__N_977[17]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_19.INIT0 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_19.INIT1 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_19.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_19.INJECT1_1 = "NO";
    FD1P3AX ADCSregxDP_1___i11 (.D(\ADCSregxDP[1] [10]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [11])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i11.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i10 (.D(\ADCSregxDP[1] [9]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [10])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i10.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i9 (.D(\ADCSregxDP[1] [8]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [9])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i9.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i8 (.D(\ADCSregxDP[1] [7]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i8.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i7 (.D(\ADCSregxDP[1] [6]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i7.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i6 (.D(\ADCSregxDP[1] [5]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i6.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i5 (.D(\ADCSregxDP[1] [4]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i5.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i4 (.D(\ADCSregxDP[1] [3]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i4.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i3 (.D(\ADCSregxDP[1] [2]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i3.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i2 (.D(\ADCSregxDP[1] [1]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i2.GSR = "ENABLED";
    FD1P3AX ADCSregxDP_1___i1 (.D(\ADCSregxDP[1] [0]), .SP(Clk96xC_enable_118), 
            .CK(Clk96xC), .Q(\ADCSregxDP[1] [1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCSregxDP_1___i1.GSR = "ENABLED";
    LUT4 mux_869_i16_3_lut (.A(ADCAccxDN_1__23__N_1001[15]), .B(\ADCAccxDP[1] [23]), 
         .C(n10540), .Z(\ADCAccxDN[1] [15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i16_3_lut.init = 16'hcaca;
    CCU2D ADCAccxDP_0__23__I_0_17 (.A0(GND_net), .B0(n10540), .C0(\ADCAccxDP[0] [22]), 
          .D0(\ADCAccxDP[0] [14]), .A1(GND_net), .B1(n10540), .C1(\ADCAccxDP[0] [23]), 
          .D1(\ADCAccxDP[0] [15]), .CIN(n8505), .COUT(n8506), .S0(ADCAccxDN_0__23__N_977[14]), 
          .S1(ADCAccxDN_0__23__N_977[15]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_17.INIT0 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_17.INIT1 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_17.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_17.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_0__23__I_0_15 (.A0(GND_net), .B0(n10540), .C0(\ADCAccxDP[0] [20]), 
          .D0(\ADCAccxDP[0] [12]), .A1(GND_net), .B1(n10540), .C1(\ADCAccxDP[0] [21]), 
          .D1(\ADCAccxDP[0] [13]), .CIN(n8504), .COUT(n8505), .S0(ADCAccxDN_0__23__N_977[12]), 
          .S1(ADCAccxDN_0__23__N_977[13]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_15.INIT0 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_15.INIT1 = 16'h596a;
    defparam ADCAccxDP_0__23__I_0_15.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_15.INJECT1_1 = "NO";
    LUT4 mux_869_i15_3_lut (.A(ADCAccxDN_1__23__N_1001[14]), .B(\ADCAccxDP[1] [22]), 
         .C(n10540), .Z(\ADCAccxDN[1] [14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i15_3_lut.init = 16'hcaca;
    CCU2D ADCAccxDP_0__23__I_0_13 (.A0(\ADCSregxDP[0] [10]), .B0(n10540), 
          .C0(\ADCAccxDP[0] [18]), .D0(\ADCAccxDP[0] [10]), .A1(\ADCSregxDP[0] [11]), 
          .B1(n10540), .C1(\ADCAccxDP[0] [19]), .D1(\ADCAccxDP[0] [11]), 
          .CIN(n8503), .COUT(n8504), .S0(ADCAccxDN_0__23__N_977[10]), 
          .S1(ADCAccxDN_0__23__N_977[11]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_13.INIT0 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_13.INIT1 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_13.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_13.INJECT1_1 = "NO";
    CCU2D ADCAccxDP_0__23__I_0_11 (.A0(\ADCSregxDP[0] [8]), .B0(n10540), 
          .C0(\ADCAccxDP[0] [16]), .D0(\ADCAccxDP[0] [8]), .A1(\ADCSregxDP[0] [9]), 
          .B1(n10540), .C1(\ADCAccxDP[0] [17]), .D1(\ADCAccxDP[0] [9]), 
          .CIN(n8502), .COUT(n8503), .S0(ADCAccxDN_0__23__N_977[8]), .S1(ADCAccxDN_0__23__N_977[9]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_11.INIT0 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_11.INIT1 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_11.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_11.INJECT1_1 = "NO";
    LUT4 mux_869_i14_3_lut (.A(ADCAccxDN_1__23__N_1001[13]), .B(\ADCAccxDP[1] [21]), 
         .C(n10540), .Z(\ADCAccxDN[1] [13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i14_3_lut.init = 16'hcaca;
    LUT4 mux_869_i13_3_lut (.A(ADCAccxDN_1__23__N_1001[12]), .B(\ADCAccxDP[1] [20]), 
         .C(n10540), .Z(\ADCAccxDN[1] [12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i13_3_lut.init = 16'hcaca;
    CCU2D ADCAccxDP_0__23__I_0_9 (.A0(\ADCSregxDP[0] [6]), .B0(n10540), 
          .C0(\ADCAccxDP[0] [14]), .D0(\ADCAccxDP[0] [6]), .A1(\ADCSregxDP[0] [7]), 
          .B1(n10540), .C1(\ADCAccxDP[0] [15]), .D1(\ADCAccxDP[0] [7]), 
          .CIN(n8501), .COUT(n8502), .S0(ADCAccxDN_0__23__N_977[6]), .S1(ADCAccxDN_0__23__N_977[7]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_9.INIT0 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_9.INIT1 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_9.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_9.INJECT1_1 = "NO";
    LUT4 mux_869_i12_3_lut (.A(ADCAccxDN_1__23__N_1001[11]), .B(\ADCAccxDP[1] [19]), 
         .C(n10540), .Z(\ADCAccxDN[1] [11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i12_3_lut.init = 16'hcaca;
    FD1S3AX DigAuxxDP_i6 (.D(AUXIO_c_1), .CK(Clk96xC), .Q(DigAuxxDP[5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam DigAuxxDP_i6.GSR = "ENABLED";
    FD1S3AX DigAuxxDP_i5 (.D(AUXIO_c_0), .CK(Clk96xC), .Q(DigAuxxDP[4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam DigAuxxDP_i5.GSR = "ENABLED";
    FD1S3AX DigAuxxDP_i4 (.D(TRG_c_3), .CK(Clk96xC), .Q(DigAuxxDP[3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam DigAuxxDP_i4.GSR = "ENABLED";
    FD1S3AX DigAuxxDP_i3 (.D(TRG_c_2), .CK(Clk96xC), .Q(DigAuxxDP[2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam DigAuxxDP_i3.GSR = "ENABLED";
    FD1S3AX DigAuxxDP_i2 (.D(TRG_c_1), .CK(Clk96xC), .Q(DigAuxxDP[1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam DigAuxxDP_i2.GSR = "ENABLED";
    FD1P3IX ADCAccxDP_1__i23 (.D(ADCAccxDN_1__23__N_1001[23]), .SP(n1876[6]), 
            .CD(n1876[10]), .CK(Clk96xC), .Q(\ADCAccxDP[1] [23])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i23.GSR = "ENABLED";
    FD1P3IX ADCAccxDP_1__i22 (.D(ADCAccxDN_1__23__N_1001[22]), .SP(n1876[6]), 
            .CD(n1876[10]), .CK(Clk96xC), .Q(\ADCAccxDP[1] [22])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i22.GSR = "ENABLED";
    FD1P3IX ADCAccxDP_1__i21 (.D(ADCAccxDN_1__23__N_1001[21]), .SP(n1876[6]), 
            .CD(n1876[10]), .CK(Clk96xC), .Q(\ADCAccxDP[1] [21])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i21.GSR = "ENABLED";
    FD1P3IX ADCAccxDP_1__i20 (.D(ADCAccxDN_1__23__N_1001[20]), .SP(n1876[6]), 
            .CD(n1876[10]), .CK(Clk96xC), .Q(\ADCAccxDP[1] [20])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i20.GSR = "ENABLED";
    FD1P3IX ADCAccxDP_1__i19 (.D(ADCAccxDN_1__23__N_1001[19]), .SP(n1876[6]), 
            .CD(n1876[10]), .CK(Clk96xC), .Q(\ADCAccxDP[1] [19])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i19.GSR = "ENABLED";
    FD1P3IX ADCAccxDP_1__i18 (.D(ADCAccxDN_1__23__N_1001[18]), .SP(n1876[6]), 
            .CD(n1876[10]), .CK(Clk96xC), .Q(\ADCAccxDP[1] [18])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i18.GSR = "ENABLED";
    FD1P3IX ADCAccxDP_1__i17 (.D(ADCAccxDN_1__23__N_1001[17]), .SP(n1876[6]), 
            .CD(n1876[10]), .CK(Clk96xC), .Q(\ADCAccxDP[1] [17])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i17.GSR = "ENABLED";
    FD1P3IX ADCAccxDP_1__i16 (.D(ADCAccxDN_1__23__N_1001[16]), .SP(n1876[6]), 
            .CD(n1876[10]), .CK(Clk96xC), .Q(\ADCAccxDP[1] [16])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i16.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i15 (.D(\ADCAccxDN[1] [15]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [15])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i15.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i14 (.D(\ADCAccxDN[1] [14]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [14])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i14.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i13 (.D(\ADCAccxDN[1] [13]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [13])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i13.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i12 (.D(\ADCAccxDN[1] [12]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [12])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i12.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i11 (.D(\ADCAccxDN[1] [11]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [11])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i11.GSR = "ENABLED";
    LUT4 mux_869_i11_3_lut (.A(ADCAccxDN_1__23__N_1001[10]), .B(\ADCAccxDP[1] [18]), 
         .C(n10540), .Z(\ADCAccxDN[1] [10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i11_3_lut.init = 16'hcaca;
    FD1P3AX ADCAccxDP_1__i10 (.D(\ADCAccxDN[1] [10]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [10])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i10.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i9 (.D(\ADCAccxDN[1] [9]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [9])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i9.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i8 (.D(\ADCAccxDN[1] [8]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i8.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i7 (.D(\ADCAccxDN[1] [7]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i7.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i6 (.D(\ADCAccxDN[1] [6]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i6.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i5 (.D(\ADCAccxDN[1] [5]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i5.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i4 (.D(\ADCAccxDN[1] [4]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i4.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i3 (.D(\ADCAccxDN[1] [3]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i3.GSR = "ENABLED";
    LUT4 mux_869_i10_3_lut (.A(ADCAccxDN_1__23__N_1001[9]), .B(\ADCAccxDP[1] [17]), 
         .C(n10540), .Z(\ADCAccxDN[1] [9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i10_3_lut.init = 16'hcaca;
    FD1P3AX ADCAccxDP_1__i2 (.D(\ADCAccxDN[1] [2]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i2.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_1__i1 (.D(\ADCAccxDN[1] [1]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[1] [1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_1__i1.GSR = "ENABLED";
    LUT4 mux_869_i9_3_lut (.A(ADCAccxDN_1__23__N_1001[8]), .B(\ADCAccxDP[1] [16]), 
         .C(n10540), .Z(\ADCAccxDN[1] [8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i9_3_lut.init = 16'hcaca;
    FD1P3AX ADCAccxDP_0__i23 (.D(ADCAccxDN_0__23__N_977[23]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [23])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i23.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i22 (.D(ADCAccxDN_0__23__N_977[22]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [22])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i22.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i21 (.D(ADCAccxDN_0__23__N_977[21]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [21])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i21.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i20 (.D(ADCAccxDN_0__23__N_977[20]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [20])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i20.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i19 (.D(ADCAccxDN_0__23__N_977[19]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [19])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i19.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i18 (.D(ADCAccxDN_0__23__N_977[18]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [18])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i18.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i17 (.D(ADCAccxDN_0__23__N_977[17]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [17])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i17.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i16 (.D(ADCAccxDN_0__23__N_977[16]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [16])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i16.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i15 (.D(ADCAccxDN_0__23__N_977[15]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [15])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i15.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i14 (.D(ADCAccxDN_0__23__N_977[14]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [14])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i14.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i13 (.D(ADCAccxDN_0__23__N_977[13]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [13])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i13.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i12 (.D(ADCAccxDN_0__23__N_977[12]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [12])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i12.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i11 (.D(ADCAccxDN_0__23__N_977[11]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [11])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i11.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i10 (.D(ADCAccxDN_0__23__N_977[10]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [10])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i10.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i9 (.D(ADCAccxDN_0__23__N_977[9]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [9])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i9.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i8 (.D(ADCAccxDN_0__23__N_977[8]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [8])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i8.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i7 (.D(ADCAccxDN_0__23__N_977[7]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [7])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i7.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i6 (.D(ADCAccxDN_0__23__N_977[6]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [6])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i6.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i5 (.D(ADCAccxDN_0__23__N_977[5]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [5])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i5.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i4 (.D(ADCAccxDN_0__23__N_977[4]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [4])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i4.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i3 (.D(ADCAccxDN_0__23__N_977[3]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [3])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i3.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i2 (.D(ADCAccxDN_0__23__N_977[2]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [2])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i2.GSR = "ENABLED";
    FD1P3AX ADCAccxDP_0__i1 (.D(ADCAccxDN_0__23__N_977[1]), .SP(Clk96xC_enable_188), 
            .CK(Clk96xC), .Q(\ADCAccxDP[0] [1])) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=743, LSE_RLINE=743 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(64[3] 82[10])
    defparam ADCAccxDP_0__i1.GSR = "ENABLED";
    LUT4 mux_869_i8_3_lut (.A(ADCAccxDN_1__23__N_1001[7]), .B(\ADCAccxDP[1] [15]), 
         .C(n10540), .Z(\ADCAccxDN[1] [7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i8_3_lut.init = 16'hcaca;
    LUT4 mux_869_i7_3_lut (.A(ADCAccxDN_1__23__N_1001[6]), .B(\ADCAccxDP[1] [14]), 
         .C(n10540), .Z(\ADCAccxDN[1] [6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i7_3_lut.init = 16'hcaca;
    LUT4 mux_869_i6_3_lut (.A(ADCAccxDN_1__23__N_1001[5]), .B(\ADCAccxDP[1] [13]), 
         .C(n10540), .Z(\ADCAccxDN[1] [5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i6_3_lut.init = 16'hcaca;
    LUT4 mux_869_i5_3_lut (.A(ADCAccxDN_1__23__N_1001[4]), .B(\ADCAccxDP[1] [12]), 
         .C(n10540), .Z(\ADCAccxDN[1] [4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i5_3_lut.init = 16'hcaca;
    CCU2D ADCAccxDP_0__23__I_0_7 (.A0(\ADCSregxDP[0] [4]), .B0(n10540), 
          .C0(\ADCAccxDP[0] [12]), .D0(\ADCAccxDP[0] [4]), .A1(\ADCSregxDP[0] [5]), 
          .B1(n10540), .C1(\ADCAccxDP[0] [13]), .D1(\ADCAccxDP[0] [5]), 
          .CIN(n8500), .COUT(n8501), .S0(ADCAccxDN_0__23__N_977[4]), .S1(ADCAccxDN_0__23__N_977[5]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_7.INIT0 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_7.INIT1 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_7.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_7.INJECT1_1 = "NO";
    LUT4 mux_869_i4_3_lut (.A(ADCAccxDN_1__23__N_1001[3]), .B(\ADCAccxDP[1] [11]), 
         .C(n10540), .Z(\ADCAccxDN[1] [3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i4_3_lut.init = 16'hcaca;
    LUT4 mux_869_i3_3_lut (.A(ADCAccxDN_1__23__N_1001[2]), .B(\ADCAccxDP[1] [10]), 
         .C(n10540), .Z(\ADCAccxDN[1] [2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i3_3_lut.init = 16'hcaca;
    LUT4 mux_869_i2_3_lut (.A(ADCAccxDN_1__23__N_1001[1]), .B(\ADCAccxDP[1] [9]), 
         .C(n10540), .Z(\ADCAccxDN[1] [1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_869_i2_3_lut.init = 16'hcaca;
    LUT4 i1160_2_lut_4_lut (.A(n9990), .B(BitCntxDP[3]), .C(BitCntxDP[2]), 
         .D(n1876[4]), .Z(Clk96xC_enable_118)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i1160_2_lut_4_lut.init = 16'h7f00;
    LUT4 i2_3_lut_rep_72_4_lut (.A(n1876[5]), .B(n9993), .C(n1876[6]), 
         .D(n1883), .Z(n9944)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2_3_lut_rep_72_4_lut.init = 16'hfffb;
    CCU2D ADCAccxDP_0__23__I_0_5 (.A0(\ADCSregxDP[0] [2]), .B0(n10540), 
          .C0(\ADCAccxDP[0] [10]), .D0(\ADCAccxDP[0] [2]), .A1(\ADCSregxDP[0] [3]), 
          .B1(n10540), .C1(\ADCAccxDP[0] [11]), .D1(\ADCAccxDP[0] [3]), 
          .CIN(n8499), .COUT(n8500), .S0(ADCAccxDN_0__23__N_977[2]), .S1(ADCAccxDN_0__23__N_977[3]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_5.INIT0 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_5.INIT1 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_5.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_5.INJECT1_1 = "NO";
    LUT4 i7228_3_lut_4_lut (.A(n1876[5]), .B(n9993), .C(n1876[1]), .D(n1876[2]), 
         .Z(ADS_CSN_c)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i7228_3_lut_4_lut.init = 16'h0004;
    CCU2D ADCAccxDP_0__23__I_0_3 (.A0(\ADCSregxDP[0] [0]), .B0(n10540), 
          .C0(\ADCAccxDP[0] [8]), .D0(\ADCAccxDP[0] [0]), .A1(\ADCSregxDP[0] [1]), 
          .B1(n10540), .C1(\ADCAccxDP[0] [9]), .D1(\ADCAccxDP[0] [1]), 
          .CIN(n8498), .COUT(n8499), .S0(ADCAccxDN_0__23__N_977[0]), .S1(ADCAccxDN_0__23__N_977[1]));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_3.INIT0 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_3.INIT1 = 16'hd1e2;
    defparam ADCAccxDP_0__23__I_0_3.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_3.INJECT1_1 = "NO";
    FD1S3AX StatexDP_FSM_i11_rep_133 (.D(n82), .CK(Clk96xC), .Q(n10540));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam StatexDP_FSM_i11_rep_133.GSR = "ENABLED";
    CCU2D ADCAccxDP_0__23__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n10540), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8498));   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(150[22:34])
    defparam ADCAccxDP_0__23__I_0_1.INIT0 = 16'hF000;
    defparam ADCAccxDP_0__23__I_0_1.INIT1 = 16'h0fff;
    defparam ADCAccxDP_0__23__I_0_1.INJECT1_0 = "NO";
    defparam ADCAccxDP_0__23__I_0_1.INJECT1_1 = "NO";
    LUT4 mux_863_i6_4_lut (.A(\ADCAccxDP[0] [5]), .B(DigAuxxDP[5]), .C(n1884), 
         .D(n1885), .Z(AuxDataxD[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_863_i6_4_lut.init = 16'hcfca;
    LUT4 mux_863_i5_4_lut (.A(\ADCAccxDP[0] [4]), .B(DigAuxxDP[4]), .C(n1884), 
         .D(n1885), .Z(AuxDataxD[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_863_i5_4_lut.init = 16'hcfca;
    LUT4 mux_863_i4_4_lut (.A(\ADCAccxDP[0] [3]), .B(DigAuxxDP[3]), .C(n1884), 
         .D(n1885), .Z(AuxDataxD[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/aux_adc_rx.vhd(97[3] 190[12])
    defparam mux_863_i4_4_lut.init = 16'hcfca;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module main_pll
//

module main_pll (OSC_CLK_c, Clk96xC, PllLockxS, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input OSC_CLK_c;
    output Clk96xC;
    output PllLockxS;
    input GND_net;
    
    wire OSC_CLK_c /* synthesis is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(16[3:10])
    wire Clk96xC /* synthesis SET_AS_NETWORK=Clk96xC, is_clock=1 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(77[9:16])
    
    EHXPLLJ PLLInst_0 (.CLKI(OSC_CLK_c), .CLKFB(Clk96xC), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(Clk96xC), .LOCK(PllLockxS)) /* synthesis FREQUENCY_PIN_CLKOP="96.000000", FREQUENCY_PIN_CLKI="48.000000", ICP_CURRENT="7", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=240, LSE_RLINE=240 */ ;   // d:/dropbox/nn2022/lattice/nn22control00g4-extfifo-vccs-7000hc/nn22control00_top.vhd(240[18:26])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 5;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 4;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
