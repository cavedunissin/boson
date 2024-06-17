# 【10】SG90伺服馬達模組

## SG90伺服馬達模組

專案說明

使用「Raspberry Pi Pico W」連接「SG90伺服馬達模組」, 控制SG90伺服馬達模組的角度。此 SG90伺服馬達模組包含於「洞洞五教學材料包」內。

### SG90伺服馬達模組電路圖

·        Raspberry Pi Pico W

·        Raspberry Pi Pico W 擴充板

·        SG90伺服馬達模組

| SG90伺服馬達模組是PWM訊號輸入，  可以接「D0 \~ D28」的Raspberry Pi Pico擴充板訊號端上。  本範例連接到「D7」。 |
| -------------------------------------------------------------------------- |

<figure><img src="../../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>

### BlocklyDuino 程式 (Servo)

需定義 Raspberry Pi Pico W 控制伺服馬達脈衝寬度的範圍大小約為700\~2500之間，可以控制伺服馬達的角度約0\~180度。

<figure><img src="../../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>

&#x20;

### &#x20;Arduino 程式(Servo.ino)如下

&#x20;

```
#include <Servo.h>
 
Servo __myservo7;
 
void setup()
{
  __myservo7.attach(7);
  __myservo7.attach(7,700,2500);
}
 
void loop()
{
  __myservo7.write((map(0,0,180,700,2500)));
  delay(1000);
  __myservo7.write((map(90,0,180,700,2500)));
  delay(1000);
  __myservo7.write((map(180,0,180,700,2500)));
  delay(1000);
}
```

&#x20;
