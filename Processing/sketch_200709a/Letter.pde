// A class to describe a single Letter
class Letter {
  char letter;
  
  // The object knows its original " home " location
  float homex,homey;
  
  // As well as its current location
  float x,y;
  
  float theta;
  
  Letter(float x_, float y_, char letter_) {
    homex = x = x_;
    homey = y = y_;
       x = random(width);
    y = random(height);
    letter = letter_;
    theta = random(TWO_PI);
  }
  
  // Display the letter
  void display() {
    fill(0);
    textAlign(LEFT);
    pushMatrix();
    translate(x,y);
    rotate(theta);
    text(letter,0,0);
    popMatrix();
  }
  
  // Move the letter randomly
  void shake() {
     x += random(-2,2);
    y += random(-2,2);
    theta += random(-0.5,0.5);
  }
  
  // At any point, the current location can be set back to the home location by calling the home() function.
  void home() { 
    x = lerp(x,homex,0.05);
    y = lerp(y,homey,0.05);
    theta = lerp(theta,0,0.05);
    }
  }
