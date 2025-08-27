#
# ramp the voltage and make a plot
#
import sys
import serial
import matplotlib.pyplot as plt
import numpy as np
import time
import re

#------------------------------------------------------------
# function to plot data
# ax = axis object (xval, yval, yerr) are x, y values and y error
# colr = color to plot
def do_plot( ax, xval, yval, ylab):
    colr = 'blue'
    #--- plot red ---
    ax.plot( xval, yval, 'bo')
#    ax.errorbar( xval, yval, yerr = yerr, fmt= 'o', color = colr)
    ax.grid(True)
    ax.set_xlabel("DAC value")
    ax.set_ylabel(ylab)
    ax.set_ylim(min(yval)*0.9,max(yval)*1.1)
#------------------------------------------------------------


port = '/dev/ttyUSB0'

# open and prepare the serial port
ser = serial.Serial(port, 9600)
ser.flushInput()
ser.flushOutput()

# send a command and read until '>'
def ser_cmd( cmd):
    ser.write( cmd.encode('utf-8'))
    time.sleep(0.1)
    str = '';
    while True:
        b = ser.read()
        if b == b'>':
            break
        str = str + b.decode('utf-8')
    return str

rows_f = []                     # data ends up here as a list of lists

for i in range(1023,0,-64):
    cmd = "p %d\r" % i
    ser_cmd( cmd)
    time.sleep(0.5)
    s = ser_cmd( 'a\r')
    print("Result = ", s)
    vals = re.findall( r'(\d*.?\d+) V (\d*.?\d+) u', s)
    res = vals[0]
    volt = float(res[0])
    curr = float(res[1])
    print("Volts = ", volt, " curr = ", curr)
    fdat = [i,volt,curr]
    rows_f.append(fdat)

# extract slices as simple lists for columns we are interested in
dac = [row[0] for row in rows_f] # DAC is column 0
volt = [row[1] for row in rows_f] # Voltage is column 1
curr = [row[2] for row in rows_f] # Voltage is column 2

# panel with 2 x 1 plots
fig, ax = plt.subplots( nrows=2, ncols=1)

do_plot( ax[0], dac, volt, 'Voltage')
do_plot( ax[1], dac, curr, 'Current uA')

plt.show()
