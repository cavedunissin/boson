# 按鈕模組





## **指令**

![](../../../.gitbook/assets/lesson_2_button2.png)

## **對應的**Arduino 語法

```text
digitalRead(6);
```

### 範例 BlocklyDuino 積木畫布

當按下按鈕時，LED就會亮，沒按下按鈕時LED則不會亮。

![](../../../.gitbook/assets/lesson_2_button.png)

## Arduino 程式

```text
int Value;

void setup()
{
  pinMode(5, OUTPUT);

}


void loop()
{
  Value = (map(analogRead(0),0,1023,0,255));
  analogWrite(5, Value);
}
```

