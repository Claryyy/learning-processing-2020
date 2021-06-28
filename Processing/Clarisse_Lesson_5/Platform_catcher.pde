class Platform {
  float platformX, platformY, platformW, platformH, platformSpeed; //location
  boolean isRightButtonDown;
  boolean isLeftButtonDown;

  Platform() {
    platformX = width/2;
    platformY = height-25;
    platformW = 100;
    platformH = 10;
    platformSpeed = 5;
  }

  void keyPressed() {
    if (key == CODED) {
      if (keyCode == LEFT) {
        isLeftButtonDown = true;
      } else if (keyCode == RIGHT) {
        isRightButtonDown = true;
      }
    }
  }

  void keyReleased()
  { 
    if (key == CODED) {
      if (keyCode == LEFT) {
        isLeftButtonDown = false;
      } else if (keyCode == RIGHT) {
        isRightButtonDown = false;
      }
    }
  }

  void display() {
    stroke(0);
    fill(175);
    rect(platformX, platformY, platformW, platformH);

    if (isRightButtonDown)
    {
      platformX += platformSpeed;
    }

    if (isLeftButtonDown)
    {
      platformX -= platformSpeed;
    }
  }
}
