# 旋轉可變電阻

![](<../../.gitbook/assets/0 (10).png>)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「旋轉可變電阻」,讀取旋轉可變電阻數值變化。

此**旋轉可變電阻**包含於**「**[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)**」**內。

## KEYES Arduino UNO R3電路圖

* [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* 旋轉可變電阻

**旋轉可變電阻**是**類比訊號輸入**，可以接「A0 \~ A5」的KEYES Arduino UNO R3訊號端上。 本範例連接到「**A0」**

![](<../../.gitbook/assets/1 (7).png>)

## Arduino 程式

每0.5秒鐘會讀取旋轉可變電阻的電位一次， 並顯示在序列埠監控視窗上。

![](<../../.gitbook/assets/2 (11) (1) (1) (1) (1).png>)

產生出的 Arduino 程式如下

```c
void setup()
{
 Serial.begin(9600);
}
void loop()
{
 Serial.println(analogRead(A0));
 delay(500);
}
```
