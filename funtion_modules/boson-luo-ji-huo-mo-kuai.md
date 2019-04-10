# f2運算邏輯模組OR

## 實體照片

![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-wu-tu.png)

## 基本信息

中文名稱：運算邏輯模組 OR

英文名稱：Logic Module - OR

序號：f2

SKU 號：BOS0028

## 功能簡介

運算邏輯模組 OR是功能模組中的一種，可以用來進行簡單的邏輯運算，還可以和其他邏輯模組組合使用，達到更為複雜的功能，如數據的運算和存儲。運算邏輯模組 OR可廣泛應用於日常生活中的簡單車門警報器等電路。

![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-li.png)

## 使用說明

運算邏輯模組 OR既可以放在輸入端，也可以放在輸出端，但該模組不能直接作為輸入或輸出模組使用，需要將輸入模組分別連接在運算邏輯模組 OR的兩個輸入口，輸出模組連接在運算邏輯模組 OR的輸出口，通過改變兩個輸入口的信號來控制輸出口。運算邏輯模組 OR的輸入口和輸出口如下圖所示。

![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-yong-shuo-ming-1.png)

運算邏輯模組 OR既可以輸入數位信號，也可以輸入類比信號，但該模組只能輸出數位信號。運算邏輯模組 OR能夠將兩個輸入的信號處理後合併輸出成一個信號，其輸入輸出機制如下：

當一端或兩端輸入信號為“開”或“1”時，模組輸出“開”；

當且僅當兩端輸入信號為“關”或“0”時，模組輸出“關”。

下圖列出了運算邏輯模組 OR的真值表。

![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-yong-shuo-ming-2.png)

按照下圖所示連接電路，通電後按下紅色按鈕和黃色按鈕中的任意一個，或同時按下兩個按鈕都能點亮紅色LED燈。

![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-yong-shuo-ming-3.png)

## 原理介紹

或閘是積體電路上的基本組件。簡單的邏輯門可由電晶體組成，並由高低電位控制。高、低電位可以分別代表邏輯上的“真”和“假”、二進位當中的1和0、“開”和“關”，從而達到邏輯運算。

## 應用範例

### **\(1\) 復古燭臺**

**範例說明：** 用光代替火，光敏感測器感受到光後使小燈泡點亮，小燈泡一旦被“點火”成功，就保持著不滅的狀態。

**元件清單：** 環境光感測器；紅色LED燈模組；運算邏輯模組 OR；分配模組；主控板：1組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-fu-gu-zhu-tai-lian-xian-tu.png)

### **\(2\) 畫廊展示品防盜警報器**

**範例說明：** 當有人觸碰展品或者展品發生傾斜時，自動發出警報。

**元件清單：** 觸碰感測器；傾斜感測器；運算邏輯模組 OR；閥模組；蜂鳴器模組；主控板：1組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-hua-lang-zhan-shi-pin-fang-dao-bao-jing-qi-lian-xian-tu.png)

### **\(3\) 糧倉溫濕度檢測**

**範例說明：** 糧倉糧食安全儲藏的主要參數是糧倉的溫度和濕度，這兩者之間又是互相關聯的。糧食在正常儲藏過程中，含水量一般在12%以下是安全狀態，不會產生溫度突變，一旦糧倉進水、結露等使糧食的含水量達到20%以上時，就會使糧食受潮，胚芽萌發，新陳代謝加快而產生呼吸熱，使局部糧食溫度突然升高，當溫度高於22°C時，必然引起糧食“發燒”和發霉變質，並可能形成連鎖反應，從而造成不可挽回的損失。因此有必要檢測糧食溫度。當溫度感測器感受到糧食內溫度時，當溫度高於22°C時，自動開啟風扇、點亮小燈並發出警報。而當濕度感測器感受到糧食內濕度高於20%時，自動點亮小燈並發出警報。

**元件清單：** 防水溫度感測器；濕度感測器；運算邏輯模組 OR；閥模組；分配模組；蜂鳴器模組；LED燈模組；風扇模組；主控板：3組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-liang-cang-wen-shi-du-jian-ce-lian-xian-tu.png)

### **\(4\) 找朋友機**

**範例說明：** 做一個有趣的找朋友機，輕輕按下一個或幾個按鈕，看看哪些小朋友志趣相投。

**元件清單：** 紅色按鈕模組；藍色按鈕模組；運算邏輯模組 OR；運算邏輯模組 AND；紅色LED燈模組；藍色LED燈模組；主控板：3組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-zhao-peng-you-ji-lian-xian-tu.png)

## 商品規格

腳位說明： ![Optional title](../.gitbook/assets/boson-luo-ji-huo-mo-kuai-yin-jiao-shuo-ming.png)

尺寸: 26mm\*22mm

工作電壓:3.0-5.5V

工作電流：\(Max\)32mA@5V

