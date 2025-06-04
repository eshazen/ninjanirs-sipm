# Testing of LT3014 board

The board works OK more or less as designed.

ECOs:
* Need to install R13, R14 as 100 ohms and C10 as 1uf for stability

The main issue is time to switch on and off may be slow for use in the
system if we want to change voltage dynamically.

With the default values, there is a resistive load of 210k (R9, R10)
in parallel with the voltage adjust resistor chain (about 2.5M).
There is an output capaictor (C5) of 1.0uF on the LT3014 output.

See [no_load.png](no_load.png).  Rise and fall times are about 2ms.

