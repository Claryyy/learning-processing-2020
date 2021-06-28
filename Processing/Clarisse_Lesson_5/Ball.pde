class Ball {
  float ballR; //radius
  float ballX, ballY;
  float ballXSpeed, ballYSpeed;
  color c = color(100, 50);

  Ball () {
    ballR = 20;
    ballX = random(width);
    ballY = 0; //-ballR*4;
    ballXSpeed = 1;
    ballYSpeed = 1;
  }

  // move the ball down
  void move() {
    ballX += ballXSpeed; // increment x
    ballY += ballYSpeed; // increment y
  }

  void bounce() {
    // check horizontal edges
    if (ballX + ballR < 0 || ballX + ballR > width) {
      ballXSpeed *= -1;
    }

    // check vertical edges 
    if (ballY + ballR < 0) {
      ballYSpeed *= -1;
    }

    if (ballX + ballR + ballXSpeed > platform.platformX && 
      ballX + ballXSpeed < platform.platformX + platform.platformW && 
      ballY + ballR > platform.platformY && 
      ballY < platform.platformY + platform.platformH) {
      ballXSpeed *= -1;
    }

    if (ballX + ballR > platform.platformX && 
      ballX < platform.platformX + platform.platformW && 
      ballY + ballR + ballYSpeed > platform.platformY && 
      ballY + ballYSpeed < platform.platformY + platform.platformH) {
      ballYSpeed *= -1;
    }
  }

  //check if the ball reaches the bottom
  boolean reachedBottom() {
    if (ballY > height+ballR*4) {
      return true;
    } else {
      return false;
    }
  }

  void highlight() {
    c = color(0, 150);
  }

  void display() {
    stroke(0);
    fill(c);
    ellipse(ballX, ballY, ballR*2, ballR*2);
    c = color(100, 50);
  }

  // A function that returns true or false based on wether two circles intersect
  // If distance is less than the sum of the radii the circles touch
}
