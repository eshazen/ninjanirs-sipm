//
// code to calculate the Steinhart and Hart coefficients
// which allow the temperature of a thermistor to be calculated
// from the measured resistance
//
// See:
// https://www.ametherm.com/thermistor/ntc-thermistors-steinhart-and-hart-equation
//
// As input we need the resistance at 3 temperatures
// these are often provided in a table in the thermistor datasheet
//
// the resistance can be in whatever units (Ohms, kOhms) as long as use is consistent
//

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int main( int argc, char *argv[]) {

  double t1, r1, t2, r2, t3, r3;
  double L1, L2, L3, Y1, Y2, Y3;
  double g2, g3;

  double A, B, C;

  double r, t;

  if( argc < 6) {
    printf("usage: sh t1 r1 t2 r2 t3 r3 [r]\n");
    printf("   (temps in Kelvin, r in ohms)\n");
    exit(1);
  }

  if( argc > 6)
    r = atof( argv[7]);
  else
    r = 0.;

  t1 = atof( argv[1]);
  r1 = atof( argv[2]);
  t2 = atof( argv[3]);
  r2 = atof( argv[4]);
  t3 = atof( argv[5]);
  r3 = atof( argv[6]);

  L1 = log(r1);
  L2 = log(r2);
  L3 = log(r3);

  Y1 = 1./t1;
  Y2 = 1./t2;
  Y3 = 1./t3;
  g2 = (Y2-Y1)/(L2-L1);
  g3 = (Y3-Y1)/(L3-L1);
  
  C = ((g3-g2)/(L3-L2))*(1./(L1+L2+L3));
  B = g2 - C*(L1*L1+L1*L2+L2*L2);
  A = Y1 - L1*(B + C*L1*L1);

  printf("A = %g\nB = %g\nC = %g\n", A, B, C);

  if( r > 0.) {
    t = 1.0 / (A + B*log(r) + C * pow( log(r), 3.0));
    printf("Formula for T (Kelvin) = \n");
    printf("t = 1.0 / (%g + %g*log(r) + %g * pow( log(r), 3.0))\n", A, B, C);
    printf("Temp = %fK (%fC)\n", t, t - 273.15);
  }
}
