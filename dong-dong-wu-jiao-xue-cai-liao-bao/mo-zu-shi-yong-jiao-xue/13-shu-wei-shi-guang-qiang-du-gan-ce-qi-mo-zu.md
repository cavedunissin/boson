# 【13】數位式光強度感測器模組

### 數位式光強度感測器模組 <a href="#toc124882502" id="toc124882502"></a>

**專案說明**

使用「Raspberry Pi Pico W」連接「數位式光強度感測器模組」, 讀取數位式光強度感測器模組的數值變化。此 **數位式光強度感測器模組**包含於「洞洞五教學材料包」內。

**數位式光強度感測器模組電路圖**

* Raspberry Pi Pico W
* Raspberry Pi Pico W 擴充板
* 數位式光強度感測器模組

**數位式光強度感測器模組**是**I2C訊號**輸入。本範例連接到模組SDA腳位需接至Raspberry Pi Pico W擴充板D4腳位，模組SCL腳位需接至Raspberry Pi Pico W擴充板D5腳位。

![一張含有 電子產品, 電路, 電子元件, 電路元件 的圖片

自動產生的描述](<../../.gitbook/assets/0 (24).png>)

**BlocklyDuino 程式 (Light\_intensity)**

積木路徑在 **Webbit** -> **GY-30 光照度**

![一張含有 文字, 螢幕擷取畫面, 字型, 數字 的圖片

自動產生的描述](<../../.gitbook/assets/1 (26).png>)

**Arduino 程式(Light\_intensity.ino)如下**

\#include \<Wire.h>

\#include \<BH1750.h>

BH1750 lightMeter;

void setup()

{

Wire.begin();

lightMeter.begin();

Serial.begin(9600);

}

void loop()

{

Serial.println((lightMeter.readLightLevel()));

delay(500);

}

**程式執行結果:**

數值可從 0 到 65535 lux 的光照度。這個範圍內，0 表示完全黑暗，而 65535 lux 則表示極度強烈的光照。但在一般的環境下，數值大約是在 0 到 300 lux 左右。

![一張含有 文字, 螢幕擷取畫面, 陳列, 軟體 的圖片

自動產生的描述](<../../.gitbook/assets/2 (10).png>)
