void setup() {
  size(400,400,P3D);
  
}

void draw() {
stroke(0,0,255);
translate(200, 200, 0); 
rotateY(0.5);
noFill();
box(mouseX,mouseY,30);

}