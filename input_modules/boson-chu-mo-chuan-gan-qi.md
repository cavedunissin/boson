# 触摸传感器

## 实物图片

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-shi-wu-tu-pian.jpg)

## 基本信息

中文名称：触摸传感器

英文名称：Touch Sensor

序号：i8

SKU：BOS0008

## 功能简介

触摸传感器是一款可以感受到物体是否与传感器有接触的数字输入模块，该传感器可以让你摆脱常规按压型按键的烦恼，广泛应用于数码相机、游戏机、安防、汽车仪表盘、家用电器、密码箱柜和触摸感应式门禁等场景中。

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-mo-kuai-jian-jie.png)

## 使用说明

触摸传感器与Arduino传感器扩展板结合使用，可以制作出非常有趣的触摸互动作品。

> * 常态下，触摸传感器输出低电平；当用手指触碰到触摸传感器上的金属面时，触摸传感器输出高电平。

按照下图所示连接电路，通电后即可通过触摸传感器控制LED灯：当感应到触碰后点亮LED灯，否则熄灭LED灯。

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-shi-yong-shuo-ming.png)

除了直接触摸金属面外，隔着一定厚度的塑料、玻璃等材料也可以被感应到，但感应灵敏度与金属面的大小和覆盖材料的厚度有关系。 此外，可以将触摸传感器安装在非金属材料如塑料、玻璃的表面，然后将薄薄的纸片覆盖在模块的表面，只要触摸位置正确，即可做成隐藏在墙壁、桌面等地方的按键。

**\*注意：**使用时请注意模块需要离桌面一定高度（与桌面材料有关）。\*

## 原理介绍

触摸传感器是一款基于电容感应的触摸开关模块，当人体直接触碰到传感器上的金属面时，由于人体电场，人体手指和工作面形成一个耦合电容，从而被感应到。 电容式感应触摸开关可以穿透绝缘材料外壳 20mm（玻璃、塑料等）以上，准确无误地侦测到手指的有效触摸。 来源：[https://baike.baidu.com/item/电容式感应触摸开关/456090?fr=aladdin](https://baike.baidu.com/item/电容式感应触摸开关/456090?fr=aladdin)

## 应用样例

### \(1\) 暴躁的小猪

**样例说明：**制作一个小猪，将触摸传感器放在小猪的耳朵上，当触摸小猪的耳朵时，小猪发出叫声。

**元件清单：**触摸传感器；电源主板-单路；蜂鸣器模块。

**连线图：**

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-ying-yong-yang-li-1-lian-xian-tu.png)

### \(2\) 触摸台灯

**样例说明：**当用手触摸开关时，小灯自动亮起。

**元件清单：**触摸传感器；电源主板-单路；持续模块（0~6秒）；LED模块。

**连线图：**

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-ying-yong-yang-li-2-lian-xian-tu.png)

### \(3\) 画廊展示品防盗报警器

**样例说明：**当有人触摸展品或者展品发生倾斜时，自动报警。

**元件清单：**触摸传感器；倾斜传感器；逻辑“或”模块；电源主板-单路；持续模块（0~6秒）；蜂鸣器模块。

**连线图：**

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-ying-yong-yang-li-3-lian-xian-tu.png)

### \(4\) 害羞的Micro:bit

**样例说明：**Micro:bit非常害羞，只有没人触碰到触摸传感器的时候他才会露出笑脸，当有人触碰到触摸传感器后，他的LED点阵会显示哭脸，还会发出“哭声”。

**元件清单：**触摸传感器；蜂鸣器模块；Micro:bit；Micro:bit BOSON扩展板。

**连线图：**

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-ying-yong-yang-li-4-lian-xian-tu.png)

**设计意图：**通过读取触摸传感器输出的数字信号判断是否发生触碰，若发生触碰，Micro:bit的LED点阵显示哭脸并让蜂鸣器鸣叫2秒钟，否则Micro:bit的LED点阵上显示笑脸。

**执行流程：**

① Micro:bit感知到触碰：Micro:bit的LED点阵显示哭脸、蜂鸣器发出警报并持续2秒；

② Micro:bit未感知触碰：Micro:bit的LED点阵显示笑脸持续2秒，蜂鸣器停止鸣叫。

**程序示意图（中文版）：**

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-ying-yong-yang-li-4-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-ying-yong-yang-li-4-cheng-xu-shi-yi-tu-ying-wen-ban.png)

## 参数规格

引脚说明：

![](.gitbook/assets/boson-chu-mo-chuan-gan-qi-yin-jiao-shuo-ming.png)

重量： （g）

尺寸：26mm\*22mm

工作电压：3.0-5.0V

