# 光感測器模組

![](../../../.gitbook/assets/Light.png)

## **指令**

![](../../../.gitbook/assets/Lesson\_5\_LightSwitch2.png)

## **對應的**Arduino 語法

```
  analogRead(6);
```

### 範例 BlocklyDuino 積木畫布

根據光感測器模組的數值來決定LED模組的亮或暗，數值越大LED會暗，數值越小LED會亮。並在序列埠印出光感測器的數值。

![](../../../.gitbook/assets/Lesson\_5\_LightSwitch.png)

## Arduino 程式

```
int Value;

void setup()
{
  pinMode(4, OUTPUT);

  Serial.begin(9600);

}


void loop()
{
  Value = (map(analogRead(6),0,1023,0,255));
  Serial.println((analogRead(6)));
  analogWrite(4, (255 - Value));
}
```

## 影片教學:

{% embed url="https://youtu.be/NRi1vZWL3nY" %}
