# SiPM power regulator test board

This is a test board to provide the following features.  It is
intended to take as input ~65V bulk power from BZ's boost converter.

The final version would be stripped down to minimal parts and small
package sizes to fit on a future version of the detector adapter board.

* LT3014 high voltage regulator, programmable from 32-62V using a digital pot
* INA121 current sense / trip circuit.  Nominally set to trip at 10mA current but easy to change via resistor swap. 
* Set up (hopefully) to power up in a tripped state (HV off) until the R-Pi turns on the power
* Ability to measure output voltage and load current via R-Pi
* Socket for a Raspberry Pi Pico board for testing the interfaces.
* Testpoints and LEDs

## Revision History

* V1.0 - never fabricated
* V1.0a - as built with small changes suggested by BZ
