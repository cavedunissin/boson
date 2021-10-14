# 溫溼度感測模組

![](../../../.gitbook/assets/Temp.jpg)

## **指令**

![](../../../.gitbook/assets/Lesson\_8\_TemperatureHumiditySensor2.png)

## **對應的**Arduino 語法

```
    dht11_p3.readTemperature();
    dht11_p3.readHumidity();
```

### 範例 BlocklyDuino 積木畫布

在OLED顯示模組上顯示溫溼度感測模組的溫度和濕度。

![](../../../.gitbook/assets/Lesson\_8\_TemperatureHumiditySensor.png)

## Arduino 程式

```
#include "DHT.h"
DHT dht11_p3(3, DHT11);

#include <Arduino.h>
#include <U8x8lib.h>
U8X8_SSD1306_128X64_ALT0_HW_I2C u8x8(/* reset=*/ U8X8_PIN_NONE);

float temp;

float humi;

void setup()
{
  u8x8.begin();
  u8x8.setFlipMode(1);u8x8.setFont(u8x8_font_chroma48medium8_r);

}


void loop()
{
  temp = (dht11_p3.readTemperature());
  humi = (dht11_p3.readHumidity());
  u8x8.setCursor(0, 33);
  u8x8.print(String() + "Temp:" + temp + "C");
  u8x8.setCursor(0, 50);
  u8x8.print(String() + "Humi:" + humi + "%");
  delay(200);
}
```

## 影片教學:

{% embed url="https://www.youtube.com/watch?v=bAbHAfYffQ0" %}

