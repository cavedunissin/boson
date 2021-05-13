import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

color off = color(4, 79, 111);
color on = color(84, 145, 158);

int[] values = { Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW, 
  Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW, 
  Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW };

void setup() {
  size(1200, 400);

  // Prints out the available serial ports.
  println(Arduino.list());

  arduino = new Arduino(this, Arduino.list()[0], 57600);
  arduino.pinMode(4, Arduino.OUTPUT);
}

void draw() {
  
  stroke(on);

  /**for (int i = 0; i <= 13; i++) {
    if (values[i] == Arduino.HIGH)
      fill(on);
    else
      fill(off);

    rect(420 - i * 30, 30, 20, 20);
  }**/
  if (mouseX > (width/2)) {
    arduino.digitalWrite(4, Arduino.HIGH);
    background(on);
  } else {
    arduino.digitalWrite(4, Arduino.LOW);
    background(off);
  }
}

/**void mousePressed()
{
  int pin = (450 - mouseX) / 30;
  
  // Toggle the pin corresponding to the clicked square.
  if (values[pin] == Arduino.LOW) {
    arduino.digitalWrite(pin, Arduino.HIGH);
    values[pin] = Arduino.HIGH;
  } else {
    arduino.digitalWrite(pin, Arduino.LOW);
    values[pin] = Arduino.LOW;
  }
}**/
