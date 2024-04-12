import RPi.GPIO as gp
import time

gp.setmode(gp.BCM)
gp.setup(18, gp.OUT)

try:
    while True:
        gp.output(18, gp.HIGH)
        time.sleep(0.5)
        gp.output(18, gp.LOW)
        time.sleep(0.5)
        
except KeyboardInterrupt:
    gp.cleanup()
