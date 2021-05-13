import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

color off = color(4, 79, 111);
color on = color(84, 145, 158);

void setup() {
  size(470, 280);

  // Prints out the available serial ports.
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  arduino.pinMode(6, Arduino.INPUT);
}

void draw() {
  background(off);
  stroke(on);

  if (arduino.digitalRead(6) == Arduino.HIGH) {
    fill(on);
  } else {
    fill(off);
    rect(400, 30, 50, 50);
  }

  if (arduino.analogRead(0) > 800) {
    fill(229, 53, 53);
  } else {
    fill(152, 219, 31);
  }
  ellipse(280, 160, arduino.analogRead(0) / 8, arduino.analogRead(0) / 8);
}
