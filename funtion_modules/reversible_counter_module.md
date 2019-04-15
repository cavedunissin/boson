# f7計數模組

## 實體照片

![Optional title](../.gitbook/assets/function_modules/reversible_counter_module/reversible_counter_module.png)

## 基本信息

中文名稱：計數模組

英文名稱：Reversible Counter Module

序號：f7

SKU 號：BOS0026

## 功能簡介

計數模組是功能模組中的一種，可以用來達成計數功能，還可以和其他模組組合使用，做到更為複雜的功能，如計時器、按鍵計數器、累加器等。

## 使用說明

計數模組可以通過接收輸入介面的高脈衝信號來達到計數功能。在計數模式下，當接收到歸零輸入端的低電位信號時，計數會被歸零。計數模組可以通過切換開關進行選擇四種模式：

up模式（向上計數）：每輸入一個高脈衝信號，計數器加1，範圍為0-999。

down模式（向下計數）：每輸入一個高脈衝信號，計數器減1，範圍為0-999。

value模式（類比值）：讀取類比值大小，並輸出對應大小的類比值，範圍0-999。

volts模式（電壓值）：讀取電壓值大小，並輸出對應大小的電壓值，單位為伏特\(V\)。

計數模組的輸入輸出口如下圖所示：

![Optional title](../.gitbook/assets/function_modules/reversible_counter_module/reversible_counter_module_ui1.png)

按照下圖所示連接電路即可達到每按一次鍵，計數器加1。

![Optional title](../.gitbook/assets/bfunction_modules/reversible_counter_module/reversible_counter_module_ui2.png)

## 原理介紹

計數模組可以達到簡單的計數功能。在up模式下，輸入介面每接收一個高脈衝，計數器加1；在down模式下，輸入介面每接收一個高脈衝，計數器減1；歸零輸入端每接收一個低脈衝，計數歸零。

## 應用範例

### **\(1\) 按鍵計數器**

**範例說明：** 按鈕每按一次，計數加1。

**元件清單：** 按鈕模組；計數模組；主控板：1組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/function_modules/reversible_counter_module/reversible_counter_module_example1.png)

### **\(2\) 製作存錢罐**

**範例說明：** 每次投幣時，硬幣會使得傾斜開關傾斜，傾斜開關每傾斜一次，計數模組計數加1。

**元件清單：** 按鈕模組；計數模組；傾斜感測器；主控板：1組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/function_modules/reversible_counter_module/reversible_counter_module_example2.png)

### **\(3\) 風景區遊客流量計數器**

**範例說明：** 保證適當的風景區遊客流量對遊客安全非常必要，將動作感測器安置在風景區入口安檢處，每經過一人，計數器加1，即時監控客流量大小，掌握風景區人數，保證遊客安全。

**元件清單：** 按鈕模組；計數模組；動作感測器；電源主機板-三路。

**連線圖：**

![Optional title](../.gitbook/assets/function_modules/reversible_counter_module/reversible_counter_module_example3.png)

## 商品規格

腳位說明： 

![Optional title](../.gitbook/assets/function_modules/reversible_counter_module/reversible_counter_module_spec.png)

尺寸：38mm\*32mm

工作電壓：3.0-5.5V

