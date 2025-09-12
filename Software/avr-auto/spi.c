// spi.c - super simple SPI library for AVR

#include <avr/io.h>
#include <util/delay.h>
#include "spi.h"

void spi_init( int cpha, int cpol) {
  SPI_DDR |= _BV(SPI_SCK_PIN) | _BV(SPI_MOSI_PIN) | _BV(SPI_SS_PIN);
  // enable SPI, set as master, rate = fosc/16 (62.5kHz for 8MHz clock)
  // set 
  SPCR = _BV(SPR1) | _BV(SPE) | _BV(MSTR) | _BV(SPR0);
  if( cpha)
    SPCR |= _BV( CPHA);
  else
    SPCR &= ~_BV( CPHA);
  if( cpol)
    SPCR |= _BV( CPOL);
  else
    SPCR &= ~_BV( CPOL);
  // nSS must be high
  SPI_PORT |= _BV(SPI_SS_PIN);
}

void spi_transmit( uint8_t d) {
  SPDR = d;
  // try a fixed delay
//   while( !(SPSR & _BV(SPIF)))
//     ;
  _delay_us( 150);
}

uint8_t spi_receive() {
  while( !(SPSR & _BV(SPIF)))
    ;
  return SPDR;
}
