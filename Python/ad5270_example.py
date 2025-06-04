#
# Attempt to control AD5270 digital POT
#
import time
import machine
from machine import Pin, SPI

p0 = Pin( 0, Pin.OUT)
p1 = Pin( 1, Pin.OUT)
v0 = 0

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

while(1):
    # reg_write(spi, cs, AD5270_NOOP)
    #reg_write( spi, cs, AD5270_RCTL)
    # cr = reg_read(spi, cs)
    # print("CR = ", cr)
    reg_write(spi, cs, AD5270_WDAC | 0)
    reg_write(spi, cs, AD5270_WDAC | 900)
    #dac = reg_read(spi, cs, AD5270_RDAC)
    #print("Read dac = ", dac)
    p0.value(v0)  # blink the LED (toggle)
    v0 = v0 ^ 1
    time.sleep_ms(500)


