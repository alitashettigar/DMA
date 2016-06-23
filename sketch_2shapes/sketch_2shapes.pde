void setup() {
  size(640, 360,P3D);
  noStroke();
}

void draw() {
  background(255);
  // Scale the mouseX value from 0 to 640 to a range between 0 and 175
  float c = map(mouseX, 0, width, 0, 175);
  // Scale the mouseX value from 0 to 640 to a range between 40 and 300
  float d = map(mouseX, 0, width, 40, 300);
  fill(mouseY, mouseX, c);
  ellipse(width/2, height/2, d, d);   
  
  stroke(255, 50);
  translate(320, 190, 0);
  rotateX(mouseY * 0.05);
  rotateY(mouseX * 0.05);
  fill(mouseX * 2, 0, 160);
  sphereDetail(mouseX / 4);
  sphere(40);
}