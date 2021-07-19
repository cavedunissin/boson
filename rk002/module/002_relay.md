# 繼電器



![](../../.gitbook/assets/0%20%2814%29%20%283%29%20%283%29%20%283%29%20%283%29.png)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「繼電器」, 每2秒鐘繼電器開關一次。

此**繼電器**包含於**「**[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)**」**內。

## 電路圖

* [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* 繼電器

**繼電器**是**數位訊號**輸出， 可以接「D0 ~ D13」的 KEYES Arduino UNO R3訊號端上。 本範例連接到「**D3」**

![](../../.gitbook/assets/1%20%2817%29.png)

## Arduino 程式

將3號腳位的電位拉低、拉高，每2秒鐘會切換**繼電器**的開關一次。

產生出的 Arduino 程式如下

```c
void setup()
{
 pinMode(3, OUTPUT);
}
void loop()
{
 digitalWrite(3, HIGH);
 delay(1000);
 digitalWrite(3, LOW);
 delay(1000);
}
```

