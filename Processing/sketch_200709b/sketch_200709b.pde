PFont f;
String message = "random characters flying home!";

// An array of Letter objects
Letter[] letters;

void setup() {
 size(400,400,P3D); 
 smooth();
 
  // Load the font
 f = createFont("Calibri",36);
 textFont(f);
 
  // Create the array the same size as the String
  letters = new Letter[message.length()];
 
 //initialize the letters at random locations
 for (int i = 0; i < message.length();i++){
   letters[i] = new Letter(random(width),random(height),message.charAt(i));
 }
}

void draw() {
 background(255);
 stroke(0);
 
  for (int i = 0; i < letters.length; i ++ ) {
   
    // Display all letters
    letters[i].display();
}

}
