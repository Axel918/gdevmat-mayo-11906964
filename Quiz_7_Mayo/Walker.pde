public class Walker
{
 public PVector position = new PVector(random(0, 1080), random(0, 720));
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 
 public float velocityLimit = 150;
 public float scale = random(1, 25);
 
 public Walker()
 {
   
 }
 
 // Get direction
 public void update()
 {
   this.acceleration = PVector.random2D();
   this.velocity.add(this.acceleration);
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity);
 }
 
 // Get position of the mouse cursor
 void newPosition()
  {   
    float targetX = mouseX;
    float directionX = targetX - position.x;
    position.x += directionX * 0.2;
    
    float targetY = mouseY;
    float directionY = targetY - position.y;
    position.y += directionY * 0.2;
  }
 
 public void render()
 {
    circle(position.x, position.y, scale);
    update();
    newPosition();
 }
}
