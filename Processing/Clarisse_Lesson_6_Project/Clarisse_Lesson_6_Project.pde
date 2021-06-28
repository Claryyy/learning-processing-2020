Creature[] creatures = new Creature[10];
Center center;
Owl owl;

void setup(){
  size(800,800,P3D);
  smooth();

for (int i = 0; i < creatures.length; i++){
creatures[i] = new Creature();
center = new Center();
owl = new Owl(width/2,height/2,0,0);
}

}

void draw(){
  background(255);
  stroke(0);
  for(int i = 0; i < creatures.length; i++){
  creatures[i].move();
  creatures[i].breathe();
  creatures[i].drawCircle(width/2, height/2, 100);
  creatures[i].display();
  center.move();
  center.display();
  //owl.move();
  //owl.jiggle();
  // owl.display();
  }
}
