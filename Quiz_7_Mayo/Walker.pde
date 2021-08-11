public class Walker
{
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 
 public float velocityLimit = 500;
 public float scale = 15;
 
 public Walker()
 {
   
 }
 
 public void update()
 {
   this.acceleration = PVector.random2D();
   this.velocity.add(this.acceleration);
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity);
 }
 
 void newPosition()
  {
    //PVector target = new PVector(mouseX, mouseY);
    //PVector direction = target.sub(position.x, position.y);
    //position.add(direction.normalize().mult(0.2));
    //direction.normalize().mult(0.2);
    
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
