PImage img;
int smallPoint, largePoint;

void setup() {
  size(300, 300);
  img = loadImage("a.jpg");
  smallPoint = 4;
  largePoint = 7;
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
  
   
   
}