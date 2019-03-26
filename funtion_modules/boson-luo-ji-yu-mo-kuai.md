# f1運算邏輯模組AND

## 实物图片

![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-shi-wu-tu.png)

## 基本信息

中文名称：逻辑“与”模块

英文名称：Logic Module - AND

序号：f1

SKU 号：BOS0027

## 模块简介

逻辑“与”模块是造物粒子功能模块中的一种，可以用来进行简单的逻辑运算，还可以和其他逻辑模块组合使用，实现更为复杂的功能，如数据的运算和存储。逻辑“与”模块可广泛应用于日常生活中的简单防盗报警器、电热水器等电路。

![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-shi-li.png)

## 使用说明

逻辑“与”模块既可以放在输入端，也可以放在输出端，但该模块不能直接作为输入或输出模块使用，需要将输入模块分别连接在逻辑“与”模块的两个输入口，输出模块连接在逻辑“与”模块的输出口，通过改变两个输入口的信号来控制输出口。逻辑“与”模块的输入口和输出口如下图所示。

![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-shi-yong-shuo-ming-1.png)

逻辑“与”模块既可以输入数字信号，也可以输入模拟信号，但该模块只能输出数字信号。逻辑“与”模块能够将两个输入的信号处理后合并输出成一个信号，其输入输出机制如下：

当一端或两端输入信号为“关”或“0”时，模块输出“关”；

当且仅当两端输入信号为“开”或“1”时，模块输出“开”。

下图列出了逻辑“与”模块的真值表。

![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-shi-yong-shuo-ming-2.png)

按照下图所示连接电路，通电后只有同时按下红色按钮和黄色按钮才能点亮红色LED灯。

![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-shi-yong-shuo-ming-3.png)

## 原理介绍

与门是集成电路上的基本组件。简单的逻辑门可由晶体管组成，并由高低电平控制。高、低电平可以分别代表逻辑上的“真”和“假”、二进制当中的1和0、“开”和“关”，从而实现逻辑运算。

## 应用样例

### **\(1\) 智能路灯**

**样例说明：** 将模块按下图连接后可以实现如下功能：只有在晚上的时候，听到有人来了，路灯才会亮起。这一设计大大节约了电力资源。

**元件清单：** 环境光传感器；声音传感器；逻辑“非”模块；逻辑“与”模块；LED模块；电源主板-单路。

**连线图：**

![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-zhi-neng-lu-deng-lian-xian-tu.png)

### **\(2\) 找朋友机**

**样例说明：** 做一个有趣的找朋友机，轻轻按下一个或几个按钮，看看哪些小朋友志趣相投。

**元件清单：** 红色按钮模块；蓝色按钮模块；逻辑“或”模块；逻辑“与”模块；红色LED模块；蓝色LED模块；电源主板-三路。

**连线图：**

![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-zhao-peng-you-ji-lian-xian-tu.png)

### **\(3\) 密码锁**

**样例说明：** 设置三个按钮，只有按照正确的顺序按下三个按钮，才能解锁；同时小灯模块也会亮起来，蜂鸣器发出警报，即告诉别人，密码锁已被打开。

**元件清单：** 蓝色按钮模块；红色按钮模块；黄色按钮模块；LED模块；蜂鸣器模块；持续模块（0-6秒）；持续模块（0-60秒）；逻辑“与”模块；分支模块；电源主板-三路。

**连线图：**

![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-mi-ma-suo-lian-xian-tu.png)

### **\(4\) 抢答器**

**样例说明：** 做一个抢答器，让按下按钮的人，亮起对应的灯，同时阻止另一个灯不能再亮起。

**元件清单：** 蓝色按钮模块；红色按钮模块；蓝色LED模块；红色LED模块；逻辑“与”模块；逻辑“非”模块；分支模块；电源主板-三路。

**连线图：**

![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-qiang-da-qi-lian-xian-tu.png)

## 规格参数

引脚说明： ![Optional title](../.gitbook/assets/boson-luo-ji-yu-mo-kuai-yin-jiao-shuo-ming.png)

尺寸: 26mm\*22mm

工作电压:3.0-5.5V

工作电流：\(Max\)32mA@5V

