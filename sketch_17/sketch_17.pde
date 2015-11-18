int i = 0;
int degTens;

void setup () {
  size(500, 500, P2D);
  background(255);
  smooth(2);  
}


void draw () {
  // fade out
  fill(255, 255, 255, 150);
  noStroke();
  rect(0, 0, width, height);
  
  // format and display text
  textAlign(CENTER);
  textSize(24);
  fill(#212121);
  String tex = str(i) + "x " + nf(degTens, 3);
  text(tex, (width/2 - 10), 100);
  
  // center axis of rotation
  translate(width/2, height/2);
  
  // circle styles
  noFill();
  noStroke();
  fill(#FF4E50);

  // circle rotation, start at top
  float radrot = frameCount * PI/15 - PI;
  rotate(radrot);
  translate(0, 50);
  ellipse(0, 0, 30, 30);
  
  // degree - radians conversion
  float radDisp = radrot + PI;
  int degrot = floor(radDisp * 180/PI);
  
  // show current angle by subtracting 360 times number of revolutions
  int degDisp = degrot - i*360;
  if(degDisp > 360) {
    i += 1;
  }
  degTens = round(degDisp / 10) * 10;
  
  //save frames from 3 rotations
  if(i < 4) {
    saveFrame("imgs/rot-####.png");
  }
}