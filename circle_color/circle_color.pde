void setup() {
  size(400,600);
}

void draw() {
 face(mouseX,mouseY); 
}

void face(int x,int y)
{
 fill(mouseX,150,mouseY);
   stroke(0);
  ellipse(x,y,mouseX/2,mouseY/2);
 

}