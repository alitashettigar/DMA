int i;
void setup() {
size(500,500,P3D);
noStroke();
translate(100,100,0);
  
}

void draw(){
  background(255);
  i++;
  translate(200,200,50*sin(i*2*PI/180.0));
 rotateY(i*PI/180.0);
 //noFill();
 box(40);
  lights();
 sphere(100);

  
}