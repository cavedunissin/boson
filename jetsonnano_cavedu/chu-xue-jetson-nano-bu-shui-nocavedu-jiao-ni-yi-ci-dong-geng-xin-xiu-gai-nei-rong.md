# 書籍更新修改內容

## P229 安裝**RealSenseviewer套件網址部分有更改**

P229\
**sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo bionic main" -u**\
****修改成\
**sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo bionic main" -u**



如果已經透過書上舊的網址下載過，更改套件網址的方法如下，如果沒有使用舊的網址下載過的話請使用新的網址下載就不用執行以下步驟。\


**根據RealSense原廠github資料顯示安裝下載套件的網址已經從HTTP改成HTTPS，新的網址應以https://librealsense.intel.com 開頭。**

**如果是按照我們**[**《 初學Jetson Nano不說No-CAVEDU教你一次懂》│翰吉│CAVEDU教育團隊– 機器人王國商城**](https://robotkingdom.com.tw/product/9789869329989/)** 書籍內容安裝的或是參考之前JetsonHacksNano的人安裝的話應該都會出現以下403網址報錯問題。(如下圖)**

![](https://lh5.googleusercontent.com/4wF8MwMY_FCT5Swm8mMi1JAM_JvUMPqKGdXIcVIJaV4CcUOUYjDSCbc1OqZLtzw3a5s8LKYQHbT-o2M7VLW3bvOObhnuNHnfETRqvEj50k8CSEH7PHRiVTT96d_unBW4dTWCgjTu)

**RealSense原廠github資料:**

[**https://github.com/IntelRealSense/librealsense/wiki/Release-Notes#release-2430**](https://github.com/IntelRealSense/librealsense/wiki/Release-Notes#release-2430)****\
****

**使用錯誤連結下載過修改辦法:**\
****

**這裡我們首先介紹按照書籍安裝時出現錯誤無法安裝的解決辦法**

**如果已經使用錯誤的網址安裝套件時，之後就算使用新的網址安裝依然會報錯，這是因為套件網址清單已經被寫入設定檔中，需要修改設定檔的內容才能使用正確的網址更新套件。**\
****

**修改方法如下:**

**首先移動到設定檔路徑，執行以下指令**

| **cd /etc/apt/** |
| ---------------- |

**接著執行ls這個指令可以查看有sources.list這個檔案()**\
****

| **ls** |
| ------ |

![](https://lh6.googleusercontent.com/bVlGEgN\_5aJjBeG5RYfs1tjwd78\_zK28Y2wh72py8sck6-qykGK1IKN0UkZyp9pz4wV2yBeTdmjX4OrR0KH5VHIAopiES9FEPPdJ5YQzqG48LNIydQhYKdgD5GazTDQ4l4KDT2Tb)

**接著修改檔案內容，把舊的網址刪掉或是註解掉，如果有使用新的網址下載過也可以把新的網址取消註解，執行以下指令修改sources.list檔案。(記得使用sudo權限否則無法儲存檔案)**\
****

**舊的網址: http://realsense-hw-public.s3.amazonaws.com/ 相關網址**

**deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo bionic main(需刪掉或註解掉)**\
****

**新的網址:https://librealsense.intel.com 開頭**

**deb https://librealsense.intel.com/Debian/apt-repo bionic main**\
****

| **sudo nano sources.list** |
| -------------------------- |

![](https://lh6.googleusercontent.com/R28EChCeoSP--SWiZTfbqh7HF_WWJ2G4JTRQrTJQ5dzlFYzFDj3CSY-R795K8Op5S8X4J7Kp4hQFZa3yXSkt2r3nJo9JNvJ9cf_IbQauL2LTbhn\_0f2\_tniBRxvyTuoygnuwf-5N)

**修改完畢後，按CTRL+X離開，並按Y確定修改存檔後離開。(如下圖)**

![](https://lh6.googleusercontent.com/x_TDPwNmbg3UAvgS0tgJw0x65W_eOQjewvbp7XyuyXP6423gcdI3cwTfjAozXf4qIdqFNLXLPj7P9UaO45aWMDVwGXBTRV_Jeeju1qzonVeisid_rSKuT-IsprmU8ww7NdVXMdY2)

**接著在執行一次以下指令，即可從新的網址抓取套件。**

**`sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo bionic main" -u`**
