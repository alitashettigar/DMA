import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw() {
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  Rectangle[] faces = opencv.detect();
  println(faces.length);


  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
   
   
   //face
    fill(210,180,140);
    rect(faces[i].x,faces[i].y,130,140,150);
    
    
    //eyes
    fill(255);
    stroke(0,0,0);
    ellipse(faces[i].x+40, faces[i].y+40,35,20);
    ellipse(faces[i].x+85, faces[i].y+40,35,20);
    
    fill(0,0,0);
    ellipse(faces[i].x+40, faces[i].y+40,15,15);
    ellipse(faces[i].x+85, faces[i].y+40,15,15);
   
   
    //mouth
     fill(255);
     ellipse(faces[i].x+65, faces[i].y+100,50,50);
      fill(210,180,140);
      noStroke();
    rect(faces[i].x+35,faces[i].y+60,60,40);
    stroke(0);
    line(faces[i].x+40,faces[i].y+100,faces[i].x+90,faces[i].y+100);
    
    //nose
    triangle(faces[i].x+70,faces[i].y+65,faces[i].x+50,faces[i].y+80,faces[i].x+70,faces[i].y+85);
     noStroke();
    rect(faces[i].x+68,faces[i].y+60,10,30);
    
   noFill();
   stroke(0,255,0);
   rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
}

void captureEvent(Capture c) {
  c.read();
}