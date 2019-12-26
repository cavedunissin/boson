# 電晶體MOS模組

![](../../.gitbook/assets/01%20%283%29.png)



## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「電晶體MOS模組」, 每2秒鐘開啟關閉一次。

{% hint style="info" %}
注意：驅動1A以上的負載需安裝散熱片
{% endhint %}

此**電晶體MOS模組**包含於「[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)」內。

## 電路圖

* [KEYES Arduino UNO R3   ](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* 電晶體MOS模組

**電晶體MOS模組**是**類比訊號**輸出， 可以接「D0 ~ D13」的 KEYES Arduino UNO R3訊號端上。 本範例連接到「**D3**」

![](../../.gitbook/assets/02%20%283%29.png)

## Arduino 程式

將3號腳位的電位拉低、拉高，每2秒鐘會切換**電晶體MOS模組**的開關一次。

產生出的 Arduino 程式如下

```c
#define control 3 // pin that controls the MOSFET

void setup() {
  // IRF520 MOSFET Tutorial by Robojax
  pinMode(control,OUTPUT);// define control pin as output
  Serial.begin(9600);

}

void loop() {
  // IRF520 MOSFET Tutorial by Robojax

  digitalWrite(control,HIGH); // turn the MOSFET Switch ON
  delay(2000);// Wait for 2000 ms or 2 second

  digitalWrite(control,LOW); // Turn the MOSFET Switch OFF
  delay(2000);// Wait for 2000 ms or 2 second


}

```



