void setup()
{
  size(1020, 720, P3D);
  background(255);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker myWalker = new Walker();
Walker myWalker2 = new Walker();

void draw()
{
  // Walker 1
  myWalker.randomWalk();
  myWalker.fillColor();
  myWalker.render();
  
  // Walker 2
  myWalker2.randomWalk();
  myWalker.fillColor();
  myWalker2.render();
}
