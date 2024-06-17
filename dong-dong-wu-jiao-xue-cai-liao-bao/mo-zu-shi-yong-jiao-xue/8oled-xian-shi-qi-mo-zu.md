# OLED 顯示器模組

## OLED 顯示器模組 <a href="#hlk168941899" id="hlk168941899"></a>

專案說明

使用「Raspberry Pi Pico W」連接「OLED 顯示器模組」, 可顯示訊息或感測器的數值。此 OLED 顯示器模組包含於「洞洞五教學材料包」內。

### OLED 顯示器模組電路圖

·        Raspberry Pi Pico W

·        Raspberry Pi Pico W 擴充板

·        OLED 顯示器模組

| OLED 顯示器模組是I2C訊號輸入。本範例連接到模組SDA腳位需接至Raspberry Pi Pico擴充板D4腳位，模組SCL腳位需接至Raspberry Pi Pico擴充板D5腳位。  |
| ------------------------------------------------------------------------------------------------ |

<figure><img src="../../.gitbook/assets/image (3).png" alt=""><figcaption></figcaption></figure>

### &#x20;BlocklyDuino 程式 (OLED)

<figure><img src="../../.gitbook/assets/image (4).png" alt=""><figcaption></figcaption></figure>

### &#x20; Arduino 程式(OLED.ino)如下

```
#include "Wire.h"
#include "U8g2lib.h"
 
U8G2_SSD1306_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
 
void setup()
{
  u8g2.begin();
  u8g2.setFont(u8g2_font_6x10_tf);
  u8g2.setFontRefHeightExtendedText();
  u8g2.setDrawColor(1);
  u8g2.setFontPosTop();
  u8g2.setFontDirection(0);
 
  u8g2.clearDisplay();
}
 
void loop()
{
  u8g2.firstPage();
  do {
    u8g2.setCursor(0, 0);
    u8g2.print(String("HELLO").c_str());
    u8g2.drawLine(0, 11, 30, 11);
 
    u8g2.sendBuffer();
  } while (u8g2.nextPage());
}
```

### 程式執行結果:

程式執行結果，會在OLED螢幕中顯示「HELLO」，下面也會顯示底線。

<figure><img src="../../.gitbook/assets/image (30).png" alt=""><figcaption></figcaption></figure>
