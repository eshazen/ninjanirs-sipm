#
# ramp the voltage, read current as voltage from scope
#
import sys
import serial
import matplotlib.pyplot as plt
import numpy as np
import time
import re
import pyvisa

# transimpedance resistor
tir = 15000

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
    ax.set_xlabel("Bias Voltage")
    ax.set_ylabel(ylab)
    ax.set_ylim(min(yval)*0.9,max(yval)*1.1)
#------------------------------------------------------------


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

port = '/dev/ttyUSB0'

# open and prepare the serial port
ser = serial.Serial(port, 9600)
ser.flushInput()
ser.flushOutput()

# open the scope
rm = pyvisa.ResourceManager()
myi = rm.open_resource("USB0::10893::5990::MY56311514::0::INSTR")

# initialize the board
ser_cmd( "p 500\r")
ser_cmd( "vs 0\r")
ser_cmd( "b 1\r")

rows_f = []                     # data ends up here as a list of lists

for i in range(350,0,-50):
    # set the voltage on the DAC
    cmd = "p %d\r" % i
    ser_cmd( cmd)
    time.sleep(0.5)
    s = ser_cmd( 'a\r')
    print("Result = ", s)
    # read the scope
    scope = myi.query(':MEAS:VAV? DISP,CHAN1')
    print("Scope = ", scope)
    # parse values from bias board
    vals = re.findall( r'(\d*.?\d+) V (\d*.?\d+) u', s)
    res = vals[0]
    volt = float(res[0])
    curr = float(res[1])
    sipm_current = abs(float(scope)) / tir # current in A
    print("Volts = ", volt, " curr = ", curr, " scope = ", sipm_current)
    fdat = [i,volt,curr,sipm_current]
    rows_f.append(fdat)

# extract slices as simple lists for columns we are interested in
dac = [row[0] for row in rows_f] # DAC is column 0
volt = [row[1] for row in rows_f] # Voltage is column 1
curr = [row[2] for row in rows_f] # Voltage is column 2
sipm_current = [row[3] for row in rows_f] # Scope Voltage is column 3
    

# set back to low voltage
ser_cmd( "p 500\r")

# # panel with 3 x 1 plots
fig, ax = plt.subplots( nrows=1, ncols=1)
# 
plt.yscale('log')
do_plot( ax, volt, sipm_current, 'SiPm Current (uA)')

plt.show()
