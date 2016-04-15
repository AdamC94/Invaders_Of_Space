void start()
{
  size(1000, 800);
  
  font = loadFont("8BITWONDERNominal-48.vlw");
  textFont(font);
  
  logo = loadImage("logo.png");
}

PFont font;

PImage logo;

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
