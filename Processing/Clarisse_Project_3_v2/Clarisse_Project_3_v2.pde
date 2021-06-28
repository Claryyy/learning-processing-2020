Owl owl1;
Owl owl2;
Owl owl3;

void setup() {
   size(1000,800);
   smooth();
   frameRate(40);
   owl1 = new Owl(200,100,0.5,1);
   owl2 = new Owl(600,600,3,2);
   owl3 = new Owl(width/2, height/4,1,3);
}

void draw() {
   background(0,pmouseY,pmouseX);
   stroke(0);
  owl1.move();
  owl1.jiggle(2);
  owl1.display();
  owl2.move();
 owl2.jiggle(1);
 owl2.display();
 owl3.move();
 owl3.jiggle(3.5);
  owl3.display();
   println("Chouette alors!");
}
