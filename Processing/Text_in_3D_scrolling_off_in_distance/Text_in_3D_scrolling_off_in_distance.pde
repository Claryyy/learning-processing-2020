
String info = "A long long time ago\nIn a galaxy far far away";
PFont f;
float y = 0;
void setup() {
  size(400, 200,P3D);
  f = createFont( "Arial", 12);
}
void draw() {
  background(255);
  fill(0);
  translate(width/2, height/2);
  rotateX(PI/4);
  textFont(f);
  textAlign(CENTER);
  text(info, 0, y);
  y--;
}
