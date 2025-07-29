#include "spi.h"

// GP LED is on PD2
#define LED_DDR DDRD
#define LED_BIT 2
#define LED_PORT PORTD

// BOOST_ENA is on PD5 now
#define BOOST_DDR DDRD
#define BOOST_BIT 5
#define BOOST_PORT PORTD

// Digi pot sync/cs
#define DIGI_POT_SYNC_BIT 0

