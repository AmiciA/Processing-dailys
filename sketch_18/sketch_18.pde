// circle radius
int rad = 60;

// circle position
float xpos, ypos;

// circle speed
float xspeed = 10;
float yspeed = 5;

// circle direction
int xdir = 1;
int ydir = 1;


void setup() {
  size(500, 500);
  frameRate(30);
  
  // circle properties
  noStroke();
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
}


void draw() {
  // colour changes based on side of screen circle is on
  if(xpos > width/2) {
    background(100);
    fill(#ffbb00);
    rect(width/2, 0, width, height);
    fill(100);
  }
  else {
    background(100);
    fill(#ffbb00);
  }
  
  // changing position on circle
  xpos += xspeed * xdir;
  ypos += yspeed * ydir;
  
  // circle bouncing off edges
  if(xpos > width-rad || xpos < rad) {
    xdir *= -1;
  }
  else if(ypos > height-rad || ypos < rad) {
    ydir *= -1;
  }
  
  // drawing circle and face elements
  ellipse(xpos, ypos, rad, rad);
  fill(50);
  ellipse(xpos-15, ypos-10, rad/12, rad/12);
  ellipse(xpos+15, ypos-10, rad/12, rad/12);
  arc(xpos, ypos+10, rad/7.5, rad/7.5, PI*.8, TWO_PI*1.1, CHORD);
  
  // save frames
  if(frameCount < 150) {
    saveFrame("imgs/smile-####.png");
  }
}
