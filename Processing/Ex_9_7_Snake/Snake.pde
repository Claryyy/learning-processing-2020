class Snake {
int[] xpos;
int[] ypos;

  Snake (int n){
xpos = new int[n]; 
ypos = new int[n];
  }
   
void move(int newX, int newY) {
  // Shift array values
  for (int i = 0; i < xpos.length-1; i ++ ) {
    // Shift all elements down one spot. 
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. 
    // Stop at the second to last element.
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }

  // New location
  // Update the last spot in the array with the mouse location.
  xpos[xpos.length-1] = newX; 
  ypos[ypos.length-1] = newY;
}

void display() {
  // Draw everything
  for (int i = 0; i < xpos.length; i ++ ) {
    // Draw an ellipse for each element in the arrays. 
    // Color and size are tied to the loop's counter: i.
    noStroke();
    fill(255-i*5);
    ellipse(xpos[i], ypos[i], i, i);
  }
}
}
