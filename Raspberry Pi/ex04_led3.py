# 한번 누르면 켜지고 다시 한번 누르면 꺼지는 led 만들기

import RPi.GPIO as gp

gp.setmode(gp.BCM)
gp.setup(21, gp.IN)
gp.setup(18, gp.OUT)

check = True
cnt = 0

try:
    while True:
        btn = gp.input(21)
        if(btn==1):
            if check == True:
                cnt+=1
                check = False
        else:
            check = True
#         if(cnt%2==1):
#             gp.output(18,1)
#         else:
#             gp.output(18,0)
            gp.output(18, cnt%2)
        
        
except KeyboardInterrupt:
    gp.cleanup()
    


