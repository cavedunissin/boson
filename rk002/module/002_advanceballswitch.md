# 滾珠開關模組

![](../../.gitbook/assets/0%20%284%29.png)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「滾珠開關模組」, 讀取滾珠開關模組開啟或關閉。

此**滾珠開關模組**包含於**「**[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)**」**內。

## KEYES Arduino UNO R3電路圖

* [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* 滾珠開關模組

**滾珠開關模組**是**數位訊號輸入**， 可以接「D0 ~ D13」的 KEYES Arduino UNO R3訊號端上。 本範例連接到「**D3」**

![](../../.gitbook/assets/0%20%2819%29%20%282%29%20%281%29.png)

## Arduino 程式

每0.5秒鐘讀取滾珠開關模組狀態，並顯示在序列埠監控視窗 \(搖動滾珠開關模組時，可以感覺到有滾珠在移動\)。

![](../../.gitbook/assets/2%20%2815%29.png)

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
 delay(500);
}
```

