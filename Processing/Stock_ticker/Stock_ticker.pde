// An array of stocks
String[] stocks = {
  "ZOOG 903", 
  "AAPL 60",
  "XDSL 10",
  "CMG 5",
  "TOTAL 45",
  "ORANGE 65",
  "ENGIE 19",
  "ARCELOR MITTAL 13",
  "BNP 67",
  "LA POSTE 78",
};

PFont f; // Global font variable
float x; // Horizontal location
int index = 0;

void setup() {
  size(480, 270);
  f = createFont( "Arial", 16);

  // Initialize headline offscreen
  x = width;
}

void draw() {
  background(255);
  fill(0);

  // Display headline at x location
  textFont(f, 16);
  textAlign (LEFT);

  // A specific String from the array is displayed according to the value of the "index" variable.
  text(stocks[index], x, height-20); 

  // Decrement x
  x = x - 3;

  // If x is less than the negative width, then it is off the screen
  // textWidth() is used to calculate the width of the current String.
  float w = textWidth(stocks[index]); 
  if (x < stocks[index].length()) {
    x = width;
    // index is incremented when the current String has left the screen in order to display a new String.
    index = (index + 1) % stocks.length;
  }
}
