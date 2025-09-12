# ---  NinjaNIRS 2022  ---
# Helper module for NN22_RPi_DetAdapter00_TestBoard00
#
# Initial version: 2022-12-19
# Bernhard Zimmermann - bzim@bu.edu
# Boston University Neurophotonics Center
#

import board
import digitalio
import time
import pwmio
import busio
from analogio import AnalogIn

class TestBoard:
    def __init__(self):
        # Init GPIO
        self.ledR = digitalio.DigitalInOut(board.GP13)
        self.ledG = digitalio.DigitalInOut(board.GP14)
        self.ledR.direction = digitalio.Direction.OUTPUT
        self.ledG.direction = digitalio.Direction.OUTPUT

        self.targetRun = digitalio.DigitalInOut(board.GP12) # on target: RP2040 'run' pin
        self.targetBoardSelect = digitalio.DigitalInOut(board.GP7) # on target: GPIO02
        self.targetTrig = digitalio.DigitalInOut(board.GP8) # on target: GPIO03
        self.targetEndCyc = digitalio.DigitalInOut(board.GP9) # on target: GPIO04
        self.targetStatusSelect = digitalio.DigitalInOut(board.GP10) # on target: GPIO05
        #targetReservedPin = board.GP11 # on target: GPIO06

        self.targetRun.direction = digitalio.Direction.OUTPUT
        self.targetBoardSelect.direction = digitalio.Direction.OUTPUT
        self.targetBoardSelect.value = 1
        self.targetTrig.direction = digitalio.Direction.OUTPUT
        self.targetEndCyc.direction = digitalio.Direction.OUTPUT
        self.targetStatusSelect.direction = digitalio.Direction.OUTPUT

        self.buzz = pwmio.PWMOut(board.GP22, duty_cycle=0, frequency=1000, variable_frequency=True)
        #self.buzz.duty_cycle = 2**15
        self.button = digitalio.DigitalInOut(board.GP15)

        self.dac = Bh2226f()
        self.dac.setCHvalR0(0,0)

        self.nSamples = 10
        self.adcCalConst = -6.25e-4/self.nSamples # convert ADC value to voltage

        self.uart = busio.UART(board.GP4, board.GP5, baudrate=6000000)

        self.analogVN20 = AnalogIn(board.A0)
        self.analogV6P5 = AnalogIn(board.A1)
        self.analogV3P3 = AnalogIn(board.A2)

        self.resetTargetBoard()

    def getSupplyRails(self):
        # This function reads the voltages of three supply rails on
        # the target detector adapter card.
        reslist = []
        val = self.analogV6P5.value * 3.3 / 65535 # voltage at the RP2040 pin
        val = val * (3.3+5.6)/3.3 # voltage at rail, considering voltage divider
        reslist.append(val)
        val = self.analogV3P3.value * 3.3 / 65535 # voltage at the RP2040 pin
        val = val * (3.3+3.3)/3.3 # voltage at rail, considering voltage divider
        reslist.append(val)
        val = self.analogVN20.value * 3.3 / 65535 # voltage at the RP2040 pin
        val = val - 33/3.3*(3.3-val) # voltage at rail, considering voltage divider
        reslist.append(val)
        return reslist

    def getOneTargetSample(self):
        # This function collects one sample of all 8 ADC channels of the
        # connected target detector adapter card.
        self.uart.reset_input_buffer()
        for isample in range(0,self.nSamples+1): # first sample will be discarded by target
            self.targetTrig.value = 1
            self.targetTrig.value = 0
        self.targetEndCyc.value = 1
        self.targetEndCyc.value = 0

        self.targetBoardSelect.value = 0
        buf = self.uart.read(28)
        self.targetBoardSelect.value = 1

        if buf is None:
            print("No data received from target.")
            return []
        elif len(buf)<28:
            print("Not enough data received from target.")
            return []

        # check packet header bytes
        if not(buf[0]==253 and buf[1]==252):
            print("Bad header received from target.")

        # check sample counter
        if buf[2]!=self.sampleCount:
            print("Bad sample count received from target.")
        self.sampleCount = (buf[2]+1)%256

        # convert received payload bytes to results list
        # N_BYTES_PER_DET = 3
        reslist = []
        for ich in range(0, 8):
            val = buf[3+ich*3] + buf[3+ich*3+1]*256 + buf[3+ich*3+2]*65536
            # correct for two's complement and invert result
            if val>8388607: # equivalent: val>((2**23)-1)
                val = 16777216-val # equivalent: 2**24-val
            else:
                val = -val
            reslist.append(val)

        # check packet trailer byte
        if buf[27]!=0:
            print("Bad trailer received from target.")

        return reslist

    def getTargetStatus(self):
        # This fuction collects one status packet of the
        # connected target detector adapter card.
        self.uart.reset_input_buffer()
        self.targetStatusSelect.value = 1
        self.targetEndCyc.value = 1
        self.targetEndCyc.value = 0
        self.targetStatusSelect.value = 0

        self.targetBoardSelect.value = 0
        buf = self.uart.read(18)
        self.targetBoardSelect.value = 1

        if buf is None:
            print("No data received from target.")
            return []
        elif len(buf)<18:
            print("Not enough data received from target.")
            return []

        # check packet header bytes
        if not(buf[0]==239 and buf[1]==238):
            print("Bad status packet header received from target.")

        # check sample counter
        if buf[2]!=self.sampleCount:
            print("Bad sample count received from target.")
        self.sampleCount = (buf[2]+1)%256

        # convert received payload bytes to results list
        reslist = []
        #reslist.append(buf[3:11].hex()) # unique ID # does not work in this Python version
        reslist.append(''.join('{1:02x}'.format(*d) for d in enumerate(buf[3:11])))
        reslist.append('v{:d}.{:d}'.format(buf[11], buf[12])) # firmware version
        temp = 27.0 - ((buf[13] + buf[14]*(1<<8)) * 3.3/(1<<12) - 0.706)/0.001721
        reslist.append('{:4.1f}C'.format(temp))

        # check packet trailer byte
        if buf[17]!=0:
            print("Bad status packet trailer received from target.")

        return reslist

    def resetTargetBoard(self):
        self.targetRun.value = 0
        time.sleep(0.01)
        self.targetRun.value = 1
        time.sleep(1.5)
        self.sampleCount = 0

class Bh2226f:
    # class for ROHM BH2226F 8 bit 8 channel D/A Converter
    # only functionality required for this project implemented
    def __init__(self):
        # set on-board Vreg to PWM mode to reduce ripple
        self.pwmmode = digitalio.DigitalInOut(board.GP23)
        self.pwmmode.direction = digitalio.Direction.OUTPUT
        self.pwmmode.value = True

        # pin definitions for serial interface
        self.resetn = digitalio.DigitalInOut(board.GP20)
        self.resetn.direction = digitalio.Direction.OUTPUT
        self.resetn.value = False
        self.clk = digitalio.DigitalInOut(board.GP18)
        self.clk.direction = digitalio.Direction.OUTPUT
        self.clk.value = False
        self.csn = digitalio.DigitalInOut(board.GP17)
        self.csn.direction = digitalio.Direction.OUTPUT
        self.csn.value = True
        self.so = digitalio.DigitalInOut(board.GP16) # "MISO"
        self.di = digitalio.DigitalInOut(board.GP19) # "MOSI"
        self.di.direction = digitalio.Direction.OUTPUT
        self.di.value = False

        # start up DAC
        self.resetn.value = True # release reset
        time.sleep(0.001)
        self.powerDownRelease()
        self.selectDA() # set outputs to analog mode

    def sendInstruction(self, addr, val): # send a single instruction
        data = (addr<<8) + val
        self.csn.value = False
        for ibit in range(11, -1, -1):
            self.di.value = (data >> ibit) &1
            self.clk.value = False
            self.clk.value = True
        self.csn.value = True
        self.clk.value = False
        self.di.value = False

    def setCHval(self, ch, val): # ch in range [0..7], val in range [0..255]
        addrlist = [0b1000, 0b0100, 0b1100, 0b0010, 0b1010, 0b0110, 0b1110, 0b0001]
        self.sendInstruction(addrlist[ch], val)

    def setCHvalR0(self, ch, val): # set all others to 0
        for nch in range(0, 8):
            if nch == ch:
                nval = val
            else:
                nval = 0
            self.setCHval(nch, nval)

    def powerDownRelease(self): # init command required by dac
        self.sendInstruction(0b1001, 0)

    def selectDA(self): # set all outputs to analog mode
        self.sendInstruction(0b0011, 0b11111111)
