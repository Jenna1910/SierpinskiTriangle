public void setup(){
  size(500,500);
  background(0,0,0);
}
int gabe = 200;
public void draw(){
  sierpinski(20,480,gabe);
}
public void mousePressed(){
  background(0,0,0);
  gabe+=10;
}
public void sierpinski(int x, int y, int len){
  if(len <= 10){
    triangle(x,y,x+(len/2), y-len, x+len, y);
  } else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }

}
