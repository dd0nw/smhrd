import RPi.GPIO as gp

gp.setmode(gp.BCM)
gp.setup(21, gp.IN)
gp.setup(18, gp.OUT)

try:
    while True:
        btn = gp.input(21)
        gp.output(18, btn)
        
        
except KeyboardInterrupt:
    gp.cleanup()
