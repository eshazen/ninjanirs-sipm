# HV regulator test
import time
import machine
from machine import Pin, SPI, ADC

led1 = Pin( 0, Pin.OUT)
led2 = Pin( 1, Pin.OUT)

shdn = Pin( 22, Pin.OUT)
rst = Pin( 20, Pin.OUT)

shdn.value(0)
rst.value(0)

imon = ADC(Pin(26))
vmon = ADC(Pin(27))

# AD5270 commands (16-bit values)
AD5270_NOOP = 0
AD5270_WDAC = (1 << 10)
AD5270_RDAC = (1 << 11)
AD5270_WCTL = (7 << 10)
AD5270_RCTL = (1 << 13)

spi = SPI(
    baudrate = 1000000,    # baud rate (1MHz)
    polarity = 0,
    phase = 1,
    sck = Pin(18),
    mosi = Pin(19),
    miso = Pin(16)
)

cs = Pin( 17, Pin.OUT) # CS pin (actually nSYNC)

# write a 16-bit value to register
def reg_write( spi, cs, data):
    msg = data.to_bytes(2, 'big')
    cs.value(0)
    spi.write(msg)
    cs.value(1)

# read a 16-bit value
def reg_read( spi, cs):
    cs.value(0)
    data = spi.read(2)
    cs.value(1)    
    return int.from_bytes( data, 'big')

############
# Main

reg_write(spi, cs, AD5270_WCTL | 2)    # enable wiper setting
reg_write(spi, cs, AD5270_WCTL | 2)    # enable wiper setting

# Set the digital pot to mid-range


# activate reset
rst.value(1)

def set_dac_print(d):
    dac = 1023-d
    vout = 1.22 * (1 + 2.5e6/(50e3+(dac/1023)*50e3))
    reg_write(spi, cs, AD5270_WDAC | dac)
    time.sleep_ms(10)
    v_imon = (imon.read_u16()/65535.)*3.3*(20./3)
    v_vmon = (vmon.read_u16()/65535.)*3.3*(210./10.)
    print( d, ",", vout, ",", v_vmon, ",", v_imon)
    
#--- Main ---

# dac_lo = 832
# dac_hi = 960
dac_lo = 300
dac_hi = 700

while True:
#for i in range(1):
    # print("----")
    # for d in range( 0, 1024, 64):
    #     set_dac_print(d)
    set_dac_print(dac_lo)
    time.sleep_ms(15)
    set_dac_print(dac_hi)
    time.sleep_ms(5)
    # time.sleep_ms(100)

