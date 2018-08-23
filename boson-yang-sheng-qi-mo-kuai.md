# 扬声器模块

## 实物图片

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-shi-wu-tu.jpg)

## 基本信息

中文名称：扬声器模块

英文名称：Speaker

序号：

SKU 号：020.01150

## 模块简介

扬声器又称“喇叭”，它是一个发声设备，被广泛应用于音箱、智能电子设备、智能交通、新型汽车、商场超市、医疗教育、银行等场景中。

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-shi-li.png)

## 使用说明

BOSON中的扬声器模块需要结合录音模块使用，连接在录音模块的输出端，用来播放提前录制好的声音。按照下图所示连接电路，通电后按住录音模块上的录音按钮可录制最长为10s的声音，再通过按钮模块就可以控制扬声器模块播放这段录制好的声音。

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-shi-yong-shuo-ming.png)

## 原理介绍

扬声器由磁铁、框架、定心支片、模折环锥型纸盆组成的，它能够将电信号转化为声信号，实现放音过程。

## 应用样例

### **\(1\) 留言机**

**样例说明：** 自制留言机，完成编程以后，按住录音模块上的录音按钮即可录制最长为10s的声音，再通过按钮模块就可以控制扬声器模块播放这段录制好的声音。

**元件清单：** 按钮模块；录音模块；扬声器模块；micro:bit；micro:bit BOSON扩展板。

**连线图：** 将按钮模块连接至micro:bit扩展板引脚P0，录音模块和扬声器模块连接至micro:bit扩展板引脚P8。

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-liu-yan-ji-lian-xian-tu.png)

**执行流程：**

① 按住录音模块上的录音按钮录制最长为10s的声音。

② 如果引脚P0输出高电平（“1”），即按钮被按下，则播放录制好的声音。

③ 如果引脚P0输出低电平（“0”），即按钮松开，则不播放录制好的声音。

**程序示意图（中文版）：**

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-liu-yan-ji-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-liu-yan-ji-cheng-xu-shi-yi-tu-ying-wen-ban.png)

### **\(2\) 倒车雷达**

**样例说明：** 倒车时，当超声波距离传感器检测到后方有障碍物时，扬声器播报声音“请注意后方障碍物”，提醒司机后方有障碍物，保证倒车安全。

**元件清单：** 超声波距离传感器；录音模块；扬声器模块；电源主板-三路。

**连线图：**

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-dao-che-lei-da-lian-xian-tu.png)

### **\(3\) 教师节的礼物**

**样例说明：** 提前录制10秒钟的教师节祝福语，当老师走进教室时，运动传感器与声音传感器感受到老师，LED灯亮起，扬声器播放祝福语。

**元件清单：** 运动传感器；声音传感器；LED模块；录音模块；扬声器模块；micro:bit；micro:bit BOSON扩展板。

**连线图：** 将运动传感器连接至micro:bit扩展板引脚P0，声音传感器连接至micro:bit扩展板引脚P2，录音模块和扬声器模块连接至micro:bit扩展板引脚P8，LED模块连接至micro:bit扩展板引脚P16。

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-jiao-shi-jie-de-li-wu-lian-xian-tu.png)

**执行流程：**

① 按住录音模块上的录音按钮录制最长为10s的教师节祝福语。

② 当运动传感器检测到教师，且声音传感器感受到声音强度大于50时，LED灯亮起，同时扬声器播放祝福语。

**程序示意图（中文版）：**

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-jiao-shi-jie-de-li-wu-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![Optional title](.gitbook/assets/boson-yang-sheng-qi-mo-kuai-jiao-shi-jie-de-li-wu-cheng-xu-shi-yi-tu-ying-wen-ban.png)

## 规格参数

引脚说明：

尺寸:

工作电压:

