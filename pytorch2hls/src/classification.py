import time
from picamera import PiCamera
from picamera.array import PiRGBArray
import cv2
import datetime
import os
import pigpio

# GPIO
MOTOR_R = 12
MOTOR_L = 13
pi = pigpio.pi()
pi.set_mode(MOTOR_R, pigpio.OUTPUT)
pi.set_mode(MOTOR_L, pigpio.OUTPUT)

base_speed = 500000
sub_speed  = int(base_speed / 4)

camera = PiCamera()
camera.resolution = (640, 480)
camera.exposure_mode = 'off'
camera.awb_mode = 'flash'
rawCapture = PiRGBArray(camera, size=(640, 480))
i = 0
save_dir = 'train/'
try:
    for frame in camera.capture_continuous(rawCapture, format="bgr", use_video_port=True):
        image = frame.array
        image = image[32:448,180:460]
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        cv2.imwrite('hoge.png', gray)
        gray = cv2.resize(gray, (32,32))
        img = cv2.imread('hoge.png')
        cv2.imshow('hoge', img)
        key = cv2.waitKey(0)
        cv2.destroyAllWindows()
        key = key - 48
        if(key < 0 or key > 9):
            continue
        if(key == 0):# straight
            r_motor = base_speed
            l_motor = base_speed
        elif(key == 1):#left
            r_motor = base_speed
            l_motor = sub_speed
        elif(key == 2):#right
            r_motor = sub_speed
            l_motor = base_speed
        pi.hardware_PWM( MOTOR_R, 100, r_motor )
        pi.hardware_PWM( MOTOR_L, 100, l_motor )
        time.sleep(0.5)
        pi.hardware_PWM( MOTOR_R, 100, 0 )
        pi.hardware_PWM( MOTOR_L, 100, 0 )
        os.makedirs(save_dir + '/' + str(key), exist_ok=True)
        cv2.imwrite(save_dir + '/' +str(key) + '/' +str(i)+'.png', gray)
        i=i+1
        rawCapture.truncate(0)
except KeyboardInterrupt:
    print("get SIGINT")

pi.hardware_PWM( MOTOR_R, 100, 0 )
pi.hardware_PWM( MOTOR_L, 100, 0 )

cv2.destroyAllWindows()