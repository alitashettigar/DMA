
Eye e1, e2;

void setup() {
  size(560, 360);
  noStroke();
  e1 = new Eye( 220, 185, 45);
  e2 = new Eye( 320, 185, 45);
}

void draw() {
  //background
  background(181,238,255);
  fill(255);
  strokeWeight(3);
  
  //upper torso + neck
  fill(102,205,170);
  stroke(0);
  rect(150,250,240,200,280);
  stroke(0);
  line(200,350,200,360);
  line(330,350,330,360);
  
  fill(222,184,135);
  ellipse(270,300,50,50);
  
  //ears
   fill(222,184,135);
   ellipse(170,205,40,40);
   ellipse(370,205,40,40);
   
   
  //body
  fill(222,184,135);
  rect(170,110,200,200,280);
  

  //mouth
   fill(255,182,193);
   ellipse(270,255,30,30);
   line(240,250,300,250);
   
   fill(222,184,135);
   noStroke();
   rect(253,229,40,20);
    
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
    
       
   //object
    fill(mouseX,50,mouseY);
     ellipse(mouseX+10,mouseY+25,40,30);
    ellipse(mouseX+45,mouseY+25,40,30);  
    ellipse(mouseX,mouseY,50,40);
    ellipse(mouseX+50,mouseY,50,40);
 
   
    fill(mouseX,100,mouseY);
    rect(mouseX+18,mouseY-10,18,50,200);
    
    strokeWeight(5);
    line(mouseX+22,mouseY-10,mouseX+5,mouseY-30);
    line(mouseX+30,mouseY-10,mouseX+45,mouseY-30);
    
   fill(mouseX,50,mouseY);
    noStroke();
    rect(mouseX+2,mouseY,15,25);
    rect(mouseX+38,mouseY,15,25);
     
     
     //text
    fill(0,0,255);
    textSize(20);
text("Move the mouse!", 200, 100); 
  }
}