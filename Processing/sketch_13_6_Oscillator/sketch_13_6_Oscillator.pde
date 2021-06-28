Oscillator[] oscillators = new Oscillator[10];

void setup()  {   
  size(480, 270);  
  // Initialize all objects
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i] = new Oscillator();
  }
}   

void draw() {   
  background(255);  
  // Run all objects
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i].oscillate();
    oscillators[i].display();
  }
}   

class Oscillator  {   

  // Two angles
  float xtheta;  
  float ytheta;
  // Increment value for both angles  
  float dxtheta;
  float dytheta;

  Oscillator()  {   
    xtheta = 0;  
    ytheta = 0;  
    // Start randomly
    dxtheta = random(-0.03,0.03);
    dytheta = random(-0.03,0.03);
  }   

  void oscillate()  {
    // Increment angles   
    xtheta += dxtheta;
    ytheta += dytheta;
  }   

  void display()  {   
    // Map results of sine / cosine to width and height of window
    float x = (sin(xtheta) + 1) * width/2;   
    float y = (cos(ytheta) + 1) * height/2;
    stroke(0);
    fill(175,100);
    // draw circle and line
    line(width/2,height/2,x,y);  
    ellipse(x,y,64,64);  
  }

}   
