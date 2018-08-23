# 旋钮模块

## 实物图片

![](.gitbook/assets/boson-xuan-niu-mo-kuai-shi-wu-tu-pian.jpg)

## 基本信息

中文名称：旋钮模块

英文名称：Rotation Sensor

序号：i1

SKU：BOS0001

## 功能简介

旋钮模块是基于电位器的旋转角度传感器，旋转角度从0到300度，可以非常容易地实现与旋转位置相关的互动效果。旋钮可广泛应用于调速风扇、换挡汽车、家用洗衣机等场景。这是一款非常基本的模拟信号输入设备，你可以通过它来学习模拟信号的处理，进而学习更多模拟传感器。

![](.gitbook/assets/boson-xuan-niu-mo-kuai-mo-kuai-jian-jie.png)

## 使用说明

旋钮模块板上带有旋转箭头标识，在使用时通过调节旋钮角度即可控制模拟信号输入的大小。以旋钮控制风扇为例：

> * 顺时针旋转代表模拟信号增强，风扇转速增加；逆时针旋转代表模拟信号减弱，风扇转速减小。

![](.gitbook/assets/boson-xuan-niu-mo-kuai-shi-yong-shuo-ming.png)

## 原理介绍

旋钮模块通过调节旋钮，在一定范围内改变电阻值，从而改变输出信号的大小。

## 应用样例

### \(1\) 变速风扇

**样例说明：**通过转动旋钮到不同的角度来控制风扇转动速度。顺时针旋转，风扇转速增大；逆时针旋转，风扇转速降低。

**元件清单：**旋钮模块；风扇模块；电源主板-三路。

**连线图：**

![](.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-1-lian-xian-tu.png)

### \(2\) 旋钮台灯

**样例说明：**使用旋钮控制LED模块的亮度。顺时针转动旋钮，LED模块越来越亮，逆时针转动旋钮，LED模块越来越暗。

**元件清单：**旋钮模块；LED模块；Micro:bit；Micro:bit BOSON扩展板。

**连线图：**将旋钮模块连接至Micro:bit扩展板引脚P0，LED模块连接至Micro:bit扩展板引脚P8。

![](.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-2-lian-xian-tu.png)

**执行流程：**① 读取引脚P0的模拟值；② 将读取到的模拟值赋给引脚P8。

**程序示意图（中文版）：**

![](.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-2-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![](.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-2-cheng-xu-shi-yi-tu-ying-wen-ban.png)

### \(3\) 调速打蛋器

**样例说明：**制作一个打蛋器，打蛋器的打蛋头固定在电机的转轴上，使用旋钮模块控制电机的转速和转动方向。

**元件清单：**旋钮模块；电机控制模块；N20减速电机模块；电源主板-单路。

**连线图：**

![](.gitbook/assets/boson-xuan-niu-mo-kuai-ying-yong-yang-li-3-lian-xian-tu.png)

## 参数规格

引脚说明：

![](.gitbook/assets/boson-xuan-niu-mo-kuai-yin-jiao-shuo-ming.png)

重量： （g）

尺寸：26mm\*22mm

工作电压：3.0-5.5V

工作电流：\(Max\)1mA@5V

