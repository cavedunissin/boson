# LED模組

![](../../.gitbook/assets/0%20%2813%29.png)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「LED模組」, 每2秒鐘LED模組閃爍一次。

此**LED模組**包含於**「**[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)**」**內。

## 電路圖

* [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* LED模組

**LED模組**是**數位/類比訊號**輸出， 可以接「D0 ~ D13」的 KEYES Arduino UNO R3訊號端上。 本範例連接到「**D3」**

![](../../.gitbook/assets/1%20%287%29.png)

## 積木畫布

將3號腳位的電位拉低、拉高，每2秒鐘會切換**LED**的亮暗一次。

產生出的 Arduino 程式如下

void setup\(\)

{

 pinMode\(3, OUTPUT\);

}

void loop\(\)

{

 digitalWrite\(3, HIGH\);

 delay\(1000\);

 digitalWrite\(3, LOW\);

 delay\(1000\);

}

