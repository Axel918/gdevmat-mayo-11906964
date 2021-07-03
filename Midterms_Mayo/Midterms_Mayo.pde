Walker target = new Walker();
Walker[] w = new Walker[100];

void setup()
{
  frameCount = 0;  // Sets Frame Count to Zero
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  // Initialize other matters
  for (int i = 0; i < 100 ; i++)
  {
    w[i] = new Walker();
  }
}

void draw()
{
 background(0);
 println(frameCount);  // Prints Frame Count
 
 for (int i = 0; i < 100; i++)
 {
   w[i].circleRender();
   w[i].newPosition();
 }

 target.blackHoleRender();
 
 // Restart the Screen
  if (frameCount == 300)
  {
   setup();
   target.positionReset();
  }
}
