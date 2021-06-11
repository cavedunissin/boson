# 範例02\_連接Arduino\_數位輸入與類比輸入

## 【教學】Processing 互動裝置藝術結合 Arduino 小教室\_ep2 連接Arduino\_數位輸入與類比輸入

{% embed url="https://youtu.be/GAcywIxifjY" %}

歡迎來到第一個範例！

首先請取得 Arduino 1.8.5，並安裝好驅動程式之後燒錄 \[StandardFirmata\] 程式，這個小程式可以回應來自外部的所有呼叫。是相當好用的範例，當然也有其限制，後續會再深入說明。範例路徑為：**File / Examples / Firmata / StandardFirmata**

![](../../.gitbook/assets/processing_arduino_ex02_01.png)

接著要在設定 Processing IDE中設定 Arduino 函式庫。請開啟 Contribution Manager\(**Sketch / Import Library... / Add Library...**\)

![](../../.gitbook/assets/processing_arduino_ex02_02.png)

新增一個 Processing 專案，並輸入以下程式碼，確認 Arduino 首次接觸就上手套件已正確燒錄 [StandardFirmata 程式](https://www.arduino.cc/en/reference/firmata)。 輸入完成直接執行以下 pde，會看到以下執行畫面：

**按鈕未按下，可變電阻值 &lt; 800**  
![](../../.gitbook/assets/processing_arduino_ex02_03.png)

**按鈕按下，可變電阻值 &gt; 800**  
![](../../.gitbook/assets/processing_arduino_ex02_04.png)

## Processing程式

檔名 - [arduino\_input\_easy.pde](https://github.com/cavedunissin/boson/tree/master/processing_arduino/example/arduino_input_easy)

```text
import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

color off = color(4, 79, 111);
color on = color(84, 145, 158);

void setup() {
  size(470, 280);

  // Prints out the available serial ports.
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  arduino.pinMode(6, Arduino.INPUT);
}

void draw() {
  background(off);
  stroke(on);

  if (arduino.digitalRead(6) == Arduino.HIGH) {
    fill(on);
  } else {
    fill(off);
    rect(400, 30, 50, 50);
  }

  if (arduino.analogRead(0) > 800) {
    fill(229, 53, 53);
  } else {
    fill(152, 219, 31);
  }
  ellipse(280, 160, arduino.analogRead(0) / 8, arduino.analogRead(0) / 8);
}
```

