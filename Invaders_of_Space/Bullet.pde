//type and instance
//bullet Bullet;

ArrayList <Bullet> bullets;
int i;


class Bullet
{
  PVector location;
  
  float oldPosX, oldPosY, speed, rotation;
  Bullet()
  {
    location = new PVector( firePointX, firePointY);
    speed = 10;
  }
  
  void update()
  {
    location.y = location.y - cos(rotation / 180 * PI) * speed;
    fill(255, 0, 0);
    ellipse(location.x, location.y, 10, 10);
    noFill();
    
    if(location.x > 0 && location.x < width && location.y > 0 && location.x < height)
    {
     
    }
    else
    {
      bullets.remove(i);
    }
  }
}
