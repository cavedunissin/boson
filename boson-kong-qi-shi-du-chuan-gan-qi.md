# 空气湿度传感器

## 实物图片

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-shi-wu-tu-pian.jpg)

## 基本信息

中文名称：空气湿度传感器

英文名称：Humidity Sensor

序号：i18

SKU：BOS0041

## 功能简介

空气湿度传感器可以检测空气中的水分，并转换成可用的输出信号，它与水分传感器的区别在于前者主要用于检测空气中的水蒸气含量，而后者主要用于检测水滴。空气湿度传感器可用于气象观测、环境控制、露点测量、干燥处理、暖房、植物栽培、博物馆、展览会（馆）、纸张制造、存储、过程控制、养殖控制、纺织制造等场景中。

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-mo-kuai-jian-jie.png)

## 使用说明

空气湿度传感器可以感知空气中水分的多少，按照下图所示连接电路，通电后即可通过显示屏模块直接读取空气湿度值。

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-shi-yong-shuo-ming-1.png)

也可以将空气湿度传感器与其他输出模块相连，实现各种功能。

> * 当空气湿度升高时，输出信号增强；当空气湿度降低时，输出信号减弱。

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-shi-yong-shuo-ming-2.png)

## 原理介绍

空气湿度传感器主要用来测量空气湿度，感应部件采用高分子薄膜湿敏电容，位于杆头部，这种具有感湿特性的电介质其介电常数会随相对湿度而变化。 来源：[https://baike.baidu.com/item/空气湿度传感器](https://baike.baidu.com/item/空气湿度传感器)

## 应用样例

### \(1\) 比较晴天与雨天室内空气湿度差异

**样例说明：**分别在晴天与雨天，测量室内空气湿度，并通过显示器模块读取数值，比较两种天气下空气湿度的差异。

**元件清单：**空气湿度传感器；电源主板-单路；显示屏模块。

**连线图：**

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-ying-yong-yang-li-1-lian-xian-tu.png)

### \(2\) 粮仓温湿度检测

**样例说明：**粮仓粮食安全储藏的主要参数是粮仓的温度和湿度，这两者之间又是互相关联的。粮食在正常储藏过程中，含水量一般在12%以下是安全状态，不会产生温度突变，一旦粮仓进水、结露等使粮食的含水量达到20%以上时，就会使粮食受潮，胚芽萌发，新陈代谢加快而产生呼吸热，使局部粮食温度突然升高，当温度高于22°C时，必然引起粮食“发烧”和霉变，并可能形成连锁反应，从而造成不可挽回的损失。因此有必要检测粮食温度。当温度传感器感受到粮食内温度时，当温度高于22°C时，自动开启风扇、点亮小灯并报警。而当湿度传感器感受到粮食内湿度高于20%时，自动点亮小灯并报警。

**元件清单：**空气湿度传感器；防水温度传感器；电源主板-三路；阈值模块；分支模块；逻辑“或”模块；风扇模块；蜂鸣器模块；LED模块。

**连线图：**

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-ying-yong-yang-li-2-lian-xian-tu.png)

### \(3\) 植物培育箱

**样例说明：**检测土壤湿度、箱内温度、空气湿度等指标，打造适宜某种植物生长的培育箱。

**元件清单：**土壤湿度传感器；温度传感器；空气湿度传感器；蜂鸣器模块；LED模块；Micro:bit；Micro:bit BOSON扩展板。

**连线图：**

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-ying-yong-yang-li-3-lian-xian-tu.png)

**设计意图：**使用土壤湿度传感器、温度传感器、空气湿度传感器分别检测植物培育箱中的土壤湿度、温度和空气湿度。若其中某一环境因素不在设定区间范围内，则表示培育箱内的当前环境不适宜种子生长，此时让LED灯和蜂鸣器发出警报。

**\*注意：**本程序中所设定的区间需要根据具体环境因素和种子生活习性进行调整。\*

**执行流程：**

① 初始化变量：将变量“环境指标”置为0；

② 检测土壤湿度：若土壤湿度小于200或大于800，则将“环境指标”置为1；

③ 检测温度：调用函数获取温度值，若温度小于10或大于40，则将“环境指标”置为1；

④ 检测光照：若空气湿度小于60%，则将“环境指标”置为1；

⑤ 判断环境是否适宜植物生长：若“环境指标”为1表明当前环境不适宜植物生长，点亮LED灯并让蜂鸣器发生警报声持续5秒；否则什么也不做。

**程序示意图（中文版）：**

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-ying-yong-yang-li-3-cheng-xu-shi-yi-tu-zhong-wen-ban.png)

**程序示意图（英文版）：**

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-ying-yong-yang-li-3-cheng-xu-shi-yi-tu-ying-wen-ban.png)

## 参数规格

引脚说明：

![](.gitbook/assets/boson-kong-qi-shi-du-chuan-gan-qi-yin-jiao-shuo-ming.png)

重量： （g）

尺寸：26mm\*22mm

工作电压：3.0-5.0V

