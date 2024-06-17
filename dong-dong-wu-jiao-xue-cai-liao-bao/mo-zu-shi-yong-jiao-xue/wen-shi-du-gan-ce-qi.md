# 溫溼度感測器

## DHT 22溫溼度模組 <a href="#hlk124525726" id="hlk124525726"></a>

專案說明

使用「Raspberry Pi Pico W」連接「DHT 22溫溼度模組」, 每3秒讀取DHT22溫溼度感測器模組溫度和濕度數值。

&#x20;

### DHT 22溫溼度模組電路圖

·        Raspberry Pi Pico W

·        Raspberry Pi Pico W 擴充板

·        DHT 22溫溼度模組



| DHT 22溫溼度模組是數位訊號輸出，  可以接「D0 \~ D28」的Raspberry Pi Pico擴充板訊號端上。  本範例連接到「D7」 |
| ------------------------------------------------------------------------- |

&#x20;

<figure><img src="../../.gitbook/assets/image.png" alt=""><figcaption></figcaption></figure>

&#x20;

\


### BlocklyDuino 程式 (DHT22)

每3秒鐘讀取DHT溫溼度感測器的溫度和濕度一次，並顯示在序列埠監控視窗上。&#x20;

<figure><img src="../../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>

&#x20;

### &#x20;Arduino 程式(DHT22.ino)如下



```
#include <DHT_mini.h>

DHT dht22_p7(7, DHT22);

void setup()
{
  dht22_p7.begin();
  Serial.begin(9600);
}

void loop()
{
  Serial.println((String("溫度 : ")+String(dht22_p7.readTemperature())+String("  ")+String("濕度 : ")+String(dht22_p7.readHumidity())));
  delay(3000);
}
```

### &#x20;程式執行結果:&#x20;

<figure><img src="../../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>
