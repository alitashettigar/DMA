void setup() {
 size(400,400); 
  
}



void draw() {
  background(225);
//top squares
fill(0);
stroke(0);
rect(40,20,30,30);
rect(325,20,30,30);

//second squares
rect(70,50,30,30);
rect(295,50,30,30);
rect(155,50,90,30);


//start of main body
fill(0);
rect(100,80,195,40);
rect(70,120,255,100);

//start of legs
fill(0);
rect(20,150,360,30);

//actual legs
rect(20,150,30,100);
rect(350,150,30,100);

//second legs
fill(0);
rect(70,150,30,100);
rect(295,150,30,100);

//bottom part
fill(0);
rect(100,240,60,35);
rect(235,240,60,35);

//eyes
fill(mouseX,mouseY,245);
rect(120,140,50,30);
rect(230,140,50,30);






}