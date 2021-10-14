# 無源蜂鳴器

![](<../../.gitbook/assets/01 (4).png>)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「無源蜂鳴器」, 每一秒控制無源蜂鳴器模組發出各種音階的聲音。

此**無源蜂鳴器**包含於「[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)」內。

## 電路圖

* [KEYES Arduino UNO R3 ](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* 無源蜂鳴器

**無源蜂鳴器**是**脈衝寬度調變(Pulse Width Modulation)訊號**輸出，可以接「D3、D5、D6、D9、D10」的 KEYES Arduino UNO R3訊號端上。 本範例連接到「**D3**」

{% hint style="info" %}
蜂鳴器分為「有源蜂鳴器」及「無源蜂鳴器」，「有源蜂鳴器」僅能發出單一頻率的聲音；「無源蜂鳴器」可依據不同的頻率發出不同聲調的聲音。
{% endhint %}

![](<../../.gitbook/assets/02 (7) (1).png>)

## Arduino 程式

每一秒控制無源蜂鳴器發出兩隻老虎音調的聲音。

tone()函數說明：

tone(pin, frequency, duration)

pin=訊號接口，frequency=頻率，duration=間距

範例使用到的音階有Do(523Hz), Re (587Hz), Mi(659Hz), Fa(698Hz), So(784Hz), La(880Hz), Si(988Hz) 到高音 Do (1047Hz)

產生出的 Arduino 程式如下

```c
//兩隻老虎
int buzzer=3;                   //設定蜂鳴器接腳為第3孔
int duration = 500;
int aSo = 392;
int bDo = 523;
int bRe = 587;
int bMi = 659;
int bFa = 698;
int bSo = 784;
int bLa = 880;
int bSi = 988;
int bDDo = 1047;

void setup()
{
pinMode(buzzer,OUTPUT);          //設定蜂鳴器為輸出
}
void loop()
{
  tone(3,bDo,duration);
  delay(600);
  tone(3,bRe,duration);
  delay(600);
  tone(3,bMi,duration);
  delay(600);
  tone(3,bDo,duration);
  delay(800);
  
  tone(3,bDo,duration);
  delay(600);
  tone(3,bRe,duration);
  delay(600);
  tone(3,bMi,duration);
  delay(600);
  tone(3,bDo,duration);
  delay(800);
  
  tone(3,bMi,duration);
  delay(600);
  tone(3,bFa,duration);
  delay(600);
  tone(3,bSo,duration);
  delay(800);
  
  tone(3,bMi,duration);
  delay(600);
  tone(3,bFa,duration);
  delay(600);
  tone(3,bSo,duration);
  delay(800);

  tone(3,bSo,duration);
  delay(600);
  tone(3,bLa,duration);
  delay(600);
  tone(3,bSo,duration);
  delay(600);
  tone(3,bFa,duration);
  delay(600);
  tone(3,bMi,duration);
  delay(700);
  tone(3,bDo,duration);
  delay(800);

  tone(3,bSo,duration);
  delay(600);
  tone(3,bLa,duration);
  delay(600);
  tone(3,bSo,duration);
  delay(600);
  tone(3,bFa,duration);
  delay(600);
  tone(3,bMi,duration);
  delay(700);
  tone(3,bDo,duration);
  delay(800);

  tone(3,bDo,duration);
  delay(700);
  tone(3,aSo,duration);
  delay(700);
  tone(3,bDo,duration);
  delay(800);

  tone(3,bDo,duration);
  delay(700);
  tone(3,aSo,duration);
  delay(700);
  tone(3,bDo,duration);
  delay(800);
  delay(2000);
}


```

