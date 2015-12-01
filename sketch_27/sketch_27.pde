void setup() { 
  size(500, 500);
  noStroke();  
} 
 

void draw() {
  background(225);
  translate(width/2, height/2);

  for(int i = 0; i <= 10; i++) {
    fill(#5500aa);
    pushMatrix();
      rotate(PI*i/10);
      triangle((10*i), (10*i), i+100, i+100, i*2, i*20);
    popMatrix();
    println(i);
  }
  
  textSize(24);
  textAlign(CENTER, CENTER);
  fill(#5500aa);
  text("SCORP", 0, -height/7);
  
  if(frameCount == 50) {
    saveFrame("###.png");
  }
} 
