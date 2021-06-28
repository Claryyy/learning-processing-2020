
void setup() {
  size (1000,1000);
}

void draw() {
  
  for (int x = 0; x < width; x+= 10) {
    for (int y = 0; y < height; y+=10) { 
    stroke (0);
    int r = (int) random(255);
    int g = (int) random(255);
     int b = (int) random(255);
     fill (r, g, b);
   rect(x,y,10,10); 
  }
  }
}
