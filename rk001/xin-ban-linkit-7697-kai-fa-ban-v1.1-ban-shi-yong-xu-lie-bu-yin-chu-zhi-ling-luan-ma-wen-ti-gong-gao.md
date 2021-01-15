# 新版LinkIt 7697開發板 V1.1版使用序列埠印出指令亂碼問題

**新版LinkIt 7697開發板 V1.1版使用序列埠印出的指令，燒錄程式後開啟序列埠一開始會有印出亂碼的現象。**

**我們跟製造商已聯絡晶片廠商處理此訊息問題。  
  
檢測結果發現此亂碼為LinkIt 7697初始化訊息，因新版LinkIt 7697初始化訊息預設鮑率為115200所以當使用BlocklyDuino3或arduino預設鮑率為9600時皆會出現亂碼，把預設鮑率改為115200初次開啟序列埠或按RST 按鈕就會正常顯示以下初始化訊息。**

**loader init**

**fota: TMP is empty, skip upgrade**

**jump to \(0x10079000\)**

**此訊息為加載程序初始化並且跳過升級的正常訊息。**  


**loader init**

**fota: TMP is empty, skip upgrade**

**jump to \(0x10079000\)**

**此訊息為加載程序初始化並且跳過升級的正常訊息。**  


**預設預設鮑率為9600時會出現亂碼**

![&#x6C92;&#x6709;&#x8A2D;&#x5B9A;&#x9B91;&#x7387;&#xFF0C;&#x9810;&#x8A2D;&#x9B91;&#x7387;&#x70BA;9600&#x3002;](../.gitbook/assets/7697_01.png)

![&#x4E00;&#x958B;&#x59CB;&#x6703;&#x6709;&#x4E82;&#x78BC;&#x7684;&#x554F;&#x984C;&#x3002;](../.gitbook/assets/7697_02.png)

**把鮑率改為115200**

![&#x5C07;&#x521D;&#x59CB;&#x5316;&#x5E8F;&#x5217;&#x57E0;&#x9B91;&#x7387;&#x6539;&#x6210;115200](../.gitbook/assets/7697_03.png)

![&#x6B64;&#x6642;&#x53EF;&#x4EE5;&#x767C;&#x73FE;&#x6C92;&#x6709;&#x4E82;&#x78BC;&#xFF0C;&#x6709;&#x521D;&#x59CB;&#x5316;&#x8A0A;&#x606F;&#x3002;](../.gitbook/assets/7697_04.png)

**參考資料:**

[**https://docs.labs.mediatek.com/resource/mt7687-mt7697/en/get-started-linkit-7697-hdk/gcc-arm-embedded-linkit-7697/connect-to-the-serial-port-linkit-7697**](https://docs.labs.mediatek.com/resource/mt7687-mt7697/en/get-started-linkit-7697-hdk/gcc-arm-embedded-linkit-7697/connect-to-the-serial-port-linkit-7697)  


