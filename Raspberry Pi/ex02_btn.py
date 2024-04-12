import RPi.GPIO as gp

gp.setmode(gp.BCM)
gp.setup(21, gp.IN)

try:
    while True:
        btn = gp.input(21)
        print(btn)
        
except KeyboardInterrupt:
    gp.cleanup()