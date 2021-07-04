void setup() {
  Serial.begin(9600);
  pinMode(6, INPUT);
}

void loop() {
  int R = analogRead(A2);     //Sound sensor
  int value = analogRead(A2); 
  int button = digitalRead(6);
  int B = analogRead(A6);     //light sensor
  int F = analogRead(A0);     //rotatry potentiometer
  Serial.write(R / 4);        //send out all data to processing
  Serial.write(value / 4);
  Serial.write(button);
  Serial.write(B / 4);
  Serial.write(F / 8);
  delay(100);
}