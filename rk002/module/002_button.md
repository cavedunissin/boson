# 按鈕模組

![](<../../.gitbook/assets/0 (1) (2).png>)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「按鈕模組」, 讀取按鈕模組按下或放開的狀態。

此**按鈕模組**包含於**「**[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)**」**內。

## KEYES Arduino UNO R3電路圖

* [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* 按鈕模組

**按鈕模組**是**數位訊號輸入**， 可以接「D0 \~ D13」的 KEYES Arduino UNO R3訊號端上。 本範例連接到「**D3」**

![](<../../.gitbook/assets/1 (5).png>)

## Arduino 程式

每0.2秒鐘會讀取按鈕模組狀態一次， 並可透過序列埠監控視窗看到按鈕模組的狀態 。放開按鈕時顯示為1，按下按鈕時顯示為0。

![](<../../.gitbook/assets/2 (17) (1) (1).png>)

產生出的 Arduino 程式如下

```c
void setup()
{
 pinMode(3, INPUT);
 Serial.begin(9600);
}
void loop()
{
 Serial.println(digitalRead(3));
 delay(200);
}
```
