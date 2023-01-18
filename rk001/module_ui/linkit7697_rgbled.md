# LED模組（三色）

![](../../.gitbook/assets/linkit7697\_rgbled\_00.png)

## LinkIt 7697 專案說明

使用「LinkIt 7697 NANO Breakout」連接「LED模組(三色)」，控制LED模組(三色) 每0.5秒依序發出紅光、綠光和藍光。

此**LED模組(三色)**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內。

### LinkIt 7697 電路圖

* [LinkIt 7697](https://www.robotkingdom.com.tw/product/linkit-7697/)
* LinkIt 7697 NANO Breakout
* LED模組(三色)

**LED模組(三色)**是**數位/類比訊號**輸出， 可以接「D0 \~ D13」的 LinkIt 7697 NANO Breakout訊號端上。&#x20;

{% hint style="info" %}
下圖範例使用的 LED模組(三色) 為共陽極 LED， 由下圖 把腳位V 接到 3.3V \~ 5V 的電源， 腳位 R / B / G （Red／Blue／Green）接到數位輸出腳位。
{% endhint %}

![共陽極LED模組(三色) ](../../.gitbook/assets/linkit7697\_rgbled\_01.png)

當 R / B / G 的腳位拉高到 3.3V/5V, 電流就不會流過, LED 就不會點亮 。\
當 R / B / G 的腳位拉低， 電流就會流過。 LED 就會點亮，本範例R / B / G連接到「**D2、D3、D4**」 。

![](../../.gitbook/assets/linkit7697\_rgbled\_02.png)

{% hint style="info" %}
注意使用以下版本LED模組(三色)時是共陰極LED，把腳位V 接到 GND， 腳位 R / B / G （Red／Blue／Green）接到數位輸出腳位。
{% endhint %}

![共陰極LED模組(三色)](../../.gitbook/assets/IMG\_20200624\_184007.jpg)

當 R / B / G 的腳位拉高到 3.3V/5V,電流就會流過。 LED 就會點亮，本範例R / B / G連接到「**D2、D3、D4**」 。 當 R / B / G 的腳位拉低，電流就不會流過, LED 就不會點亮 。

![](../../.gitbook/assets/LED模組（三色）共陰.png)

### BlocklyDuino 積木畫布

**共陽極三色LED程式**\
****透過控制數位腳位的高低電位來使 RBG 三色亮或暗。 此範例使用的是共陽極的 RGB 全彩 LED， 所以該顏色（R / B / G）對應的腳位（D2／D3／D4）為低電位狀態時， 電流才會流過並發亮。

![](../../.gitbook/assets/linkit7697\_rgbled\_03.png)

### Arduino 程式

```c
void setup()
{
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
}

void loop()
{
  digitalWrite(2, LOW);
  digitalWrite(3, HIGH);
  digitalWrite(4, HIGH);
  delay(1000);
  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);
  digitalWrite(4, HIGH);
  delay(1000);
  digitalWrite(2, HIGH);
  digitalWrite(3, HIGH);
  digitalWrite(4, LOW);
  delay(1000);
}
```



**共陰極三色LED程式**\
透過控制數位腳位的高低電位來使 RBG 三色亮或暗。 使用共陽極的 RGB 全彩 LED， 所以該顏色（R / B / G）對應的腳位（D2／D3／D4）為高電位狀態時， 電流才會流過並發亮。

![](../../.gitbook/assets/LED模組（三色）.PNG)

### Arduino 程式

```c
void setup()
{

  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
}


void loop()
{
  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);
  digitalWrite(4, LOW);
  delay(1000);
  digitalWrite(2, LOW);
  digitalWrite(3, HIGH);
  digitalWrite(4, LOW);
  delay(1000);
  digitalWrite(2, LOW);
  digitalWrite(3, LOW);
  digitalWrite(4, HIGH);
  delay(1000);
}
```

## micro:bit 專案說明

使用「micro:bit搭配科易KEYES micro:bit 感測器擴充板 V2」連接「LED模組（三色）」，每1秒控制LED模組（三色）呈現紅、綠和藍光。

此**LED模組（三色）**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/)」內。

### micro:bit 電路圖

* [BBC micro:bit 微控制板  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [科易KEYES micro:bit 感測器擴充板 V2  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* LED模組（三色）

LED模組（三色）是**數位/類比訊號**輸出， 可以接「P0 \~ P10」的 micro:bit訊號端上。此範例使用的 LED模組（三色） 為共陽極 LED， 由下圖 腳位V 的接到 3.3V \~ 5V 的電源， 腳位 R / B / G 接到數位輸出腳位

![](<../../.gitbook/assets/01 (4) (1).JPG>)

當 R / B / G 的腳位拉高到 3.3V/5V, 電流就不會流過, LED 就不會點亮

當 R / B / G 的腳位拉低， 電流就會流過。 LED 就會點亮本範例連接到「**P0**、**P1**、**P2**」

![](<../../.gitbook/assets/02 (7).JPG>)

### Microsoft MakeCode積木畫布

透過控制數位腳位的高低電位來使 RBG 三色亮或暗。 此範例使用的是共陽極的 RGB 全彩 LED， 所以該顏色對應的腳位為低電位狀態時， 電流才會流過並發亮。

![](<../../.gitbook/assets/03 (1).JPG>)

### JavaScript 程式

```javascript
basic.forever(function () {
    pins.digitalWritePin(DigitalPin.P0, 0)
    pins.digitalWritePin(DigitalPin.P1, 1)
    pins.digitalWritePin(DigitalPin.P2, 1)
    basic.pause(1000)
    pins.digitalWritePin(DigitalPin.P0, 1)
    pins.digitalWritePin(DigitalPin.P1, 0)
    pins.digitalWritePin(DigitalPin.P2, 1)
    basic.pause(1000)
    pins.digitalWritePin(DigitalPin.P0, 1)
    pins.digitalWritePin(DigitalPin.P1, 1)
    pins.digitalWritePin(DigitalPin.P2, 0)
    basic.pause(1000)
})

```





## Raspberry Pi Pico 專案說明

使用「Raspberry Pi Pico」連接「LED模組(三色)」, 每0.5秒依序發出紅光、綠光和藍光。此 LED模組(三色)包含於「[洞洞么教學材料包](https://robotkingdom.com.tw/product/rk-education-kit-001/)」內。



### LED模組(三色)電路圖

* [Raspberry Pi Pico](https://robotkingdom.com.tw/product/raspberry-pi-pico/)[  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [Raspberry Pi Pico擴充板](https://robotkingdom.com.tw/product/pipico-education-kit-001/)[  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* LED模組(三色)

> **LED模組(三色)**是**數位/類比訊號**輸出， 可以接「D0 \~ D28」的Raspberry Pi Pico擴充板訊號端上。



#### LED模組(三色共陽)接線圖

{% hint style="info" %}
下圖範例使用的 LED模組(三色) 為共陽極 LED， 由下圖 把腳位V 接到 3.3V / 5V 的電源， 腳位 R / B / G （Red／Blue／Green）接到數位輸出腳位。
{% endhint %}

<figure><img src="../../.gitbook/assets/image (19).png" alt=""><figcaption></figcaption></figure>

> 當 R / B / G 的腳位拉高到 3.3V/5V, 電流就不會流過, LED 就不會點亮 。
>
> 當 R / B / G 的腳位拉低， 電流就會流過。 LED 就會點亮，本範例R / B / G連接到「D10、D9、D8」 。

<figure><img src="../../.gitbook/assets/image (7).png" alt=""><figcaption></figcaption></figure>

### LED模組(三色共陽)Arduino 程式

> 透過控制數位腳位的高低電位來使 RBG 三色亮或暗。 此範例使用的是共陽極的 RGB 全彩 LED， 所以該顏色（R / B / G）對應的腳位（D10／D9／D8）為低電位狀態時， 電流才會流過並發亮。

Arduino 程式(Three\_colors\_LED\_anode.ino)如下:

```arduino
void setup()
{
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
}

void loop()
{
  digitalWrite(2, LOW);
  digitalWrite(3, HIGH);
  digitalWrite(4, HIGH);
  delay(1000);
  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);
  digitalWrite(4, HIGH);
  delay(1000);
  digitalWrite(2, HIGH);
  digitalWrite(3, HIGH);
  digitalWrite(4, LOW);
  delay(1000);
}
```



#### LED模組(三色共陰)接線圖

{% hint style="info" %}
下圖範例使用的 LED模組(三色) 為共陰極 LED， 由下圖 把腳位V 接到 3.3V / 5V 的電源， 腳位 R / B / G （Red／Blue／Green）接到數位輸出腳位。
{% endhint %}

<figure><img src="../../.gitbook/assets/image.png" alt=""><figcaption></figcaption></figure>

> 當 R / B / G 的腳位拉高到 3.3V/5V,電流就會流過。 LED 就會點亮，本範例R / B / G連接到「D10、D9、D8」 。 當 R / B / G 的腳位拉低，電流就不會流過, LED 就不會點亮 。

<figure><img src="../../.gitbook/assets/image (1) (1).png" alt=""><figcaption></figcaption></figure>

### LED模組(三色共陰)Arduino 程式

> 透過控制數位腳位的高低電位來使 RBG 三色亮或暗。 使用共陽極的 RGB 全彩 LED， 所以該顏色（R / B / G）對應的腳位（D10／D9／D8）為高電位狀態時， 電流才會流過並發亮。

Arduino 程式(Three\_colors\_LED\_cathode.ino)如下:

```arduino
void setup()
{
  pinMode(10, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
}

void loop()
{
  digitalWrite(10, HIGH);
  digitalWrite(8, LOW);
  digitalWrite(9, LOW);
  delay(1000);
  digitalWrite(10, LOW);
  digitalWrite(8, HIGH);
  digitalWrite(9, LOW);
  delay(1000);
  digitalWrite(10, LOW);
  digitalWrite(8, HIGH);
  digitalWrite(9, HIGH);
  delay(1000);
}

```
