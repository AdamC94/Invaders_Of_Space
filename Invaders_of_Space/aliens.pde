
int alienSize = 50;
int alienHalfSize = alienSize / 2;
float alienSpeed = 1;

int amountOfAliens = 5;

int getRandomX()
{
  return int(random(20, 980));
}

int [] alienX = { getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX() };
int [] alienY = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

void Aliens()
{
  fill(0, 255, 0);
  
  for (int i = 0 ; i < amountOfAliens ; i ++)
  {
    ellipse(alienX[i], alienY[i] += alienSpeed, alienSize, alienSize);
    
    for (int j = 0; j < bullets.size(); j++ )
    {
      Bullet b = bullets.get(j);
      if(b.location.y <= alienY[i] - alienSize / 2 && b.location.x >= alienX[i] - alienSize / 2 && b.location.x <= alienX[i] + alienSize / 2)
      {
        alienX[i] = getRandomX();
        alienY[i] = 0;
        score += 10;
        killCount += 1;
      }
    }
      if(alienY[i] - alienHalfSize >= Height)
      {
        alienX[i] = getRandomX();
        alienY[i] = 0;
        playerLives -= 1;
      }
  }
}
