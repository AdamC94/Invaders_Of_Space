float playerWidth = 125;
float playerHeight = 35;
float playerHalfWidth = playerWidth / 2;
float playerHalfHeight = playerHeight / 2;
float playerX = Width / 2 - playerHalfWidth;
float playerY = Height - playerHeight - playerHalfHeight;

float playerHatchWidth = playerWidth / 1.5;
float playerHatchHeight = playerHeight / 4;
float playerHatchHalfWidth = playerHatchWidth / 2;
float playerHatchHalfHeight = playerHatchHeight / 2;

boolean playerMoveSwitch = true;
float playerSpeed = 5;

void player()
{
  fill(255);
  rect(playerX, playerY, playerWidth, playerHeight);
  rect(playerX + playerHalfWidth - playerHatchHalfWidth, playerY - playerHatchHeight, playerHatchWidth, playerHatchHeight);
  noFill();
  
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
  
  Bullet.update();
}
