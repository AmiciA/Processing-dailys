float objPosX;
float objPosY;


void setup() {
  frameRate(25);
  size(500, 500);
  background(50);
  noStroke();
  
  // rectangle properties
  rectMode(CENTER);
  objPosX = width/2;
  objPosY = height/2;
}


void draw() {
  // draw rectangle
  rect(objPosX, objPosY, 50, 50, 5);
  
  // save imgs
  if(frameCount % 2 == 0) {
    saveFrame("imgs/snake-####.png");
  }
}


void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP) {
      objPosY -= 5;
    }
    else if(keyCode == DOWN) {
      objPosY += 5;
    }
    else if(keyCode == LEFT) {
      objPosX -= 5;
    }
    else if(keyCode == RIGHT) {
      objPosX += 5;
    }
  }
}