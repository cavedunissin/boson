# 聲音感測模組



## **指令**

![](../../../.gitbook/assets/lesson_6_soundcontrolled2.png)

## **對應的**Arduino 語法

```text
  analogRead(2);
```

### 範例 BlocklyDuino 積木畫布

根據聲音測器模組的數值來決定LED模組的亮或暗，聲音感測器數值越大於600LED會亮，否則LED會暗。並在序列埠印光感測器的數值。

![](../../../.gitbook/assets/lesson_6_soundcontrolled.png)

## Arduino 程式

```text
void setup()
{
  pinMode(4, OUTPUT);

  Serial.begin(9600);

}


void loop()
{
  Serial.println((analogRead(2)));
  if ((analogRead(2)) > 600) {
    digitalWrite(4, 1);
    delay(100);

  } else {
    digitalWrite(4, 0);

  }
```

