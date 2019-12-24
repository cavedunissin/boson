# 土壤溼度模組

![](../../.gitbook/assets/0%20%2836%29.png)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「土壤溼度模組」,讀取土壤溼度模組數值變化。

此**土壤溼度模組**包含於**「**[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)**」**內。

## KEYES Arduino UNO R3電路圖

* [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* 土壤溼度模組

**土壤溼度模組**是**類比訊號輸入**，可以接「A0 ~ A3」的KEYES Arduino UNO R3訊號端上，「A0 ~ A3」在程式代表「14 ~ 17」。 本範例連接到「**A0」**

![](../../.gitbook/assets/1%20%281%29.png)

## Arduino 程式

每0.5秒鐘會讀取土壤溼度模組的數值一次， 並顯示在序列埠監控視窗上。

![](../../.gitbook/assets/2%20%2813%29.png)

產生出的 Arduino 程式如下

void setup\(\)

{

 Serial.begin\(9600\);

}

void loop\(\)

{

 Serial.println\(analogRead\(14\)\);

 delay\(500\);

}

