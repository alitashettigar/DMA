void setup () {
  //background
  background(255,255,255); 
  size(800,400);
  strokeWeight(90);
    
}

  
void draw () {
  if(mousePressed == true) {
   stroke(0,100,150); 
    
  line(pmouseX,pmouseY,mouseX,mouseY); 
  println("inside of if statement"); 
  

}

}else
  
println("out of if statement");
  
}