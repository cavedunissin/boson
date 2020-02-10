# 旋轉電位計模組

![](../../.gitbook/assets/linkit7697_rotation_00.png)

## LinkIt 7697 專案說明

使用「LinkIt 7697 NANO Breakout」連接「旋轉電位計模組」， 讀取旋轉電位計模組的數值變化 。

此**旋轉電位計模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內。

### LinkIt 7697 電路圖

* [LinkIt 7697](https://www.robotkingdom.com.tw/product/linkit-7697/)
* LinkIt 7697 NANO Breakout
* 旋轉電位計模組

**旋轉電位計模組**是**類比訊號**讀取， 可以接「A0 ~ A3」的 LinkIt 7697 NANO Breakout訊號端上，「A0 ~ A3」在程式代表「14 ~ 17」。 本範例連接到「**A0**」。

![](../../.gitbook/assets/linkit7697_rotation_01.png)

### BlocklyDuino 積木畫布

每0.5秒鐘會讀取旋轉電位計模組的電位一次， 並顯示在序列埠監控視窗上。

![](../../.gitbook/assets/linkit7697_rotation_02.png)

![](../../.gitbook/assets/linkit7697_rotation_03.png)

### Arduino 程式

```c
void setup()
{

  Serial.begin(9600);

}


void loop()
{
  Serial.println(analogRead(14));
  delay(500);
}
```

## micro:bit 專案說明

使用「micro:bit搭配科易KEYES micro:bit 感測器擴充板 V2」連接「旋轉電位計模組」，讀取旋轉電位計模組的數值變化 。

此**旋轉電位計模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/)」內。

### micro:bit 電路圖

* [BBC micro:bit 微控制板  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [科易KEYES micro:bit 感測器擴充板 V2  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* 旋轉電位計模組

**旋轉電位計模組**是**類比訊號**輸入，可以接「0、1、2、3、4、10」的 micro:bit訊號端上，建議使用的是0、1、2腳位因為3、4、10腳位有使用到LED控制腳位所以當顯示LED時會不穩定。本範例連接到「P0」。

![](../../.gitbook/assets/01%20%285%29.JPG)

### Microsoft MakeCode積木畫布

每1秒鐘會讀取旋轉電位計模組的電位一次，並可透過micro:bit顯示指示燈看到旋轉電位計模組的電位數值。

![](../../.gitbook/assets/02%20%289%29.JPG)

### JavaScript 程式

```javascript
basic.forever(function () {
    basic.showNumber(pins.analogReadPin(AnalogPin.P0))
    basic.pause(1000)
})
```

