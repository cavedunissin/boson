# 蜂鳴器模組



![](<../../../.gitbook/assets/2 (4).png>)

## **指令**

![](<../../../.gitbook/assets/Lesson\_4\_Buzzer2 (1).png>)

## **對應的**Arduino 語法

```
tone(5, 1000);
```

使蜂鳴器發出設定好的頻率的聲音，透過迴圈使蜂鳴器發出電話鈴響的聲音。

![](<../../../.gitbook/assets/image (3).png>)

## Arduino 程式

```
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

{% embed url="https://www.youtube.com/watch?v=KB_mvKntR4I" %}

