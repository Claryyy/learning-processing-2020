Breather[] breathers = new Breather[25];

void setup() {   
  size(480, 270);  
  // Initialize all objects
  for (int i = 0; i < breathers.length; i++) {
    breathers[i] = new Breather();
  }
}   

void draw() {   
  background(255);  
  // Run all objects
  for (int i = 0; i < breathers.length; i++) {
    breathers[i].breath();
    breathers[i].display();
  }
}   

class Breather {   

  // Location and size
  float x, y;
  float rad;
  // Angle for oscillation
  float theta;  
  float dtheta;

  Breather() { 
    // Initialize variables randomly
    x = random(width);
    y = random(height);  
    rad = random(6, 24);
    theta = random(PI);  
    dtheta = random(0.01, 0.1);
  }   

  // Increment theta
  void breath() {
    theta += dtheta;
  }   

  void display() { 
    // Map size based on sine function  
    float r = rad + rad * (sin(theta) + 1);
    // Display circle
    fill(175, 100);
    stroke(0);
    ellipse(x, y, r, r);
  }
}   
