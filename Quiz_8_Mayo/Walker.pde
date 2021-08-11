public class Walker
{
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 
 public float velocityLimit = 10;
 public float scale = 15;
 
 float red = random(0, 255);
 float green = random(0, 255);
 float blue = random(0, 255);
 
 public float mass = 1;
 public float friction = 0.01f;
 
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
   //this.acceleration = PVector.random2D();
   this.velocity.add(this.acceleration); // velocity accumulation
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity);
   this.acceleration.mult(0); // Resets acceleration every frame
 }
 
 public void render()
 { 
   fill(red, green, blue);
   circle(position.x, position.y, scale);
 }
 
 public void checkEdges()
 {
  if (position.y <= Window.bottom)
  {
   velocity.y *= -1; // Newton's Third Law of Motion
   //velocity.y *= friction;
  }
  
  if (position.x >= Window.right)
  {
   velocity.x *= -1;
   //velocity.x *= friction;
  }
 }
}
