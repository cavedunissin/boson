# 旋轉電位計模組

## 旋轉電位計模組 <a href="#hlk124882073" id="hlk124882073"></a>

**專案說明**

使用「Raspberry Pi Pico W」連接「旋轉電位計模組」, 讀取旋轉電位計模組的數值變化。此 **旋轉電位計模組**包含於「洞洞五教學材料包」內。

### **旋轉電位計模組電路圖**

* Raspberry Pi Pico W
* Raspberry Pi Pico W 擴充板
* 旋轉電位計模組

**旋轉電位計模組**是**類比訊號**輸入， 可以接「A0\~ A2」的Raspberry Pi Pico擴充板訊號端上。 本範例連接到「A0」

![](<../../.gitbook/assets/0 (18).png>)

**BlocklyDuino 程式 (Potentiometer)**

每0.5秒鐘會讀取旋轉電位計模組的電位一次， 並顯示在序列埠監控視窗上。

![](<../../.gitbook/assets/1 (20).png>)

**Arduino 程式(Potentiometer.ino)如下**

```
void setup()
{
Serial.begin(9600);
}
void loop()
{
Serial.println(analogRead(A0));
delay(500);
}
```

**程式執行結果:**

![一張含有 螢幕擷取畫面, 文字, 軟體, 陳列 的圖片

自動產生的描述](<../../.gitbook/assets/2 (6).png>)
