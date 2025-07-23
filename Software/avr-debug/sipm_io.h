#include "spi.h"

// GP LED is on PD2
#define LED_DDR DDRD
#define LED_BIT 2
#define LED_PORT PORTD

// BOOST_ENA is on PB2
#define BOOST_DDR DDRB
#define BOOST_BIT 2
#define BOOST_PORT PORTB

// Digi pot sync/cs
#define DIGI_POT_SYNC_BIT 0

