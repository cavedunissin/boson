# o5蜂鳴器模組

## 实物图片

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-shi-wu-tu.jpg)

## 基本信息

中文名称：蜂鸣器模块

英文名称：Buzzer Module

序号：o5

SKU 号：BOS0020

## 模块简介

蜂鸣器模块属于简单的发声装置，可以在模拟传感器的控制下发出不同的声音。蜂鸣器模块可广泛应用于计算机、打印机、复印机、报警器、电子玩具、汽车电子设备、电话机、定时器等电子产品中作发声器件。

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-shi-li.png)

## 使用说明

当使用数字信号控制蜂鸣器模块时， 输入高电平，蜂鸣器开始鸣叫；输入低电平，蜂鸣器停止鸣叫。

当使用模拟信号控制蜂鸣器模块时， 输入信号越大，蜂鸣器鸣叫的声音越大；输入信号越小，蜂鸣器鸣叫的声音越小。

按照下图所示连接电路，即可通过按钮模块控制蜂鸣器模块的鸣叫。

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-shi-yong-shuo-ming.png)

## 原理介绍

蜂鸣器模块由振动装置和谐振装置组成，当输入高电平时，蜂鸣器模块开始鸣叫；当输入低电平时，蜂鸣器停止鸣叫。蜂鸣器模块也可以通过模拟信号来控制，输入信号越大，蜂鸣器鸣叫的声音越响亮。

## 应用样例

### **\(1\) 报晓公鸡**

**样例说明：** micro:bit自带环境光传感器，可以用来检测周围的环境光。环境光越强，蜂鸣器叫声越大；环境光越弱，蜂鸣器叫声越小。

**元件清单：** 蜂鸣器模块；micro:bit；micro:bit BOSON扩展板。

**连线图：** 将蜂鸣器模块连接至micro:bit扩展板引脚P8。

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-bao-xiao-gong-ji-lian-xian-tu.png)

**执行流程：**

① 利用micro:bit自带的环境光传感器检测环境光强度。

② 将光强模拟值赋给引脚P8，实现蜂鸣器叫声随光强的变化而变化。

**程序示意图（中文版）：**

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-bao-xiao-gong-ji-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-bao-xiao-gong-ji-cheng-xu-shi-yi-tu-ying-wen-ban.png)

### **\(2\) 智能防火装置**

**样例说明：** 当火焰传感器感知到火焰后，便会传递出电信号，这样便可以控制蜂鸣器模块发出警报。

**元件清单：** 火焰传感器；蜂鸣器模块；电源主板-三路。

**连线图：**

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-zhi-neng-fang-huo-zhuang-zhi-lian-xian-tu.png)

### **\(3\) 下雨报警器**

**样例说明：** 下雨报警器可以检测有无下雨：蜂鸣器下雨时鸣叫，天气晴朗时不鸣叫。

**元件清单：** 蜂鸣器模块；水分传感器；micro:bit；micro:bit BOSON扩展板。

**连线图：** 将水分传感器连接至micro:bit扩展板引脚P0，蜂鸣器模块连接至micro:bit扩展板引脚P8。

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-xia-yu-bao-jing-qi-lian-xian-tu.png)

**执行流程：**

① 如果引脚P0输出高电平（“1”），即水分传感器检测到雨水，则蜂鸣器报警。

② 如果引脚P0输出低电平（“0”），即水分传感器未检测到雨水，则蜂鸣器不报警。

**程序示意图（中文版）：**

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-xia-yu-bao-jing-qi-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-xia-yu-bao-jing-qi-cheng-xu-shi-yi-tu-ying-wen-ban.png)

### **\(4\) 暴躁的小猪**

**样例说明：** 制作一个小猪，将触摸传感器放在小猪的耳朵上，当触摸小猪的耳朵时，小猪发出叫声。

**元件清单：** 触摸传感器；蜂鸣器模块；电源主板-单路。

**连线图：**

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-bao-zao-de-xiao-zhu-lian-xian-tu.png)

### **\(5\) 防盗展台**

**样例说明：** 防盗展台的功能是当展品离开展台，展台自动报警。将展品放在按钮上，相当于按下按钮。当展品被拿开时，按钮弹起，蜂鸣器发出警报。

**元件清单：** 按钮模块；蜂鸣器模块；micro:bit；micro:bit BOSON扩展板。

**连线图：** 将按钮模块连接至micro:bit扩展板引脚P0，蜂鸣器模块连接至micro:bit扩展板引脚P8。

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-fang-dao-zhan-tai-lian-xian-tu.png)

**执行流程：**

① 如果引脚P0输出高电平（“1”），即按钮被按下，展品没有离开展台，则蜂鸣器不报警。

② 如果引脚P0输出低电平（“0”），即按钮弹起，展品离开展台，则蜂鸣器报警。

**程序示意图（中文版）：**

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-fang-dao-zhan-tai-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-fang-dao-zhan-tai-cheng-xu-shi-yi-tu-ying-wen-ban.png)

### **\(6\) 密码锁**

**样例说明：** 设置三个按钮，只有按照正确的顺序按下三个按钮，才能解锁；同时小灯模块也会亮起来，蜂鸣器发出警报，即告诉别人，密码锁已被打开。

**元件清单：** 蓝色按钮模块；红色按钮模块；黄色按钮模块；LED模块；蜂鸣器模块；持续模块（0-6秒）；持续模块（0-60秒）；逻辑“与”模块；分支模块；电源主板-三路。

**连线图：**

![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-mi-ma-suo-lian-xian-tu.png)

## 规格参数

引脚说明： ![Optional title](.gitbook/assets/boson-feng-ming-qi-mo-kuai-yin-jiao-shuo-ming.png)

尺寸：26mm\*22 mm

工作电压：5.0V

工作电流：\(Max\)30mA@5V

