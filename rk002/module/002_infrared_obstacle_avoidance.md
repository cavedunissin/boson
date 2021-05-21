# 避障紅外線模組

![](../../.gitbook/assets/0%20%281%29%20%282%29%20%286%29.png)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「避障紅外線模組」,讀取避障紅外線模組數值變化。

此**避障紅外線模組**包含於**「**[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)**」**內。

## KEYES Arduino UNO R3電路圖

* [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* 避障紅外線模組

**避障紅外線模組**是**類比/數位訊號輸入**，可以接「A0 ~ A5」/「D0 ~ D13」的KEYES Arduino UNO R3訊號端上。 本範例連接到「**A0」/**「**D3」**

避障紅外線模組是利用光線對顏色不同的反射率， 判斷感測器的輸入端是0或者是1， 進而判斷是黑線或是白線 。

![](../../.gitbook/assets/1%20%283%29%20%281%29.png)

## Arduino 程式

每0.5秒鐘會讀取避障紅外線模組的數值一次， 並顯示在序列埠監控視窗上。類比輸入訊號的值代表與障礙物的距離，數位訊號輸入的值0代表偵測到白線1代表偵測到黑線。

![](../../.gitbook/assets/2%20%284%29%20%281%29%20%285%29.png)

產生出的 Arduino 程式如下

```c
void setup()
{
 Serial.begin(9600);
}
void loop()
{
 Serial.println(digitalRead(3));
 Serial.println(analogRead(A0));
 delay(500);
}
```

