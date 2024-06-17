# 【3】溫溼度感測器

\#include \<DHT\_mini.h>

DHT dht22\_p7(7, DHT22);

void setup()

{

dht22\_p7.begin();

Serial.begin(9600);

}

void loop()

{

Serial.println((String("溫度 : ")+String(dht22\_p7.readTemperature())+String(" ")+String("濕度 : ")+String(dht22\_p7.readHumidity())));

delay(3000);

}
