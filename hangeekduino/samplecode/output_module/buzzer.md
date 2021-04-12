# 蜂鳴器模組



![](../../../.gitbook/assets/2%20%2820%29.png)

## **指令**

![](../../../.gitbook/assets/lesson_4_buzzer2%20%281%29.png)

## **對應的**Arduino 語法

```text
tone(5, 1000);
```

使蜂鳴器發出設定好的頻率的聲音，透過迴圈使蜂鳴器發出電話鈴響的聲音。

![](../../../.gitbook/assets/image%20%283%29.png)

## Arduino 程式

```text
int  i;

void setup()
{
  pinMode(5, OUTPUT);

}


void loop()
{
  for (i = 0; i <= 10; i++) {
    tone(5, 2000);
    delay(50);
    tone(5, 1000);
    delay(50);
  }
  noTone(5);
  delay(1000);
}
```

## 影片教學:

{% embed url="https://www.youtube.com/watch?v=KB\_mvKntR4I" %}



