void start()
{
  size(1000, 800);
}

float Width = 1000;
float Height = 800;

float playerWidth = 100;
float playerHeight = 50;
float playerHalfWidth = playerWidth / 2;
float playerHalfHeight = playerHeight / 2;
float playerX = Width / 2 - playerHalfWidth;
float playerY = Height - playerHeight - playerHalfHeight;
boolean playerMoveSwitch = true;
float playerSpeed = 5;

boolean splashScreen = false;
boolean menu = false;
boolean game = false;
boolean gameOver = false;

void player()
{
  rect(playerX, playerY, playerWidth, playerHeight);
  
  if(keyPressed)
  {
    if(key == 'a' && playerMoveSwitch == true || key == 'A' && playerMoveSwitch == true || key == 'a' && playerX >= width - playerWidth && playerMoveSwitch == false || key == 'A' && playerX >= width - playerWidth && playerMoveSwitch == false || keyCode == LEFT && playerX >= width - playerWidth && playerMoveSwitch == false || keyCode == LEFT && playerMoveSwitch == true)
    {
      playerX -= playerSpeed;
      playerMoveSwitch = true;
    }
    if(key == 'd' && playerMoveSwitch == true || key == 'D' && playerMoveSwitch == true || key == 'd' && playerX <= 0 && playerMoveSwitch == false || key == 'D' && playerX <= 0 && playerMoveSwitch == false || keyCode == RIGHT && playerMoveSwitch == true || keyCode == RIGHT && playerX <= 0 && playerMoveSwitch == false)
    {
      playerX += playerSpeed;
      playerMoveSwitch = true;
    }
    if(playerX <= 0 && playerMoveSwitch == true || playerX >= width - playerWidth)
    {
      playerMoveSwitch = false;
    }
  }
}

void draw()
{
  background(0);
  player();
}
