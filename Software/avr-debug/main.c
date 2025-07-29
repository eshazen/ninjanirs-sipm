/*
 * UART stdio example
 * note that there is no editing on input!
 */

#include <stdio.h>
#include <string.h>
#include <avr/io.h>
#include <util/delay.h>
#include <ctype.h>
#include <avr/pgmspace.h>
#include "spi.h"
#include "uart.h"
#include "parse.h"
#include "sipm_io.h"
#include "dpot.h"

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

void error() {
  puts_P( PSTR("Error"));
}

int main (void)
{
  unsigned char c = ' ';

  USART0Init();
  spi_init(spi_cpha, spi_cpol);
  init_digi_pot();
  stdout = &usart0_str;		/* connect UART to stdout */
  stdin = &usart0_str;		/* connect UART to stdin */

  LED_DDR |= _BV(LED_BIT);
  LED_PORT &= ~(_BV(LED_BIT));

  BOOST_DDR |= _BV(BOOST_BIT); 
  BOOST_PORT &= ~(_BV(BOOST_BIT));

  set_digi_pot( AD5270_WCTL | 2);    // enable wiper setting
  set_digi_pot( AD5270_WCTL | 2);    // enable wiper setting (why twice?)

  puts_P( PSTR("SIPM test 0.1\n"));

  while(1) {
    fputs(">", stdout);
    USART0GetString( buff, sizeof(buff));
    char cmd_c = toupper( *argv[0]);

    int argc = parse( buff, argv, iargv, sizeof(argv)/sizeof(argv[0]));

    switch( cmd_c) {
    case 'H':
      puts_P( PSTR("H     - list commands"));
      puts_P( PSTR("L d   - set LED"));
      puts_P( PSTR("B d   - set BOOST_ENA"));
      puts_P( PSTR("P d   - set digital pot"));
      puts_P( PSTR("R d   - raw SPI write/read"));
      puts_P( PSTR("D d   - debug write/read"));
      puts_P( PSTR("S pha pol - set SPI params"));
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


