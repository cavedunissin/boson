# 滾珠開關模組

![](../../.gitbook/assets/linkit7697\_advanceballswitch\_00.png)

## LinkIt 7697 專案說明

使用「LinkIt 7697 NANO Breakout」連接「滾珠開關模組」， 每0.5秒讀取滾珠開關模組開啟或關閉。

此**滾珠開關模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內。

### LinkIt 7697 電路圖

* [LinkIt 7697](https://www.robotkingdom.com.tw/product/linkit-7697/)
* LinkIt 7697 NANO Breakout
* 滾珠開關模組

**滾珠開關模組**是**數位**輸入， 可以接「D0 \~ D13」的 LinkIt 7697 NANO Breakout訊號端上。 本範例連接到「**D2**」。

![](../../.gitbook/assets/linkit7697\_advanceballswitch\_01.png)

### BlocklyDuino 積木畫布

每0.5秒鐘讀取滾珠開關模組狀態，並顯示在序列埠監控視窗 (搖動滾珠開關模組時，可以感覺到有滾珠在移動)。

![](../../.gitbook/assets/linkit7697\_advanceballswitch\_02.png)

![](../../.gitbook/assets/linkit7697\_advanceballswitch\_03.png)

### Arduino 程式

```c
void setup()
{

  pinMode(2, INPUT);
  Serial.begin(9600);

}


void loop()
{
  Serial.println(digitalRead(2));
  delay(500);
}
```

## micro:bit 專案說明

使用「micro:bit搭配科易KEYES micro:bit 感測器擴充板 V2」連接「滾珠開關模組」，每 1 秒鐘讀取滾珠開關模組開啟或關閉 。

此**滾珠開關模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內。

### micro:bit電路圖

* [BBC micro:bit 微控制板  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [科易KEYES micro:bit 感測器擴充板 V2  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* 滾珠開關模組

**滾珠開關模組**是**數位訊號**輸入，可以接「3、4、5、6、7、9、10、11」的 micro:bit訊號端上，建議使用的是5跟11腳位，因為3、4、6、7、9、10腳位有使用到LED控制腳位所以當顯示LED時會不穩定。本範例連接到「P5」。

![](<../../.gitbook/assets/01 (3) (2).JPG>)

### Microsoft MakeCode積木畫布

每1秒鐘讀取滾珠開關模組狀態，並可透過micro:bit顯示指示燈看到滾珠開關模組狀態（搖動滾珠開關模組時，可以感覺到有滾珠在移動）。

![](<../../.gitbook/assets/02 (4) (2).JPG>)

### JavaScript 程式

```javascript
basic.forever(function () {
    basic.showNumber(pins.digitalReadPin(DigitalPin.P5))
    basic.pause(1000)
})
```







## Raspberry Pi Pico 專案說明

使用「Raspberry Pi Pico」連接「滾珠開關模組」, 每0.5秒讀取**滾珠開關模組**開啟或關閉。此滾珠開關模組包含於「[洞洞么教學材料包](https://robotkingdom.com.tw/product/rk-education-kit-001/)」內。



### 滾珠開關模組電路圖

* [Raspberry Pi Pico](https://robotkingdom.com.tw/product/raspberry-pi-pico/)[  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [Raspberry Pi Pico擴充板](https://robotkingdom.com.tw/product/pipico-education-kit-001/)[  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* 滾珠開關模組

> **滾珠開關模組**是**數位訊號**輸出， 可以接「D0 \~ D28」的Raspberry Pi Pico擴充板訊號端上。 本範例連接到「D7」。

<figure><img src="../../.gitbook/assets/image (1) (4).png" alt=""><figcaption></figcaption></figure>



### Arduino IDE程式

> 每0.5秒鐘讀取滾珠開關模組狀態，並顯示在序列埠監控視窗&#x20;
>
> (搖動滾珠開關模組時，可以感覺到有滾珠在移動)。



Arduino程式(advanceball\_switch.ino)如下:

```arduino
void setup()
{
  pinMode(7, INPUT);
  Serial.begin(9600);

}

void loop()
{
  Serial.println(digitalRead(7));
  delay(500);
}
```



### 程式執行結果

<figure><img src="../../.gitbook/assets/image (21).png" alt=""><figcaption></figcaption></figure>
