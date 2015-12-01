PImage bkg;
PImage frg;


void setup () {
  size(350, 350);
  bkg = loadImage("glenn.jpg");
  frg = loadImage("glenn_empty.jpg");
}


void draw() {
  background(0);
  frameRate(1);
  
  loadPixels();
  bkg.loadPixels();
  frg.loadPixels();
  
  for(int y = 0; y < bkg.height; y++) {
    for(int x = 0; x < bkg.width; x++) {
      
      int loc = x + (y * bkg.width);
      
      float r = red(bkg.pixels[loc]);
      float g = green(bkg.pixels[loc]);
      float b = blue(bkg.pixels[loc]);
      
      if ((x % 2 == 0) && (y % 2 == 0)) {
        pixels[loc] = color(0);
      }
      
      else {
        pixels[loc] =  color(r, g, b);
      }
      
      

    }
  }
  
  updatePixels();
  
  saveFrame(##.png);
}
