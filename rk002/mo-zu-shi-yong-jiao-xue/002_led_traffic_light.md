# 大顆LED紅綠燈整合模組

![](../../.gitbook/assets/01%20%284%29.png)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「大顆LED紅綠燈整合模組」, 每1秒鐘紅黃綠燈交換閃爍一次。

此**大顆LED紅綠燈整合模組**包含於「[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)」內。

## 電路圖

* [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/) 
* 通用型彩色Sensor shield v5.0感測器擴充板
* 大顆LED紅綠燈整合模組

**大顆LED紅綠燈整合模組**是**數位訊號**輸出， 可以接「D0 ~ D13」的 KEYES Arduino UNO R3訊號端上。 本範例連接到「**D3**」「**D4**」「**D5**」

![](../../.gitbook/assets/02%20%2811%29.png)

## Arduino 程式

透過控制數位腳位的高低電位來使 紅黃綠燈三色亮或暗。此範例使用的是共陰極的LED，所以該顏色（R/Y/G）對應的腳位（D3／D4／D5）為高電位狀態時，電流才會流過並發亮。

將3號、4號、5號腳位的電位拉低、拉高，每1秒鐘會切換紅黃綠燈交換閃爍一次。

產生出的 Arduino 程式如下

```c
void setup()
{

  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
}


void loop()
{
  digitalWrite(3, HIGH);
  digitalWrite(4, LOW);
  digitalWrite(5, LOW);
  delay(1000);
  digitalWrite(3, LOW);
  digitalWrite(4, HIGH);
  digitalWrite(5, LOW);
  delay(1000);
  digitalWrite(3, LOW);
  digitalWrite(4, LOW);
  digitalWrite(5, HIGH);
  delay(1000);
}

```





