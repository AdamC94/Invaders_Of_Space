int score = 0;
int killCount = 0;
int playerLives = 3;

void Score()
{
  textAlign(CENTER, CENTER);
  text(score, width / 2, 100);
  
  if(killCount == 10)
  {
   amountOfAliens = 6;
  }
  if(killCount == 20)
  {
    amountOfAliens = 7;
  }
  if(killCount == 30)
  {
    amountOfAliens = 8;
  }
  if(killCount == 40)
  {
    amountOfAliens = 9;
  }
  if(killCount == 50)
  {
    amountOfAliens = 10;
  }
}

float liveWidth = 20;
float liveHeight = 20;
float liveX = 0;
float liveY = Height - liveHeight;

void playerLives()
{
  if(playerLives >= 3)
  {
    rect(liveX + liveWidth * 2, liveY, liveWidth, liveHeight);
  }
  if(playerLives >= 2)
  {
    rect(liveX + liveWidth, liveY, liveWidth, liveHeight);
  }
  if(playerLives >= 1)
  {
    rect(liveX, liveY, liveWidth, liveHeight);
  }
  if(playerLives <= 0)
  {
     splashScreen = false;
     menu = false;
     gameOver = true;
     game = false;
  }
  
}

void gameOver()
{
  if(gameOver == true)
  {
    fill(0);
    rect(0, 0, width , height);
    fill(255, 0, 0);
    text("game over", width / 2, 200);
  }
}
