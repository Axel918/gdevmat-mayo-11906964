Walker target = new Walker();
Walker[] w = new Walker[100];

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  
  return new PVector(x, y);
}

void setup()
{
  frameCount = 0;  // Sets Frame Count to Zero
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < 100 ; i++)
  {
    w[i] = new Walker();
  }
}

void draw()
{
 background(0);
 println(frameCount);  // Prints Frame Count
 
 //PVector direction = PVector.sub(target.position, w[].position);
 
 for (int i = 0; i < 100; i++)
 {
   w[i].circleRender();
 }
 
 target.blackHoleRender();
 
 
 
 // Restart the Screen
  if (frameCount == 300)
  {
   setup();
   target.positionReset();
  }
}
