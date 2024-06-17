# RFID模組

## RFID模組 <a href="#hlk169187139" id="hlk169187139"></a>

專案說明

使用「Raspberry Pi Pico W」連接「旋轉電位計模組」, 可顯示RFID模組偵測的卡號。此 RFID模組包含於「洞洞五教學材料包」內。

&#x20;

### RFID模組電路圖

·        Raspberry Pi Pico W

·        Raspberry Pi Pico W 擴充板

·        RFID模組

&#x20;

| RFID模組是SPI訊號輸入，  需接「D10」、「D16」、「D18」、「D19」的Raspberry Pi Pico擴充板訊號端上。 |
| -------------------------------------------------------------------- |

&#x20;

<figure><img src="../../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>

### BlocklyDuino 程式 (RFID)&#x20;

<figure><img src="../../.gitbook/assets/image (1) (1).png" alt=""><figcaption></figcaption></figure>

&#x20;

### &#x20;Arduino 程式(RFID.ino)如下&#x20;

```
#include <SPI.h>
 
#include <MFRC522.h>
 
MFRC522 rfid(/*SS_PIN*/ 10, /*RST_PIN*/ UINT8_MAX);
 
String mfrc522_readID()
{
  String ret;
  if (rfid.PICC_IsNewCardPresent() && rfid.PICC_ReadCardSerial())
  {
    MFRC522::PICC_Type piccType = rfid.PICC_GetType(rfid.uid.sak);
 
    for (byte i = 0; i < rfid.uid.size; i++) {
      ret += (rfid.uid.uidByte[i] < 0x10 ? "0" : "");
      ret += String(rfid.uid.uidByte[i], HEX);
    }
  }
 
  // Halt PICC
  rfid.PICC_HaltA();
 
  // Stop encryption on PCD
  rfid.PCD_StopCrypto1();
  return ret;
}
 
void setup()
{
  SPI.begin();
  rfid.PCD_Init();
 
  Serial.begin(9600);
}
 
void loop()
{
  String RFID_id = mfrc522_readID();
  if (RFID_id != "") {
    Serial.println((String("偵測到卡片: ")+String(RFID_id)));
  }
  delay(1000);
}
```

### 程式執行結果:

RFID模組一秒讀取一次，若偵測到卡片，則顯示卡號。

&#x20;![](<../../.gitbook/assets/image (22).png>)![](<../../.gitbook/assets/image (23).png>)

&#x20;

&#x20;

【補充】

RFID模組能偵測和讀取 13.56 MHz的RFID標籤和卡片，這意味著可以讀取 MIFARE系列的產品，如:悠遊卡、具有悠遊卡功能的金融卡或信用卡。

而手機開啟悠遊卡功能，RFID 模組也可以讀取到，不過這是透過NFC（近場通訊）技術實現的，而不是直接使用MIFARE晶片。這稱為「卡片模擬」（Card Emulation），即手機的 NFC 晶片模擬實體悠遊卡的行為。這種功能需要手機支援NFC和相應的應用程序來管理虛擬卡的資料。

&#x20;
