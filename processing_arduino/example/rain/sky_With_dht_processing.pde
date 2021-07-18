import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
Serial myPort;

String message;

Drop[] rains=new Drop[100];

int temp;
int count=0;//Serial read odd count is t ,even is h
int t, h, defaultT, defaultH, f, g;
//t:temperature, h:humidity, defaultT:first time t(basis), defaultH:first time h(basis), 
//f:t&defaultT difference, g:h&defaultH difference
int i=0;//just want speed add one time
int j=0;//just want speed add one time
int speed=0;


void setup() {

  size(800, 600);
  myPort = new Serial(this, Arduino.list()[0], 9600);

  for (int i=0; i<rains.length; i++) {
    rains[i]=new Drop();
  }
}
//wind size & color
//color will be influenced by t & h
void wind(int x, int y) {
  stroke(0);
  fill(255-y, 255-x-y, 255-x);//h up , r&g(color) must be down , t up ,g&b will be down
  beginShape();  
  vertex(100, 200);
  vertex(150, 250);
  vertex(200, 200);
  vertex(250, 250);
  vertex(300, 200);
  vertex(350, 250);
  vertex(400, 200);
  vertex(450, 250);
  vertex(500, 200);
  vertex(550, 250);
  vertex(600, 200);
  vertex(650, 250);
  vertex(700, 200);
  vertex(750, 150);
  vertex(700, 100);
  vertex(650, 50);
  vertex(600, 100);
  vertex(650, 50);
  vertex(600, 100);
  vertex(550, 50);
  vertex(500, 100);
  vertex(450, 50);
  vertex(400, 100);
  vertex(350, 50);
  vertex(300, 100);
  vertex(350, 50);
  vertex(300, 100);
  vertex(250, 50);
  vertex(200, 100);
  vertex(250, 50);
  vertex(200, 100);
  vertex(150, 50);
  vertex(100, 100);
  vertex(50, 150);
  vertex(100, 200);
  endShape();
}

void draw() {
  background(255);
  wind(f*40, g*25);
  for (int i=0; i<rains.length; i++) {
    rains[i].fall(speed);
    rains[i].show(speed);
  }
  if (myPort.available()>0) {
    temp = myPort.read(); 
    if (count%2==0) {
      h=temp;
    }
    if (count%2==1) {
      t=temp;
    }
    if (count==0) {
      defaultH=temp;
    }
    if (count==1) {
      defaultT=temp;
    }
    println("t:"+t+" "+"h:"+h);
    f=t-defaultT;
    g=h-defaultH;
    if (f>0||g>0) {
      if (g!=j) {
        println(g);
        speed=g;
      }
      textSize(50);
      fill(0);
    }  
    println("s="+speed);

    count=count+1;
    i=f;
    j=g;
  }
}
