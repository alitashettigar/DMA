PImage img;
int smallPoint, largePoint;

void setup() {
  size(500, 500);
  img = loadImage("a.jpg");
  smallPoint = 3;
  largePoint = 4;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height)); 
  color pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
  rect(x,y,pointillize,pointillize); 
  triangle(x,y,x,y,x,y);
}