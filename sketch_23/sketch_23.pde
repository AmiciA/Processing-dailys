float s;


void setup() {
  size(750, 500);
  stroke(255);
}

void draw() {
  noStroke();
  frameRate(1);
  
  // map time units to colour values
  float s = map(second(), 0, 60, 0, 255);
  float m = map(minute(), 0, 60, 0, 255); 
  float h = map(hour(), 0, 24, 50, 205);
  
  // HOURS colour
  fill(h, 0, 0);
  rect(0, 0, width/3, height);
  //HOURS text
  fill(255, 150);
  textSize(100);
  text(hour(), (width/6)-width/12, 150);
  
  //MINUTES colour
  fill(0, m, 0);
  rect(width/3, 0, width/3, height);
  //MINUTES text
  fill(255, 150);
  textSize(100);
  text(minute(), ((width/6)*3)-width/12, 150);
  
  //SECONDS colour
  fill(0, 0, s);
  rect((width/3)*2, 0, width/3, height);
  //SECONDS text
  fill(255, 150);
  textSize(100);
  text(second(), ((width/6)*5)-width/12, 150);

  println(second(), minute(), hour());
  saveFrame("imgs/colour-###.png");
}