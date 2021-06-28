
//PFont f;

//void setup(){
//  size(400,400);
//f = loadFont ("ArialMT-48.vlw");
//}

//void draw(){
//  background(255);
//textFont(f,36);
//fill(0);
//text("Mmmm.... Strings....",10,100);
//}

Ball b;
PFont f;

void setup() {
  size(200, 200);
  b = new Ball(150, 100, 1, 1);
  f = createFont("Arial", 12);
}

void draw() {
  background(255);
  b.move();
  b.display();
}
