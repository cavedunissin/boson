# 5-4 MCS Lite 介紹及MCS Lite 環境建置

## MCS Lite 介紹

**MediaTek Cloud Sandbox Lite Edition（後面簡稱MCS Lite），是根據聯發科技物聯網雲端平台 MediaTek Cloud Sandbox（後面簡稱 MCS）的核心功能改寫，開發成一個跨平臺的輕量級桌面應用程式，可運行在 Windows, Linux 和 Mac OS 等常用作業系統上。而MCS在2021年4月16日後會被關閉，但仍然可以使用MCS Lite功能，本範例將執行在 Windows 系統中。**\


**MCS Lite 將運行網路應用平台所需的元件，包括資料庫，網頁伺服器與系統管理介面等都封裝在一個執行檔內，可以直接透過電腦成為區域網路的物聯網服務平台，開始與網路上的物聯網裝置溝通，收集裝置產生的數據或進行遠端操控與設定。**\


## **下載MCS Lite**

**MCS Lite 的各平台載點:**\
&#x20;[**https://github.com/mcs-lite/mcs-lite-app/releases/tag/v1.2.2**](https://github.com/mcs-lite/mcs-lite-app/releases/tag/v1.2.2)

**本範例下載Win 64的版本執行，如下圖所示。**

![](https://lh4.googleusercontent.com/LfHScJ82LZ2hb3IrOGMEMtiX3sZ9xECIUJK6RWS0qhTYu-fKegNgrqsP7sMhM8sTyu4aDrqnq30Izvem49po8eFwlRRUiBlGvEnYWvYe510pPWRs7RHjofdAxRgXhbtQA3wx33CXaLfuSBgo9w)

\


## **安裝MCS Lite並執行在電腦中**

**下載到電腦並解壓縮後，產生的資料夾可以搬遷或複製到任意的目錄底下，並開啟執行檔mcs-lite-app。**

![](https://lh5.googleusercontent.com/c10\_GPs7j-p8Og\_pqDMTxaDSxaGuy6NTLjgHaTkpzQ1EJ4RWQ6Ey-KcFpmFdzUI4jHx-OcthccLHYwGs\_Iv1Xer8z7oLkYm79YHHXQ8PfG\_PAPSjyodi17deym27GXC5GMgNWU\_UDcWxcuStaQ)



**程式執行時，Window 10電腦會認為無法辨識的應用程式，會啟動Microsoft Defender SmartSceen，依照下列步驟即可以正常執行。**

**按其他資訊🡪仍要執行🡪允許存取**

![](https://lh4.googleusercontent.com/YFSAc31a\_Gy1\_EoAR6q8DJfItsDsWuh-5e\_WpkB9QkCu7z2BmqaYs4gqZnVdiXJ3E8pTgixxC6Ph76Z-43mXBv\_8prluPnFFawdbKRN7KG653XWfizmvkB3zOjTi2mH50LPWSo5e2Kjk5ZVIjA)

![](https://lh6.googleusercontent.com/r0ETlKqRd2Bf\_8f-TG6GODJO\_YZoLidbbbSYIvlARa2dq3TIyU9ZDnr4sNkF9jbGq7-u1rSEGU8iCDi\_RcOPqXzf9SIiWWAblU3GHlXsfC\_FD-k7Cf53yJ7Za2L9XkysXD9CjgdQH16jkXPssQ)

## **註冊管理者帳號及啟動MCS Lite**

**成功開啟後，使用MCS Lite的首要條件就是註冊使用者名稱、信箱、密碼，註冊完畢後會登入MCS Lite中使用，如下圖所示。**

![](https://lh3.googleusercontent.com/zPIo3it0s\_mT\_fiGjygqNdO-xZUVLxo285VQMNOmMQasVDww5mty1lYsGU-5tV6oN1BFSBmfBQJGI86MQXLhr2xVBtcPz-j85zQzMYXbzEx6DxDvFEuQgKCortRWtPheV9xJZyyqufAAuOGjgg)

\


![](https://lh5.googleusercontent.com/Mf87hLS5gv6IgQV790Lb2p4VscyCwOgTce7RDZW4V-FjF3jXKx-omr-amNWiGVoCesQlmzEM\_9l51hndK5\_T3c\_6eVLA8\_nzuZ66G4ziRTtRSdzopuVaFIf2leP6CIi9k6pc3yh6pKKJGhR0lQ)



**再來會執行Node.js: Server-side JavaScript，電腦會詢問是否解除封鎖，請按下允許存取。**

![](https://lh5.googleusercontent.com/wI7osIbygynVQA72pdTWTfKF0krHjLvNbroLvGj11UFXPB17XxgxpPc3VuwuRCREqWvMJq66vekp3kn8HGvMJhPnuc-3bkgq4jfmOJ6MyoHEWRbp2cSFqpHCZ6cgXhu-nJMqkaC-jcEAF6Mu4g)

**按下右上角啟動即可以在電腦中開啟MCS Lite。**

![](https://lh4.googleusercontent.com/fu9WVcgEgXLMp3agbMj-d48D0KrV0L5Nh67mTGLcJwves9joXtG2dgGfzL8H8f\_z-s43NG2Y3FQOZEuOZV4FHlTYNh79wZacYNc\_5vjRUzPGNaRguWcSpd5RgdnsbtRb\_w80dSXtA4KFK68mpw)

**啟動之後下方會列出目前 MCS Lite所綁定的位址 (IP) 與連接埠 (port) 列表。**

![](https://lh6.googleusercontent.com/4wtVAbWkr6rDrivzZ0MS1bVbGsJXfxtOMVuPbFHfb1qkzRvLmkgpSrFlq4s0TjxIq7I1lt1j7aZ8aH4I5MtogCVeNKTMlWMblnSZ1ju-OKtkQlgct5yhD0CuULiEfiyPTLfTXEMaZGmz8g5skA)

**同個網路內的電腦皆可在瀏覽器的網址列中輸入列出的位址 (IP) 與連接埠(port) ，連線到 MCS Lite網頁。**

![](https://lh3.googleusercontent.com/oRVxmipGOZJ4gXBw3o2kpmMhWZH85RZ1CmY4-hRjQIgvwW31TFN7jdKxRZuW6gTzV00IUQ8-Nu3rW9ERKkHCQse-9JP0ZSLC5BLT8R1woA-M4vBhm\_9NQCzJiqzTc11MtgKVm6lVzBs3s5b8Lw)

**再次登入MCS Lite網頁，即成功註冊啟動MCS Lite。**

![](https://lh3.googleusercontent.com/vSvWhmV6TLqdWmRuzj-fZTXp7JroZXLe8Qavc0wayTzIMTsOy8kmZ8xSgM1SHF5IDY4M23HNtwbulmN0J8aoJDKDCTzShsyXGJ4pz3dnMf-U3TTSGJ51Q1M5zDEXLyBzvconyFh-mw-lCYLBTA)
