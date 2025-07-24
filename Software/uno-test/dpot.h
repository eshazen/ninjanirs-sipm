#ifndef _DPOT_H_INCLUDED
#define _DPOT_H_INCLUDED

#include <stdint.h>
#include "spi.h"
#include "sipm_io.h"

// AD5270 commands (16-bit values)
static const uint16_t AD5270_NOOP = 0;
static const uint16_t AD5270_WDAC = (1 << 10);
static const uint16_t AD5270_RDAC = (1 << 11);
static const uint16_t AD5270_WCTL = (7 << 10);
static const uint16_t AD5270_RCTL = (1 << 13);

void set_digi_pot( uint16_t v);
void init_digi_pot();

#endif
