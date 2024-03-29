# 新版LinkIt 7697開發板 V1.1版使用序列埠印出指令亂碼問題

**新版LinkIt 7697開發板 V1.1版使用序列埠印出的指令，燒錄程式後開啟序列埠一開始會有印出亂碼的現象。建議使用者使用Serial指令時鮑率設定為115200。**\


**經檢測發現此亂碼為LinkIt 7697初始化訊息，因新版LinkIt 7697初始化訊息預設鮑率為115200，當使用BlocklyDuino3或arduino預設鮑率為9600時皆會出現亂碼。**\


**現階段解決方案：**

**把預設鮑率改為115200初次開啟序列埠或按RST 按鈕就會正常顯示以下初始化訊息。**\


**注意：**

**loader init**

**fota: TMP is empty, skip upgrade**

**jump to (0x10079000)**

**此訊息為加載程序初始化並且跳過升級的正常訊息。**\


\


![沒有設定鮑率，預設鮑率為9600。](../.gitbook/assets/7697\_01.png)

![一開始會有亂碼的問題。](../.gitbook/assets/7697\_02.png)

**把鮑率改為115200**

![將初始化序列埠鮑率改成115200](../.gitbook/assets/7697\_03.png)

![此時可以發現沒有亂碼，有初始化訊息。](../.gitbook/assets/7697\_04.png)

**參考資料-聯發科技LinkIt 7697:**

[**https://bit.ly/2Lx8QHe**](https://bit.ly/2Lx8QHe)\
