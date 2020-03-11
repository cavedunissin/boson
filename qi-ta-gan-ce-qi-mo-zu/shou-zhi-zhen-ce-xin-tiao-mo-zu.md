# 手指偵測心跳模組

## **科易KEYES 手指偵測心跳模組**

![](../.gitbook/assets/0%20%2816%29.png)

## **專案說明**

使用「科易KEYES Arduino UNO R3 開發板」連接「手指偵測心跳模組」,讀取手指偵測心跳速率。

此科易手指偵測心跳模組包含於「[科易KEYES 手指偵測心跳模組](https://robotkingdom.com.tw/product/keyes-%e6%89%8b%e6%8c%87%e5%81%b5%e6%b8%ac%e5%bf%83%e8%b7%b3%e6%a8%a1%e7%b5%84/)」內。

## **KEYES Arduino UNO R3電路圖**

· [KEYES Arduino UNO R3](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)

· 科易KEYES 手指偵測心跳模組

手指偵測心跳模組是類比訊號輸入，可以接「A0 ~ A5」的KEYES Arduino UNO R3訊號端上。 本範例連接到「A0」。

手指偵測心跳模組上S部分的腳位接到Arduino端的S、中間再接V端、-腳位接到GND。

 手指偵測心跳模組由一個紅外線LED和光敏電晶體所構成，原理是透過手指放在紅外線發射器和光敏電晶體之間後，隨著心臟跳動，光敏電晶體的電阻值也在不斷變化，通過這種變化來檢測心跳。為防止外界光線對資料造成影響，最好將 手指偵測心跳模放在一個封閉的盒子裡或是用套子包住感測器，在進行心跳檢測。

![](../.gitbook/assets/1%20%2829%29.png)

## **Arduino 程式**

如果手指放紅外線LED和光敏電晶體之間時在兩秒間的感測數值有不同的跳動的話，會顯示你目前手指脈搏偵測到的心跳數，沒有數值跳動的話則不會顯示心跳數。

![](../.gitbook/assets/image%20%282%29.png)

產生出的 Arduino 程式如下

```text
#define samp_siz 4
#define rise_threshold 4

// Pulse Monitor Test Script
int sensorPin = A0;

void setup() {
    Serial.begin(9600);
}

void loop ()
{
    float reads[samp_siz], sum;
    long int now, ptr;
    float last, reader, start;
    float first, second, third, before, print_value;
    bool rising;
    int rise_count;
    int n;
    long int last_beat;

    for (int i = 0; i < samp_siz; i++)
      reads[i] = 0;
    sum = 0;
    ptr = 0;

    while(1)
    {
      // calculate an average of the sensor
      // during a 20 ms period (this will eliminate
      // the 50 Hz noise caused by electric light
      n = 0;
      start = millis();
      reader = 0.;
      do
      {
        reader += analogRead (sensorPin);
        n++;
        now = millis();
      }
      while (now < start + 20);  
      reader /= n;  // we got an average
      
      // Add the newest measurement to an array
      // and subtract the oldest measurement from the array
      // to maintain a sum of last measurements
      sum -= reads[ptr];
      sum += reader;
      reads[ptr] = reader;
      last = sum / samp_siz;
      // now last holds the average of the values in the array

      // check for a rising curve (= a heart beat)
      if (last > before)
      {
        rise_count++;
        if (!rising && rise_count > rise_threshold)
        {
          // Ok, we have detected a rising curve, which implies a heartbeat.
          // Record the time since last beat, keep track of the two previous
          // times (first, second, third) to get a weighed average.
          // The rising flag prevents us from detecting the same rise more than once.
          rising = true;
          first = millis() - last_beat;
          last_beat = millis();

          // Calculate the weighed average of heartbeat rate
          // according to the three last beats
          print_value = 60000. / (0.4 * first + 0.3 * second + 0.3 * third);

          Serial.print("心跳數:");
          Serial.print(print_value);
          Serial.print("\n");
          
          third = second;
          second = first;
          
        }
      }
      else
      {
        // Ok, the curve is falling
        rising = false;
        rise_count = 0;
      }
      before = last;
      
      
      ptr++;
      ptr %= samp_siz;

    }
}

```

