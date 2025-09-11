#
# send a scope command
#
import sys
import serial
import matplotlib.pyplot as plt
import numpy as np
import time
import re
import pyvisa

# open the scope
rm = pyvisa.ResourceManager()
myi = rm.open_resource("USB0::10893::5990::MY56311514::0::INSTR")

scope = myi.query( sys.argv[1])

print("Scope = ", scope)
