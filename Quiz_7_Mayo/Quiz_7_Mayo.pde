Walker[] w = new Walker[100];

void setup()
{
  size(1280, 720, P3D);
  //camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  // Initialize 100 Walker Instances
  for (int i = 0; i < 100 ; i++)
  {
    w[i] = new Walker();
  }
}

void draw()
{
  background(80);
  
 for (int i = 0; i < 100; i++)
 {
   w[i].render();
 }
}
