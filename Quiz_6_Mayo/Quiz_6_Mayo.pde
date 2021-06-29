void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  
  return new PVector(x, y);
}

void draw()
{
   background(130);
   
   PVector mouse = mousePos();
   
   // Red Outer Glow
   strokeWeight(20);
   stroke(255, 0, 0);
   mouse.normalize().mult(250);
   line(-mouse.x, -mouse.y, mouse.x, mouse.y);
   
   // Colorless Line
   strokeWeight(20);
   stroke(130);
   mouse.normalize().mult(50);
   line(-mouse.x, -mouse.y, mouse.x, mouse.y);
   
   // White Inner Glow
   strokeWeight(5);
   stroke(255, 255, 255);
   mouse.normalize().mult(250);
   line(-mouse.x, -mouse.y, mouse.x, mouse.y);
   
   // Black Handle
   strokeWeight(15);
   stroke(0, 0, 0);
   mouse.normalize().mult(50);
   line(-mouse.x, -mouse.y, mouse.x, mouse.y);
   
   // Print magnitude of one side of the light saber
   mouse.normalize().mult(125);
   println(mouse.mag());
}
