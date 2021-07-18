#include "DHT.h"
#define DHTPIN 3
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);

void setup()
{
  Serial.begin(9600);
  dht.begin(); 
}

void loop()
{
  delay(100);
  int h = dht.readHumidity();   //取得濕度
  int t = dht.readTemperature();  //取得溫度C
  Serial.write(h);
  Serial.write(t);  
//  Serial.print(t);
//  Serial.println(h);
} 
