public void setup()
{
 size(800,800);
}
public void draw()
{
  background(0);
  sierpinski(0,800,800);
}
public void mouseDragged()//optional
{
  
}
public void sierpinski(int x, int y, int len) 
{
  noStroke();
  fill((int)(Math.random()*255));
  if(len<=20){
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
