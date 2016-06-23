
Eye e1, e2;

void setup() {
  size(640, 360);
  noStroke();
  e1 = new Eye( 220, 185, 45);
  e2 = new Eye( 320, 185, 45);
}

void draw() {
  background(mouseX,440,mouseY);

  //body
  fill(222,184,135);
  rect(170,110,200,200,280);

  //mouth
   fill(255,182,193);
  ellipse(270,255,30,30);
  line(240,250,300,250);
   
  
  
   fill(222,184,135);
   noStroke();
   rect(255,229,40,20);
    
    stroke(0);
    line(270,250,270,260);  
    
   //nose
   strokeWeight(5);
   stroke(0);
   point(270,220);
    
    
  
  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);

  e1.display();
  e2.display();
}
  

class Eye {
  int x, y;
  int size;
  float angle = 0.0;

  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
  }

  void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }

  void display() {
    pushMatrix();
    translate(x, y);
    fill(255);
    strokeWeight(3);
    stroke(0);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(0, 0, 100);
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
  }
}