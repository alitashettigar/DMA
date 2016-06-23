
PImage img;
PImage img2;
float offset = 0;
float easing = 0.05;

void setup() {
  size(640, 360);
  img = loadImage("abc.jpg");  // Load an image into the program 
  img2 = loadImage("def.jpg");  //Load an image into the program
}

void draw() { 
  image(img, 0, 0);  // Display at full opacity
  float dx = (mouseX-img.width/2) - offset;
  offset += dx * easing; 
  
  
  tint(255, 127);  // Display at half opacity
  image(img2, offset, 0);
}