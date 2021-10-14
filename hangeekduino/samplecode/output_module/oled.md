# OLED顯示模組

![](../../../.gitbook/assets/OLED.jpg)

## **指令**

![](../../../.gitbook/assets/Lesson\_7\_OLED2.png)

## **對應的**Arduino 語法

```
  u8x8.print("hello Arduino!");
```

### 範例 BlocklyDuino 積木畫布

在OLED螢幕畫面上0, 0的位置上顯示hello Arduino!。

![](../../../.gitbook/assets/Lesson\_7\_OLED.png)

## Arduino 程式

```
#include <Arduino.h>
#include <U8x8lib.h>
U8X8_SSD1306_128X64_ALT0_HW_I2C u8x8(/* reset=*/ U8X8_PIN_NONE);

void setup()
{
  u8x8.begin();
  u8x8.setFlipMode(1);u8x8.setFont(u8x8_font_chroma48medium8_r);

}


void loop()
{
  u8x8.setCursor(0, 0);
  u8x8.print("hello Arduino!");
}
```

## 影片教學: <a href="ying-pian-jiao-xue" id="ying-pian-jiao-xue"></a>

{% embed url="https://youtu.be/B2dNXZVC5II" %}
