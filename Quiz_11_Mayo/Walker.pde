public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  public float mass = 1;
  
  public float r = random(0, 255), g = random(0, 255), b = random(0, 255), a = random(0, 255);
  
  public float gravitationalConstant = 1;
  
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
    noStroke();
    fill (r,g,b,a);
    circle(position.x, position.y, scale);
  }
  
  // Calculates Attraction
  public PVector calculateAttraction(Walker walker)
  {
   PVector force = PVector.sub(this.position, walker.position); // direction
   float distance = force.mag();
   force.normalize();  // normalize to accurately get direction
   
   distance = constrain(distance, 5, 25);  // solves divide by 0, and divide by really tiny values
   
   float strength = (this.gravitationalConstant * this.mass * walker.mass) / (distance * distance);
   force.mult(strength);
   return force;
  }
}
