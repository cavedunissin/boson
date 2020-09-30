# 氣壓感測模組



## **指令**

![](../../../.gitbook/assets/lesson_9_airpressuresensor2.png)

## **對應的**Arduino 語法

```text
    bmp280.getPressure();
    bmp280.calcAltitude(bmp280.getPressure());
```

### 範例 BlocklyDuino 積木畫布

在序列埠印出氣壓、高度的數值。

![](../../../.gitbook/assets/lesson_9_airpressuresensor.png)

![&#x5E8F;&#x5217;&#x57E0;&#x5370;&#x51FA;&#x7684;&#x6C23;&#x58D3;&#x3001;&#x9AD8;&#x5EA6;&#x7684;&#x6578;&#x503C;](../../../.gitbook/assets/lesson_9_airpressuresensor3.png)

## Arduino 程式

```text
#include "Seeed_BMP280.h"
#include <Wire.h>;
BMP280 bmp280;

void setup()
{
  bmp280.init();

  Serial.begin(9600);

}


void loop()
{
  Serial.print("Pressure: ");
  Serial.print((bmp280.getPressure()));
  Serial.println("Pa");
  Serial.print("Altitude: ");
  Serial.print((bmp280.calcAltitude(bmp280.getPressure())));
  Serial.println("m");
  Serial.println("");
  delay(1000);
}
```

