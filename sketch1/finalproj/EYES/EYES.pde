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
    rect(faces[i].x+50,faces[i].y+40,150,160,150);
    
    
    //eyes
    fill(255);
    stroke(0,0,0);
    ellipse(faces[i].x+30, faces[i].y+40,35,20);
    ellipse(faces[i].x+80, faces[i].y+40,35,20);
    
    fill(0,0,0);
    ellipse(faces[i].x+30, faces[i].y+40,15,15);
    ellipse(faces[i].x+80, faces[i].y+40,15,15);
   
   
   noFill();
   stroke(0,255,0);
   rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
}

void captureEvent(Capture c) {
  c.read();
}