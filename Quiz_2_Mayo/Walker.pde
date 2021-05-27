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
    
    if (rng < 15)  // 15%
    {
     number = 1; 
    }
    else if (rng >= 15 && rng <= 26)  // 12%
    {
     number = 2; 
    }
    else if (rng >= 27 && rng <= 38)  // 12%
    {
     number = 3;
    }
    else if (rng >= 39 && rng <= 50)  // 12%
    {
     number = 4;
    }
    else if (rng >= 51 && rng <= 62)  // 12% 
    {
     number = 5;
    }
    else if (rng >= 63 && rng <= 74)  // 12%
    {
     number = 6;
    }
    else if (rng >= 75 && rng <= 86)  // 12%
    {
     number = 7;
    }
    else if (rng >= 87 && rng <= 99) // 13%
    {
     number = 8;
    }
    
    if (number == 1)  // Move North (15%)
    {
     y += 10;
    }
    else if (number == 2)  // Move South (12%)
    {
      y -= 10;
    }
    else if (number == 3)  // Move East (12%)
    {
      x += 10;
    }
    else if (number == 4)  // Move West (12%)
    {
      x -= 10;
    }
    else if (number == 5) // Move Northwest (12%)
    {
     x -= 10;
     y += 10;
    }
    else if (number == 6)  // Move Northeast (12%)
    {
     x += 10;
     y += 10;
    }
    else if (number == 7)  // Move Southwest (12%)
    {
     x -= 10;
     y -= 10;
    }
    else if (number == 8)  // Move Southeast (13%)
    {
     x += 10;
     y -= 10;
    }
  }
   // Fill Color of the Walker
  void fillColor()
  {
    fill(int(random(256)), int(random(256)), int(random(256)), int(random(50, 101)));
  }
}
