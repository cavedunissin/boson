void setup() {
  Serial.begin(9600);
}
void loop() {
  int sensorVoice=analogRead(A2);//讀取腳位A2(聲音感測器)
  if(sensorVoice>500){//數值500下屬於白噪音
    Serial.write("blow");
    delay(10);
  }
  delay(10);
  

}
