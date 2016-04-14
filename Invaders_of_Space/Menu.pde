float TitleX = Width / 2;
float TitleY = Height / 2;
String Title = "INVADERS OF SPACE";
float titleSize = 48;

void menu()
{
  fill(255);
  rect(0, 0, Width, Height);
  Title();
}

void Title()
{
  textFont(font);
  textAlign(CENTER, CENTER);
  textSize(titleSize);
  fill(0);
  text(Title, TitleX, TitleY);
}
