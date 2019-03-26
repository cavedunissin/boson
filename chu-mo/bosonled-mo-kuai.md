# o2LED模組

## 实物图片

![Optional title](../.gitbook/assets/bosonled-mo-kuai-shi-wu-tu.png)

## 基本信息

中文名称：LED模块

英文名称：LED Module

序号：o2r\o2g\o2b

SKU 号：BOS0017-R\BOS0017-G\BOS0017-B

## 模块简介

LED模块是最简单的发光模块，根据LED灯的颜色可将LED模块进一步区分为红色LED模块、绿色LED模块和蓝色LED模块。LED模块目前已广泛应用于LED显示屏、指示灯、交通灯、汽车灯、照明灯、装饰灯等方面。

![Optional title](../.gitbook/assets/bosonled-mo-kuai-shi-li.png)

## 使用说明

当使用数字信号控制LED模块时， 输入高电平，LED灯被点亮；输入低电平，LED灯被熄灭。

当使用模拟信号控制LED模块时， 输入信号越大，LED灯亮度越大；输入信号越小，LED灯亮度越小。

按照下图所示连接电路，即可通过按钮模块控制LED灯的点亮和熄灭。

![Optional title](../.gitbook/assets/bosonled-mo-kuai-shi-yong-shuo-ming.png)

## 原理介绍

LED模块主要由透明环氧树脂封装、LED芯片、楔形支架、阳极杆、有发射碗的阴极杆、针脚（又称引线架）等部分构成（见下图）。向LED模块输出高电平表示点亮LED灯，向LED模块输出低电平表示熄灭LED灯。LED模块也可以通过模拟信号来控制，输入信号越大，LED灯越亮。

![Optional title](../.gitbook/assets/bosonled-mo-kuai-yuan-li-jie-shao.jpg)

## 应用样例

### **\(1\) 按钮台灯（非编程）**

**样例说明：** 使用按钮控制LED灯的点亮和熄灭。当按钮按下时，LED模块被点亮；当按钮松开时，LED模块被熄灭。

**元件清单：** 按钮模块；LED模块；电源主板-三路。

**连线图：**

![Optional title](../.gitbook/assets/bosonled-mo-kuai-an-niu-tai-deng-1-lian-xian-tu.png)

### **\(2\) 按钮台灯（编程）**

**样例说明：** 使用按钮控制LED灯的点亮和熄灭。当按钮按下时，LED模块被点亮；当按钮松开时，LED模块被熄灭。

**元件清单：** 按钮模块；LED模块；micro:bit；micro:bit BOSON扩展板。

**连线图：** 将按钮模块连接至micro:bit扩展板引脚P0，LED模块连接至micro:bit扩展板引脚P8。

![Optional title](../.gitbook/assets/bosonled-mo-kuai-an-niu-tai-deng-2-lian-xian-tu.png)

**执行流程：**

① 如果引脚P0输出高电平（“1”），即按钮被按下，则LED模块亮起。

② 如果引脚P0输出低电平（“0”），即按钮松开，则LED模块熄灭。

**程序示意图（中文版）：**

![Optional title](../.gitbook/assets/bosonled-mo-kuai-an-niu-tai-deng-2-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![Optional title](../.gitbook/assets/bosonled-mo-kuai-an-niu-tai-deng-2-cheng-xu-shi-yi-tu-ying-wen-ban.png)

### **\(3\) 旋钮台灯**

**样例说明：** 使用旋钮控制LED模块的亮度。顺时针转动旋钮，LED模块越来越亮，逆时针转动旋钮，LED模块越来越暗。

**元件清单：** 旋钮模块；LED模块；micro:bit；micro:bit BOSON扩展板。

**连线图：** 将旋钮模块连接至micro:bit扩展板引脚P0，LED模块连接至micro:bit扩展板引脚P8。

![Optional title](../.gitbook/assets/bosonled-mo-kuai-xuan-niu-tai-deng-lian-xian-tu.png)

**执行流程：**

① 读取引脚P0的模拟值。 ② 将读取到的模拟值赋给引脚P8。

**程序示意图（中文版）：**

![Optional title](../.gitbook/assets/bosonled-mo-kuai-xuan-niu-tai-deng-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![Optional title](../.gitbook/assets/bosonled-mo-kuai-xuan-niu-tai-deng-cheng-xu-shi-yi-tu-ying-wen-ban.png)

### **\(4\) 感应发光小屋**

**样例说明：** 制作一个感应发光小屋，当有人经过时，运动传感器检测到人，LED灯亮起。

**元件清单：** 运动传感器；LED模块；电源主板-三路。

**连线图：**

![Optional title](../.gitbook/assets/bosonled-mo-kuai-gan-ying-fa-guang-xiao-wu-lian-xian-tu.png)

### **\(5\) 智能路灯**

**样例说明：** 将模块按下图连接后可以实现如下功能：只有在晚上的时候，听到有人来了，路灯才会亮起。这一设计大大节约了电力资源。

**元件清单：** 环境光传感器；声音传感器；逻辑“非”模块；逻辑“与”模块；LED模块；电源主板-单路。

**连线图：**

![Optional title](../.gitbook/assets/bosonled-mo-kuai-zhi-neng-lu-deng-lian-xian-tu.png)

### **\(6\) 复古烛台**

**样例说明：** 用光代替火，环境光传感器感受到光后使小灯泡点亮，小灯泡一旦被“点火”成功，就保持着不灭的状态。

**元件清单：** 环境光传感器；逻辑“或”模块；分支模块；LED模块；电源主板-单路。

**连线图：**

![Optional title](../.gitbook/assets/bosonled-mo-kuai-fu-gu-zhu-tai-lian-xian-tu.png)

### **\(7\) 找朋友机**

**样例说明：** 做一个有趣的找朋友机，轻轻按下一个或几个按钮，看看哪些小朋友志趣相投。

**元件清单：** 红色按钮模块；蓝色按钮模块；逻辑“或”模块；逻辑“与”模块；红色LED模块；蓝色LED模块；电源主板-三路。

**连线图：**

![Optional title](../.gitbook/assets/bosonled-mo-kuai-zhao-peng-you-ji-lian-xian-tu.png)

## 规格参数

引脚说明： ![Optional title](../.gitbook/assets/bosonled-mo-kuai-yin-jiao-shuo-ming.png)

尺寸: 26mm\*22mm

工作电压:3.0-5.5V

工作电流：\(Max\)5mA@5V

