class Drop{
  float x=random(100,700);
  float y=200;
  float z=random(0,10);
  float yspeed=z;
  float len=10;
  void fall(int in){
    float inspeed=map(in,1,10,1,5);
    y=y+yspeed*inspeed;
    if(y>height){
      y=200;
      yspeed=z;
    }
  }
  void show(int in){
    strokeWeight(in);
    stroke(0,0,0);
    line(x,y,x,y+len);
  }
}
