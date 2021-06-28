class Level {
  int difficulty;
  Ball balle;
  Platform platforme;
  boolean gameIsOver;
  int lives;
  
  Level(Ball refToBall, Platform refToPlatform){
    balle = refToBall;
    platforme = refToPlatform;
    difficulty = 1;
    gameIsOver = false;
    lives = 3;
  }
 
 void levelUp(){
   difficulty++;
      println("LEVEL COMPLETE");
      // Reset all game elements
       balle.increaseSpeed();
   platforme.increaseSpeed();
      levelCounter = 0;
      lives = 3;
      timer.start();
 }
 
 boolean gameOver(){
 if (balle.reachedBottom()) {
      levelCounter++;
      // If the ball reaches the bottom a life is lost
      lives-= 1;
      // If lives reach 0 the game is over
      if (lives <= 0) {
        gameIsOver = true;
      }
      else {
        gameIsOver = false;
        reset();
      }
 }
 return gameIsOver;
 }
 
 void increaseLevelIfTimerHasEllapsed(){
      // If all the drops are done, that level is over!
    if (timer.isFinished()) {
      // Go up a level
    levelUp();
    }
 }
 
 void reset(){
  balle.ballX = random(width);
  balle.ballY = 0;
 }
}

//Start the game at Difficulty 1, speed of the ball liked to the difficulty, speed of the platform linked to the difficulty, reduce the size of the platform with the difficulty
