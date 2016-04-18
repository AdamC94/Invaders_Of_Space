void game()
{
  rect(0, 0, width, height);
  player();
  for( i = bullets.size() -1; i >= 0; i--)
  {
    Bullet bullet = bullets.get(i);
    bullet.update();
  }
}
