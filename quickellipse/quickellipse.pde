void setup() {
size(500,500);
}
int value = 0;

void draw() {
  background(255);
  fill(value);
  ellipse(250, 200, 150, 150);
}

void mouseDragged() 
{
  value = value + 100;
  if (value > 255) {
    value = 0;
  }
}