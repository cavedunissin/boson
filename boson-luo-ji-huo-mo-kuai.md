# 逻辑“或”模块

## 实物图片

![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-wu-tu.png)

## 基本信息

中文名称：逻辑“或”模块

英文名称：Logic Module - OR

序号：f2

SKU 号：BOS0028

## 模块简介

逻辑“或”模块是造物粒子功能模块中的一种，可以用来进行简单的逻辑运算，还可以和其他逻辑模块组合使用，实现更为复杂的功能，如数据的运算和存储。逻辑“或”模块可广泛应用于日常生活中的简单车门报警器等电路。

![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-li.png)

## 使用说明

逻辑“或”模块既可以放在输入端，也可以放在输出端，但该模块不能直接作为输入或输出模块使用，需要将输入模块分别连接在逻辑“或”模块的两个输入口，输出模块连接在逻辑“或”模块的输出口，通过改变两个输入口的信号来控制输出口。逻辑“或”模块的输入口和输出口如下图所示。

![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-yong-shuo-ming-1.png)

逻辑“或”模块既可以输入数字信号，也可以输入模拟信号，但该模块只能输出数字信号。逻辑“或”模块能够将两个输入的信号处理后合并输出成一个信号，其输入输出机制如下：

当一端或两端输入信号为“开”或“1”时，模块输出“开”；

当且仅当两端输入信号为“关”或“0”时，模块输出“关”。

下图列出了逻辑“或”模块的真值表。

![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-yong-shuo-ming-2.png)

按照下图所示连接电路，通电后按下红色按钮和黄色按钮中的任意一个，或同时按下两个按钮都能点亮红色LED灯。

![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-shi-yong-shuo-ming-3.png)

## 原理介绍

或门是集成电路上的基本组件。简单的逻辑门可由晶体管组成，并由高低电平控制。高、低电平可以分别代表逻辑上的“真”和“假”、二进制当中的1和0、“开”和“关”，从而实现逻辑运算。

## 应用样例

### **\(1\) 复古烛台**

**样例说明：** 用光代替火，光敏传感器感受到光后使小灯泡点亮，小灯泡一旦被“点火”成功，就保持着不灭的状态。

**元件清单：** 环境光传感器；红色LED模块；逻辑“或”模块；分支模块；电源主板-单路。

**连线图：**

![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-fu-gu-zhu-tai-lian-xian-tu.png)

### **\(2\) 画廊展示品防盗报警器**

**样例说明：** 当有人触摸展品或者展品发生倾斜时，自动报警。

**元件清单：** 触摸传感器；倾斜开关；逻辑“或”模块；阈值模块；蜂鸣器模块；电源主板-单路。

**连线图：**

![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-hua-lang-zhan-shi-pin-fang-dao-bao-jing-qi-lian-xian-tu.png)

### **\(3\) 粮仓温湿度检测**

**样例说明：** 粮仓粮食安全储藏的主要参数是粮仓的温度和湿度，这两者之间又是互相关联的。粮食在正常储藏过程中，含水量一般在12%以下是安全状态，不会产生温度突变，一旦粮仓进水、结露等使粮食的含水量达到20%以上时，就会使粮食受潮，胚芽萌发，新陈代谢加快而产生呼吸热，使局部粮食温度突然升高，当温度高于22°C时，必然引起粮食“发烧”和霉变，并可能形成连锁反应，从而造成不可挽回的损失。因此有必要检测粮食温度。当温度传感器感受到粮食内温度时，当温度高于22°C时，自动开启风扇、点亮小灯并报警。而当湿度传感器感受到粮食内湿度高于20%时，自动点亮小灯并报警。

**元件清单：** 防水温度传感器；空气湿度传感器；逻辑“或”模块；阈值模块；分支模块；蜂鸣器模块；LED模块；风扇模块；电源主板-三路。

**连线图：**

![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-liang-cang-wen-shi-du-jian-ce-lian-xian-tu.png)

### **\(4\) 找朋友机**

**样例说明：** 做一个有趣的找朋友机，轻轻按下一个或几个按钮，看看哪些小朋友志趣相投。

**元件清单：** 红色按钮模块；蓝色按钮模块；逻辑“或”模块；逻辑“与”模块；红色LED模块；蓝色LED模块；电源主板-三路。

**连线图：**

![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-zhao-peng-you-ji-lian-xian-tu.png)

## 规格参数

引脚说明： ![Optional title](.gitbook/assets/boson-luo-ji-huo-mo-kuai-yin-jiao-shuo-ming.png)

尺寸: 26mm\*22mm

工作电压:3.0-5.5V

工作电流：\(Max\)32mA@5V

