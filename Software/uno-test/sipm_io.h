#include "spi.h"

// Arduino GP LED is on PB5
#define LED_DDR DDRB
#define LED_BIT 5
#define LED_PORT PORTB

// BOOST_ENA is on PB2
#define BOOST_DDR DDRB
#define BOOST_BIT 2
#define BOOST_PORT PORTB

// Digi pot sync/cs
#define DIGI_POT_SYNC_BIT 0

