# 微動開關模組

![](../../.gitbook/assets/linkit7697_microswitch_00.png)

## LinkIt 7697 專案說明

使用「LinkIt 7697 NANO Breakout」連接「微動開關模組」,，每0.2秒讀取微動開關模組按下和放開。

此**微動開關模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內。

### LinkIt 7697 電路圖

* [LinkIt 7697](https://www.robotkingdom.com.tw/product/linkit-7697/)
* LinkIt 7697 NANO Breakout
* 微動開關模組

**微動開關模組**是**數位訊號**輸入， 可以接「D0 ~ D13」的 LinkIt 7697 NANO Breakout訊號端上，「A0 ~ A3」在程式代表「14 ~ 17」。 本範例連接到「**D5**」。

![](../../.gitbook/assets/linkit7697_microswitch_01.png)

### BlocklyDuino 積木畫布

每0.2秒鐘會讀取微動開關模組的開啟或關閉一次， 並顯示在序列埠監控視窗上。

![](../../.gitbook/assets/linkit7697_microswitch_02.png)

![](../../.gitbook/assets/linkit7697_microswitch_03.png)

### Arduino 程式

```c
void setup()
{
  pinMode(5, INPUT);
  Serial.begin(9600);
}

void loop()
{
  Serial.println(digitalRead(5));
  delay(200);
}
```

## micro:bit 專案說明

使用「micro:bit搭配科易KEYES micro:bit 感測器擴充板 V2」連接「微動開關模組」，讀取微動開關模組按下或放開的狀態。

此**微動開關模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/)」內。

### micro:bit電路圖

* [BBC micro:bit 微控制板  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [科易KEYES micro:bit 感測器擴充板 V2  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* 微動開關模組

**微動開關模組**是**數位訊號**輸入， 可以接「3、4、5、6、7、9、10、11」的 micro:bit訊號端上。 本範例連接到「**P5**」。

![](../../.gitbook/assets/01%20%2811%29.JPG)

### Microsoft MakeCode積木畫布

每1秒鐘會讀取微動開關模組狀態一次，並可透過micro:bit顯示指示燈看到微動開關模組的狀態。

![](../../.gitbook/assets/02%20%285%29.jpg)

### JavaScript 程式

```javascript
basic.forever(function () {
    basic.showNumber(pins.digitalReadPin(DigitalPin.P5))
    basic.pause(1000)
})

```

