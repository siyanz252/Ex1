PImage img;
boolean toggleBloom = true;

void setup() {
  size(900, 700, P2D);
  bloomSetup();
  
  img = loadImage("car.jpg");
}

void draw() {
  background(0);
  
  tex.beginDraw();
  tex.background(0);
  tex.image(img, 0, 0);
  tex.endDraw();
  
  if (toggleBloom) {
    bloomDraw();
  } else {
    image(img, 0, 0);
  }
}
