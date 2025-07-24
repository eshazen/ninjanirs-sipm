// spi.c - super simple SPI library for AVR

#include <avr/pgmspace.h>
#include <stdio.h>
#include <avr/io.h>
#include <util/delay.h>
#include "spi.h"

void spi_init( int cpha, int cpol) {
  SPI_DDR |= _BV(SPI_SCK_PIN) | _BV(SPI_MOSI_PIN);
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
  printf_P( PSTR("init: SPCR = 0x%02x SPSR = 0x%02x\n"), SPCR, SPSR);
}

void spi_transmit( uint8_t d) {
  SPDR = d;
  while( !(SPSR & _BV(SPIF)))
    ;
}

uint8_t spi_receive() {
  while( !(SPSR & _BV(SPIF)))
    ;
  return SPDR;
}
