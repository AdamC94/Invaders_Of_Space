void player()
{
  fill(255);
  rect(playerX, playerY, playerWidth, playerHeight);
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
}
