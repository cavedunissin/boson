# 【5】RFID模組

\#include \<SPI.h>

\#include \<MFRC522.h>

MFRC522 rfid(/\*SS\_PIN\*/ 10, /\*RST\_PIN\*/ UINT8\_MAX);

String mfrc522\_readID()

{

String ret;

if (rfid.PICC\_IsNewCardPresent() && rfid.PICC\_ReadCardSerial())

{

MFRC522::PICC\_Type piccType = rfid.PICC\_GetType(rfid.uid.sak);

for (byte i = 0; i < rfid.uid.size; i++) {

ret += (rfid.uid.uidByte\[i] < 0x10 ? "0" : "");

ret += String(rfid.uid.uidByte\[i], HEX);

}

}

// Halt PICC

rfid.PICC\_HaltA();

// Stop encryption on PCD

rfid.PCD\_StopCrypto1();

return ret;

}

void setup()

{

SPI.begin();

rfid.PCD\_Init();

Serial.begin(9600);

}

void loop()

{

String RFID\_id = mfrc522\_readID();

if (RFID\_id != "") {

Serial.println((String("偵測到卡片: ")+String(RFID\_id)));

}

delay(1000);

}

**而手機開啟悠遊卡功能，RFID 模組也可以讀取到，不過這是透過NFC（近場通訊）技術實現的，而不是直接使用MIFARE晶片。這稱為「卡片模擬」（Card Emulation），即手機的 NFC 晶片模擬實體悠遊卡的行為。這種功能需要手機支援NFC和相應的應用程序來管理虛擬卡的資料。**
