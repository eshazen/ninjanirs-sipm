/*
 * blinky example
 */

#include <stdio.h>
#include <avr/io.h>
#include <util/delay.h>

// GP LED is on PD2

#define LED_DDR DDRD
#define LED_BIT 2
#define LED_PORT PORTD

int main (void)
{

  LED_DDR |= (1 << LED_BIT);

  while( 1) {
    LED_PORT |= (1 << LED_BIT);
    _delay_ms( 500);
    LED_PORT &= ~(1 << LED_BIT);
    _delay_ms( 500);
  }
}


