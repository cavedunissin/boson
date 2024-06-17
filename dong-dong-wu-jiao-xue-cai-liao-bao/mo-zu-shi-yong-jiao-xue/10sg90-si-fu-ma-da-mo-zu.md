# 【10】SG90伺服馬達模組

使用「Raspberry Pi Pico W」連接「SG90伺服馬達模組」, 控制SG90伺服馬達模組的角度。此 **SG90伺服馬達模組**包含於「洞洞五教學材料包」內。

\#include \<Servo.h>

Servo \_\_myservo7;

void setup()

{

\_\_myservo7.attach(7);

\_\_myservo7.attach(7,700,2500);

}

void loop()

{

\_\_myservo7.write((map(0,0,180,700,2500)));

delay(1000);

\_\_myservo7.write((map(90,0,180,700,2500)));

delay(1000);

\_\_myservo7.write((map(180,0,180,700,2500)));

delay(1000);

}
