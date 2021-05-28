void setup()
{
  frameCount = 0;  // Sets Frame Count to Zero
  size(1020, 720, P3D); 
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
 background(255);
}

void draw()
{
  float gaussian = randomGaussian();
  float standardDeviation = random(-510, 510);
  float mean = 0;
  
  // Randomized Scale/Thickness of Circle
  float circleScale = random(30) * randomGaussian() + random(5);
  
  // x and y Coordinates
  float x = standardDeviation * gaussian + mean;
  float y = random(-360 , 360);  // Min. Value = -360, Max. Value = 360
  
  noStroke();
  
  // Fill circle color and size
  fill(random(255), random(255), random(255), random(10, 100));
  circle(x, y, circleScale);
  
  println(frameCount);  // Prints Frame Count
  
  // Flush the screen after 300 frames
  if (frameCount == 300)
  {
   setup(); 
  }
}
