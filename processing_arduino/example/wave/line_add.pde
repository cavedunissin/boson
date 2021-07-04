Particle[] particles;
float alpha;
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
Serial line;  
int R; //"R"GB
int value;
int button;
int B; //RG"B"
int F; //framRate

void setup() {
  size(600, 450);

  line=new Serial(this, Arduino.list()[0], 9600);
  background(0);
  noStroke();
  setParticles();//set array
}

void draw() {
  //change color but right now
  if ( line.available() > 0) {
    R = line.read();
    value=line.read();
    button = line.read();
    B = line.read();
    F= line.read();
    if (button ==1) {
      setParticles();
    }
    println(R, "&", B, "&", button, "&", F, "&", value);
  }
  float FR = map(F, 0, 255, 25, 60);
  frameRate(FR);
  alpha = map(value, 0, width, 3, 35);
  fill(0, alpha);
  rect(0, 0, width, height);
  loadPixels();
  for (Particle p : particles) {
    p.move();
  }
  updatePixels();
}

void setParticles() {
  particles = new Particle[600];
  for (int i = 0; i < 600; i++) {  
    float x = random(width);
    float y = random(height);
    float adj = map(y, 0, height, 255, 0);
    int c = color(R, adj, B);
    particles[i]= new Particle(x, y, c);
  }
}

void mousePressed() {
  setParticles();
}

public class Particle {
  float posX, posY, incr, theta;
  color  c;
  Particle(float xIn, float yIn, color cIn) {
    posX = xIn;
    posY = yIn;
    c = cIn;
  }

  public void move() {
    update();
    wrap();
    display();
  }

  void update() {
    incr +=  .008;
    theta = noise(posX * .006, posY * .004, incr) * TWO_PI;
    println(round(theta));
    posX += 2 * cos(theta);
    posY += 2 * sin(theta);
  }

  void display() {
    if (posX > 0 && posX < width && posY > 0  && posY < height) {
      pixels[(int)posX + (int)posY * width] =  c;
    }
  }

  void wrap() {
    if (posX < 0) posX = width;
    if (posX > width ) posX =  0;
    if (posY < 0 ) posY = height;
    if (posY > height) posY =  0;
  }
}
