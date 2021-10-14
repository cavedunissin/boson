# 5-6 雲端溫濕度監控

**本單元將透過7697及溫濕度DHT11感測模組來感測環境的溫溼度，並透過區域網路將溫溼度的數值上傳至電腦端的MCS Lite網頁中，以下講解從建立溫溼度的產品原型，到讀取7697的溫溼度數值。**\
****

## **建立溫溼度的產品原型**

**按下開發，再按下原型**

![](https://lh3.googleusercontent.com/2OvBVC-fzs4zRszqeUkGviHwptb-huAQGZszQXkmwGRzjkAIWQjeO_LCrl2DSQIs10oVNut7OYCdD6GZKLf_n6VrTeR1wWJYPn1g6pmGASv_bUMbMf\_4hqnEaRyqfRoJFMnhKKCvi-ZjEkyrrA)

**按下創建**

![](https://lh4.googleusercontent.com/5bUHm1-qRBGmYxhoZT6H9dB6tL-Bu8WgpHPZM61zW\_5cSfBHUJgIrSpKheyLiuU8LoRUF19bVhM_B-VygBddF14zumW_GoxZl4iffCVh7uV1NZeMNIgq3B8oQCqSbr-fe4iIe0hdOF_NxL5vjA)

* **選擇創建方式選輸入原型資訊**
* **產品原型名稱輸入溫溼度監控**
* **產品原型版本輸入1.0**
* **按下儲存。**

![](https://lh3.googleusercontent.com/jIsPGziuIucod1gcfN0ncKDljhgN6EBmFLm4dcTeQENcKe0u\_7qvtWDEDc35AOziCiknal28Qq3HNvjbYqHK9N-XY7Px8bl94b4e3Lyd1inR\_3WQKEEnvG65eLYEiCBJwT89R4KbiVbQxMZePA)

## **建立溫濕度的資料通道**

**在溫溼度監控中，按下詳細**

![](https://lh3.googleusercontent.com/vmym2xdnTmEAMKsaeX5WzJ0jJ4fAQ_V87S7qPkBiYKu3WgN-XR2LksrLZzkyvtw9-9-rWOHPK23UYBOQFyo04FFnA8DOpxgh4ayFYLOstRfWcYkfHTJOhXzdhkjlGehDmRx8JXSi4AxGOJSmKA)

**在資料通道中，點選新增。**

![](https://lh6.googleusercontent.com/2MFKuEqi44YXgkytpQQH4BdERXmuL4YUXJBNv3XoRo9fARThEjQHj5HvC-t9whvs0KyZwCdGgRKAPx6IQqzEutpLuRVEynXy7KScHhYFO43geMeAtdQSGMDfEDgQqGcK-nIfoul5XY2F_Wuqsg)

**新增溫度的資料通道，在顯示器中，點選新增。**

![](https://lh6.googleusercontent.com/l76isNk-7A3lM9y7J7vojCz0gF5xuaMPAjteYm2Jdd6m1GgEIvcu7sQA6B5roxWOfaYhSXBA8-ilWsFXUscBmbvb9wcyE6uI4j17iRBd-H4NDG3\_aBYxnUMEthl7hgsU3SGQwIkdWUrtNsPktQ)

* **輸入溫度的資料通道名稱Temperature**
* **資料通道id輸入Temperature (選了就無法再改)**
* **資料型態選整數**
* **資料單位選degree Celsius**
* **按下新增**

![](https://lh5.googleusercontent.com/RC8jY1jVv2YMJ64vM1Ij3FTa\_0-OV5d3YU4YW0sk41rHkMkY6SbIb22t7C6kdU0SL06IaZbXZc_kzfuVfOYEk\_3lrgzAogLHFRVpUjHMi66EFJRbmyDJ_heQdPn_q6irjhvQ91Oig6knP3XStw)

**顯示溫度的資料通道建立完成，接下來建立濕度的資料通道，點選新增。**

![](https://lh5.googleusercontent.com/fFfwHgsF2Pc5IQ0D3CZfDQ9AhW2FUREFbxKf0xl2O4r7vZ9zGPnsNCM7LEIoDy_m8dcai3wKmox9Ca8\_8DtkcumAZn4vGFaZQD\_3IRA8dYOPQhQMDa0w22vnEE9DKHdhUlDPX29XTEqpWIshZQ)

**在新增資料通道的顯示器，按下新增。**

![](https://lh6.googleusercontent.com/l76isNk-7A3lM9y7J7vojCz0gF5xuaMPAjteYm2Jdd6m1GgEIvcu7sQA6B5roxWOfaYhSXBA8-ilWsFXUscBmbvb9wcyE6uI4j17iRBd-H4NDG3\_aBYxnUMEthl7hgsU3SGQwIkdWUrtNsPktQ)

* **輸入溫度的資料通道名稱Humidity**
* **資料通道id輸入Humidity (選了就無法再改)**
* **資料型態選整數**
* **資料單位選percent**
* **按下新增**

![](https://lh5.googleusercontent.com/i8DHx1aeENf_dZg3gskoTAd1rI4lW1DqgqVCPfxE8jR8rQdaYL59sY9c6Bpacl4jcFpZRo0kQ0OJsQ-4jYDcn72GLOoN45Ai0nSo5rszIVbl5Gfh-uiXRb8FTLq1FIoNQawFRDAyDMGQZfR_ig)

## **建立溫濕度的測試裝置**

**溫溼度顯示的資料通道接建立完成，之後建立溫濕度的測試裝置，請點選測試裝置。**

![](https://lh6.googleusercontent.com/FjVFaenRPEA-miVCmLo3Jav8FWZ5q7wH5-ozJp_GLzktSZZAxn5jt5Iok5VB5h2GM13UggntkfNTh3W5-dtuxsn-JbBLco7gLnIhB6RaTYmN9wKwnaVyJCQ-kpy-g_lEo4pJwDQ_mlKXcYTNIQ)

**按下新增測試裝置**

![](https://lh6.googleusercontent.com/sVdVWUhqtpXQri1GE0K50d_uIr-q36S-YUz8K9XL9OcCOTJp9i10NXsEc2F9avIu_FrDBx9PfiRwj4vFmnj41O323oSPU5CgX0u7wMXCdYEqwTwmsCxXd7wNmnM9Qb5neIy9GPhxftomIKJBJg)

**在新增測試裝置名稱中輸入溫溼度監控，按下儲存。**

![](https://lh5.googleusercontent.com/zebc6iChlsxN-DEQTkFJJVw3ORv3Cr1yW7eiVFjPpqBzNxLXWzL7hyM3Tfbc2anfoXOD1Yn\_9sPR5xSbL5E2wwIeSUjKvrjrkYOoUTkOyH7oDjE07Hp5Lb6piRj0zuWZ1DGQaLMiCLo1KF0cGA)

**建立測試裝置成功，產生DeviceId、DeviceKey，之後撰寫溫濕度程式需要用到。**

![](https://lh3.googleusercontent.com/QsMbuBDHgt86FFPj53eC1nxsZwGwdlyU37kPNZdRAw-TmXVUY0-d7sLJlj5y1wfzxnEu0Gmph4C5dIwjJAnSPEudFWHkGEmlCTlsNudvUnhkyp1DQuJGyb3e\_6HH-x7XZzmcH79GmDwur5Vyzg)

## **執行結果**

**將溫濕度感測模組接上LinkIt 7697擴充板的D2腳位。**\
****

![](https://lh5.googleusercontent.com/rW6R_GndpWU5WjGMdRIyjI\_5G4450nITwQZ_hDVx8GZyEfIFZiqwyHiGratUskYWaUEe3DIRaw9KTlcBuWpLIo0pvPqTQPS901ABtPBKKmq7yG4PU9rv37K5Rf58jLn4PMGhn85X-6gyYHjohw)

**撰寫溫溼度感測器的程式。**

![](https://lh5.googleusercontent.com/U5E-vfhybQ3Xlw6Pnwqn-QN5k98VbMuB2DYbExcVrHrGdIyOlZt4NuLBhp0YaHvVQRRP6cRFH5E5ujtWp4U0P5\_V-ElA2E99JSeCaKD8RRI4jSt7ZFX0-uJEd8-H-aNdWBUEh4bySq-TOhvRiQ)

**序列埠監控視窗顯示連線狀態及數值**

![](https://lh6.googleusercontent.com/DQ2NDUoy8kgKKfSJzU2fTbNFXzKhUkyNjEp2PwRkybxWWyTYrky7yqSCoODfjIzQDEo-XZzQXkCnpw2GyfpELSEwZM9VuAylcn5XBXUzVb6lJHV0BY8\_aLDNqbVmTTMRyiY_iQMKsqVlW3enXA)

**溫溼度的數值已經成功上傳至MCSLite**

![](https://lh5.googleusercontent.com/eFBwTbsjiG7-\__GbHFqT0VktfpBZLgrXD6BK4upIiXT7-2FqALjj28T4AXQCNyDItOBWPl3YA2W0UNdGp70jiNFxwLaaI0k9ojhKU2ViQdMZPw3j\_69W17iQieemSx4pwH5KKDbiX33\_nCKr2Q)

**點選顯示通道的左上角「**![](https://lh5.googleusercontent.com/wax5wKbB\_4qzeo03AXBGBLEie768y8lE1\_S1UK6IXhgsKp6iH1GSWAqks0SWfBJvhhqiHTG6wdhsX9yjmKvbZOdrdmg8kxt4GKm7wrsuo16vswX4OHkzP4HYjhQf0ZbJ4htwAxfVozXok3omAw)**」，點選打開歷史資料，可以顯示該通道的歷史資料。**

![](https://lh3.googleusercontent.com/Upn-XcNXCwjqZQeErWOWnU5CZ8zBxFVo38B0EhXFEaFbCkOtq3lI7vwHii1D6iV2o8p-lOMin5b-Z5m9pFDNwCMats54CXnJGv8AjqSoIq45laBWryqUjt-2fgH856SkjPxCaj_fNn6-r174Gw)

