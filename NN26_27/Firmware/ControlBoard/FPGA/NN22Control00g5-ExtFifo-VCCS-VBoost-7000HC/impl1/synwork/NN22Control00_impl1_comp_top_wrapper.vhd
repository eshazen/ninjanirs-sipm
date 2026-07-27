--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sat Nov  2 22:55:16 2024
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_for_NN22Control_top is
   port (
      OSC_CLK : in std_logic;
      UART_DETB_TO_FPGA : in std_logic_vector(24 downto 0);
      UART_FPGA_TO_DETB : out std_logic_vector(4 downto 0);
      DETB_SELECT : out std_logic_vector(24 downto 0);
      DETB_RUN : out std_logic_vector(3 downto 0);
      DETB_STATUS_SELECT : out std_logic_vector(4 downto 0);
      DETB_TRIGGER : out std_logic_vector(3 downto 0);
      DETB_END_CYC : out std_logic_vector(4 downto 0);
      UART_SRCB_TO_FPGA : in std_logic_vector(6 downto 0);
      UART_FPGA_TO_SRCB : out std_logic;
      SRCB_SELECT : out std_logic_vector(6 downto 0);
      SRCB_RUN : out std_logic;
      SRCB_LED_EN : out std_logic;
      SRCB_STEP : out std_logic;
      ADS_CSN : out std_logic_vector(1 downto 0);
      ADS_SCK : out std_logic_vector(1 downto 0);
      ADS_SDO : in std_logic_vector(1 downto 0);
      RAM0_CEN : out std_logic;
      RAM0_SCLK : out std_logic;
      RAM0_SIO : in std_logic_vector(3 downto 0);
      UART_FPGA_TO_FTDI : out std_logic;
      UART_FTDI_TO_FPGA : in std_logic;
      UART_CTSN_TO_FTDI : out std_logic;
      UART_RTSN_TO_FPGA : in std_logic;
      RPI0_CE : in std_logic;
      RPI0_MISO : out std_logic;
      RPI0_SCLK : in std_logic;
      RPI0_RUNSIG : out std_logic;
      RPFP_RUN : out std_logic;
      ACC_RUN_IND : out std_logic;
      EXP_J303_D : out std_logic_vector(3 downto 0);
      TRG : in std_logic_vector(3 downto 0);
      AUXIO : in std_logic_vector(1 downto 0);
      FP_LED : out std_logic_vector(5 downto 0);
      V5P1_B01_EN : out std_logic;
      V5P1_B23_EN : out std_logic;
      V5P1_RPI_EN : out std_logic;
      V5P1_SRC_EN : out std_logic;
      V9P0_EN : out std_logic;
      VN22_EN : out std_logic;
      VN3P4_EN : out std_logic;
      VN22_CLKA : out std_logic;
      VN22_CLKB : out std_logic;
      V_SRC_BOOST : out std_logic
   );
end wrapper_for_NN22Control_top;

architecture nn22control_top_behavior of wrapper_for_NN22Control_top is

component NN22Control_top
 port (
   OSC_CLK : in std_logic;
   UART_DETB_TO_FPGA : in std_logic_vector (24 downto 0);
   UART_FPGA_TO_DETB : out std_logic_vector (4 downto 0);
   DETB_SELECT : out std_logic_vector (24 downto 0);
   DETB_RUN : out std_logic_vector (3 downto 0);
   DETB_STATUS_SELECT : out std_logic_vector (4 downto 0);
   DETB_TRIGGER : out std_logic_vector (3 downto 0);
   DETB_END_CYC : out std_logic_vector (4 downto 0);
   UART_SRCB_TO_FPGA : in std_logic_vector (6 downto 0);
   UART_FPGA_TO_SRCB : out std_logic;
   SRCB_SELECT : out std_logic_vector (6 downto 0);
   SRCB_RUN : out std_logic;
   SRCB_LED_EN : out std_logic;
   SRCB_STEP : out std_logic;
   ADS_CSN : out std_logic_vector (1 downto 0);
   ADS_SCK : out std_logic_vector (1 downto 0);
   ADS_SDO : in std_logic_vector (1 downto 0);
   RAM0_CEN : out std_logic;
   RAM0_SCLK : out std_logic;
   RAM0_SIO : inout std_logic_vector (3 downto 0);
   UART_FPGA_TO_FTDI : out std_logic;
   UART_FTDI_TO_FPGA : in std_logic;
   UART_CTSN_TO_FTDI : out std_logic;
   UART_RTSN_TO_FPGA : in std_logic;
   RPI0_CE : in std_logic;
   RPI0_MISO : out std_logic;
   RPI0_SCLK : in std_logic;
   RPI0_RUNSIG : out std_logic;
   RPFP_RUN : out std_logic;
   ACC_RUN_IND : out std_logic;
   EXP_J303_D : out std_logic_vector (3 downto 0);
   TRG : in std_logic_vector (3 downto 0);
   AUXIO : inout std_logic_vector (1 downto 0);
   FP_LED : out std_logic_vector (5 downto 0);
   V5P1_B01_EN : out std_logic;
   V5P1_B23_EN : out std_logic;
   V5P1_RPI_EN : out std_logic;
   V5P1_SRC_EN : out std_logic;
   V9P0_EN : out std_logic;
   VN22_EN : out std_logic;
   VN3P4_EN : out std_logic;
   VN22_CLKA : out std_logic;
   VN22_CLKB : out std_logic;
   V_SRC_BOOST : out std_logic
 );
end component;

signal tmp_OSC_CLK : std_logic;
signal tmp_UART_DETB_TO_FPGA : std_logic_vector (24 downto 0);
signal tmp_UART_FPGA_TO_DETB : std_logic_vector (4 downto 0);
signal tmp_DETB_SELECT : std_logic_vector (24 downto 0);
signal tmp_DETB_RUN : std_logic_vector (3 downto 0);
signal tmp_DETB_STATUS_SELECT : std_logic_vector (4 downto 0);
signal tmp_DETB_TRIGGER : std_logic_vector (3 downto 0);
signal tmp_DETB_END_CYC : std_logic_vector (4 downto 0);
signal tmp_UART_SRCB_TO_FPGA : std_logic_vector (6 downto 0);
signal tmp_UART_FPGA_TO_SRCB : std_logic;
signal tmp_SRCB_SELECT : std_logic_vector (6 downto 0);
signal tmp_SRCB_RUN : std_logic;
signal tmp_SRCB_LED_EN : std_logic;
signal tmp_SRCB_STEP : std_logic;
signal tmp_ADS_CSN : std_logic_vector (1 downto 0);
signal tmp_ADS_SCK : std_logic_vector (1 downto 0);
signal tmp_ADS_SDO : std_logic_vector (1 downto 0);
signal tmp_RAM0_CEN : std_logic;
signal tmp_RAM0_SCLK : std_logic;
signal tmp_RAM0_SIO : std_logic_vector (3 downto 0);
signal tmp_UART_FPGA_TO_FTDI : std_logic;
signal tmp_UART_FTDI_TO_FPGA : std_logic;
signal tmp_UART_CTSN_TO_FTDI : std_logic;
signal tmp_UART_RTSN_TO_FPGA : std_logic;
signal tmp_RPI0_CE : std_logic;
signal tmp_RPI0_MISO : std_logic;
signal tmp_RPI0_SCLK : std_logic;
signal tmp_RPI0_RUNSIG : std_logic;
signal tmp_RPFP_RUN : std_logic;
signal tmp_ACC_RUN_IND : std_logic;
signal tmp_EXP_J303_D : std_logic_vector (3 downto 0);
signal tmp_TRG : std_logic_vector (3 downto 0);
signal tmp_AUXIO : std_logic_vector (1 downto 0);
signal tmp_FP_LED : std_logic_vector (5 downto 0);
signal tmp_V5P1_B01_EN : std_logic;
signal tmp_V5P1_B23_EN : std_logic;
signal tmp_V5P1_RPI_EN : std_logic;
signal tmp_V5P1_SRC_EN : std_logic;
signal tmp_V9P0_EN : std_logic;
signal tmp_VN22_EN : std_logic;
signal tmp_VN3P4_EN : std_logic;
signal tmp_VN22_CLKA : std_logic;
signal tmp_VN22_CLKB : std_logic;
signal tmp_V_SRC_BOOST : std_logic;

begin

tmp_OSC_CLK <= OSC_CLK;

tmp_UART_DETB_TO_FPGA <= UART_DETB_TO_FPGA;

UART_FPGA_TO_DETB <= tmp_UART_FPGA_TO_DETB;

DETB_SELECT <= tmp_DETB_SELECT;

DETB_RUN <= tmp_DETB_RUN;

DETB_STATUS_SELECT <= tmp_DETB_STATUS_SELECT;

DETB_TRIGGER <= tmp_DETB_TRIGGER;

DETB_END_CYC <= tmp_DETB_END_CYC;

tmp_UART_SRCB_TO_FPGA <= UART_SRCB_TO_FPGA;

UART_FPGA_TO_SRCB <= tmp_UART_FPGA_TO_SRCB;

SRCB_SELECT <= tmp_SRCB_SELECT;

SRCB_RUN <= tmp_SRCB_RUN;

SRCB_LED_EN <= tmp_SRCB_LED_EN;

SRCB_STEP <= tmp_SRCB_STEP;

ADS_CSN <= tmp_ADS_CSN;

ADS_SCK <= tmp_ADS_SCK;

tmp_ADS_SDO <= ADS_SDO;

RAM0_CEN <= tmp_RAM0_CEN;

RAM0_SCLK <= tmp_RAM0_SCLK;

tmp_RAM0_SIO <= RAM0_SIO;

UART_FPGA_TO_FTDI <= tmp_UART_FPGA_TO_FTDI;

tmp_UART_FTDI_TO_FPGA <= UART_FTDI_TO_FPGA;

UART_CTSN_TO_FTDI <= tmp_UART_CTSN_TO_FTDI;

tmp_UART_RTSN_TO_FPGA <= UART_RTSN_TO_FPGA;

tmp_RPI0_CE <= RPI0_CE;

RPI0_MISO <= tmp_RPI0_MISO;

tmp_RPI0_SCLK <= RPI0_SCLK;

RPI0_RUNSIG <= tmp_RPI0_RUNSIG;

RPFP_RUN <= tmp_RPFP_RUN;

ACC_RUN_IND <= tmp_ACC_RUN_IND;

EXP_J303_D <= tmp_EXP_J303_D;

tmp_TRG <= TRG;

tmp_AUXIO <= AUXIO;

FP_LED <= tmp_FP_LED;

V5P1_B01_EN <= tmp_V5P1_B01_EN;

V5P1_B23_EN <= tmp_V5P1_B23_EN;

V5P1_RPI_EN <= tmp_V5P1_RPI_EN;

V5P1_SRC_EN <= tmp_V5P1_SRC_EN;

V9P0_EN <= tmp_V9P0_EN;

VN22_EN <= tmp_VN22_EN;

VN3P4_EN <= tmp_VN3P4_EN;

VN22_CLKA <= tmp_VN22_CLKA;

VN22_CLKB <= tmp_VN22_CLKB;

V_SRC_BOOST <= tmp_V_SRC_BOOST;



u1:   NN22Control_top port map (
		OSC_CLK => tmp_OSC_CLK,
		UART_DETB_TO_FPGA => tmp_UART_DETB_TO_FPGA,
		UART_FPGA_TO_DETB => tmp_UART_FPGA_TO_DETB,
		DETB_SELECT => tmp_DETB_SELECT,
		DETB_RUN => tmp_DETB_RUN,
		DETB_STATUS_SELECT => tmp_DETB_STATUS_SELECT,
		DETB_TRIGGER => tmp_DETB_TRIGGER,
		DETB_END_CYC => tmp_DETB_END_CYC,
		UART_SRCB_TO_FPGA => tmp_UART_SRCB_TO_FPGA,
		UART_FPGA_TO_SRCB => tmp_UART_FPGA_TO_SRCB,
		SRCB_SELECT => tmp_SRCB_SELECT,
		SRCB_RUN => tmp_SRCB_RUN,
		SRCB_LED_EN => tmp_SRCB_LED_EN,
		SRCB_STEP => tmp_SRCB_STEP,
		ADS_CSN => tmp_ADS_CSN,
		ADS_SCK => tmp_ADS_SCK,
		ADS_SDO => tmp_ADS_SDO,
		RAM0_CEN => tmp_RAM0_CEN,
		RAM0_SCLK => tmp_RAM0_SCLK,
		RAM0_SIO => tmp_RAM0_SIO,
		UART_FPGA_TO_FTDI => tmp_UART_FPGA_TO_FTDI,
		UART_FTDI_TO_FPGA => tmp_UART_FTDI_TO_FPGA,
		UART_CTSN_TO_FTDI => tmp_UART_CTSN_TO_FTDI,
		UART_RTSN_TO_FPGA => tmp_UART_RTSN_TO_FPGA,
		RPI0_CE => tmp_RPI0_CE,
		RPI0_MISO => tmp_RPI0_MISO,
		RPI0_SCLK => tmp_RPI0_SCLK,
		RPI0_RUNSIG => tmp_RPI0_RUNSIG,
		RPFP_RUN => tmp_RPFP_RUN,
		ACC_RUN_IND => tmp_ACC_RUN_IND,
		EXP_J303_D => tmp_EXP_J303_D,
		TRG => tmp_TRG,
		AUXIO => tmp_AUXIO,
		FP_LED => tmp_FP_LED,
		V5P1_B01_EN => tmp_V5P1_B01_EN,
		V5P1_B23_EN => tmp_V5P1_B23_EN,
		V5P1_RPI_EN => tmp_V5P1_RPI_EN,
		V5P1_SRC_EN => tmp_V5P1_SRC_EN,
		V9P0_EN => tmp_V9P0_EN,
		VN22_EN => tmp_VN22_EN,
		VN3P4_EN => tmp_VN3P4_EN,
		VN22_CLKA => tmp_VN22_CLKA,
		VN22_CLKB => tmp_VN22_CLKB,
		V_SRC_BOOST => tmp_V_SRC_BOOST
       );
end nn22control_top_behavior;
