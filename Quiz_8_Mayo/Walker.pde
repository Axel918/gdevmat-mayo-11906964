public class Walker
{
 public PVector position = new PVector(-500, 200);
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 
 public float velocityLimit = 10;
 public float scale = 15;
 
 // Colors
 float red = random(0, 255);
 float green = random(0, 255);
 float blue = random(0, 255);
 
 public float mass = 1;
 
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
   this.velocity.add(this.acceleration);   // velocity accumulation
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity);
   this.acceleration.mult(0);              // Resets acceleration every frame
 }
 
 // Renders the circle
 public void render()
 { 
   fill(red, green, blue);
   circle(position.x, position.y, scale);
 }
 
 // Bounce the ball at the edge of the screen
 public void checkEdges()
 {
    if (position.y <= Window.bottom)
    {
       velocity.y *= -1;                      // Newton's Third Law of Motion
                                              // Y-axis
    }
  
    if (position.x >= Window.right)
    {
       velocity.x *= -1;                      // Newton's Third Law of Motion
                                              // X-axis
    }
 }
}
