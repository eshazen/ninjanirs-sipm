
## Detector card V03

Two variants:

| Designator | NN24-26        | NN27  | Notes                             |
|------------|----------------|-------|-----------------------------------|
| R71        | DNP            | 0 Ohm | New component / designator        |
| LF1        | BLM18AG601SN1D | DNP   | Ferrite 600 Ohm @ 100 MHz, 500 mA |

Additional components could be DNP’d in NN27 if desired, such as U13 and C104.

**2026-08-24**

Trying to order.  Two problem parts:

C89 etc.  10uF X5R 0402

D1-D2  SBR1A20T5-7  1A fast response diode.  A problem.

Possible sub:  SBR1U40LP-7 in DFN package about the same size.
Make this change in `develop` (KiCAD conversion).  Layout done.

BOM is a problem... the KiCAD import doesnt include MPN.



