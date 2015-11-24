float beginX = 250;  // Initial x-coordinate
float beginY = 25;  // Initial y-coordinate
float endX;   // Final x-coordinate
float endY;   // Final y-coordinate
float distX;          // X-axis distance to move
float distY;          // Y-axis distance to move
float exponent = 3;   // Determines the curve

float x;        // Current x-coordinate
float y;        // Current y-coordinate
float step = 0.01;    // Size of each step along the path
float pct = 0.0;      // Percentage traveled (0.0 to 1.0)

void setup() {
  size(500, 500);
  noStroke();
  frameRate(30);
  distX = endX - beginX;
  distY = endY - beginY;
}

void draw() {
  // fade out
  fill(200, 50, 50, 20);
  rect(0, 0, width, height);
  
  fill(#ffffff);
  ellipse(mouseX, mouseY, 10, 10);
  
  // drive circle motion
  pct += step;
  if (pct < 1.0) {
    x = beginX + (pct * distX);
    y = beginY + (pct * distY);
  }
  
  // draw circle
  fill(255);
  ellipse(x, y, 20, 20);

  // 
  pct = 0.0;
  beginX = x;
  beginY = y;
  endX = mouseX;
  endY = mouseY;
  distX = endX - beginX;
  distY = endY - beginY;
  
  saveFrame("hunt-####.png");
}