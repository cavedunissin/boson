# 【12】氣體感測器Gas Sensor(MQ7)模組

### 氣體模組(MQ7) <a href="#toc124882502" id="toc124882502"></a>

**專案說明**

使用「Raspberry Pi Pico W」連接「氣體模組(MQ7)」, 讀取氣體模組(MQ7)的數值變化。此**氣體模組(MQ7)**包含於「洞洞五教學材料包」內。

**感測器調整說明**

精密電阻旋鈕可以調整氣體濃度測量範圍，如下圖所示。

![一張含有 電子產品, 文字, 電子工程, 圓形 的圖片

自動產生的描述](<../../.gitbook/assets/0 (23).png>)

**氣體模組(MQ7)電路圖**

* Raspberry Pi Pico W
* Raspberry Pi Pico W 擴充板
* 氣體模組(MQ7)

**氣體模組(MQ7)**是**類比訊號**輸入， 可以接「A0\~ A2」的Raspberry Pi Pico擴充板訊號端上。 本範例連接到「A0」

![一張含有 電子產品, 電路, 電子元件, 電路元件 的圖片

自動產生的描述](<../../.gitbook/assets/1 (25).png>)

**BlocklyDuino 程式 (GAS)**

偵測氣體的濃度變化，若**氣體濃度大於500，則顯示「危險!」；反之顯示「安全!」**。

![一張含有 文字, 螢幕擷取畫面, 數字, 字型 的圖片

自動產生的描述](<../../.gitbook/assets/2 (9).png>)

**Arduino 程式(GAS.ino)如下**

void setup()

{

Serial.begin(9600);

}

void loop()

{

int GAS = analogRead(A0);

if (GAS > 500) {

Serial.println("危險!");

} else {

Serial.println("安全!");

}

Serial.println((String("數值 :")+String(GAS)));

delay(100);

}

**程式執行結果:**

偵測氣體的濃度變化，若**氣體濃度大於500，則顯示「危險!」；反之顯示「安全!」**。

以下是**安全範例**

| <img src="../../.gitbook/assets/3 (4).png" alt="" data-size="original"> | <img src="../../.gitbook/assets/4 (2).png" alt="一張含有 文字, 螢幕擷取畫面, 陳列, 軟體 的圖片

自動產生的描述" data-size="original"> |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |

以下**危險範例**

| <img src="../../.gitbook/assets/5.png" alt="" data-size="original"> | <img src="../../.gitbook/assets/6 (1).png" alt="" data-size="original"> |
| ------------------------------------------------------------------- | ----------------------------------------------------------------------- |
