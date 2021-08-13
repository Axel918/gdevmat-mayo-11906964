Walker[] walker = new Walker[10];
Line line = new Line();
PVector wind = new PVector(0.15, 0);
//PVector gravity = new PVector(0, -0.4);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  int posY = 0;
  
  for (int i = 0; i < 10; i++)
  {
    posY = 2 * (Window.windowHeight / 10) * (i - (10/2));
    walker[i] = new Walker();
    walker[i].position = new PVector(-400, posY);
    walker[i].mass = 10 - i;
    walker[i].scale = walker[i].mass * 15;
  }
}

void draw()
{
   background(255);
   
   // Render the line in the center
   line.renderLine();
  
   for (int i = 0; i < 10; i++)
   {
     // Friction = -1 * mew * N * v
     float mew = 0.1f;
     float normal = 1;
     float frictionMagnitude = mew * normal;
     PVector friction = walker[i].velocity.copy();
     friction.mult(-1);
     friction.normalize();
     friction.mult(frictionMagnitude);
     walker[i].applyForce(friction);
     
     PVector gravity = new PVector(0.2, 0);
     walker[i].render();
     walker[i].update();
     walker[i].applyForce(gravity);
     
     // Change friction
     if (walker[i].position.x >= 0)
     {
       mew = 0.4f;
       normal = 1;
       frictionMagnitude = mew * normal;
       friction = walker[i].velocity.copy();  // Copy copies the current velocity of our walker
       friction.mult(-1);
       friction.normalize();
       friction.mult(frictionMagnitude);
       walker[i].applyForce(friction);
     }
   }
}

// Reset everything when the mouse is clicked
void mouseClicked()
{
   setup(); 
}
