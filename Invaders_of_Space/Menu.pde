void menu()
{
  fill(0);
  rect(0, 0, Width, Height);
  Title();
  startButton();
  quitButton();
}

float TitleX = Width / 2;
float TitleY = 50;
String Title = "INVADERS OF SPACE";
float titleSize = 48;

void Title()
{
  textFont(font);
  textAlign(CENTER, CENTER);
  textSize(titleSize);
  fill(255);
  text(Title, TitleX, TitleY);
}

float startButtonBackgroundWidth = 250;
float startButtonBackgroundHeight = 60;
float startButtonBackgroundhalfWidth = startButtonBackgroundWidth / 2;
float startButtonBackgroundhalfHeight = startButtonBackgroundHeight /2;
float startButtonBackgroundX = Width / 2 - startButtonBackgroundhalfWidth;
float startButtonBackgroundY = 350;
float startTextX = startButtonBackgroundX + startButtonBackgroundhalfWidth;
float startTextY = startButtonBackgroundY + startButtonBackgroundhalfHeight;
float startTextSize = 30;
String startButtonText = "start";

void startButton()
{
  fill(155);
  rect(startButtonBackgroundX, startButtonBackgroundY, startButtonBackgroundWidth, startButtonBackgroundHeight);
  fill(0);
  textAlign(CENTER, CENTER);
  text(startButtonText, startTextX, startTextY);
  
  if( mouseX >= startButtonBackgroundX && mouseX <= startButtonBackgroundX + startButtonBackgroundWidth && mouseY >= startButtonBackgroundY && mouseY <= startButtonBackgroundY + startButtonBackgroundHeight && mousePressed)
  {
    gameState = 1;
  }
  if(gameState == 1)
  {
     splashScreen = false;
     menu = false;
     gameOver = false;
     game = true;
  }
}

float quitButtonBackgroundWidth = 250;
float quitButtonBackgroundHeight = 60;
float quitButtonBackgroundhalfWidth = quitButtonBackgroundWidth / 2;
float quitButtonBackgroundhalfHeight = quitButtonBackgroundHeight / 2;
float quitButtonBackgroundX = Width / 2 - quitButtonBackgroundhalfWidth;
float quitButtonBackgroundY = 500;
float quitTextX = quitButtonBackgroundX + quitButtonBackgroundhalfWidth;
float quitTextY = quitButtonBackgroundY + quitButtonBackgroundhalfHeight;
float quitTextSize = 30;
String quitButtonText = "quit";

void quitButton()
{
  fill(155);
  rect(quitButtonBackgroundX, quitButtonBackgroundY, quitButtonBackgroundWidth, quitButtonBackgroundHeight);
  fill(0);
  textAlign(CENTER, CENTER);
  text(quitButtonText, quitTextX, quitTextY);
  
  if( mouseX >= quitButtonBackgroundX && mouseX <= quitButtonBackgroundX + quitButtonBackgroundWidth && mouseY >= quitButtonBackgroundY && mouseY <= quitButtonBackgroundY + quitButtonBackgroundHeight && mousePressed)
  {
    exit();
  }
}
