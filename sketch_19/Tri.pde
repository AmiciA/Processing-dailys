class Tri {
  // triangle point positions
  float xpos1, 
        ypos1,
        xpos2,
        ypos2, 
        xpos3, 
        ypos3;
  
    // triangle point speeds
    float xspd1 = 3;
    float yspd1 = 2;
    float xspd2 = 3;
    float yspd2 = 2;
    float xspd3 = 3;
    float yspd3 = 2;
    
    // triangle point directions (+/-)
    int xdir1 = 1;
    int ydir1 = -1;
    int xdir2 = 1;
    int ydir2 = -1;
    int xdir3 = 1;
    int ydir3 = -1;
    
    //triangle colour
    color c;
    
    
    // triangle constructor
    Tri(color tempC, float tempXpos1, float tempYpos1, float tempXpos2, float tempYpos2, float tempXpos3, float tempYpos3) {
    
    // define triangle point starting positions
    xpos1 = tempXpos1;
    ypos1 = tempYpos1;
    xpos2 = tempXpos2;
    ypos2 = tempYpos2;
    xpos3 = tempXpos3;
    ypos3 = tempYpos3;
    
    // define triangle colour
    c = tempC;
  }
  
  
  // move method
  void move() {  
    // move triangle
    xpos1 += xspd1 * xdir1;
    ypos1 += yspd1 * ydir1;
    xpos2 += xspd2 * xdir2;
    ypos2 += yspd2 * ydir2;
    xpos3 += xspd3 * xdir3;
    ypos3 += yspd3 * ydir3;
    
    // bounce controls for triangle points
    if(xpos1 > width || xpos1 < 0) {
      xdir1 *= -1;
    }
    if(ypos1 > height || ypos1 < 0) {
      ydir1 *= -1;
    }
    if(xpos2 > width || xpos2 < 0) {
      xdir2 *= -1;
    }
    if(ypos2 > height || ypos2 < 0) {
      ydir2 *= -1;
    }
    if(xpos3 > width || xpos3 < 0) {
      xdir3 *= -1;
    }
    if(ypos3 > height || ypos3 < 0) {
      ydir3 *= -1;
    }
  }


  // display method
  void display() {
    // set triangle colour
    fill(c);
    noStroke();
    
    // draw triangle
    triangle(xpos1, ypos1, xpos2, ypos2, xpos3, ypos3);
  }
}