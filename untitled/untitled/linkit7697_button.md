# 按鈕模組

![](../../.gitbook/assets/linkit7697_button_00.png)

## 專案說明

使用「LinkIt 7697 NANO Breakout」連接「按鈕模組」， 讀取按鈕模組按下或放開的狀態。  
此**按鈕模組**包含於「[**洞洞么教學材料包**](https://www.robotkingdom.com.tw/product/rk-education-kit-001/) 」內。

## LinkIt 7697 電路圖

**•**	[**LinkIt 7697**  
](https://www.robotkingdom.com.tw/product/linkit-7697/)**•	LinkIt 7697 NANO Breakout  
•	按鈕模組**

**按鈕模組**是**數位訊號**輸入， 可以接「D0 ~ D13」的 LinkIt 7697 NANO Breakout訊號端上。 本範例連接到「**D5**」。

![](../../.gitbook/assets/linkit7697_button_01.png)

## BlocklyDuino 積木畫布

每0.2秒鐘會讀取按鈕模組狀態一次， 並可透過序列埠監控視窗看到按鈕模組的狀態 。

![](../../.gitbook/assets/linkit7697_button_02.png)

![](../../.gitbook/assets/linkit7697_button_03.png)

## Arduino 程式

```text
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

