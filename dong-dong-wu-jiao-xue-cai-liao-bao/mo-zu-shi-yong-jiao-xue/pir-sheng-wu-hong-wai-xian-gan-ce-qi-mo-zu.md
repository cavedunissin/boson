# PIR生物紅外線感測器模組

## PIR生物紅外線感測器模組 <a href="#toc124882502" id="toc124882502"></a>

**專案說明**

使用「Raspberry Pi Pico W」連接「PIR生物紅外線感測器模組」, 偵測是否有人接近 , 進而讀取PIR生物紅外線感測器模組的數值變化。此 **PIR生物紅外線感測器模組**包含於「洞洞五教學材料包」內。

**感測器調整說明**

經測試，左邊旋鈕為調整靈敏度/距離，右邊旋鈕為調整偵測有人經過後，輸出高電位持續的時間。詳細說明如下圖所示。

![](<../../.gitbook/assets/0 (22).png>)

### **PIR生物紅外線感測器模組電路圖**

* Raspberry Pi Pico W
* Raspberry Pi Pico W 擴充板
* PIR生物紅外線感測器模組

**PIR生物紅外線感測器模組**是**數位訊號**輸入， 可以接「D0\~ D28」的Raspberry Pi Pico W 擴充板訊號端上。 本範例連接到「D7」

![](<../../.gitbook/assets/1 (24).png>)

### **BlocklyDuino 程式 (PIR)**

![](<../../.gitbook/assets/2 (8).png>)

### **Arduino 程式(PIR.ino)如下**

```
void setup()
{
pinMode(7, INPUT);
Serial.begin(9600);
}
void loop()
{
int moving = digitalRead(7);
if (moving == 1) {
Serial.println("有人經過!");
} else {
Serial.println("目前無人!");
}
Serial.println((String("數值 :")+String(moving)));
delay(1000);
}
```

**程式執行結果:**

當有人接近時，會顯示**有人經過! 數值 :1** ，反之，沒有人時，會顯示**目前無人! 數值 :0**。

![](<../../.gitbook/assets/3 (3).png>)
