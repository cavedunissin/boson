# 【8】OLED 顯示器模組

\#include "Wire.h"

\#include "U8g2lib.h"

U8G2\_SSD1306\_128X64\_NONAME\_F\_HW\_I2C u8g2(U8G2\_R0, /\* reset=\*/ U8X8\_PIN\_NONE);

void setup()

{

u8g2.begin();

u8g2.setFont(u8g2\_font\_6x10\_tf);

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

u8g2.print(String("HELLO").c\_str());

u8g2.drawLine(0, 11, 30, 11);

u8g2.sendBuffer();

} while (u8g2.nextPage());

}
