void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

Walker bounceWalker = new Walker();
Walker randomWalker = new Walker();
Walker perlinWalker = new Walker();

void draw()
{
  // Flush the screen with white background
  background(255);
  
  // Boncing Ball
  bounceWalker.circleRender();
  bounceWalker.moveAndBounce();
  
  // Random Walker
  randomWalker.circleRender();
  randomWalker.randomWalk();
  
  // Perlin Walker
  perlinWalker.circleRender();
  perlinWalker.perlinWalk();
  
}
