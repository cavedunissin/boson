# i9聲音感測器

## 實體照片

![](../.gitbook/assets/boson-sheng-yin-chuan-gan-qi-shi-wu-tu-pian.jpg)

## 基本信息

中文名稱：聲音感測器

英文名稱：Sound Sensor

序號：i9

SKU：BOS0009

## 功能簡介

聲音感測器相當於一個麥克風，它能感受到聲音，並將感受到的聲音大小轉換成相應的類比信號輸出，被廣泛應用於手機、答錄機、聲控照明燈、醫療器械、深海測量、交通幹道雜訊監測、工業企業雜訊檢測等設備中。

![](../.gitbook/assets/boson-sheng-yin-chuan-gan-qi-mo-kuai-jian-jie.png)

## 使用說明

聲音感測器上有一個黑色收音器，當你在黑色收音器前拍手或大聲說話時，聲音感測器能感受聲音的震動。

> * 聲音越大，輸出信號越強；聲音越小，輸出信號越弱。

按照下圖所示連接電路，通電後即可通過聲音感測器控制LED燈：檢測到聲音時點亮LED燈，否則熄滅LED燈。

![](../.gitbook/assets/boson-sheng-yin-chuan-gan-qi-shi-yong-shuo-ming.png)

## 原理介紹

聲音感測器內置一個對聲音敏感的電容式駐極體麥克風。聲波使麥克風內的駐極體薄膜振動，導致電容的變化，而產生與之對應變化的微小電壓。這一電壓隨後被轉化成0-5V的電壓，經過A/D轉換被資料獲取器接受。 來源：[https://baike.baidu.com/item/声音传感器/5345252?fr=aladdin](https://baike.baidu.com/item/声音传感器/5345252?fr=aladdin)

## 應用範例

### \(1\) 聲光互動蛋糕

**範例說明：**製作一個蛋糕，當播放生日歌時，聲音感測器檢測到聲音，蛋糕上的七彩燈條亮起。

**元件清單：**聲音感測器；主控板：1組輸入/輸出端；七彩燈條。

**連線圖：**

![](../.gitbook/assets/boson-sheng-yin-chuan-gan-qi-ying-yong-yang-li-1-lian-xian-tu.png)

### \(2\) 智慧路燈

**範例說明：**夜晚，當有人經過時，聲音感測器檢測到聲音，LED燈亮起一段時間，直到人走過後熄滅。

**元件清單：**聲音感測器；動作感測器；運算邏輯模組 NOT；運算邏輯模組 AND；主控板：1組輸入/輸出端；計時模組（0-6秒）；LED燈模組。

**連線圖：**

![](../.gitbook/assets/boson-sheng-yin-chuan-gan-qi-ying-yong-yang-li-2-lian-xian-tu.png)

### \(3\) 聲控風扇

**範例說明：**製作1個聲控風扇，當聲音感測器的輸出類比值&gt;50時打開風扇並持續三秒，否則關閉風扇。

**元件清單：**聲音感測器；風扇模組；Micro:bit；Micro:bit BOSON擴充板。

**連線圖：**

![](../.gitbook/assets/boson-sheng-yin-chuan-gan-qi-ying-yong-yang-li-3-lian-xian-tu.png)

**設計意圖：**由於聲音感測器的輸出訊號是類比值，這裡設定一個類比值50（該類比值可根據實際情況彈性調整），當聲音感測器輸出類比值大於50時開啟風扇，否則關閉風扇。

**執行流程：**① 檢測到聲音：若聲音感測器輸出類比值大於50，打開風扇三秒鐘；② 未檢測到聲音：聲音感測器輸出類比值小於50，關閉風扇。

**程式示意圖（中文版）：**

![](../.gitbook/assets/boson-sheng-yin-chuan-gan-qi-ying-yong-yang-li-3-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**Example program(English)：**

![](../.gitbook/assets/boson-sheng-yin-chuan-gan-qi-ying-yong-yang-li-3-cheng-xu-shi-yi-tu-ying-wen-ban.png)

## 商品規格

腳位說明：

![](../.gitbook/assets/boson-sheng-yin-chuan-gan-qi-yin-jiao-shuo-ming.png)

| **編號** | **名稱** | **功能說明** |
| :--- | :--- | :--- |
| 1 | GND | 電源接地 |
| 2 | VCC | 電源正極 |
| 3 | A | 類比訊號 |

重量： （g）

尺寸：26mm\*22mm

工作電壓：3.0-5.0V

