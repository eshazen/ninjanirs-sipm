#include "spi.h"

// GP LED is on PD2
#define LED_DDR DDRD
#define LED_BIT 2
#define LED_PORT PORTD

// BOOST_ENA is on PD5 now
#define BOOST_DDR DDRD
#define BOOST_BIT 5
#define BOOST_PORT PORTD

// VR_RESET
#define VR_DDR DDRB
#define VR_PORT PORTB
#define VR_PIN PINB
#define VR_RESET_BIT 1
#define VR_SHDN_BIT 6
#define VR_PGOOD_BIT 7

// Command line from pi pico (PD0, aka UART Rx)
#define CMD_DDR DDRD
#define CMD_PORT PORTD
#define CMD_PIN PIND
#define CMD_BIT PD0
#define CMD_MASK _BV(CMD_BIT)

// Digi pot sync/cs
#define DIGI_POT_SYNC_BIT 0

// ADC calibration
#define MV_PER_ADC 72
#define NA_PER_ADC 2200
