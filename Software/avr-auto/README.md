# avr-auto

Stand-alone bias voltage software.

* Set pull-up on PD0
* Turn off on-board LED
* Start boost converter with pot set to low voltage and output disabled
* Power up at low voltage and check voltage and current
* Power down
* (OPTIONAL) Wait for low on PD0 (disabled by `#define AUTO_TURN_ON`)
* Power up at nominal voltage (pot=195, V=57.0V).  Check current

```
   Pot = 1023
   ADC 0 = low (20 or less)
   ADC 1 = 470  (33 volts or so)
```

LED code:
	On for 1s on power-up
	Off while waiting for start pulse
	Short blink at 1Hz during normal operation (bias on)
	fast continuous blink on error condition
	
	
## EDITS

**2026-11-10**

Increase margins quite a bit.

    Voltage ADC range now 779 change from +/-10 to +/-20
	Current ADC maximum at 33V change from 20 5- 50

Change "normal" blink to 1Hz (was 2Hz)
