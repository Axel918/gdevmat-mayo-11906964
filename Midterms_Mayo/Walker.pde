public class Walker
{ 
  // Random positioning of Black Hole
  PVector position = new PVector(random(-540, 540), random(-360, 360));
  
  // Gaussian Spawning of other Matters
  float circleScale = random(50);
  float gaussian = randomGaussian();
  float standardDeviation = random(-540, 540);
  float mean = 0;
  float x = standardDeviation * gaussian + mean;
  
  // Colors of Other Matters
  float red = random(0, 255);
  float green = random(0, 255);
  float blue = random(0, 255);
  
  // Random positioning of other Matters
  PVector circlePosition = new PVector(x, random(-360, 360));
  
  // Renders the black hole
  void blackHoleRender()
  { 
   fill(255);
   circle(position.x, position.y, 50);
   noStroke(); 
  }
  
  // Renders the other Matters
  void circleRender()
  {
    fill(red, green, blue);
    circle(circlePosition.x, circlePosition.y, circleScale);
    noStroke(); 
  }
  
  // Moves other matters to black hole
  void newPosition()
  {
    PVector direction = PVector.sub(position, circlePosition); 
    circlePosition.add(direction.normalize().mult(5));
  }
  
  // Resets Position of black hole and other matters
  void positionReset()
  {
    position.x = random(-540, 540); 
    position.y = random(-360, 360);
    circlePosition.x = x;
    circlePosition.y = random(-360, 360);
  }
}
