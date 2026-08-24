# Source adapter V02

Two different possible assemblies here:

* NN22_VCCS_SrcAdapter02_s00_Gerber.zip -- Standard version
* NN22_VCCS_SrcAdapter02_s00_HiPower.zip -- High power version

The high power version has several BOM changes:

```
 Designator    NN24              NN26         Notes
 R9            10 Ohm            1 Ohm        Change in damping network
 R13           DNP               2.2 Ohm      Change in damping network
 C12           DNP               0.22 uF      Change in damping network
 R8            8.2 Ohm           1.5 Ohm      Current shunt for higher amps
 R30           28 kOhm           59 kOhm      Increase LED drive voltage for series cfg
 F1            0ZCH0035FF2G      0ZCH0110AF2E Increase fuse amps
 R2            10 kOhm           12 kOhm      Tune max amps slightly lower
```

Also the bottom silkscreen label has been changed to add the date 2026
and the notation "HIGH POWER".

There is an updated BOM downloaded from MacroFab.

As of today (8/6/26) the MacroFab design NN22_VCCS_SrcAdapter02
version 2 is the high power version.  Version 1 is the std one.

**2026-08-24** Ordered 20 pcs of the HP source adapter on Macrofab (#jr15eh3)
