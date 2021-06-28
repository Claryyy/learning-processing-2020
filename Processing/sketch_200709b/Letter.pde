class Letter {
  char letter;
  float x, y, homeX, homeY, theta, speed; 
  
  Letter(float x_, float y_, char letter_) {
    x = x_;
    y = y_;
    letter = letter_;
  }
  
  void display() {
  fill(0);
  textAlign(LEFT);
  text(letter,x,y);
  rotate(random(PI));
  }
  
  void move(){
    
  }
  
  void home() {
    
  }
}
