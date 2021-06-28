class Owl {
  
float mOwlX, mOwlY, mEyeR, mEyeG, mEyeB, mBeackX, mSpeedX, mSpeedY; 

Owl(float owlX, float owlY, float speedX, float speedY) {
  mOwlX = owlX;
  mOwlY = owlY;
  mSpeedX = speedX;
  mSpeedY = speedY;
}

void move() {
  mOwlX = mOwlX + mSpeedX;
   mOwlY = mOwlY + mSpeedY;
   
   if ((mOwlX > width) || (mOwlX < 0)){
     mSpeedX = mSpeedX * -1;
   }
   
  if ((mOwlY > height) || (mOwlY < 0)) {
   mSpeedY = mSpeedY * -1;
   }
}

void jiggle() {
  // Varies the the jiggle depending on the disptance from the mouse
   float speed = dist(mOwlX, mOwlY, mouseX, mouseY)*-1;
   
    // Change the location  randomly
    mOwlX = mOwlX + random(-10, 10)*speed;
    mOwlY = mOwlY + random(-10, 10)*speed;
    
    
    // Constrain  to window
    mOwlX = constrain(mOwlX, 0, width);
    mOwlY = constrain(mOwlY, 0, height);
  }

void display() {
   fill(mouseX,mouseX-mouseY,mouseY);
   //owl body
   ellipse(mOwlX,mOwlY,175,250);
   
   //owl head
   ellipse(mOwlX,mOwlY-100,175,175);
   
   fill(255);
   
   //owl left round mask;
   ellipse(mOwlX-44,mOwlY-100,87,85);
   
   //owl right round mask
   ellipse(mOwlX+44,mOwlY-100,87,85);
   
   //owl bottom of the face
   arc(mOwlX,mOwlY-100,175,175,0,PI);
   
   mEyeR = random(255);
   mEyeG = random(255);
   mEyeB = random(255);
   fill(mEyeR,mEyeG,mEyeB);
   
   //owl left eye
   ellipse(mOwlX-44,mOwlY-100,15,15);
   
   //owl right eye
   ellipse(mOwlX+44,mOwlY-100,15,15);
   
   fill(10);
   
   mBeackX = mOwlX + random(-5,5);
   
   //owl beak
   quad(mBeackX,mOwlY-75,mBeackX+10,mOwlY-60,mBeackX,mOwlY-45,mBeackX-10,mOwlY-60);
}
}
