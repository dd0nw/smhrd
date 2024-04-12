import spidevRead as sr
import led18
import time

while True:
    read = sr.analog_read(0)
    print(f'Data : {read}')
    if read < 100:
        led18.led_on()
    else:
        led18.led_off()
    time.sleep(0.5)