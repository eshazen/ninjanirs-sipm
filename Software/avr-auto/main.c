/*
 * fNIRS SiPM power supply operating software
 *
 * LED ON
 * power-up at low voltage (32V) and check voltage and current
 * delay 1s
 * wait for low value on A_COMM line
 * power-up at nominal voltage (57V)
 * loop checking voltage and current
 *   OK:  brief LED flash at 1Hz
 *   
 * on any error flash LED fast and wait for reset
 */

#include <stdio.h>
#include <string.h>
#include <avr/io.h>
#include <util/delay.h>
#include <ctype.h>
#include <avr/pgmspace.h>
#include "spi.h"
#include "parse.h"
#include "sipm_io.h"
#include "dpot.h"
#include "avr_adc.h"

#define DAC_DEFAULT 195
// nominal ADC reading for operating voltage (56V)
#define ADC_VOLT_NOM 779
// nominal ADC reading for minimum voltage (32V)
#define ADC_VOLT_LOW 472

// default SPI phase/polarity
static uint8_t spi_cpha = 1;
static uint8_t spi_cpol = 0;

// temp variables
static uint16_t v_adc, i_adc;

#define LED_OFF() { LED_PORT &= ~(_BV(LED_BIT));}
#define LED_ON()  { LED_PORT |= _BV(LED_BIT);}

#define BOOST_ON() { BOOST_PORT |= _BV(BOOST_BIT);}
#define BOOST_OFF() { BOOST_PORT &= ~_BV(BOOST_BIT);}

#define VREG_ON() { VR_PORT &= ~_BV(VR_SHDN_BIT); }
#define VREG_OFF() { VR_PORT |= _BV(VR_SHDN_BIT); }

void error() {
  // error on power-up, hang here blinking fast
  VREG_OFF();
  BOOST_OFF();
  while(1) {
    LED_ON();
    _delay_ms(100);
    LED_OFF();
    _delay_ms(100);
  }
}


int main (void)
{
  spi_init(spi_cpha, spi_cpol);	/* initialize SPI with CPHA, CPOL defaults */
  init_digi_pot();		/* initialize I/Os for digital pot */
  InitADC();			/* initialize built-in ADC */

  CMD_PORT |= CMD_MASK;		/* enable pull-up on PD0 */

  LED_DDR |= _BV(LED_BIT);	/* set LED direction */
  LED_ON();

  BOOST_DDR |= _BV(BOOST_BIT); 	/* set boost enable direction */
  BOOST_OFF();

  VR_DDR |= _BV(VR_RESET_BIT) | _BV(VR_SHDN_BIT); /* dir for VR controls */
  // set VR controls to resting values (RESET high, SHDN high)
  VR_PORT |= _BV(VR_RESET_BIT) | _BV(VR_SHDN_BIT);

  set_digi_pot( AD5270_WCTL | 2);    // enable wiper setting
  set_digi_pot( AD5270_WCTL | 2);    // enable wiper setting (why twice?)

  _delay_ms( 100);

  set_digi_pot( AD5270_WDAC | 1023); // set pot to minimum voltage
  BOOST_ON();			     /* enable boost converter */
  VREG_ON();			     /* turn on VR */
  _delay_ms( 1000);

  // read and check voltage and current
  i_adc = ReadADC( 0);		/* read current */
  v_adc = ReadADC( 1);		/* read voltage */

  if( i_adc > 20 || v_adc < (ADC_VOLT_LOW-5) || v_adc > (ADC_VOLT_LOW+5))
    error();

  // passed power-up test, turn off LED and power for now
  LED_OFF();
  VREG_OFF();
  BOOST_OFF();

  // wait for turn-on command
  while(1) {

    if( !(CMD_PIN & CMD_MASK)) {
      // turn on LED
      LED_ON();

      // power up to nominal voltage
      set_digi_pot( AD5270_WDAC | DAC_DEFAULT);
      BOOST_ON();
      VREG_ON();

      // loop checking voltage and current
      while( 1) {
	_delay_ms( 500);
	// read and check voltage and current
	i_adc = ReadADC( 0);		/* read current */
	v_adc = ReadADC( 1);		/* read voltage */

	if( v_adc < (ADC_VOLT_NOM-10) || v_adc > (ADC_VOLT_NOM+10)) {
	  // voltage out of range, turn all off and blink until next reset
	  VREG_OFF();
	  BOOST_OFF();
	  error();
	}

	// blink briefly at 1Hz to indicate all is well
	LED_ON();
	_delay_ms(100);
	LED_OFF();
      }
    }

  }


}


