# i1旋鈕模組

## 實體照片

![](../.gitbook/assets/boson-xuan-niu-mo-kuai-shi-wu-tu-pian.jpg)

## 基本信息

中文名稱：旋鈕模組

英文名稱：Rotation Sensor

編號：i1

SKU：BOS0001

## 功能簡介

旋鈕模組是基于电位器的旋转角度传感器，旋转角度从0到300度，可以非常容易地实现与旋转位置相关的互动效果。旋钮可广泛应用于调速风扇、换挡汽车、家用洗衣机等场景。这是一款非常基本的類比訊號輸入設備，你可以通过它来学习模拟信号的处理，进而学习更多類比感測器。

![](../.gitbook/assets/boson-xuan-niu-mo-kuai-mo-kuai-jian-jie.png)

## 使用說明

旋鈕模組上带有旋转箭头标识，在使用时通过调节旋钮角度即可控制類比訊號输入的大小。以旋钮控制风扇为例：

> * 顺时针旋转代表類比訊號增强，風扇會轉得愈來愈快；逆时针旋转代表類比訊號减弱，風扇會變慢。

![](../.gitbook/assets/boson-xuan-niu-mo-kuai-shi-yong-shuo-ming.png)

## 原理介绍

旋鈕模組通过调节旋钮，在一定范围内改变电阻值，从而改变输出訊號的大小。

## 應用範例

### \(1\) 變速風扇

**範例说明：**通过转动旋钮到不同的角度来控制风扇转动速度。顺时针旋转，风扇转速增大；逆时针旋转，风扇转速降低。

**元件清單：**旋钮模块；风扇模块；电源主板-三路。

**連線圖：**

![](../.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-1-lian-xian-tu.png)

### \(2\) 旋鈕檯燈

**範例說明：**使用旋钮控制LED模块的亮度。顺时针转动旋钮，LED模块越来越亮，逆时针转动旋钮，LED模块越来越暗。

**元件清单：**旋钮模块；LED模块；Micro:bit；Micro:bit BOSON 擴充板。

**連線圖：**將旋鈕模組连接至Micro:bit擴充板的P0腳位，LED模組連接到Micro:bit擴充板的P8腳位。

![](../.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-2-lian-xian-tu.png)

**程式說明：**① 讀取P0腳位的類比值；② 将读取到的類比值赋给P8腳位。

**程式示意圖（中文版）：**

![](../.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-2-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**Example program \(English\):**

![](../.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-2-cheng-xu-shi-yi-tu-ying-wen-ban.png)

### \(3\) 調速打蛋器

**範例說明：**制作一个打蛋器，打蛋器的打蛋头固定在电机的转轴上，使用旋钮模块控制电机的转速和转动方向。

**元件清單：**旋鈕模組；馬達控制模組；N20減速馬達模組；主控板\(1 I/O\)。

**連線圖：**

![](../.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-3-lian-xian-tu.png)

## 商品規格

腳位說明：

![](../.gitbook/assets/boson-xuan-niu-mo-kuai-yin-jiao-shuo-ming.png)

| **編號** | **名稱** | **功能說明** |
| :--- | :--- | :--- |
| 1 | GND | 電源負極 |
| 2 | VCC | 電源正極 |
| 3 | A | 類比訊號 |

重量： （g）

尺寸：26mm\*22mm

工作電壓：3.0-5.5V

工作電流：\(Max\)1mA@5V

