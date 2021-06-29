public class Walker
{
 public float x;
 public float y;
 public float tx = 0, ty = 10000;
 
 public float red, green, blue;
 
 // Changes scale/thickness of circle
 public float tScale = 0;
 
 // Changes Fill Color of the Circle
 public float tRed = 100;
 public float tGreen = 2000;
 public float tBlue = 10000;
  
 void circleColor()
 {
    red = map(noise(tRed), 0, 1, 0, 255);
    green = map(noise(tGreen), 0, 1, 0, 255);
    blue = map(noise(tBlue), 0, 1, 0, 255);
   
   fill(red, green, blue);
   noStroke(); 
 }
 
 void render()
 {
    circle(x, y, map(noise(tScale), 0, 1, 5, 150)); 
 }
 
 void perlinWalk()
 {
   x = map(noise(tx), 0, 1, -640, 640);
   y = map(noise(ty), 0, 1, -360, 360);
   
   tx += 0.01f;
   ty += 0.01f;
   tScale += 0.01f;
   
   tRed += 0.01f;
   tGreen += 0.01f;
   tBlue += 0.01f;
 }
}
