# 超音波測距感測器

![](../../.gitbook/assets/linkit7697_ultrasonic_00.png)

## LinkIt 7697 專案說明

使用「LinkIt 7697 NANO Breakout」連接「超音波測距感測器」， 每0.5秒讀取超音波測距感測器所測到的距離。

此**超音波測距感測器**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內。

### LinkIt 7697 電路圖

* [LinkIt 7697](https://www.robotkingdom.com.tw/product/linkit-7697/)
* LinkIt 7697 NANO Breakout
* 超音波測距感測器

**超音波測距感測器**是**類比訊號**輸出， 可以接「D0 ~ D13」的 LinkIt 7697 NANO Breakout訊號端上。 本範例連接到「**D7**」、「**D8**」 。

{% hint style="info" %}
超音波測距感測器是由發射器、接收器以及控制電路所組成，若待測物體距離太遠，或者發射器、接收器其中一個被遮蔽，皆會導致量測距離結果錯誤。
{% endhint %}

![](../../.gitbook/assets/linkit7697_ultrasonic_01.png)

### BlocklyDuino 積木畫布

每0.5秒鐘會讀取一次超音波測距感測器所測得的距離。

![](../../.gitbook/assets/linkit7697_ultrasonic_02.png)

![](../../.gitbook/assets/linkit7697_ultrasonic_03.png)

### Arduino 程式

```c
#include <Ultrasonic.h>

Ultrasonic ultrasonic_7_8(7, 8);

void setup()
{

  Serial.begin(9600);

}


void loop()
{
  Serial.println(ultrasonic_7_8.convert(ultrasonic_7_8.timing(), Ultrasonic::CM));
  delay(500);
}
```

## micro:bit 專案說明

使用「micro:bit搭配科易KEYES micro:bit 感測器擴充板 V2」連接「超音波測距感應器」，每1秒讀取超音波測距感應器所測到的距離。

此**超音波測距感應器**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/)」內。

### micro:bit電路圖

* [BBC micro:bit 微控制板  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [科易KEYES micro:bit 感測器擴充板 V2  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* 超音波測距感應器

**超音波測距感應器**是**類比訊號**輸入， 可以接「0、1、2、3、4、10」的 micro:bit訊號端上。 本範例連接到「**P0**、**P1**」。

{% hint style="info" %}
超音波測距感測器是由發射器、接收器以及控制電路所組成，若待測物體距離太遠，或者發射器、接收器其中一個被遮蔽，皆會導致量測距離結果錯誤。
{% endhint %}

![](../../.gitbook/assets/01%20%288%29.JPG)

### Microsoft MakeCode積木畫布

在使用超音波測距感應器之前，需要擴展超音波測距感應器的指令庫。打開makecode程式設計平臺，滾動至指令區最底部，依次點擊進階----擴展，並使用以下網址安裝套件。

超音波測距感應器套件安裝網址：[https://github.com/lioujj/pxt-sensors](https://github.com/lioujj/pxt-sensors)

![&#x65B0;&#x589E;&#x64F4;&#x5C55;&#x5957;&#x4EF6;&#x4F4D;&#x7F6E;](../../.gitbook/assets/02%20%286%29.jpg)

![&#x4F7F;&#x7528;&#x7DB2;&#x5740;&#x5B89;&#x88DD;sensors&#x7684;&#x5957;&#x4EF6;](../../.gitbook/assets/03%20%282%29.jpg)

![&#x5B89;&#x88DD;&#x5B8C;&#x6210;&#x5F8C;&#x5373;&#x53EF;&#x5728;&#x6307;&#x4EE4;&#x5340;&#x770B;&#x5230;&#x611F;&#x61C9;&#x5668;&#x9078;&#x9805;&#x88E1;&#x9762;&#x53CA;&#x6709;&#x8D85;&#x97F3;&#x6CE2;&#x6E2C;&#x8DDD;&#x611F;&#x61C9;&#x5668;&#x7684;&#x5957;&#x4EF6;](../../.gitbook/assets/04%20%281%29.jpg)

每1秒鐘會讀取一次超音波測距感測器所測得的距離，並可透過micro:bit顯示指示燈看到超音波測距感測器所測得的距離（小數點四捨五入後顯示）。

![](../../.gitbook/assets/05%20%282%29.JPG)

### JavaScript 程式

```javascript
basic.forever(function () {
    basic.showNumber(Math.round(sensors.sensor_ping(
    DigitalPin.P1,
    DigitalPin.P0,
    sensors.PingUnit.Centimeters
    )))
    basic.pause(1000)
})
```



