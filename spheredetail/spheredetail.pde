void setup() {
  size(500,500, P3D); 
}

void draw() {
  background(255);
  stroke(0);
  translate(250, 250, 0);
  rotateX(mouseY * 0.05);
  rotateY(mouseX * 0.05);
  fill(255);
  sphereDetail(mouseX/20);
  sphere(190);
  
   
}