# 【6】RGB全彩LED模組(共陽極)

使用「Raspberry Pi Pico W」連接「旋轉電位計模組」, 控制RGB全彩LED模組的顏色變化。此 **RGB全彩LED模組**包含於「洞洞五教學材料包」內。

void Green() {

digitalWrite(8, LOW);

digitalWrite(9, HIGH);

digitalWrite(10, HIGH);

}

void Red() {

digitalWrite(8, HIGH);

digitalWrite(9, HIGH);

digitalWrite(10, LOW);

}

void Blue() {

digitalWrite(8, HIGH);

digitalWrite(9, LOW);

digitalWrite(10, HIGH);

}

void Closed() {

digitalWrite(8, HIGH);

digitalWrite(9, HIGH);

digitalWrite(10, HIGH);

}

void setup()

{

Closed();

pinMode(8, OUTPUT);

pinMode(9, OUTPUT);

pinMode(10, OUTPUT);

}

void loop()

{

Red();

delay(1000);

Blue();

delay(1000);

Green();

delay(1000);

Closed();

delay(1000);

}
