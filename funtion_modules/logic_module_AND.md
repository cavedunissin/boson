# f1運算邏輯模組AND

## 實體照片

![Optional title](../.gitbook/assets/function_modules/logic_module_AND.png)

## 基本信息

中文名稱：運算邏輯模組 AND

英文名稱：Logic Module - AND

序號：f1

SKU 號：BOS0027

## 功能簡介

運算邏輯模組 AND是功能模組中的一種，可以用來進行簡單的邏輯運算，還可以和其他邏輯模組組合使用，達到更為複雜的功能，如數據的運算和存儲。運算邏輯模組 AND可廣泛應用於日常生活中的簡單防盜警報器、電熱水器等電路。

![Optional title](../.gitbook/assets/function_modules/logic_module_AND/logic_module_AND_intro.png)

## 使用說明

運算邏輯模組 AND既可以放在輸入端，也可以放在輸出端，但該模組不能直接作為輸入或輸出模組使用，需要將輸入模組分別連接在運算邏輯模組 AND的兩個輸入口，輸出模組連接在運算邏輯模組 AND的輸出口，通過改變兩個輸入口的信號來控制輸出口。運算邏輯模組 AND的輸入口和輸出口如下圖所示。

![Optional title](../.gitbook/assets/function_modules/logic_module_AND/logic_module_AND_ui1.png)

運算邏輯模組 AND既可以輸入數位信號，也可以輸入類比信號，但該模組只能輸出數位信號。運算邏輯模組 AND能夠將兩個輸入的信號處理後合併輸出成一個信號，其輸入輸出機制如下：

當一端或兩端輸入訊號為「0」時，模組輸出「0」；

當兩端輸入訊號為「1」時，模組輸出「1」。

下圖列出了運算邏輯模組 AND的真值表。

![Optional title](../.gitbook/assets/function_modules/logic_module_AND/logic_module_AND_ui2.png)

按照下圖所示連接電路，通電後只有同時按下紅色按鈕和黃色按鈕才能點亮紅色LED燈。

![Optional title](../.gitbook/assets/function_modules/logic_module_AND/logic_module_AND_ui3.png)

## 原理介紹

及閘是積體電路上的基本組件。簡單的邏輯閘可由電晶體組成，並由高低電位控制。高、低電位可以分別代表邏輯上的“真”和“假”、二進位當中的1和0、“開”和“關”，從而達到邏輯運算。

## 應用範例

### **\(1\) 智慧路燈**

**範例說明：** 將模組按下圖連接後可以達成如下功能：只有在晚上的時候，聽到有人來了，路燈才會亮起。這一設計大大節約了電力資源。

**元件清單：** 光感測器；聲音感測器；運算邏輯模組 NOT；運算邏輯模組 AND；LED燈模組；主控板：1組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/function_modules/logic_module_AND/logic_module_AND_example1.png)

### **\(2\) 找朋友機**

**範例說明：** 做一個有趣的找朋友機，輕輕按下一個或幾個按鈕，看看哪些小朋友志趣相投。

**元件清單：** 紅色按鈕模組；藍色按鈕模組；運算邏輯模組 OR；運算邏輯模組 AND；紅色LED燈模組；藍色LED燈模組；主控板：3組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/function_modules/logic_module_AND/logic_module_AND_example2.png)

### **\(3\) 密碼鎖**

**範例說明：** 設置三個按鈕，只有按照正確的順序按下三個按鈕，才能解鎖；同時小燈模組也會亮起來，蜂鳴器發出警報，即告訴別人，密碼鎖已被打開。

**元件清單：** 藍色按鈕模組；紅色按鈕模組；黃色按鈕模組；LED燈模組；蜂鳴器模組；計時模組（0-6秒）；計時模組（0-60秒）；運算邏輯模組 AND；分配模組；主控板：3組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/function_modules/logic_module_AND/logic_module_AND_example3.png)

### **\(4\) 搶答器**

**範例說明：** 做一個搶答器，讓按下按鈕的人，亮起對應的燈，同時阻止另一個燈不能再亮起。

**元件清單：** 藍色按鈕模組；紅色按鈕模組；藍色LED燈模組；紅色LED燈模組；運算邏輯模組 AND；運算邏輯模組 NOT；分配模組；主控板：3組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/function_modules/logic_module_AND/logic_module_AND_example4.png)

## 商品規格

腳位說明： 

![Optional title](../.gitbook/assets/function_modules/logic_module_AND/logic_module_AND_spec.png)

尺寸: 26mm\*22mm

工作電壓:3.0-5.5V

工作電流：\(Max\)32mA@5V
