# i5傾斜開關

## 实物图片

![](.gitbook/assets/boson-qing-xie-kai-guan-shi-wu-tu-pian.jpg)

## 基本信息

中文名称：倾斜开关

英文名称：Tilt Switch

序号：i5

SKU：BOS0005

## 功能简介

倾斜开关是一款可以检测物体是否发生倾斜的数字输入模块，在实际应用中具有重要价值，可以用来评估桥梁、房屋、输电线路杆塔等物体的倾斜情况，对开展维护工作具有重要的指导作用。

![](.gitbook/assets/boson-qing-xie-kai-guan-mo-kuai-jian-jie.png)

## 使用说明

倾斜开关可以与Arduino专用传感器扩展板结合使用，实现非常有趣的互动作品，比使用水银开关更加安全。通过控制倾斜开关的倾斜度可以实现开关的闭合或断开。

> * 当倾斜开关水平放置时，输出低电平；当倾斜开关发生倾斜时，输出高电平。

按照下图所示连接电路，通电后即可使用倾斜开关控制LED灯的亮灭：当倾斜开关发生倾斜时，LED灯被点亮；否则LED灯被熄灭。

![](.gitbook/assets/boson-qing-xie-kai-guan-shi-yong-shuo-ming.png)

## 原理介绍

倾斜开关是基于钢球开关的数字模块，利用钢球的特性，当倾斜开关受到外力作用偏离水平位置时，内部钢球受到重力作用向低处滚落，从而使开关闭合或断开，因此也可以作为简单的倾角传感器使用。

## 应用样例

### \(1\) 制作存钱罐

**样例说明：**每次投币时，硬币会使得倾斜开关倾斜，倾斜开关每倾斜一次，计数模块计数加1。

**元件清单：**倾斜开关；按钮模块；电源主板-单路；计数模块。

**连线图：**

![](.gitbook/assets/boson-qing-xie-kai-guan-ying-yong-yang-li-1-lian-xian-tu.png)

### \(2\) 画廊展示品防盗报警器

**样例说明：**当有人触摸展品或者展品发生倾斜时，自动报警。

**元件清单：**倾斜开关；触摸传感器；逻辑“或”模块；电源主板-单路；持续模块（0~6秒）；蜂鸣器模块。

**连线图：**

![](.gitbook/assets/boson-qing-xie-kai-guan-ying-yong-yang-li-2-lian-xian-tu.png)

### \(3\) 倾斜报警器

**样例说明：**若倾斜开关检测到发生倾斜，蜂鸣器模块开始鸣叫并持续3秒钟。

**元件清单：**倾斜开关；蜂鸣器模块；Micro:bit；Micro:bit BOSON扩展板。

**连线图：**

![](.gitbook/assets/boson-qing-xie-kai-guan-ying-yong-yang-li-3-lian-xian-tu.png)

**设计意图：**倾斜开关在发生倾斜时会输出高电平，否则输出低电平。制作倾斜报警器时需要先读取倾斜开关输出的数字信号，若读取到高电平，表示已经发生倾斜，为蜂鸣器模块写入高电平，蜂鸣器开始鸣叫；否则为蜂鸣器模块写入低电平，蜂鸣器停止鸣叫。

**执行流程：**① 已发生倾斜：当倾斜开关输出数字信号“1”，为蜂鸣器模块写入高电平，蜂鸣器开始鸣叫，暂停3秒；② 未发生倾斜：为蜂鸣器模块写入低电平，蜂鸣器停止鸣叫。

**程序示意图（中文版）：**

![](.gitbook/assets/boson-qing-xie-kai-guan-ying-yong-yang-li-3-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![](.gitbook/assets/boson-qing-xie-kai-guan-ying-yong-yang-li-3-cheng-xu-shi-yi-tu-ying-wen-ban.png)

## 参数规格

引脚说明：

![](.gitbook/assets/boson-qing-xie-kai-guan-yin-jiao-shuo-ming.png) 重量： （g）

尺寸：26mm\*22mm

工作电压：3.0-5.0V

