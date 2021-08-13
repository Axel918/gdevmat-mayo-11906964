public class Line
{
 public float x1 = 0;
 public float y1 = 360;
 public float x2 = 0;
 public float y2 = -360; 
  
 public Line()
 {
   
 }
 
 public void renderLine()
 {
   color(0);
   line(x1, y1, x2, y2);
   stroke(0);
 }
}
