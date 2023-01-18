# LED模組

![](../../.gitbook/assets/linkit7697\_led\_00.png)

## LinkIt 7697 專案說明

使用「LinkIt 7697 NANO Breakout」連接「LED模組」， 每兩秒鐘LED模組閃爍一次。\
此**LED模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內。

### LinkIt 7697 電路圖

* [LinkIt 7697](https://www.robotkingdom.com.tw/product/linkit-7697/)
* LinkIt 7697 NANO Breakout
* LED模組

**LED模組**是**數位/類比訊號**輸出， 可以接「D0 \~ D13」的 LinkIt 7697 NANO Breakout訊號端上。 本範例連接到「**D8**」。

![](../../.gitbook/assets/linkit7697\_led\_01.png)

### BlocklyDuino 積木畫布

將8號腳位的電位拉低、拉高，每兩秒鐘會切換LED的亮暗一次。

![](../../.gitbook/assets/linkit7697\_led\_02.png)

### Arduino 程式

```javascript
void setup()
{
  pinMode(8, OUTPUT);
}


void loop()
{
  digitalWrite(8, HIGH);
  delay(2000);
  digitalWrite(8, LOW);
  delay(2000);
}
```

## micro:bit 專案說明

使用「micro:bit搭配科易KEYES micro:bit 感測器擴充板 V2」連接「LED模組」，每一秒控制LED亮和暗。

此**LED模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/)」內。

### micro:bit 電路圖

* [BBC micro:bit 微控制板  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [科易KEYES micro:bit 感測器擴充板 V2  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* LED模組

**LED模組**是**數位/類比訊號**輸出， 可以接「P0 \~ P10」的 micro:bit訊號端上。 本範例連接到「**P0**」

![](<../../.gitbook/assets/0 (3) (1).jpeg>)

### Microsoft MakeCode 積木畫布

每一秒鐘會切換LED的亮暗一次。

![](<../../.gitbook/assets/1 (2).jpeg>)

### &#x20;JavaScript 程式

```javascript
basic.forever(function () {
    pins.digitalWritePin(DigitalPin.P0, 1)
    basic.pause(1000)
    pins.digitalWritePin(DigitalPin.P0, 0)
    basic.pause(1000)
})
```

## Raspberry Pi Pico 專案說明

使用「Raspberry Pi Pico」連接「LED模組」, 每兩秒鐘LED模組閃爍一次。此 LED模組包含於「[洞洞么教學材料包](https://robotkingdom.com.tw/product/rk-education-kit-001/)」內。



### **LED模組電路圖**

* Raspberry Pi Pico[  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* Raspberry Pi Pico擴充板[  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* LED模組

&#x20;LED模組是數位/類比訊號輸出，  可以接「D0 \~ D28」的Raspberry Pi Pico擴充板訊號端上。  本範例連接到「D7」

&#x20;

<figure><img src="../../.gitbook/assets/image.png" alt=""><figcaption></figcaption></figure>

\


### Arduino 程式

每兩秒鐘會切換LED的亮暗一次。

```arduino
void setup()
{
  pinMode(7, OUTPUT);
}

void loop()
{
  digitalWrite(7, HIGH);
  delay(2000);
  digitalWrite(7, LOW);
  delay(2000);
}

```

&#x20;
