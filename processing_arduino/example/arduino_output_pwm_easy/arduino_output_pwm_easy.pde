import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

void setup() {
  size(1200, 400);

  // Prints out the available serial ports.
  println(Arduino.list());

  arduino = new Arduino(this, Arduino.list()[0], 57600);
  arduino.pinMode(11, Arduino.OUTPUT);
}

void draw() {
  float pwm = map(mouseX, 0, 1200, 0, 255);
  arduino.analogWrite(11, int(pwm));
  background(0, 0, pwm);
  println(int(pwm));
  delay(10);
}
