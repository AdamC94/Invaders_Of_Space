//type and instance
bullet Bullet;

class bullet
{
  //global variables
  float laserX1 = 500;
  float laserY1 = 500;
  float laserX2 = 500;
  float laserY2 = 520;
  float speed = 5;
  
  //constructor
  bullet()
  {
  }
  
  //functions
  
  void update()
  {
    stroke(255);
    strokeWeight(5);
    line(laserX1, laserY1, laserX2, laserY2);
    
    laserY1 -= speed;
    laserY2 -= speed;
  }
}
