//bouncingBall
int ballX = 0;
int ballY = 0;
int ballSpeedX = 10;
int ballSpeedY = 8;
int ballRadius = 100;
void setup()
{
  size(900, 600);
  frameRate(60);
}

void draw()
{
  ballX = ballX + ballSpeedX;
  ballY = ballY + ballSpeedY;
  background(0, 0, 0);
  ball(ballX, ballY, ballRadius);
  design(ballX, ballY, ballRadius);
  if(ballX - ballRadius < 0)
  {
    ballSpeedX = - ballSpeedX;
    ballX = ballRadius;
  }
  else if(ballX + ballRadius > 900)
  {
    ballSpeedX = -ballSpeedX;
    ballX = 900 - ballRadius;
  }
  if(ballY - ballRadius < 0)
  {
    ballSpeedY = -ballSpeedY;
    ballY = ballRadius;
  }
   else if(ballY + ballRadius > 600)
  {
    ballSpeedY = -ballSpeedY;
    ballY = 600 - ballRadius;
  }
  
}
void ball(int ballX, int ballY, int ballRadius)
{
  fill(0, 0, 255);
  ellipse(ballX, ballY, 2 * ballRadius, 2 * ballRadius); 
}
void design(int ballX, int ballY, int ballRadius)
{
  fill(0, 0, 0);
  ellipse(ballX, ballY, 1.5 * ballRadius, 1.5 * ballRadius);
}
  