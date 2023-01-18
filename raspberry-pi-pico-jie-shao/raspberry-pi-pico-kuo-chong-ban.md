# Raspberry Pi Pico 擴充板

## Raspberry Pi Pico 擴充板介紹 <a href="#_hlk124878608" id="_hlk124878608"></a>

**擴充板各個組件可分成以下六種，如下圖所示:**

![](<../.gitbook/assets/0 (3)>)

**各個組件功能名稱，如下表所示:**

![一張含有 桌 的圖片

自動產生的描述](../.gitbook/assets/1)

## **擴充板供電使用方法**

由於Raspberry Pi Pico 開發板上無電源指示燈，故在Raspberry Pi Pico 擴充板中，便設計了一顆電源指示LED燈，以了解目前是否為供電狀態。

### **由Raspberry Pi Pico USB供電**

使用Micro USB供電，可以將電源切換開關切到INT\_5V(INTERNAL，內部電源)，如下圖所示:

![一張含有 文字, 電子用品, 電路 的圖片

自動產生的描述](<../.gitbook/assets/2 (1)>)

使用Micro USB供電，也可將電源切換開關切到EXT\_5V(EXTERNAL，外部電源)，如下圖所示:

![一張含有 文字, 電子用品, 電路 的圖片

自動產生的描述](<../.gitbook/assets/3 (1)>)

### **由Raspberry Pi Pico USB供電**

{% hint style="info" %}
DC變壓器的接頭尺寸需為**5.5mm/2.0mm**，並且**接頭需內部為正極，外部為負極，如果內外極性相反，則會溶斷保險絲。**若保險絲已溶斷，可到電子材料行購買，替換即可。

但請注意，使用外部供電之DC變壓器，一定**只需能5V的電源輸出，不可大於5V。**若高於5V，則Raspberry Pi Pico開發板可能會損毀。
{% endhint %}



由外部電源接頭供電，若未切換至EXT\_5V，則電源指示LED燈熄滅，表示未供電，如下圖所示:

![一張含有 文字, 電子用品, 電路 的圖片

自動產生的描述](<../.gitbook/assets/4 (1)>)

若切至EXT\_5V，則電源供應指示LED燈亮起，此時代表供電中，如下圖所示:

![一張含有 文字, 電子用品, 電路 的圖片

自動產生的描述](<../.gitbook/assets/5 (1)>)
