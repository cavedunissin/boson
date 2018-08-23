# N20减速电机模块

## 实物图片

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-shi-wu-tu.jpg)

## 基本信息

中文名称：N20减速电机模块

英文名称：Micro Metal Gear Motor

序号：

SKU 号：FIT0528

## 模块简介

N20减速电机模块可以控制智能遥控车、模型飞机等装置，它被广泛应用于空调、吸尘器、鼓风机、压缩机、驱动机床、电扇、电冰箱、水泵等场景中。

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-shi-li.png)

## 使用说明

N20减速电机模块可以顺时针旋转，也可以逆时针旋转。电机的转动方向如下图所示：

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-shi-yong-shuo-ming-1.png)

与风扇模块中的电机相比，在实现复杂功能时，仅仅依靠电机的单方向转动是不够的，我们需要通过电机控制模块来设定电机的转速与方向。 电机控制模块预设了四种不同的控制模式（如下表所示），可以通过拨动开关进行切换。

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-shi-yong-shuo-ming-2.png)

按照下图所示连接电路，通电后即可通过电机控制模块上的拨动开关控制电机的转速和方向。

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-shi-yong-shuo-ming-3.png)

## 原理介绍

电机是指依据电磁感应定律实现机电能量转换和信号传递与转换的装置。它的主要作用是穿绳驱动转矩，作为用电器和各种机械的动力源。电机驱动物体运动的过程是一个电能转化为动能的过程。

## 应用样例

### **\(1\) 制作风车**

**样例说明：** 用声音传感器和电机控制模块模拟风车，当人对着声音传感器说话或吹气时，观察电机的转速和转动方向。

**元件清单：** 声音传感器；电机控制模块；N20减速电机模块；micro:bit；micro:bit BOSON扩展板。

**连线图：** 将声音传感器连接至micro:bit扩展板引脚P0，电机控制模块及电机模块连接至micro:bit扩展板引脚P8。

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-zhi-zuo-feng-che-lian-xian-tu.png)

**执行流程：**

① 读取引脚P0的声音强度值。

② 将读取到的强度值赋给引脚P8，通过开关切换4种控制模式，观察不同模式下电机的转速与方向，制作不同转速与方向的风车。

**程序示意图（中文版）：**

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-zhi-zuo-feng-che-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-zhi-zuo-feng-che-cheng-xu-shi-yi-tu-ying-wen-ban.png)

### **\(2\) 调速打蛋器（非编程）**

**样例说明：** 制作一个打蛋器，打蛋器的打蛋头固定在电机的转轴上，使用旋钮模块控制电机的转速和转动方向。

**元件清单：** 旋钮模块；电机控制模块；N20减速电机模块；电源主板-单路。

**连线图：**

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-tiao-su-da-dan-qi-1-lian-xian-tu.png)

### **\(3\) 调速打蛋器（编程）**

**样例说明：** 制作一个打蛋器，打蛋器的打蛋头固定在电机的转轴上，使用旋钮模块控制电机的转速和转动方向。

**元件清单：** 旋钮模块；电机控制模块；N20减速电机模块；micro:bit；micro:bit BOSON扩展板。

**连线图：** 将旋钮模块连接至micro:bit扩展板引脚P0，电机控制模块及电机模块连接至micro:bit扩展板引脚P8。

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-tiao-su-da-dan-qi-2-lian-xian-tu.png)

**执行流程：**

① 读取引脚P0的声音强度值。

② 将读取到的强度值赋给引脚P8，通过开关切换4种控制模式，观察不同模式下电机的转速与方向，制作不同转速与方向的打蛋器。

**程序示意图（中文版）：**

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-tiao-su-da-dan-qi-2-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-tiao-su-da-dan-qi-2-cheng-xu-shi-yi-tu-ying-wen-ban.png)

## 规格参数

引脚说明：

![Optional title](.gitbook/assets/bosonn20-jian-su-dian-ji-mo-kuai-yin-jiao-shuo-ming.png)

尺寸:

工作电压:

