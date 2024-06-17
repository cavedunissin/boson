# 有源蜂鳴器模組

## 有源蜂鳴器模組 <a href="#hlk168942250" id="hlk168942250"></a>

**專案說明**

使用「Raspberry Pi Pico W」連接「有源蜂鳴器模組」, 觸發有源蜂鳴器模組發出聲音。此 **有源蜂鳴器模組**包含於「洞洞五教學材料包」內。

### **有源蜂鳴器模組電路圖**

* Raspberry Pi Pico W
* Raspberry Pi Pico W 擴充板
* 有源蜂鳴器模組

**有源蜂鳴器模組**是**數位訊號**輸入， 可以接「D0\~ D28」的Raspberry Pi Pico擴充板訊號端上。 本範例連接到「D7」。

![](<../../.gitbook/assets/0 (21).png>)

### **BlocklyDuino 程式(Buzzer)**

蜂鳴器會被開啟一秒後，關閉一秒，如此周而復始，直到 Raspberry Pi Pico W 斷電為止。

![](<../../.gitbook/assets/1 (23).png>)

### **Arduino 程式(Buzzer.ino)如下**

```
void setup()
{
pinMode(7, OUTPUT);
}
void loop()
{
digitalWrite(7, HIGH);
delay(1000);
digitalWrite(7, LOW);
delay(1000);
}
```
