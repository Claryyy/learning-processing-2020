Platform platform;
Ball ball1;
Timer timer;
Level level;

int levelCounter = 0;

PFont f;

void setup() {
  size (800, 600);
  smooth();
  frameRate(60);
  platform = new Platform();
  ball1 = new Ball();
  timer = new Timer(30000);
  timer.start();
  level = new Level(ball1, platform);

  f = createFont("Arial", 12, true); // A font to write text on the screen
}

void draw() {
  background(255);
  stroke(0);

  // If the game is over
  if (level.gameOver()) {
    textFont(f, 48);
    textAlign(CENTER);
    fill(0);
    text("GAME OVER", width/2, height/2);
  } else {
level.increaseLevelIfTimerHasEllapsed();
    ball1.move();
    ball1.bounce();
    ball1.display();
    platform.display();
  }

    // Display number of lives left, lever and timer
    textFont(f, 14);
    fill(0);
    text("Lives left: " + level.lives, 10, 20);
    rect(10, 24, level.lives*10, 10);
    text("Level: " + level.difficulty, 300, 20);
  }

void keyPressed() {
  platform.keyPressed();
}

void keyReleased()
{ 
  platform.keyReleased();
}
