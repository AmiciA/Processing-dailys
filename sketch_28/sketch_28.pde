int now;
int wait = 500;
int rectsToDraw = 0;
int totalRects = 7;
int t1 = second();


void setup() {
  size(500, 750);
  noStroke();
  frameRate(10);
  
  now = millis();
}


void draw() {
  // fade
  fill(100, 100);
  rect(0, 0, width/2, height);
  
  fill(200, 100);
  rect(width/2, 0, width/2, height);
  
  if(millis() - now >= wait) {
    if(rectsToDraw < totalRects) {
      rectsToDraw++;
      now = millis();
    }
  }
  
  for(int i = 0; i < rectsToDraw; i++) {
    rectMode(CENTER);
    fill(#ffffff);
    rect((width/2), (height/10 + i*100), (width-50), (height/10), 2);
    rectMode(CORNER);
  }
  
  saveFrame("imgs/###.png");
}