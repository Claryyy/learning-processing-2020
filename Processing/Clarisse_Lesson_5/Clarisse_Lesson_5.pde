Platform platform;
Ball ball1;
Timer timer;

// A boolean to let us know if the game is over
boolean gameOver = false;

// Variables to keep track of level, lives left
int level = 1;      // What level are we on
int lives = 3;     // 10 lives per level (10 raindrops can hit the bottom)
int levelCounter = 0;

PFont f;

void setup() {
  size (800, 600);
  smooth();
  frameRate(60);
  platform = new Platform();
  ball1 = new Ball();
  timer = new Timer(60000);
  timer.start();

  f = createFont("Arial", 12, true); // A font to write text on the screen
}

void draw() {
  background(255);
  stroke(0);

  // If the game is over
  if (gameOver) {
    textFont(f, 48);
    textAlign(CENTER);
    fill(0);
    text("GAME OVER", width/2, height/2);
  } else {

    ball1.move();
    ball1.bounce();
    ball1.display();
    platform.display();

    if (ball1.reachedBottom()) {
      levelCounter++;
      // If the ball reaches the bottom a life is lost
      lives--;
      // If lives reach 0 the game is over
      if (lives <= 0) {
        gameOver = true;
      }
    } 

    // If all the drops are done, that level is over!
    if (timer.isFinished()) {
      // Go up a level
      level++;
      println("LEVEL COMPLETE");
      // Reset all game elements
      levelCounter = 0;
      lives = 3;
      timer.start();
    }

    // Display number of lives left
    textFont(f, 14);
    fill(0);
    text("Lives left: " + lives, 10, 20);
    rect(10, 24, lives*10, 10);

    text("Level: " + level, 300, 20);
  }
}

void keyPressed() {
  platform.keyPressed();
}

void keyReleased()
{ 
  platform.keyReleased();
}
