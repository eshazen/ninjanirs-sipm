# sipm-hv-splitter

## Description

This is a PCB intended to replace the "splitter" board, connecting
directly to a detector interface card with a very short ribbon.
It provides programmable, current-limited HV bias to 8 SiPMs along
with TIA readout of each SiPM.

The targent dimensions for the prototype are 2.5 x 1.3 inches.

The SiPM connectors are the "NIRX" standard .050" pitch 4-pin with
pinout as follows (top view of female header on this board):


| Function   | Number |   | Number | Function     |
|------------|--------|---|--------|--------------|
| V(BIAS)    | 2      |   | 1      | Signal       |
| Thermistor | 4      |   | 3      | GND (shield) |

The thermistor is optional and expected to be connected on only 1 of 8
SiPMs. 

The output connector to the readout adapter has the following pinout:

| Function | Number |   | Number | Function    |
|----------|--------|---|--------|-------------|
| V +12V   | 1      |   | 2      | V -20V      |
| GND      | 3      |   | 4      | Ch 7 signal |
| V +12V   | 5      |   | 6      | V -20V      |
| GND      | 7      |   | 8      | Ch 6 signal |
| V +12V   | 9      |   | 10     | V -20V      |
| GND      | 11     |   | 12     | Ch 6 signal |
| V +12V   | 13     |   | 14     | V -20V      |
| GND      | 15     |   | 16     | Ch 4 signal |
| V +12V   | 17     |   | 18     | V -20V      |
| GND      | 19     |   | 20     | Ch 3 signal |
| V +12V   | 21     |   | 22     | V -20V      |
| GND      | 23     |   | 24     | Ch 2 signal |
| V +12V   | 25     |   | 26     | V -20V      |
| GND      | 27     |   | 28     | Ch 1 signal |
| V +12V   | 29     |   | 30     | V -20V      |
| GND      | 31     |   | 32     | Ch 0 signal |
| COMM/RX  | 33     |   | 34     | COMM/RX     |

_NOTE:_ channel number order reversed to minimise crosstalk on the PCB.

`COMM/RX` is a logic signal (optionally containing UART prototcol
data) from the adapter card to the on-board MCU.  `COMM/TX` is an
optional half-duplex return path for bidirectional communication with
the adapter card.

## Testing Log

### 7/24/25:

Found a "feature" of the AVR SPI bus:  The pin called nSS (PB2)
must be driven high for the SPI bus to work.  We're using this
for BOOST_ENA so this is a bit of a problem.

More seriously, the ISP interface on the AVR seems to be dead.
This could be because we were using the ISP in 5V mode :(
<br>One can set 3.3V (host power) mode by removing the little yellow jumper
on the USBTinyISP.

May need to solder up a new board :( :(
<br>Start on board#2.  Install only 3.3V digital and MCU.
Programs fine.  Stopping for the weekend.

### 7/23/25:

Soldered 3.3V regulators, MCU and boost converter parts.
Soldered temporary FTDI serial thing on R1 site.

Boost converter works!  Outputting 61.3V, drawing 69mA on 12V.
Controlled as expected by `BOOST_ENA` output from MCU.

Install Digi pot.  Doesn't work :(  <br>
Verified SCK, MOSI, nSYNC all look OK. <br>
Nothing comes out MISO, POT stuck at 50%. <br>

Giving up for today

## Revision log

### 7/7/25:
Final checks

* Add LC filter on AVCC on MCU
* Add filter C on AREF
   * working on layout changes

### 7/3/25:  
First complete draft, posted to Basecamp

### Edits due from BZ on 7/1/25:

* Mis-wired RC filter on TIA input; should be on each SiPM bias line.
<br>_NOTE:_ the RC filter should be moved to the heirarchial block for
each channel for common layout? *DONE*
* Swap UART TX/RX *DONE*
* Use same symbol for all caps C2, C3 etc *DONE*
* Add filter on `THERM` *DONE*

