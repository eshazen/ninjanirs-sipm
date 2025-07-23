#include "dpot.h"

void set_digi_pot( uint16_t v) {
  SPI_PORT &= ~(_BV(DIGI_POT_SYNC_BIT)); /* nSYNC low */
  spi_transmit( (v >> 8) & 0xff);
  spi_transmit( v & 0xff);
  SPI_PORT |= _BV(DIGI_POT_SYNC_BIT); /* nSYNC high */
}


void init_digi_pot() {
    spi_init();
    SPI_DDR |= _BV(DIGI_POT_SYNC_BIT);
    SPI_PORT |= _BV(DIGI_POT_SYNC_BIT);
}
