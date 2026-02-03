/*
 * fNIRS SiPM power supply test
 */

#include <stdio.h>
#include <string.h>
#include <avr/io.h>
#include <util/delay.h>
#include <ctype.h>
#include <math.h>    // added 1/22/26 ESH
#include <avr/pgmspace.h>
#include "spi.h"
#include "uart.h"
#include "parse.h"
#include "sipm_io.h"
#include "dpot.h"
#include "avr_adc.h"

// create a file pointer for read/write to USART0
FILE usart0_str = FDEV_SETUP_STREAM(USART0SendByte, USART0ReceiveByte, _FDEV_SETUP_RW);

// serial command processing buffers
#define MAXARG 6
static char buff[80];
static char* argv[MAXARG];
static int iargv[MAXARG];

// default SPI phase/polarity
static uint8_t spi_cpha = 1;
static uint8_t spi_cpol = 0;

// temp variables
uint8_t v;
uint16_t adc;
uint32_t iv;
double degC;

void error() {
  puts_P( PSTR("Error"));
}

// convert ADC value to degrees C assuming thermistor
// in 10k voltage divider with B25/85 = 3435K
double adc_to_degC( uint32_t v) {
  double a = v/1024.0;	/* ADC fraction */
  double r = 10.0 / (1.0/a-1.0);
  return (1.0 / (0.00268261 + 0.000287503*log(r) + 7.70855e-07 * pow( log(r), 3.0))) - 273.15;
}

// print a scaled integer value with 3 fractional digits as xxx.x
// uses buff
void pdec( uint32_t v) {
  snprintf( buff, sizeof(buff), "%ld", v);
  size_t s = strlen(buff);
  buff[s-2] = buff[s-3];
  buff[s-3] = '.';
  buff[s-1] = '\0';
  fputs( buff, stdout);
}

int main (void)
{
  unsigned char c = ' ';

  USART0Init();			/* initialize non-interrupt UART */
  spi_init(spi_cpha, spi_cpol);	/* initialize SPI with CPHA, CPOL defaults */
  init_digi_pot();		/* initialize I/Os for digital pot */
  stdout = &usart0_str;		/* connect UART to stdout */
  stdin = &usart0_str;		/* connect UART to stdin */
  InitADC();			/* initialize built-in ADC */

  LED_DDR |= _BV(LED_BIT);	/* set LED direction */
  LED_PORT &= ~(_BV(LED_BIT));

  BOOST_DDR |= _BV(BOOST_BIT); 	/* set boost enable direction */
  BOOST_PORT &= ~(_BV(BOOST_BIT)); /* default boost enable off */

  VR_DDR |= _BV(VR_RESET_BIT) | _BV(VR_SHDN_BIT); /* dir for VR controls */

  // set VR controls to resting values (RESET high, SHDN high)
  VR_PORT |= _BV(VR_RESET_BIT) | _BV(VR_SHDN_BIT);

  set_digi_pot( AD5270_WCTL | 2);    // enable wiper setting
  set_digi_pot( AD5270_WCTL | 2);    // enable wiper setting (why twice?)

  puts_P( PSTR("SIPM test 0.2\n"));

  while(1) {
    fputs(">", stdout);
    USART0GetString( buff, sizeof(buff));
    char cmd_c = toupper( *argv[0]);
    char cmd_2 = toupper( argv[0][1]);

    int argc = parse( buff, argv, iargv, sizeof(argv)/sizeof(argv[0]));

    switch( cmd_c) {
    case 'H':
      puts_P( PSTR("H     - list commands"));
      puts_P( PSTR("A d   - read ADC"));
      puts_P( PSTR("L d   - set LED"));
      puts_P( PSTR("B d   - set BOOST_ENA"));
      puts_P( PSTR("VR d  - set INA201 reset"));
      puts_P( PSTR("VS d  - set LT3014 shutdown"));
      puts_P( PSTR("B d   - set BOOST_ENA"));
      puts_P( PSTR("P d   - set digital pot"));
      puts_P( PSTR("R d   - raw SPI write/read"));
      puts_P( PSTR("D d   - debug write/read"));
      puts_P( PSTR("S pha pol - set SPI params"));
      break;

    case 'A':
      if( argc > 1) {
	adc = ReadADC( iargv[1]);
	printf_P( PSTR("%d\n"), adc);
      } else {
	iv = (long)MV_PER_ADC*ReadADC( 1);	/* get voltage */
	pdec( iv);
	fputs_P( PSTR(" V "), stdout);
	iv = (long)NA_PER_ADC*ReadADC( 0); /* get current */
	pdec( iv);
	fputs_P( PSTR(" uA " ), stdout);
	iv = ReadADC( 2);	/* get temperature value*/
	degC = adc_to_degC( iv);
	pdec( (int)degC * 1000.0);
	puts_P( PSTR(" degC"));
      }
      break;

    case 'V':
      switch( cmd_2) {
      case 'R':
	if( iargv[1])
	  VR_PORT |= _BV(VR_RESET_BIT);
	else
	  VR_PORT &= ~_BV(VR_RESET_BIT);
	break;
      case 'S':
	if( iargv[1])
	  VR_PORT |= _BV(VR_SHDN_BIT);
	else
	  VR_PORT &= ~_BV(VR_SHDN_BIT);
	break;
      default:
	error();
	break;
      }
      break;

    case 'S':
      if( argc < 3) {
	error();
      } else {
	spi_init( iargv[1], iargv[2]);
      }
      printf_P( PSTR("SPCR: 0x%02x  SPSR: 0x%02x\n"), SPCR, SPSR);
      break;
      
    case 'D':
      do {
	SPI_PORT &= ~(_BV(DIGI_POT_SYNC_BIT)); /* nSYNC low */
	spi_transmit( (iargv[1] >> 8) & 0xff);
	v = spi_receive();
	printf("%02x ", v);
	spi_transmit( iargv[1] & 0xff);
	v = spi_receive();
	printf("%02x\n", v);
	SPI_PORT |= _BV(DIGI_POT_SYNC_BIT); /* nSYNC high */
	_delay_ms(500);
      } while( !USART0CharacterAvailable());
      break;
      
    case 'R':
      // write a command
      SPI_PORT &= ~(_BV(DIGI_POT_SYNC_BIT)); /* nSYNC low */
      spi_transmit( (iargv[1] >> 8) & 0xff);
      spi_transmit( iargv[1] & 0xff);
      SPI_PORT |= _BV(DIGI_POT_SYNC_BIT); /* nSYNC high */
      break;

    case 'L':
      if( argc < 2) {
	error();
      } else {
	if( iargv[1])
	  LED_PORT |= _BV(LED_BIT);
	else
	  LED_PORT &= ~_BV(LED_BIT);
      }
      break;

    case 'B':
      if( argc < 2) {
	error();
      } else {
	if( iargv[1])
	  BOOST_PORT |= _BV(BOOST_BIT);
	else
	  BOOST_PORT &= ~_BV(BOOST_BIT);
      }
      break;

    case 'P':
      if( argc < 2) {
	error();
      } else {
	set_digi_pot( AD5270_WDAC | iargv[1]);
      }
      break;

    default:
      error();
    }    
  }
}


