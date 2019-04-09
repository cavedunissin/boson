# o11OLED顯示模組

## 實體照片

![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-shi-wu-tu.jpg)

## 基本信息

中文名稱：OLED顯示模組

英文名稱：OLED Module

序號：o11

SKU 號：BOS0044

## 模組簡介

OLED顯示模組能夠為其他模組資訊提供視覺化效果，方便查看實驗效果。在日常生活中，電視機、電腦、洗衣機、手機、儀表板等電子設備都會使用OLED顯示模組。

![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-shi-li.png)

## 使用說明

OLED顯示模組共預設了八種不同模組的資訊顯示（見下表），可以通過按鈕切換到相應的模組編號查看。

![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-shi-yong-shuo-ming-1.png)

按照下圖所示連接電路，通電後即可通過OLED顯示模組上的按鈕切換到濕度感測器模組查看空氣濕度。

![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-shi-yong-shuo-ming-2.png)

## 原理介紹

OLED顯示模組通過讀取其他模組的輸出資訊並加以處理轉換成螢幕可以顯示的內容，實現資訊的視覺化。該OLED顯示模組設計有保護外框，在保護顯示螢幕不易破碎的同時，防止顯示螢幕玻璃邊緣劃傷手指。

## 應用範例

### **\(1\) 心率監測**

**範例說明：** 使用心律監測感測器和OLED顯示模組監測人的心率（注意將OLED顯示模組調到心律監測感測器所對應的模組編號“i20”）。

**元件清單：** 心律監測感測器；OLED顯示模組；主控板：3組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-xin-shuai-jian-ce-lian-xian-tu.png)

### **\(2\) 探究光照強度對植物生長的影響**

**範例說明：** 將兩盆相同植物放在不同光照下，使用光感測器檢測不同環境中的光照強度，並通過OLED顯示模組讀取光強數值（注意將OLED顯示模組調到光感測器所對應的模組編號“i4”），從而探究不同光照強度下植物的生長狀況，嘗試找出最適宜某種植物生長的光照強度。

**元件清單：** 光感測器；OLED顯示模組；主控板：1組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-guang-qiang-dui-zhi-wu-ying-xiang-lian-xian-tu.png)

### **\(3\) 檢測物體的導電性**

**範例說明：** 通過導線外接物體，通過OLED顯示模組查看該物體是否導電（注意將OLED顯示模組調到導電感測開關所對應的模組編號“i12”）。

**元件清單：** 導電感測開關；導線；OLED顯示模組；主控板：1組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-jian-ce-wu-ti-de-dao-dian-xing-lian-xian-tu.png)

### **\(4\) 探究土壤濕度對種子發芽率的影響**

**範例說明：** 將相同數量的同一作物的種子分別種在兩個盆中，通過OLED顯示模組讀取兩盆的土壤濕度（注意將OLED顯示模組調到土壤濕度感測器所對應的模組編號“i16”），從而控制兩盆土壤濕度值始終不同，探究兩種情況下種子的發芽情況。

**元件清單：** 土壤濕度感測器；OLED顯示模組；主控板：1組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-tu-rang-dui-zhong-zi-fa-ya-shuai-de-ying-xiang-lian-xian-tu.png)

### **\(5\) 飲品大調查**

**範例說明：** 通過pH檢測器的顯示螢幕觀察不同飲品的pH值（注意將OLED顯示模組調到酸鹼值感測器所對應的模組編號“i17”），得知飲品的酸鹼度。

**元件清單：** 酸鹼值感測器；OLED顯示模組；主控板：1組輸入/輸出端。

**連線圖：**

![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-yin-pin-da-tiao-cha-lian-xian-tu.png)

## 商品規格

腳位說明： ![Optional title](../.gitbook/assets/boson-xian-shi-ping-mo-kuai-yin-jiao-shuo-ming.png)

尺寸: 38mm\*32mm

工作電壓:3.0-5.5V

工作電流：13mA
