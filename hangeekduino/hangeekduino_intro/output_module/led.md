# LED模組

![](../../../.gitbook/assets/01led.jpg)

## **指令**

![](../../../.gitbook/assets/lesson_0_helloworld2.png)

## **對應的**Arduino 語法

```text
  digitalWrite(4, 1);
```

### 範例 BlocklyDuino 積木畫布

將4號腳位的電位拉低、拉高，每一秒鐘會切換LED的亮暗一次。

![](../../../.gitbook/assets/lesson_1_led.png)

## Arduino 程式

```text
void setup()
{
  pinMode(4, OUTPUT);

}


void loop()
{
  digitalWrite(4, 1);
  delay(1000);
  digitalWrite(4, 0);
  delay(1000);
}
```

