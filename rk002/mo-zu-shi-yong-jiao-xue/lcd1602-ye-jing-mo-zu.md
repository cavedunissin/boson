# LCD1602液晶模組

![](../../.gitbook/assets/01%20%289%29.png)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「LCD1602液晶模組」, 在LCD1602液晶模組上顯示「Hello World」。

此**LCD1602液晶模組**包含於「[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)」內。

## KEYES Arduino UNO R3電路圖

* [KEYES Arduino UNO R3   ](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* LCD1602液晶模組

**LCD1602液晶模組**是**I2C訊號**輸出， 可以接「I2C」的KEYES Arduino UNO R3訊號端上。本範例連接到「I2C」，「**SDA**」**←→**「**SDA**」，「**SCL**」**←→**「**SCL**」

{% hint style="info" %}
I2C 液晶顯示模組有PCF8574及PCF8574A這二種晶片，而其中PCF8574晶片初始化I2C位址為0x27；PCF8574A晶片初始化I2C位址為0x3F
{% endhint %}

![](../../.gitbook/assets/02%20%2810%29.png)

## Arduino 程式

由於LCD1602液晶模組是函式庫型模組，所以需要先在Arduino上下載函式庫，下載方法如下。

在Arduino上選擇工具，選擇管理程式庫，在管理程式庫搜尋LiquidCrystal I2C選擇LiquidCrystal I2C by Frank de Brabander版本1.1.2並安裝。

![](../../.gitbook/assets/03%20%285%29.png)

![](../../.gitbook/assets/04%20%281%29.png)

在I2C 1602液晶顯示模組上顯示「Hello World」 。

產生出的 Arduino 程式如下

```c
#include <Wire.h> 
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27,20,4);  // set the LCD address to 0x27 for a 16 chars and 2 line display

void setup()
{
  lcd.init();                      // initialize the lcd 
  lcd.init();
  // Print a message to the LCD.
  lcd.backlight();
  lcd.setCursor(0,0);
  lcd.print("Hello World");
  lcd.setCursor(0,1);
  lcd.print("Hello World2");
}


void loop()
{
}

```



