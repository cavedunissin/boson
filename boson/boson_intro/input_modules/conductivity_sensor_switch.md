# i12導電感測開關

## 實體照片

![](<../../../.gitbook/assets/boson-dian-dao-kai-guan-shi-wu-tu-pian (1).jpg>)

## 基本信息

中文名稱：導電感測開關

英文名稱：Conductivity Switch

序號：i12

SKU：BOS0012

## 功能簡介

導電感測開關是一個可以用來檢測物體是否具有導電性的電子模組，既可以檢測硬幣、導線、金屬等良導體，也可以檢測人體、水果、植物等不良導體。可用於製作各類互動交互作品，也可以應用在各類互動遊戲中，作為任務執行的關鍵動作，像密室逃脫中的攜手同心等等。

## 使用說明

在圖示①處，通過觸摸導電感測開關的正負極，可以改變模組的輸出狀態；也可以通過導線外接一個水果或蔬菜從而產生開關控制訊號。

![](<../../../.gitbook/assets/boson\_电导开关\_使用说明 (1) (1).png>)

## 原理介紹

導電感測開關通過檢測微弱電流的存在，輸出開關訊號。

## 實作範例教學-基本篇

### 檢測物體的導電性

**範例說明：**通過導線外接物體，通過顯示模組查看該物體是否導電。

**元件清單：**導電感測開關；主控板：1組輸入/輸出端；OLED顯示模組。

**連線圖：**



![](<../../../.gitbook/assets/conductivity_sensor_switch_example1 (2).png>)

### 炫彩風鈴

**範例說明：**將導電感測開關置於風鈴中，彩色小燈盤繞在風鈴上。當風鈴下擺相互觸碰時，導電感測開關通電，輸出高電位，彩色小燈亮起。

**元件清單：**導電感測開關；主控板：1組輸入/輸出端；七彩燈條。

## 實作範例教學-Micro:bit篇

### 物體導電性檢測儀

**範例說明：**導電感測開關檢測物體的導電性，Micro:bit讀取埠上電壓的高低並將導電性顯示在LED點陣上，導電顯示“√”，不導電顯示“×”。

**元件清單：**導電感測開關；Micro:bit；Micro:bit BOSON擴充板。

**連線圖：**

![](<../../../.gitbook/assets/conductivity_sensor_switch_example3 (1) (1).png>)

**設計意圖：**將導電感測開關連接至P0腳位，根據P0腳位輸出的數位訊號判斷物體是否具有導電性。

**執行流程：**

① 具備導電性：當P0腳位輸出高電位，表示檢測到物體具有導電性，Micro:bit的LED點陣輸出“√”；

② 不具備導電性：當P0腳位輸出低電位，表示物體不具備導電性，Micro:bit的LED點陣輸出“×”。

**程式示意圖（中文版）：**

![](../../../.gitbook/assets/conductivity_sensor_switch_prg_ch_tw.png)

**Example program(English)：**

![](<../../../.gitbook/assets/boson\_电导开关\_应用样例3\_程序示意图英文版 (1) (1).png>)

## 實作範例教學-LinkIt 7697篇

**範例說明：**使用「LinkIt 7697 開發板」讀取「導電感測開關」,，每1秒導電感測開關是否導電（需搭配 LinkIt 7697 NANO 擴充板）。

**元件清單：**導電感測開關；LinkIt 7697；LinkIt 7697 NANO 擴充板。

**連線圖：**導電感測開關是數位訊號輸入， 可以接「D0 \~ D13」的 LinkIt 7697 NANO Breakout訊號端上。 本範例連接到「D6」

![](../../../.gitbook/assets/conductivity_sensor_switch\_7697\_1.jpg)

**程式說明：**每1秒鐘會讀取導電感測開關的導電係數一次，並顯示在序列埠監控視窗上。

![](../../../.gitbook/assets/conductivity_sensor_switch\_7697\_2.png)

![](../../../.gitbook/assets/conductivity_sensor_switch\_7697\_3.png)

產生出的Arduino程式如下：

```
void setup()
{

  Serial.begin(9600);

  pinMode(6, INPUT);
}


void loop()
{
  Serial.print("導電係數:");
  Serial.println(digitalRead(6));
  delay(1000);
}
```

## 商品規格

腳位說明：

![](../../../.gitbook/assets/conductivity_sensor_switch_spec.png)

| **編號** | **名稱** | **功能說明** |
| :----: | :----: | :------: |
|    1   |   GND  |   電源接地   |
|    2   |   VCC  |   電源正極   |
|    3   |    D   |   數位訊號   |
|    4   |  LED燈  |   動作指示   |
|    5   |   開關   |   開關接口   |

重量： （g）

尺寸：26mm\*22mm

工作電壓：3.0-5.0V
