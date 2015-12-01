float var;


void setup() {
  size(500, 500);
}


void draw() {
  background(#3E4147);
  frameRate(15);
  fill(223, 186, 105);
  noStroke();
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 400, 400);
  
  for(int i = 0; i < 10; i++) {
    int cirWid = mouseX*i;
    if(cirWid >= 400) {
      cirWid = 400;
    }
    
    fill(42,44,49, 100);
    ellipse(width/2, height/2, cirWid&i, cirWid);
    
    fill(255, 254, 223);
    pushMatrix();
    translate(width/2, height/2);
    rotate( 100 * second() * i);
      ellipse(width/3.5, height/3.5, 15, 15);
    popMatrix();
  }
  
  saveFrame("c-####.png");
}