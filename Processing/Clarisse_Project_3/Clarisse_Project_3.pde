float owlX = 35;
float owlY = 25;
float eyeR;
float eyeG;
float eyeB;
float beackX;
float speedX = 7.5;
float speedY = 5;

void setup() {
   size(1000,800);
   smooth();
   frameRate(30);
}

void draw() {
  owlX = owlX + speedX;
   owlY = owlY + speedY;
   
   if ((owlX > width) || (owlX < 0)){
     speedX = speedX * -1;
   }
   
  if ((owlY > height) || (owlY < 0)) {
    speedY = speedY * -1;
   }
  
  background(0,pmouseY,pmouseX);
   stroke(0);
   fill(mouseX,mouseX-mouseY,mouseY);
   
   //owl body
   ellipse(owlX,owlY,175,250);
   
   //owl head
   ellipse(owlX,owlY-100,175,175);
   
   fill(255);
   
   //owl left round mask;
   ellipse(owlX-44,owlY-100,87,85);
   
   //owl right round mask
   ellipse(owlX+44,owlY-100,87,85);
   
   //owl bottom of the face
   arc(owlX,owlY-100,175,175,0,PI);
   
   eyeR = random(255);
   eyeG = random(255);
   eyeB = random(255);
   fill(eyeR,eyeG,eyeB);
   
   //owl left eye
   ellipse(owlX-44,owlY-100,15,15);
   
   //owl right eye
   ellipse(owlX+44,owlY-100,15,15);
   
   fill(10);
   
   beackX = owlX + random(-5,5);
   
   //owl beak
   quad(beackX,owlY-75,beackX+10,owlY-60,beackX,owlY-45,beackX-10,owlY-60);
   
   //text to display
   println("Chouette alors!");
}
