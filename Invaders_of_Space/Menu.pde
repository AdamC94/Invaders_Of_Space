void menu()
{
  fill(255);
  rect(0, 0, Width, Height);
  Title();
  startButton();
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
  fill(0);
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
}
