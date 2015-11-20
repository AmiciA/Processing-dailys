Tri myTri1;
Tri myTri2;
Tri myTri3;
Tri myTri4;


void setup() {
  size(500, 500);
  frameRate(25);

  myTri1 = new Tri(color(255,189,216, 200), 250, 50, 125, 250, 375, 250);
  myTri2 = new Tri(color(255,200,186, 200), 100, 100, 125, 250, 375, 250);
  myTri3 = new Tri(color(227,170,214, 200), 250, 50, 125, 250, 100, 100);
  myTri4 = new Tri(color(181,216,235, 200), 250, 50, 100, 100, 125, 250);

}


void draw() {
  background(250);
  
  myTri1.move();
  myTri1.display();
  
  myTri2.move();
  myTri2.display();
  
  myTri3.move();
  myTri3.display();
  
  myTri4.move();
  myTri4.display();
  
  if(frameCount > 50 && frameCount < 300) {
    saveFrame("imgs/poly-####.png");
  }
}