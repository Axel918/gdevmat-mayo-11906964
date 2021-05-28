void setup()
{
 size(1020, 720, P3D); 
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
 background(255);
}

void draw()
{
  float gaussian = randomGaussian();
  float standardDeviation = random(-1020, 1021);
  float mean = 0;
  int restartNumber = 0;
  
  float x = standardDeviation * gaussian + mean;
  float y = random(-720 ,720);
  
  noStroke();
  
  fill(random(256), random(256), random(256), random(10, 101));
  circle(x, y, random(10, 101));
}
