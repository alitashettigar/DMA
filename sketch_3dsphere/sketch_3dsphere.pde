void setup() {
  size(500,500,P3D); 
}
void draw(){
  background(0);
  fill(255);
  noStroke();
  lights();
  translate(mouseX,mouseY, 0);
  sphere(100);
}