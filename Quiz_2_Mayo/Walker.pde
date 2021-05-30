class Walker
{
  // Coordinates
  float x;
  float y;
  
  // Number chance
  int number;
  
  // Renders a Circle
  void render()
  {
   circle(x, y, 30); 
  }
  
  // Random Walking
  void randomWalk()
  {
    int rng = int(random(8));  // Random Number from 0 to 7
    
    if (rng == 0)  // Move North
    {
     y += 10;
    }
    else if (rng == 1)  // Move South
    {
      y -= 10;
    }
    else if (rng == 2)  // Move East
    {
      x += 10;
    }
    else if (rng == 3)  // Move West
    {
      x -= 10;
    }
    else if (rng == 4) // Move Northwest
    {
     x -= 10;
     y += 10;
    }
    else if (rng == 5)  // Move Northeast
    {
     x += 10;
     y += 10;
    }
    else if (rng == 6)  // Move Southwest
    {
     x -= 10;
     y -= 10;
    }
    else if (rng == 7)  // Move Southeast
    {
     x += 10;
     y -= 10;
    }
  }
  
  // Biased Walking
  void randomWalkerBiased()
  {
    int rng = int(random(100));
    
    if (rng < 39)  // 40%
    {
     number = 1; 
    }
    else if (rng >= 40 && rng <= 59)  // 20%
    {
     number = 2; 
    }
    else if (rng >= 60 && rng <= 79)  // 20%
    {
     number = 3;
    }
    else if (rng >= 80 && rng <= 99)  // 20%
    {
     number = 4;
    }
    
    if (number == 1)  // Move North (40%)
    {
     y += 10;
    }
    else if (number == 2)  // Move South (20%)
    {
      y -= 10;
    }
    else if (number == 3)  // Move East (20%)
    {
      x += 10;
    }
    else if (number == 4)  // Move West (20%)
    {
      x -= 10;
    }
  }
  
  // Fill Color of the Walker
  void fillColor()
  {
    fill(int(random(256)), int(random(256)), int(random(256)), int(random(50, 101)));
  }
}
