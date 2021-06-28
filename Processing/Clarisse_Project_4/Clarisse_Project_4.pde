Owl [] chouette = new Owl [10];

void setup() {
   size(1000,800);
   smooth();
   frameRate(40);
 for (int i = 0; i < 10; i++) {
  chouette[i] = new Owl(random(width),random(height),random(3),random(3)); 
 }
}

void draw() {
   background(0,pmouseY,pmouseX);
   stroke(0);
 for (int i = 0; i < chouette.length; i++) {
chouette[i].move();
chouette[i].jiggle();
chouette[i].display();
 }


 

   println("Chouette alors!");
}
