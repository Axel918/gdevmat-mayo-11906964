Walker[] walkers = new Walker[10];

void setup()
{
   size(1280, 720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
   
   for (int i = 0; i < 10; i++)
   {
     walkers[i] = new Walker();
     walkers[i].position = new PVector(random(-640, 640), random(-360,360));
     walkers[i].mass = random(10, 20) - i;
     walkers[i].scale = walkers[i].mass * 15;
   }
}

void draw()
{
   background(255); 
   
   for (int i = 0; i < 10; i++)
   {
     walkers[i].update();
     walkers[i].render();
     
     // Gravitational attraction to each walker
     for (int j = 0; j < 10; j++)
     {
       if (i != j)
       {
          walkers[i].applyForce(walkers[j].calculateAttraction(walkers[i])); 
       }
     }
   }
}
