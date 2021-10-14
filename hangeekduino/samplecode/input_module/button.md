# 按鈕模組

![](../../../.gitbook/assets/Button.jpg)

## **指令**

![](../../../.gitbook/assets/Lesson\_2\_Button2.png)

## **對應的**Arduino 語法

```
digitalRead(6);
```

### 範例 BlocklyDuino 積木畫布

當按下按鈕時，LED就會亮，沒按下按鈕時LED則不會亮。

![](../../../.gitbook/assets/Lesson\_2\_Button.png)

## Arduino 程式

```
void setup()
{
  pinMode(6, INPUT);

}


void loop()
{
  if (0 == 1) {
    digitalWrite(4, 1);

  } else {
    digitalWrite(4, 0);

  }
digitalRead(6);

}
```

## 影片教學:

{% embed url="https://www.youtube.com/watch?v=wfvV9fWlIrM" %}

