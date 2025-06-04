from machine import Pin
import time

p0 = Pin( 0, Pin.OUT)
p1 = Pin( 1, Pin.OUT)

v0 = 0
v1 = 1

while True:
    v0 = v0 ^ 1
    v1 = v1 ^ 1
    p0.value( v0)
    p1.value( v1)
    time.sleep_ms(200)
