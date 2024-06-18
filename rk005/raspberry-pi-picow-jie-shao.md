# Raspberry Pi Pico W 介紹

### Raspberry Pi Pico W規格介紹 <a href="#hlk124867738" id="hlk124867738"></a>

![一張含有 電子產品, 電子元件, 電路元件, 電路 的圖片

自動產生的描述](<../.gitbook/assets/0 (16).png>)

_圖片出處: https://www.farnell.com/datasheets/3759470.pdf_

作為Pico家族的新成員 ，Raspberry PI PICO W保留了先前型號的強大功能和靈活性，透過整合Infineon CYW43439晶片，實現WiFi通訊功能，可以完整呈現到物聯網應用中。

以下為基本介紹:

基本規格

* 處理器：RP2040 微控制器，雙核心 Arm Cortex-M0+，主頻 133MHz
* 記憶體：264KB SRAM
* 儲存空間：2MB QSPI 快閃記憶體
* 無線連接：2.4GHz 802.11n Wi-Fi
* GPIO 接口：26 個多功能 GPIO 引腳
* 電源供應：
* 通過 micro USB 提供 5V 電源
* 板上有穩壓器將 5V 轉換為 3.3V 系統電源

### Raspberry Pi Pico腳位介紹 <a href="#hlk124870888" id="hlk124870888"></a>

![一張含有 文字, 螢幕擷取畫面, 圖表 的圖片

自動產生的描述](<../.gitbook/assets/1 (17).png>)

_圖片出處: https://www.farnell.com/datasheets/3759470.pdf_

**Raspberry Pi Pico W 接腳功能介紹:**

* 有26個可程式IO接腳
* 兩組SPI、兩組I2C
* 兩組UART序列埠、3個類比輸入埠(GPIO26-GPIO28) ，範圍0\~4095，輸入電壓上限為3.3V
* 每個數位IO都能輸出PWM訊號 (範圍可從0到65535)\[註]

**\[註] 但 Raspberry Pi Pico W 在 Arduino 平台上 PWM 解析度是 8 位元的原因**

* 硬體限制：許多 Arduino 板使用 AVR 微控制器，其硬體 PWM 計數器通常設置為 8 位解析度。因此，預設情況下，Arduino 平台上的 analogWrite 函數使用 0 到 255 的範圍。
* 兼容性：為了與大多數 Arduino 板和現有的 Arduino 程式碼相容，analogWrite 的預設解析度設置為 8 。
