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

void player()
{
  rect(playerX, playerY, playerWidth, playerHeight);
}

void draw()
{
  background(0);
  player();
}
