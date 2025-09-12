# Firmware for NN22_RPi_DetAdapter00_TestBoard00

# Initial version: 2023-02-21
# Bernhard Zimmermann - bzim@bu.edu
# Boston University Neurophotonics Center

# on Raspberry Pi this command to open console and log to text file
# minicom -D /dev/ttyACM0 -C ~/NN22_Det_Test_Log01.txt

import time
import NN22DetectorAdapterTestBoard

# import supervisor
# supervisor.disable_autoreload()

tb = NN22DetectorAdapterTestBoard.TestBoard()

print("Test board version for SiPM test board.")
print("Will just print out ADC values repeatedly.")
print()

tb.resetTargetBoard()
time.sleep(1)

while True:
    vals = tb.getOneTargetSample()

    if len(vals) < 8:  # not enough data received from target
        print("Not enough samples received!")
        break
    for ichl in range(0, len(vals)):
        print("{:>7.3f}".format(vals[ichl]*tb.adcCalConst), end=" ")
    print()
    time.sleep(0.4)
