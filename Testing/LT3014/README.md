# Testing of LT3014 board

The board works OK more or less as designed.

ECOs:
* Need to install R13, R14 as 100 ohms and C10 as 1uf for stability
* C4 and C5 need to be rated for > 60V (prototype built with 10V parts)

The main issue is time to switch on and off may be slow for use in the
system if we want to change voltage dynamically.

With the default values, there is a resistive load of 210k (R9, R10)
in parallel with the voltage adjust resistor chain (about 2.5M).
There is an output capaictor (C5) of 1.0uF on the LT3014 output.

See [no_load.png](no_load.png).  Rise and fall times are about 2ms.

The fall time is dependent on the load resistor.  Here are some
measurements taken with 50V caps installed at C4, C5 and the supply
voltage reduced to 50V.  Note that R9 was disconnected, so the only
built-in load is the 2.5M adjust chain.  Voltage swing is from 46 to
36V.

| Load R | Equivalent R | 10V fall time |        |
|        |              | C5 = 1.0uF    | 4.7uF  |
|--------|--------------|---------------|--------|
| 500k   | 420k         | 9.2ms         | 16.6ms |
| 1M     | 715k         | 15ms          |        |
| 2.5M   | 2.5M         | 47ms          | 85ms   |

If the time constant were due only discharge of C5 through the load
resistor, we would expect a much longer time constant.  For example
for the 420k case to dischage 1.0uF by 10V should take 85ms.

So my theory is that there is feedback in U1 which drains the output
capacitor.

Let's try changing C5 to a larger value.  Updated the table above.
Interestingly, not a factor of 4.7.  So this supports the theory that
it is not just the R-C of output capacitor and load.
