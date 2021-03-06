# DHT11溫溼度感測器模組

![](../../.gitbook/assets/linkit7697_dht11_00.png)

## LinkIt 7697 專案說明

使用「LinkIt 7697 NANO Breakout」連接「DHT11溫溼度感測器模組」， 每1秒讀取DHT11溫溼度感測器模組溫度和濕度數值 。

此**DHT11溫溼度感測器模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內。

### LinkIt 7697 電路圖

* [LinkIt 7697](https://www.robotkingdom.com.tw/product/linkit-7697/)
* LinkIt 7697 NANO Breakout
* DHT11溫溼度感測器模組

**DHT11溫溼度感測器模組**是**數位訊號**輸出， 可以接「D2」的 LinkIt 7697 NANO Breakout訊號端上。 本範例連接到「**D2**」。

![](../../.gitbook/assets/linkit7697_dht11_01.png)

### BlocklyDuino 積木畫布

每秒鐘讀取DHT溫溼度感測器的溫度和濕度一次，並顯示在序列埠監控視窗上。

![](../../.gitbook/assets/linkit7697_dht11_02.png)

![](../../.gitbook/assets/linkit7697_dht11_03.png)

### Arduino 程式

```c
#include <DHT.h>
DHT dht11_p2(2, DHT11);

void setup()
{
  Serial.begin(9600);
  dht11_p2.begin();
}

void loop()
{
  Serial.print("溫度：");
  Serial.println(dht11_p2.readTemperature());
  Serial.print("濕度：");
  Serial.println(dht11_p2.readHumidity());
  delay(1000);
}
```

## micro:bit 專案說明

使用「micro:bit搭配科易KEYES micro:bit 感測器擴充板 V2」連接「DHT11溫溼度感應器模組」, 每1秒讀取DHT11溫溼度應器模組溫度和濕度數值 。

此**DHT11溫溼度感應器模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/)」內。

### micro:bit電路圖

* [BBC micro:bit 微控制板  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [科易KEYES micro:bit 感測器擴充板 V2  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* DHT11溫溼度感應器模組

**DHT11溫溼度感應器模組**是**數位訊號**輸出， 可以接「0、 1、 2、 8、 12、13、14、 15、 16、 19、20」的 micro:bit訊號端上，建議使用的是0、1、2腳位。本範例連接到「**P0**」。

![](../../.gitbook/assets/01%20%2812%29.JPG)

### Microsoft MakeCode積木畫布

在使用DHT11溫溼度感應器之前，需要擴展DHT11溫溼度感應器的指令庫。打開makecode程式設計平臺，滾動至指令區最底部，一次點擊進階----擴展，並使用以下網址安裝套件。

DHT11溫溼度感應器套件安裝網址：[https://github.com/lioujj/pxt-sensors](https://github.com/lioujj/pxt-sensors)

![&#x65B0;&#x589E;&#x64F4;&#x5C55;&#x5957;&#x4EF6;&#x4F4D;&#x7F6E;](../../.gitbook/assets/02%20%288%29%20%282%29%20%282%29%20%282%29%20%281%29.jpg)

![&#x4F7F;&#x7528;&#x7DB2;&#x5740;&#x5B89;&#x88DD;sensors&#x7684;&#x5957;&#x4EF6;](../../.gitbook/assets/03.JPG)

![&#x5B89;&#x88DD;&#x5B8C;&#x6210;&#x5F8C;&#x5373;&#x53EF;&#x5728;&#x6307;&#x4EE4;&#x5340;&#x770B;&#x5230;&#x611F;&#x61C9;&#x5668;&#x9078;&#x9805;&#x88E1;&#x9762;&#x53CA;&#x6709;DHT11&#x7684;&#x5957;&#x4EF6;](../../.gitbook/assets/04%20%282%29.jpg)

每按下A或B按鈕會讀取並顯示DHT11溫溼度感應器的溫度和濕度一次，並可透過micro:bit顯示指示燈看到DHT11溫溼度感應器的溫度和濕度的狀態。

![](../../.gitbook/assets/05.JPG)

### JavaScript 程式

```javascript
let temp = 0
let humi = 0
input.onButtonPressed(Button.A, function () {
    temp = sensors.get_DHT11_value(
    DigitalPin.P0,
    sensors.Dht11Result.Celsius
    )
    basic.showString("TEMP:")
    basic.showNumber(temp)
})
input.onButtonPressed(Button.B, function () {
    humi = sensors.get_DHT11_value(
    DigitalPin.P0,
    sensors.Dht11Result.humidity
    )
    basic.showString("HUMI:")
    basic.showNumber(humi)
})
basic.forever(function () {
    
})
```

