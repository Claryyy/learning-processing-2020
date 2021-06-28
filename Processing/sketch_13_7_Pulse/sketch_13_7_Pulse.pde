

void setup(){
  size (400,200);
  smooth();
  frameRate(10);
}

void draw(){
  background(255);
  float theta = random(0.0,100);
  float xbreathe = (sin(theta)+1*width/2);
  float ybreathe = (sin(theta)+1*height/2);
  
  fill(0);
  stroke(0);
  ellipse(width/2,height/2,xbreathe,ybreathe);
}
