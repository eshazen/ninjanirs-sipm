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

## ECOs

* Cut track to SDO U5 pin 7 at chip.  Add 2.2k pull-up to 3.3V
on pin 7.
* Cut track to BOOST_ENA and wire to PD5 (pin 9) of U1.
* C39 wrong footprint on schematic/BOM (0201)

## Testing Log

### 2/3/26:

Change feedback C on ch1 TIA from 1nf to 100pF.
<br>Oscillation gone!

Work plan after chat with BZ:

* Try various FB C's to make sure we're in a good range
* Change all FB C's on working board
* Test for measurable x-talk during 1.25ms pulse on neighboring channel
   * Shift in baseline
   * Change in Vbias
* Test with more SiPMs

<br>Change ch 2 FB to 470pF.  No oscillation.
<br>Change ch 1 FB back to 1000pF.  Yes oscillation (sanity check)
<br>Change ch 1-4 FB to 470pF.

### 2/2/26:

Power-up sequence:

    >p 170
	>vs 0
	>b 1

Should read 57V or so.  Note dummy load needed to avoid trip.

Testing S13360-3025PE.  3x3mm 25um pitch.  Vover = 5V, VBR 53+/-5
<br>Confirm that VBR is about 53.

   S13360-3025PE (gain 7e5)
   pot = 195.  V is 56V, 170uA+/-50uA
   100Hz pulse 100us wide 3.2V into red LED
   Output about 420mV.
   
Printing another box for a 2nd SiPM.

   S13360-3050PE (gain 1.7e6)
   Output about 3.95V
   
Gain should be about 2.5X higher.

__Oscillation:__ See 50MHz sine wave ~ 20mV pk-pk output of amp.
<br>With only open NIRX cable (60cm) we see a square-ish wave almost 100mV pk-pk.

The amp has a low-pass filter with ~10kHz cutoff.
<br>Try 100pF in parallel with the 1nF feedback cap.  If anything, worse.

### 1/22/26:

See below 8/7/25 for power hookups

Test board `OUT0` is pin 4 of ribbon, so SIG_0 which comes from pins 29-32 of Optodes header

Boost converter producing 73V but output always tripped.  Need dummy load?
<br>Make a optode cable with 100k.  Now it works!

The current readback seems wrong, though.  57/100k = 560uA
<br>The readout says 72.6uA

ADC is reading 31.  Sense resistor is 3.00 ohms.  So the raw current signal
should be 1.7mV across R9.  For the INA201 the gain is supposedly 50V/V
so 84mV for 560uA.  The expected ADC reading would be 26.  Observe 31-35
using raw `a 0` so maybe not so bad?

In `sipm_io.h` constant `NA_PER_ADC` is 2200.  Hmm.
Change to 20687.

### 9/30/25:

Testing board#2

* Power-up and flash OK.
* Boost output 73V
* VR range 31.2-60.8

* Change R17 to 2.7M to increase max voltage to 67V

Now the VR goes up to 65.2.

The current readback is jumping around from 8-20uA though.

Re-flash board#1 with avr-debug

Current readback similarly jumps around

### 9/17/25:

(all below board#1)

Finally have correct (hope) ribbon between test board and adapter.
Going to install firmware on the purple test board.

Currently it has:

```
hazen@hazen-botlab CIRCUITPY $ ls -l
total 6
-rw-r--r-- 1 hazen hazen  103 Dec 31  2019 boot_out.txt
-rw-r--r-- 1 hazen hazen 1608 Dec 18  2022 code.py
-rw-r--r-- 1 hazen hazen 2671 Dec 19  2022 DetAdapterTB.py
drwxr-xr-x 2 hazen hazen  512 Dec 31  2019 lib
```

(lib is empty).  Copying the following from BZ's ZIP:

```
-rw-rw-rw- 1 hazen hazen     889 Aug 28 00:51 code.py
-rw-rw-rw- 1 hazen hazen    8512 Aug 28 00:47 NN22DetectorAdapterTestBoard.py
-rw-rw-rw- 1 hazen hazen    3982 Oct 17  2024 TestFunctions.py
```

It works!  SiPM output voltage reported by python on the test board
varies with LED current.

### 9/12/25:

Working towards readout with BZ's red and purple boards.

TODO:

* Install R63, remove R62 on red board.  This disables the on-board LED and repurposes `A_COMM` as an
enable for the HV.  _Done_ (100 ohms for R63)
* Make firmware which powers up the HV and displays status
on the HV board LED.

### 9/11/25:

* Change R13 to 180k to up boost output to 75V.
* Change R17 to 2.7M to increase max voltage to 67V

Confirm with VOM we get 66.5V max output or so.

### 8/27/25:

Looking to use [test board](https://github.com/eshazen/ninjanirs-optode/tree/main/KiCAD/test-board) as a breakout.

```
  +6.5V  -  use for +12V power
  GND    -  ground
  -20V   -  use for -20V for TIA negative power
```

Solder wires to J1 pins 33 (comm TX) and 34 (comm RX).


### 8/20/25:

Load resistor of 66k on outputs.  Script `ramp_plot.py` makes
a nice set of V, I curvs vs DAC setting.

Ripple with scope probe ~ 20mV pk-pk.  100MHz always present,
20Hz (!) only when boost converter on.

Install parts for detector 0:

```
   R44, C47  (1k, 0.1uF) bias filter
   C23, C31 (0.1uF) bypass
   R28 (15k, TI)
   U13 (opa)
   R36 (15 ohms) output
   C39 (1n) feedback
```

### 8/4/25:

Issues with oscillation on output; seems like the LT3014.
Change C11 and C12 to 1uF 100V (vs 0.1uF).  Seems better.
Still some issues with startup.

Change R3 from 140k to 75k (double the overcurrent).
Now all seems good except for some ripple at max output.
Change R13 from 180k to 160k to up boost output to 65V.

All good so far.

### 7/29/25:

Add 2.2k pull-up on Digi Pot SDO.  It works!
<br>Move `BOOST_ENA` to PD5

Install U4, R17, R20 and C11, C12 as 0.1uF 100V.

### 7/28/25:

Started a new board, installed MCU and digi pot.

Found that ISP is unreliable here too.  Cut "SDO" track from digipot.
Now it seems to work reliably.  But Digi pot doesn't work.

Notice that the data sheet says that a pull-up is *required* on SDO
even if not used.

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

