**2026-02-03**

Crosstalk tests.  Channels 1-4 change TIA feeback cap from 1000pF to
470pF to eliminate 50MHz oscillations.  

Pulse red LED through 330 ohms into S13360-3050PE (ch 2) at 50Hz for
1.2ms at 3.38V amplitude (adjusted to give 5V on ch 2).
<br>Bias set at 56V.

<br>View signal on S13360-3025PE (ch 1)
<br>Observe bipolar crosstalk peaks of ~100uS but <1mV during body of pulse

Scope set to average 32 traces with BWL enabled.

![scope_2.png](scope_2.png)

Looking at V(bias).

First is bias on pulsed SiPM. There is a drop of about 400mV which is
likely due to the drop in the 1k series resistor feeding each SiPM.

![scope_3.png](scope_3.png)

Next is main bias rail with pulser reset to 10Hz.  There are some
fairly wild excursions on the regulated bias voltage.  Obviously
the regulator (LT3014) is not completely stable.

![scope_4.png](scope_4.png)

Same thing with pulse rate reduced to 1Hz.  The ringing is damped and
eventually settles down after about 300ms.

![scope_5.png](scope_5.png)

Note that looking at the raw boost converter (U4-1) there is no perturbation,
and the output of U4 (pin 5) looks the same as above (they are connected
together through copper).

So there is a perturbation on entire bias network of around 100mV peak-to-peak
when a large signal is generated on one SiPM.  This will change the SiPM
gain by a few percent.

**2026-02-05**

Investigating the bias supply issues.  Pulse producing a 5V output on the TIA.
This implies 5V/15k = 333uA out of the SiPM.  Observe about 400mV drop on the 1k
series R in the filter, so this is consistent.

Gain supposed to be 1.7e6 @PDE=40%.  So photocurrent would be ~200pA.

Looking at Vbias ringing.  Double C12 to 2uF.  No visible change.
Add 4.7uF in parallel for total 6.7uF.  Still no change.

Disconnect digital pot and jumper 10k from R20 bottom to GND.
Still no visible change.

Finally, remove C12 (and restore Digi-pot).  Still no change!

Try bypassing R17 with some C:
* 4.7pF - no change
* 47pF - no change
* 470pF - no change
* 4.7nF - aha!  Now a bit under-damped.

![scope_7.png)(scope_7.png)

