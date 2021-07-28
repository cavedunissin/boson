import processing.serial.*;
Serial myPort;  
String str; 
String blow="blow";
public float angle=0.0;
public float speed=0.0;
PImage img;
void setup()
{
  size(800,600);
  img = loadImage("./windmill.png");
  frameRate(100);
  smooth();
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);  
}
void draw(){
  background(51);
  rect(390,300,20,500);
  translate(400,300);
  rotate(angle);
  angle=0.05+speed+angle;
  println(speed);
  imageMode(CENTER);
  image(img, 0, 0);
  //arc(-100,-100,200,200, 1, PI+QUARTER_PI, CLOSE);
  if(myPort.available()>0){
    str=myPort.readString();
    if(str!=""){
      println(str);
      if(str!=blow){
        speed+=0.3;
      }
    }
  }
  else{
    speed=0;
  }
}
