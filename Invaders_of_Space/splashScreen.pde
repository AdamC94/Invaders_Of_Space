float splashScreenBackgroundAlpha = 255;
float fadeSpeedBackground = 2;

float logoWidth = 512;
float logoHeight = 512;
float logoHalfWidth = logoWidth / 2;
float logoHalfHeight = logoHeight / 2;
float logoX = Width / 2 - logoHalfWidth;
float logoY = Height / 2 - logoHalfHeight;

float logoAlpha = 255;
float logoFadeSpeed = 10;

void splashScreen()
{
  fill(0);
  rect(0, 0, width, height);
  fill(255, 255, 255, splashScreenBackgroundAlpha);
  rect(0, 0, width, height);
  tint(255, logoAlpha);
  image(logo, logoX, logoY);
  noTint();
  
  logoAlpha = logoAlpha -= logoFadeSpeed;
  
  if(logoAlpha <= 0)
  {
    splashScreenBackgroundAlpha = splashScreenBackgroundAlpha -= fadeSpeedBackground;
  }
  
  if(splashScreenBackgroundAlpha <= 0)
  {
     splashScreen = false;
     menu = true;
     game = false;
     gameOver = false;
  }
}
