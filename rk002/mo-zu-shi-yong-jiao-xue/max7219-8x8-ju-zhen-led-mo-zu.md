# Max7219 8X8 矩陣LED模組

![](../../.gitbook/assets/01%20%281%29.png)

## 專案說明

使用「科易KEYES Arduino UNO R3 開發板」連接「Max7219 8X8 矩陣LED模組」, 在Max7219 8X8 矩陣LED模組上顯示「Hello World」。

此**Max7219 8X8 矩陣LED模組**包含於「[洞洞兩教學材料包 Education Kit 002](https://www.robotkingdom.com.tw/product/rk-education-kit-002/)」內。

## KEYES Arduino UNO R3電路圖

* [KEYES Arduino UNO R3   ](https://www.robotkingdom.com.tw/product/keyes-uno-r3/)
* 通用型彩色Sensor shield v5.0感測器擴充板
* Max7219 8X8 矩陣LED模組

**Max7219 8X8 矩陣LED模組**是**數位訊號**輸出， 可以接「D0 ~ D13」的 KEYES Arduino UNO R3訊號端上。 本範例連接到「**D5**」←→「**dataPin**」，「**D4**」**←→**「**csPin**」，「**D3**」**←→**「**clkPin**」

![](../../.gitbook/assets/02%20%288%29.png)

## Arduino 程式

由於Max7219 8X8 矩陣LED模組是函式庫型模組，所以需要先在Arduino上下載函式庫，下載方法如下。

在Arduino上選擇工具，選擇管理程式庫，在管理程式庫搜尋MatrizLed選擇MatrizLed by Daniel Alvarez版本2.0.3並安裝。

![](../../.gitbook/assets/03%20%283%29.png)

![](../../.gitbook/assets/04%20%283%29.png)

在Max7219 8X8 矩陣LED模組上顯示「Hello World」 。

產生出的 Arduino 程式如下

```c
#include <MatrizLed.h>
MatrizLed pantalla;

void setup() {
  pantalla.begin(5, 3, 4, 2); // dataPin, clkPin, csPin, numero de matrices de 8x8
}

void loop() { 
  pantalla.borrar();
  pantalla.escribirFraseScroll("Hello World", 200); 
}

```



