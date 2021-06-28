class Center {
 float theta, x, y;
 
 Center(){
   theta = 0.0;
   x = 0;
   y = 0;
 }
 
 void display(){
   fill(mouseX,mouseY,0);
  translate(580, 480, 0); 
rotateY(0.5);
rotateZ(theta);
box(100);
 }
 
  void move(){
    theta += 0.0005;
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }
  
}
