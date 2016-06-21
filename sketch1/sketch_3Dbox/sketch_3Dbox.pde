int i;
void setup() {
size(500,500,P3D);
translate(100,100,0);
  
}

void draw(){
  background(255);
  stroke(255,0,0);
  i++;
  translate(100,100,50*sin(i*2*PI/180.0));
 rotateY(i*PI/180.0);
 noFill();
 box(40);
  
  
}