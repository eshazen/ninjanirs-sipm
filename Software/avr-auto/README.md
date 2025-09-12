# avr-auto

Stand-alone bias voltage software.

* Set pull-up on PD0
* Turn off on-board LED
* Start boost converter with pot set to low voltage and output disabled
* Power up at low voltage and check voltage and current
* Power down
* Wait for low on PD0
* Power up at nominal voltage (pot=170, V=57.0V).  Check current

```
   Pot = 1023
   ADC 0 = low (10 or less)
   ADC 1 = 470  (33 volts or so)
```

LED code:
	Slow blink on power-up during self-checks
	
