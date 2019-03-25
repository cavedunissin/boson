# 分配模組

## 实物图片

![Optional title](.gitbook/assets/boson-fen-zhi-mo-kuai-shi-wu-tu.png)

## 基本信息

中文名称：分支模块

英文名称：Splitter Module

序号：f4

SKU 号：BOS0030

## 模块简介

分支模块是把一路输入信号扩展为两路输出信号的模块，该模块的常用场景是：当要使用一个输入信号去控制两台设备而接口不够用的情况下，可以使用分支模块将一路输入信号变成两个相同的输出信号去控制这两台设备。

## 使用说明

分支模块既可以放在输入端，也可以放在输出端，但该模块不能直接作为输入或输出模块使用，需要将输入模块连接在分支模块的输入口，两个输出模块分别连接在分支模块的两个输出口，通过改变输入口的信号来控制两个输出口。分支模块的输入口和输出口如下图所示。

![Optional title](.gitbook/assets/boson-fen-zhi-mo-kuai-shi-yong-shuo-ming-1.png)

分支模块的输入输出机制如下：

当输入信号为“关”或“0”时，模块两端输出都为“关”或“0”；

当输入信号为“开”或“1”时，模块两端输出都为“开”或“1”。

下图列出了分支模块的真值表。

![Optional title](.gitbook/assets/boson-fen-zhi-mo-kuai-shi-yong-shuo-ming-2.png)

分支模块除了可以输入输出数字信号外，还可以将一路模拟输入信号转换为两路相同的模拟输出信号。按照下图所示连接电路，通电后按下红色按钮即可同时点亮两盏LED灯。

![Optional title](.gitbook/assets/boson-fen-zhi-mo-kuai-shi-yong-shuo-ming-3.png)

## 原理介绍

分支模块能够将一路输入信号扩展为两路相同的输出信号。

## 应用样例

### **\(1\) 复古烛台**

**样例说明：** 用光代替火，光敏传感器感受到光后使小灯泡点亮，小灯泡一旦被“点火”成功，就保持着不灭的状态。

**元件清单：** 环境光传感器；逻辑“或”模块；分支模块；红色LED模块；电源主板-单路。

**连线图：**

![Optional title](.gitbook/assets/boson-fen-zhi-mo-kuai-fu-gu-zhu-tai-lian-xian-tu.png)

### **\(2\) 密码锁**

**样例说明：** 设置三个按钮，只有按照正确的顺序按下三个按钮，才能解锁；同时小灯模块也会亮起来，蜂鸣器发出警报，即告诉别人，密码锁已被打开。

**元件清单：** 蓝色按钮模块；红色按钮模块；黄色按钮模块；LED模块；蜂鸣器模块；持续模块（0-6秒）；持续模块（0-60秒）；逻辑“与”模块；分支模块；电源主板-三路。

**连线图：**

![Optional title](.gitbook/assets/boson-fen-zhi-mo-kuai-mi-ma-suo-lian-xian-tu.png)

### **\(3\) 抢答器**

**样例说明：** 做一个抢答器，让按下按钮的人，亮起对应的灯，同时阻止另一个灯不能再亮起。

**元件清单：** 蓝色按钮模块；红色按钮模块；蓝色LED模块；红色LED模块；逻辑“与”模块；逻辑“非”模块；分支模块；电源主板-三路。

**连线图：**

![Optional title](.gitbook/assets/boson-fen-zhi-mo-kuai-qiang-da-qi-lian-xian-tu.png)

## 规格参数

引脚说明： ![Optional title](.gitbook/assets/boson-fen-zhi-mo-kuai-yin-jiao-shuo-ming.png)

尺寸: 26mm\*22mm

工作电压:3.0-5.5V

工作电流：\(Max\)32mA@5V

