//setup
void setup(){
  size(450,450);
  strokeWeight(5);
  background(255);
  noFill();
  ellipseMode(CENTER);
  rectMode(CENTER);
}

  void draw() {
 if(mousePressed == true){
 for(int i=1; i<10;i++){
   stroke(mouseX/2,0,mouseY/2);
  ellipse(mouseX,mouseY,20*i,20*i); 
  println("value of i," +i);
  println ("width/height of ellipse:" +(20*i));
    }
  }
}


     