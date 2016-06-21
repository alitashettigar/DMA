void setup() {
  size(500,500, P3D); 
}

void draw() {
  background(255);
  stroke(255, 50);
  translate(200, 200, 0);
  rotateX(mouseY * 0.05);
  rotateY(mouseX * 0.05);
  fill(mouseX * 2, 0, 0);
  sphereDetail(mouseX / 8);
  sphere(80);
}