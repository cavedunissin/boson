# 心律感測器

## **科易KEYES 心律感測器**

![](../.gitbook/assets/0%20%2840%29.png)

## **專案說明**

使用「科易KEYES Arduino UNO R3 開發板」連接「科易KEYES心律感測器」,讀取心跳速率。

此科易KEYES心律感測器包含於「[科易KEYES心律感測器](https://robotkingdom.com.tw/product/keyes-%e5%bf%83%e5%be%8b%e6%84%9f%e6%b8%ac%e5%99%a8/)」內。

## **KEYES Arduino UNO R3電路圖**

· [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)

· 科易KEYES心律感測器 模組

![](../.gitbook/assets/1%20%2830%29.png)

{% hint style="info" %}
科易KEYES心律感測器是數位訊號輸入，可以接「D0 ~ D13」的KEYES Arduino UNO R3訊號端上。本範例連接到「D2」。

科易KEYES心律感測器上S部分的腳位接到Arduino端的D2、VCC腳位接V端、GND腳位接到GND。
{% endhint %}

## **Arduino 程式**

將連接線插入科易KEYES心律感測器，連接線另一頭R端貼右心房位置，L端貼左心房位置，COM貼左右心房中間；打開arduino序列埠監控視窗，序列埠鮑率每秒9600；測試板上D2燈隨測試人心率閃爍，同時打開序列埠視窗看有無偵測到數值，左側為偵測之原始數值、右側為心律值。

產生出的 Arduino 程式如下

```text
long time = 0;
long old_time = 0;
long difference = 0;
int heart_reat = 0;
void setup()
{
 Serial.begin(9600);
 pinMode(2, INPUT);
 attachInterrupt(0, falling, FALLING);
}
// --------------------------------------------
void loop()
{
}
// ---------------------------------------------
void falling()
{
 time = millis();
 difference = time - old_time;
 old_time = millis();
 heart_reat = 60000 / difference;
 Serial.print(difference);
 Serial.print(" ");
 if(heart_reat < 200)
 Serial.println(heart_reat);
 else
 Serial.println("Over Max");
}
```

