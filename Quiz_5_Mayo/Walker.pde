public class Walker
{ 
   PVector position = new PVector();
   PVector speed = new PVector(5, 8);
   PVector t = new PVector(0, 10000);
  
  // Renders the circle
   void circleRender()
   {   
    fill(0, 0, 255);
    circle(position.x, position.y, 50);
    noStroke();
   }
 
  // Simulates random walk
   void randomWalk()
  {
    int rng = int(random(4));
    
    if (rng == 0)
    {
     position.y += 10;
    }
    else if (rng == 1)
    {
      position.y -= 10;
    }
    else if (rng == 2)
    {
      position.x += 10;
    }
    else if (rng == 3)
    {
      position.x -= 10;
    }
   }
  
// Simulates Perlin Walk
 void perlinWalk()
 {
   position.x = map(noise(t.x), 0, 1, -640, 640);
   position.y = map(noise(t.y), 0, 1, -360, 360);
   
   t.x += 0.01f;
   t.y += 0.01f;
 }
 
// Simulates Bouncing Ball
 void moveAndBounce()
 {
  position.add(speed);
   
  if ((position.x > Window.right) || (position.x < Window.left))
  {
    speed.x *= -1;
  }
  
  if ((position.y > Window.top) || (position.y < Window.bottom))
  {
    speed.y *= -1;
  }
 }
}
