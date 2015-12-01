import processing.video.*;

Capture cam;
int mir = -1;
//int scaX = 1;
//int traX = 0;
int scaX = -1;
int traX = 1;


void setup() {
  size(750, 500);
  frameRate(15);

  String[] cameras = Capture.list();

  cam = new Capture(this, cameras[0]);
  cam.start();
}


void draw() {
  background(100);
  
  if (cam.available() == true) {
    cam.read();
  }
  
  translate((width-640)/2, (height-480)/2);
  pushMatrix();
    scale(scaX, 1);
    translate(-640*traX, 0);
    image(cam, 0, 0);
  popMatrix();
  
  /*if(frameCount < 150) {
    // recording text
    noStroke();
    fill(#ff0000);
    ellipseMode(CENTER);
    //ellipse(25, 25, 10, 10);
    textAlign(LEFT, CENTER);
    //text("RECORDING", 35, 23);
  }
  
  if(mir == 1) {
    // mirrored text
    fill(#ffffff);
    ellipseMode(CENTER);
    //ellipse(25, 45, 10, 10);
    textAlign(LEFT, CENTER);
    //text("MIRRORED", 35, 43);
    
    // switch scale and translation
    scaX = -1;
    traX = 1;
  }
  else if (mir == -1) {
    // switch scale and translation back
    scaX = 1;
    traX = 0;
  }*/
  
  if(frameCount < 60) {
    saveFrame("imgs/me-####.png");
  }
}


void keyPressed() {
  if (key == 'm') {
    // switch mirroring variable
    mir *= -1;
  }
}
