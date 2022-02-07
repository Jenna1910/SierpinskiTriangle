public void setup(){
  size(600,600);
  background(0,0,0);
}
int tri = 200;
public void draw(){
  sierpinski(20,580,tri);
}
public void mousePressed(){
  background(0,0,0);
  tri+=20;
}
public void sierpinski(int x, int y, int len) 
{
  if (len < 50)
  {
    fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    triangle(x, y, x+len, y, x+(len/2), y-len);
  }
  else
  {
    fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    sierpinski(x, y, len/2);
    fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    sierpinski(x+len/2,y,len/2);
    fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    sierpinski(x+len/4, y-len/2,len/2);
  }
    
}
