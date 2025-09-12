# Firmware for NN22_RPi_DetAdapter00_TestBoard00

# Initial version: 2023-02-20
# Bernhard Zimmermann - bzim@bu.edu
# Boston University Neurophotonics Center

# import NN22DetectorAdapterTestBoard
import time

def runTest(tb):
    tb.ledR.value = 0;
    tb.ledG.value = 0;
    globalError = False

    print()
    print("----  NinjaNIRS 2022  ----")
    print("Script to test connected NN22 Detector Adapter Board.")
    print()

    tb.resetTargetBoard()

    # power supply rails
    expected_vals = [6.5, 3.3, -20.0]
    tolerance = 4 # +- percent
    print("-- Testing power supply rails --")
    print("Expected values:", end=" ")
    for iv in range(0,len(expected_vals)):
        print("{:6.2f}V".format(expected_vals[iv]), end="  ")
    print()

    vals = tb.getSupplyRails()
    error = False
    print("Measured values:", end=" ")
    for iv in range(0,len(vals)):
        print("{:6.2f}V".format(vals[iv]), end="  ")
        dev = abs(vals[iv]/expected_vals[iv])
        if dev>(1+tolerance/100) or dev<(1-tolerance/100):
            error = True
            globalError = True
    print()
    if error:
        print("<*> ERROR <*>   Supply rails not as expected!")
    else:
        print("PASS")
    print()

    # Read det board status packet
    # (unique ID, firmware version and temperature)
    print("-- Target Status --")
    vals = tb.getTargetStatus()
    print(f"Unique ID: {vals[0]}")
    print(f"Firmware version: {vals[1]}")
    print(f"MCU temperature: {vals[2]}")
    print()

    # test ADC values
    test_vals = [0, 10, 20, 50, 100, 150, 200, 250]
    expected_vals = [0, 1200, 2450, 6080, 12200, 18350, 24450, 30600]
    tolerance = [4, 60] # percent +- digital levels

    time.sleep(0.1)

    print("-- Testing ADC channels --")
    for ich in range(0,8):
        print("Channel {:d}:".format(ich))

        print("    DAC test values:", end=" ")
        for iv in range(0,len(test_vals)):
            print("{:6d}".format(test_vals[iv]), end="  ")
        print()
        print("Expected ADC values:", end=" ")
        for iv in range(0,len(expected_vals)):
            print("{:6d}".format(expected_vals[iv]), end="  ")
        print()

        error = False
        print("Measured ADC values:", end=" ")
        for iv in range(0,len(test_vals)):
            tb.dac.setCHvalR0(ich, test_vals[iv])
            time.sleep(0.005)
            vals = tb.getOneTargetSample()
            if len(vals)<8: # not enough data received from target
                globalError = True
                error = True
                break
            print("{:6d}".format(vals[ich]), end="  ")
            for ichl in range(0,len(vals)):
                if ichl==ich: #this is the channel we are testing
                    if abs(expected_vals[iv]-vals[ichl])>(expected_vals[iv]*tolerance[0]/100.0+tolerance[1]):
                        error = True
                        globalError = True
                else: # verify that other channels stay 'dark'
                    if abs(vals[ichl])>tolerance[1]:
                        error = True
                        globalError = True
                        print("Crosstalk error with ch{:d}! Expected {:d}, measured {:d}.".format(ichl, tolerance[1], vals[ichl]))
        print()
        if error:
            print("<*> ERROR <*>   Channel not as expected!")
        else:
            print("PASS")
        print()
        #if globalError:
            #break

    print()
    if globalError:
        print("<*><*> GLOBAL ERROR <*><*>   At least one test failed!")
        tb.ledR.value = 1
        tb.buzz.duty_cycle = 2**15
        time.sleep(0.8)
        tb.buzz.duty_cycle = 0
        time.sleep(0.4)
        tb.buzz.duty_cycle = 2**15
        time.sleep(0.8)
        tb.buzz.duty_cycle = 0
    else:
        print("~~~~~ GLOBAL PASS ~~~~~   All tests passed.")
        tb.ledG.value = 1
        tb.buzz.duty_cycle = 2**15
        time.sleep(0.1)
        tb.buzz.duty_cycle = 0
    print("Done.")
