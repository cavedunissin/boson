# 認識Hangeekduino圖形化介面

Hangeekduino是根據BlocklyDuino所新增首次接觸就上手套件相關積木功能出來所設計的圖形化程式開發介面，注意目前此軟體只支援Windows作業系統使用。

> 注意目前此軟體只支援Windows作業系統使用

### **軟體下載連結:**

[https://drive.google.com/drive/folders/1iHQyfQvjbS4lhob-3mF5auntte\_G86\_f](https://drive.google.com/drive/folders/1iHQyfQvjbS4lhob-3mF5auntte\_G86\_f)&#x20;

## &#x20;如何打開Hangeekduino

下載完HanGeekduino.zip檔案，解壓縮之後可以得到一個HanGeekduino的資料夾 打開HanGeekduino資料夾點選HanGeekduino.exe即可開啟HanGeekduino。

![](<../.gitbook/assets/image (17).png>)

使用方法就跟BlocklyDuino一樣，從下圖可以看到在積木選單下新增了Arduino首次接觸就上手的區塊。Arduino首次接觸就上手的相關積木都在這邊可以使用。

![](../.gitbook/assets/Arduino首次接觸就上手.png)

![輸入元件的積木](../.gitbook/assets/Hangeekduino\_INPUT.png)

![輸出元件的積木](../.gitbook/assets/Hangeekduino\_OUTPUT.png)

第一次使用Hangeekduino軟體或Arduino首次接觸就上手的人，需要先安裝CP2102 USB驅動程式才可以正常燒錄程式，根據以下網址選擇您電腦所對應的作業系統下載對應的安裝檔並安裝CP2102 USB驅動程式。

{% embed url="https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers" %}

注意WINDOWS一鍵安裝版本下載位置改為以下CP210x VCP Windows檔案(如下圖紅框所示)，CP210x Universal Windows Driver為從裝置管理員安裝的版本。

<figure><img src="../.gitbook/assets/image (3) (3).png" alt=""><figcaption></figcaption></figure>

成功安裝完CP2102 USB驅動程式後，將板子上的USB線插入電腦中即可在畫面右上方選擇電腦抓到的COM Port-序列埠(如下圖橘框處所示)，這裡我們選擇COM3。

![選擇COM Port(序列埠)的位置](../.gitbook/assets/Hangeekduino\_COMPORT.png)

接著我們開始寫我們的第一個程式:在序列埠上每一秒換行並印出Hello World。

![](../.gitbook/assets/Lesson\_0\_HelloWorld.png)

選好COM Port之後即可開始燒錄，在工具列最左邊第一個向右箭頭的按鈕即是燒錄鍵(如下圖橘框處所示)

![燒錄鍵的位置](../.gitbook/assets/Hangeekduino\_Upload.png)

燒錄時需要等待一段時間依據不同程式等待時間不同，可以點開燒錄狀態查看是否燒錄完成，如燒錄成功會顯示Arduino.exe exited with 0 and null(如下圖橘框處所示)。如顯示其他訊息或Error請檢查CP2102 USB驅動程式是否成功安裝正確版本、USB傳輸線是否正常插上電腦跟Arduino板子上、程式設計是否有誤。

![燒錄成功時顯示的訊息](../.gitbook/assets/Hangeekduino\_Uploadsuccess.png)

燒錄完成之後，可以選擇功能表左邊第二個選項開啟PuTTY的序列埠監控視窗(如下圖橘框處所示)。

![序列埠監控視窗開啟位置](../.gitbook/assets/Hangeekduino\_Serialport1.png)

開啟序列埠監控視窗之後可以看到每一秒都會換行並印出Hello World，代表程式沒問題，驅動程式安裝正常，程式燒錄成功，就可以開始嘗試我們以下輸入模組、輸出模組的範例。

![序列埠監控視窗畫面](../.gitbook/assets/Hangeekduino\_Serialport2.png)

## 教學影片:

以下是阿吉老師的Arduino首次接觸就上手 5分鐘小教室，可以由前導片依序觀看以下教學影片。

## 【教學】Arduino首次接觸就上手 5分鐘小教室\_前導介紹

{% embed url="https://www.youtube.com/watch?v=JjETRW5MRlM" %}

## 【教學】Arduino首次接觸就上手 5分鐘小教室\_ep1 下載

{% embed url="https://www.youtube.com/watch?v=JKDh8EZ4SXU&feature=youtu.be" %}

## 【教學】Arduino首次接觸就上手 5分鐘小教室\_ep2 安裝驅動程式

{% embed url="https://www.youtube.com/watch?v=JEZQHbwtzkw&list=PLZkpEAYL25ADJUHaSJ-_bNTNuak8cJFPQ&index=2" %}

##



