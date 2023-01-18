# DHT 22溫溼度模組(For Pico)

## Raspberry Pi Pico 專案說明

使用「Raspberry Pi Pico」連接「DHT 22溫溼度模組」, 每3秒讀取DHT22溫溼度感測器模組溫度和濕度數值。



### DHT 22溫溼度模組電路圖

* [Raspberry Pi Pico](https://robotkingdom.com.tw/product/raspberry-pi-pico/)[  ](https://www.robotkingdom.com.tw/product/bbc-microbit-1/)
* [Raspberry Pi Pico擴充板](https://robotkingdom.com.tw/product/pipico-education-kit-001/)[  ](https://www.robotkingdom.com.tw/product/keyes-microbit-sensor-breakout-v2/)
* DHT 22溫溼度模組

> **DHT 22溫溼度模組**是**數位訊號**輸出， 可以接「D0 \~ D28」的Raspberry Pi Pico擴充板訊號端上。 本範例連接到「D7」。



<figure><img src="../../.gitbook/assets/image.png" alt=""><figcaption></figcaption></figure>



### Arduino IDE程式

> 每3秒鐘讀取DHT溫溼度感測器的溫度和濕度一次，並顯示在序列埠監控視窗上。



Arduino 程式(DHT22.ino)如下:

```arduino
#include "EspDHT.h"

EspDHT dht;

void setup()
{
  Serial.begin(9600);
  Serial.println();
  dht.setup(7, EspDHT::DHT22); 
}

void loop()
{
  delay(3000);
  dht.readSensor();
  float humidity = dht.getHumidity();
  float temperature = dht.getTemperature();
  if (isnan(temperature) || isnan(humidity)) {
    Serial.println("Failed to read from DHT sensor!");
    return;
  }
  Serial.print("Temperature : ");
  Serial.print(temperature);
  Serial.print(" °C Humidity : ");
  Serial.print(humidity);
  Serial.println(" %");
}
```



### 程式執行結果

<figure><img src="../../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>
