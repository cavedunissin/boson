# Untitled

## 專案說明

使用「Funduino UNO」連接「LED模組」, 每兩秒鐘LED模組閃爍一次。

此**LED模組**包含於**「**[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)**」**內。

## 電路圖

* KEYES Arduino UNO R3
* LED模組

**LED模組**是**數位/類比訊號**輸出， 可以接「D0 ~ D13」的 Funduino UNO訊號端上。 本範例連接到「**D8」**

![](../../.gitbook/assets/0%20%2810%29.png)

## 積木畫布

將8號腳位的電位拉低、拉高，每兩秒鐘會切換**LED**的亮暗一次。

產生出的 Arduino 程式如下

void setup\(\)

{

 pinMode\(8, OUTPUT\);

}

void loop\(\)

{

 digitalWrite\(8, HIGH\);

 delay\(1000\);

 digitalWrite\(8, LOW\);

 delay\(1000\);

}

