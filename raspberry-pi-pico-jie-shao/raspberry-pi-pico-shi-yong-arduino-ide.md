# Raspberry Pi Pico 使用Arduino IDE

### Arduino IDE下載 <a href="#_toc124882497" id="_toc124882497"></a>

洞洞么模組之程式，均為以Arduino IDE撰寫，請下載Raspberry Pi Pico 專屬 Arduino IDE，連結:

[https://reurl.cc/oZGK63](https://reurl.cc/oZGK63)

![一張含有 文字 的圖片

自動產生的描述](<../.gitbook/assets/0 (2)>)

下載至電腦後，請解壓縮程式，開啟執行檔。

![](<../.gitbook/assets/1 (4)>)

按下允許存取，即可開啟Arduino IDE。

![一張含有 文字 的圖片

自動產生的描述](../.gitbook/assets/2)

開啟Arduino IDE，即可使用Raspberry Pi Pico

![一張含有 文字 的圖片

自動產生的描述](../.gitbook/assets/3)

### Raspberry Pi Pico 上傳程式 <a href="#_hlk124512920" id="_hlk124512920"></a>

選擇開發板

開啟Arduino IDE 後，需要確認燒錄目標為Raspberry Pi Pico開發板，故路徑為:

工具->開發板->Raspberry Pi RP2040 Boards(2.6.3) -> Raspberry Pi Pico

![](../.gitbook/assets/4)

燒錄程式

由於Raspberry Pi Pico 在第一次燒錄時，裝置管理員並沒有顯示COM Port(序列埠)編號，所以先直接燒錄即可。以Blink程式為例，程式路徑:**檔案->範例->01.Basis->Blink**

![](../.gitbook/assets/5)

按下**上傳**鍵。

![一張含有 文字 的圖片

自動產生的描述](../.gitbook/assets/6)

此時會顯示**設定**訊息

![一張含有 文字, 電子用品, 顯示, 螢幕擷取畫面 的圖片

自動產生的描述](../.gitbook/assets/7)

之後，燒錄程式時即可選Com port 編號，路徑為:

**工具->序列埠->COM XX(Raspberry Pi Pico)**

![](../.gitbook/assets/8)

至此，Raspberry Pi Pico已設定完成，之後就可使用洞洞么套件模組，洞洞么套件模組程式下載:

[https://reurl.cc/jR0VxL](https://reurl.cc/jR0VxL)

![](../.gitbook/assets/9)
