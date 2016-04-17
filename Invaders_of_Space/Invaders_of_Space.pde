void start()
{
  size(1000, 800);
  
  font = loadFont("8BITWONDERNominal-48.vlw");
  textFont(font);
  
  logo = loadImage("logo.png");
  
  // initialising
  Bullet = new bullet();
}

PFont font;

PImage logo;

float Width = 1000;
float Height = 800;

boolean splashScreen = true;
boolean menu = false;
boolean game = false;
boolean gameOver = false;
int gameState = 0;

void draw()
{ 
  splashScreen();
  
  if(menu == true)
  {
    menu();
  }
  
  if(game == true)
  {
    game();
  }
}
