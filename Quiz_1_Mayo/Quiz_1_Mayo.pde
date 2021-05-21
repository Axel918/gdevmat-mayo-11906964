int radius = 4;
float time = 0.0;
float dt = .1;
float amplitude = 4.5;
float frequency = 0.5;

void setup()
{
  // Window size 1280 x 720
  size(1280, 720, P3D);
  
  // Put camera in the middle
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  // Background color: Black
  background(0);
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawSine();
}

// Draws the Cartesian Plane
void drawCartesianPlane()
{
  // Cartesian Plane
  strokeWeight(3);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line(300, 0, -300, 0);
  line(0, 300, 0, -300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -5, i, 5);
    line(-5, i, 5, i);
  }
}

// Draws a Line
void drawLinearFunction()
{
   // f(x) = -5x + 30
 
   color purple = color(72, 61, 139);
   fill(purple);
   noStroke();
   
   for (int i = -200; i <= 200; i++)
   {
      circle(i, (-5 * i + 30), 5); 
   }
}

// Draws a Parabola
void drawQuadraticFunction()
{
  // f(x) = x^2 - 15x - 3
  
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  noStroke();
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x , ((float)Math.pow(x, 2) - (15 * x) - 3), 5);
  }
}

// Draws a Sine Wave
void drawSine()
{
  color green = color (0, 255, 0);
  fill(green);
  stroke(green);
  noStroke();
  
  for (int i = -300; i < width/radius + 10; i++)
  {
    circle(i * radius, (amplitude * sin((frequency * time) + i)), 5);
  }
  
  time += dt; 
}
