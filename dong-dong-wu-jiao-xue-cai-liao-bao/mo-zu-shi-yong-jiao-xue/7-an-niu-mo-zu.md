# 【7】按鈕模組

### 按鈕模組 <a href="#toc124882502" id="toc124882502"></a>

**專案說明**

使用「Raspberry Pi Pico W」連接「按鈕模組」, 讀取按鈕模組的數值變化。此**按鈕模組**包含於「洞洞五教學材料包」內。

**按鈕模組電路圖**

* Raspberry Pi Pico W
* Raspberry Pi Pico W 擴充板
* 按鈕模組

**按鈕模組**是**數位訊號**輸入， 可以接「D0\~ D28」的Raspberry Pi Pico擴充板訊號端上。 本範例連接到「D7」

以下介紹兩款按鈕模組的接線圖，一款是上面有金色字體寫著「**digital Push Button Module V2.0**」，另一款模組沒有。

**有**寫「**digital Push Button Module V2.0**」的按鈕模組接線圖

![一張含有 電子產品, 電子元件, 電路元件, 被動元件 的圖片

自動產生的描述](<../../.gitbook/assets/0 (20).png>)

**沒有**寫「**digital Push Button Module V2.0**」的按鈕模組接線圖

![一張含有 電子產品, 電路, 電子元件, 電路元件 的圖片

自動產生的描述](<../../.gitbook/assets/1 (21).png>)

**BlocklyDuino 程式 (Button)**

兩款的程式都是相同的，請見下圖。

![一張含有 文字, 螢幕擷取畫面, 字型, 符號 的圖片

自動產生的描述](<../../.gitbook/assets/2 (7).png>)

**Arduino 程式(Button.ino)如下**

void setup()

{

pinMode(7, INPUT);

Serial.begin(9600);

}

void loop()

{

Serial.println(digitalRead(7));

delay(500);

}

**程式執行結果:**

兩款模組操作上有差異，**有**寫「**digital Push Button Module V2.0**」的按鈕模組接線圖，是**按鈕壓下為1，放開為0。**

而**沒有**寫「**digital Push Button Module V2.0**」的按鈕模組接線圖，是**按鈕壓下為0，放開為1。**

![一張含有 螢幕擷取畫面, 文字, 電腦, 陳列 的圖片

自動產生的描述](<../../.gitbook/assets/3 (2).png>)
