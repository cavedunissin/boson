# 七彩燈條

## 實體照片

![](../../.gitbook/assets/rgb_led_string.jpg)

## 基本信息

中文名稱：七彩燈條

英文名稱：RGB LED Strip

序號：

SKU 號：019.00268

## 功能簡介

七彩燈條屬於簡單的發光模組，可以通過調節色彩調出不同顏色的燈效，可廣泛應用於建築物、橋樑、道路、花園、庭院、地板等領域的裝飾照明與會場佈置、耶誕節、萬聖節、情人節、復活節、國慶日等節日期間營造氣氛等方面。

![](../../.gitbook/assets/RGB_LED_string_intro.png)

## 使用說明

在使用七彩燈條之前，需要擴展燈條的指令庫。打開makecode程式設計平臺，滾動至指令區最底部，依次點擊進階----擴展----neopixel，完成Neopixel指令的調用，此時指令區會出現Neopixel模組。完成以上步驟以後，將燈條連接至micro:bit板，即可通過程式設計控制燈條效果。

![](../../.gitbook/assets/rgb_led_string_ui.png)

## 原理介紹

七彩燈條由7顆彩色LED燈組成，採用柔性線路板即FPC來做載體，燈泡與電路被完全包覆在柔性塑膠中，絕緣、防水性能好，使用安全，支援5V供電。

## 實作範例教學-Micro:bit篇

### **點亮七彩燈條**

**範例說明：** 通過編寫程式，將程式燒錄至micro:bit；micro:bit BOSON擴充板後，可以控制七彩燈條點亮並呈現七彩的效果。

**元件清單：** 七彩燈條；micro:bit；micro:bit BOSON擴充板。

**連線圖：** 將七彩燈條連接至micro:bit擴充板P0腳位。

![](../../.gitbook/assets/rgb_led_string_example_m1.png)

**設計意圖：** 控制七彩燈條點亮並呈現七彩的效果。

① 選定七彩燈條連接micro:bit的腳位、燈條LED燈的數目及顏色模式，指令語句如下圖。此處七彩燈條至micro:bit擴充板P0腳位，燈條LED燈數目為7盞，顏色模式為RGB模式。

![](../../.gitbook/assets/rgb_led_string_de1.png)

② 確定七彩燈條中LED燈使用的範圍，需要調用的指令如下圖。此處七彩燈條中LED燈使用範圍為0-7。

![](../../.gitbook/assets/rgb_led_string_de2.png)

③ 確定七彩燈條色調範圍，需要調用的指令如下圖。此處色調範圍為1-360（紅色-綠色-藍色）。

![](../../.gitbook/assets/rgb_led_string_de3.png)

最終程式如下。

**程式示意圖（中文版）：**

![](../../.gitbook/assets/rgb_led_string_prg1_ch_tw.png)

**Example program\(English\)：**

![](../../.gitbook/assets/rgb_led_string_prg1_en.png)

### **聲控燈條**

**範例說明：** 通過聲音控制七彩燈條中LED燈的點亮數目。

**元件清單：** 七彩燈條；聲音感測器；micro:bit；micro:bit BOSON擴充板。

**連線圖：** 將七彩燈條連接至micro:bit擴充板P0腳位，聲音感測器連接至micro:bit擴充板P2腳位。

![](../../.gitbook/assets/rgb_led_string_example_m2.png)

**執行流程：**

① 設置七彩燈條最初為熄滅狀態。

② 判斷點亮LED燈的數目是否小於等於7盞，滿足條件則繼續判斷聲音感測器檢測到的聲音強度是否大於等於40。

③ 如果以上條件均滿足，則點亮一盞LED燈，暫停1秒。否則，燈條保持點亮部分小燈狀態不變。

④ 重複第②步，繼續判斷②中的條件是否滿足。

**程式示意圖（中文版）：**

![](../../.gitbook/assets/rgb_led_string_prg2_ch_tw.png)

**Example program\(English\)：**

![](../../.gitbook/assets/rgb_led_string_prg2_en.png)

## 商品規格

腳位說明：

![](https://github.com/cavedunissin/boson/tree/0700b5f57a9a2b35ad8b2170fd142861559f45ed/.gitbook/assets/RGB_LED_string_spec.png)

| **編號** | **名稱** | **功能說明** |
| :--- | :--- | :--- |
| 1 | GND | 電源接地 |
| 2 | VCC | 電源正極 |
| 3 | D | 數位訊號 |

尺寸:

工作電壓:

