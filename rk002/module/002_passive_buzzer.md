# 無源蜂鳴器

![](../../.gitbook/assets/01%20%286%29.png)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「無源蜂鳴器」, 每一秒控制無源蜂鳴器模組發出各種音階的聲音。

此**無源蜂鳴器**包含於「[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)」內。

## 電路圖

* [KEYES Arduino UNO R3 ](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* 無源蜂鳴器

**無源蜂鳴器**是**脈衝寬度調變**\(Pulse Width Modulation\)**訊號**輸出，可以接「D0 ~ D13」的 KEYES Arduino UNO R3訊號端上。 本範例連接到「**D3**」

{% hint style="info" %}
蜂鳴器分為「有源蜂鳴器」及「無源蜂鳴器」，「有源蜂鳴器」僅能發出單一頻率的聲音；「無源蜂鳴器」可依據不同的頻率發出不同聲調的聲音。
{% endhint %}

![](../../.gitbook/assets/02%20%284%29.png)

## Arduino 程式

每一秒控制無源蜂鳴器發出各種不同音階的聲音。

產生出的 Arduino 程式如下

```c
void setup()
{

  pinMode(3, OUTPUT);
}

void setup()
{

}


void loop()
{
  tone(3, 262);
  delay(1000);
  tone(3, 294);
  delay(1000);
  tone(3, 330);
  delay(1000);
  tone(3, 349);
  delay(1000);
  tone(3, 392);
  delay(1000);
  tone(3, 440);
  delay(1000);
  tone(3, 494);
  delay(1000);
  tone(3, 523);
}

```



