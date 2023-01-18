# 有源蜂鳴器模組

![](../../.gitbook/assets/linkit7697\_buzzer\_p\_00.png)

## LinkIt 7697 專案說明

使用「LinkIt 7697 NANO Breakout」連接「有源蜂鳴器模組」， 每一秒控制有源蜂鳴器模組發出聲音和靜音 。

此**有源蜂鳴器模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內 。

### LinkIt 7697 電路圖

* [LinkIt 7697](https://www.robotkingdom.com.tw/product/linkit-7697/)
* LinkIt 7697 NANO Breakout
* 無源蜂鳴器模組

**有源蜂鳴器模組**是**數位訊號**輸出， 可以接「D0 \~ D13」的 LinkIt 7697 NANO Breakout訊號端上。 本範例連接到「**D2**」。

{% hint style="info" %}
蜂鳴器分為「有源蜂鳴器」及「無源蜂鳴器」，「有源蜂鳴器」僅能發出單一頻率的聲音；「無源蜂鳴器」可依據不同的頻率發出不同聲調的聲音。
{% endhint %}

![](../../.gitbook/assets/linkit7697\_buzzer\_p\_01.png)

### BlocklyDuino 積木畫布

每一秒控制有源蜂鳴器模組發出聲音和靜音。

![](../../.gitbook/assets/linkit7697\_buzzer\_p\_02.png)

### Arduino 程式

```c
void setup()
{

  pinMode(2, OUTPUT);
}


void loop()
{
  digitalWrite(2, HIGH);
  delay(1000);
  digitalWrite(2, LOW);
  delay(1000);
}
```

## micro:bit 專案說明

使用「micro:bit搭配科易KEYES micro:bit 感測器擴充板 V2」連接「有源蜂鳴器模組」，每一秒控制有源蜂鳴器模組發出聲音和靜音 。

此**有源蜂鳴器模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/)」內。

### micro:bit電路圖

* [BBC micro:bit 微控制板  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [科易KEYES micro:bit 感測器擴充板 V2  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* 有源蜂鳴器模組

**有源蜂鳴器模組**是**數位訊號**輸出， 可以接「0、 1、 2、 8、 12、13、14、 15、 16、 19、20」的 micro:bit訊號端上。 本範例連接到「**P0**」。

{% hint style="info" %}
蜂鳴器分為「有源蜂鳴器」及「無源蜂鳴器」，「有源蜂鳴器」僅能發出單一頻率的聲音；「無源蜂鳴器」可依據不同的頻率發出不同聲調的聲音。
{% endhint %}

![](<../../.gitbook/assets/01 (1) (1).JPG>)

### Microsoft MakeCode積木畫布

每一秒控制有源蜂鳴器模組發出聲音和靜音 。

![](<../../.gitbook/assets/02 (2) (1).JPG>)

### JavaScript 程式

```javascript
basic.forever(function () {
    pins.digitalWritePin(DigitalPin.P0, 1)
    basic.pause(1000)
    pins.digitalWritePin(DigitalPin.P0, 0)
    basic.pause(1000)
})
```





## Raspberry Pi Pico 專案說明

使用「Raspberry Pi Pico」連接「無源蜂鳴器模組」, 每一秒控制有源蜂鳴器模組發出聲音和靜音 。此**有源蜂鳴器模組**包含於「[洞洞么教學材料包](https://robotkingdom.com.tw/product/rk-education-kit-001/)」內。



### 有源蜂鳴器模組電路圖

* [Raspberry Pi Pico](https://robotkingdom.com.tw/product/raspberry-pi-pico/)[  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [Raspberry Pi Pico擴充板](https://robotkingdom.com.tw/product/pipico-education-kit-001/)[  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* 有源蜂鳴器模組

> 有源蜂鳴器模組是數位訊號輸出，僅能發出單一頻率的聲音， 可以接「D0 \~ D28」的Raspberry Pi Pico擴充板訊號端上。 本範例連接到「D7」。



<figure><img src="../../.gitbook/assets/image (2) (2).png" alt=""><figcaption></figcaption></figure>



### Arduino IDE程式

> 每一秒控制有源蜂鳴器模組發出聲音和靜音。



Arduino程式(Active\_buzzer.ino)如下:

```arduino
void setup()
{
  pinMode(7, OUTPUT);
}
void loop()
{
  digitalWrite(7, HIGH);
  delay(1000);
  digitalWrite(7, LOW);
  delay(1000);
}
```
