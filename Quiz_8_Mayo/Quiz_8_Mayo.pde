Walker[] walker = new Walker[10];
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector(0, -0.4);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  // Initialize walkers
  for (int i = 0; i < 10; i++)
  {
    walker[i] = new Walker();
    walker[i].mass = (1 * i) + 1;
    walker[i].scale = 15 * walker[i].mass;
  }
}

void draw()
{
   background(80); 
  
   for (int i = 0; i < 10; i++)
   {
     walker[i].render();
     walker[i].update();
     walker[i].applyForce(wind);
     walker[i].applyForce(gravity);
     walker[i].checkEdges();
   }
 
}
