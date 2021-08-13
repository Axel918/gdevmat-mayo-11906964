public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  public float mass = 1;
  
  // Randomized Colors
  public float r = random(0, 255), g = random(0, 255), b = random(0, 255), a = 255;
  
  public Walker()
  {
    
  }
  
  // Newton's Second Law of Motion
  public void applyForce(PVector force)
  {
     PVector f = PVector.div(force, this.mass);
     this.acceleration.add(f); // force accumulation
  }
  
  public void update()
  {
   this.velocity.add(this.acceleration); // velocity accumulation
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity);
   this.acceleration.mult(0); // resets acceleration every frame
  }
  
  // Renders the circle
  public void render()
  {
    fill (r,g,b,a);
    circle(position.x, position.y, scale);
  }
  
 public void checkEdges()
 {
    if (position.y <= Window.bottom)
    {
      position.y = Window.bottom; 
      velocity.y *= -1;                      
    }
  
    if (position.x >= Window.right)
    {
      position.x = Window.right;             
      velocity.x *= -1;
    }
 }
}
