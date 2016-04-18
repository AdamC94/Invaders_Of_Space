void start()
{
  size(1000, 800);
  
  board = new boolean[rows][cols];
  
  font = loadFont("8BITWONDERNominal-48.vlw");
  textFont(font);
  
  logo = loadImage("logo.png");
  
  drawAliens();
  
  bullets = new ArrayList<Bullet>();
}

PFont font;

PImage logo;

float Width = 1000;
float Height = 800;

boolean[][] board;
int cols = 15;
int rows = 5;
float alienWidth = 20;
float alienHeight = 20;
float spaceBetween = 5;
int gridX = 20;
int gridY = 20;

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
    
    for (int row = 0 ; row < rows ; row ++)
    {
      for (int col = 0 ; col < cols ; col ++)
      {
        float x = col * alienWidth + gridX;
        float y = row * alienHeight + gridY;
        
        if (board[row][col])
        {
          fill(0, 255, 0);
          rect( x , y, alienWidth, alienHeight);
        }
      }
    }
  }
}
