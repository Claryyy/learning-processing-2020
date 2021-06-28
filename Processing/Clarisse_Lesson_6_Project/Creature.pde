class Creature {
  // Location and size
  float x, y, xtime, ytime;
  float rad;
  float increment;
  // Angle for oscillation
  float theta;  
  float dtheta;

  Creature() {
    // Initialize variables randomly
    xtime = 0.0;
    ytime = 100.0;
    increment = 0.001;
    x = noise(xtime)*width;
    y = noise(ytime)*width;  
    rad = random(6, 48);
    theta = random(PI);  
    dtheta = random(0.1, 0.1);
  }

  void move() {
    //use Perlin noise() function
    xtime+=increment;
    ytime+=increment;
  }

  void rotation() {
    //use rotation
  }


  void breathe() {
    //use oscillation
    theta += dtheta;
  }

  void display() {
    // Map size based on sine function  
    float r = rad + rad * (sin(theta) + 1);
    // Display circle
    fill(175, 100);
    stroke(0);
    ellipse(x, y, r, r);
//    noStroke();
//lights();
//translate(x, y, 0);
//sphere(r);
  }

  void drawCircle(float x, float y, float radius) {
    ellipse(x, y, radius, radius);
    if (radius>2) {
      drawCircle(x+radius/2, y, radius/2);
      drawCircle(x-radius/2, y, radius/2);
    }
  }
}
