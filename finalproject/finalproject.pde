import processing.sound.*;
PGraphics pg;
SoundFile file;
Amplitude ampl;  
SoundFile[] S;
float x;
ArrayList<Stroke> strokes;
int marktime = 0;
int timeout = 1000;

void setup() {
  size(680, 400);
  background(235);
//sound from :https://pixabay.com/zh/sound-effects/
  file = new SoundFile(this, "M.mp3");  
  file.play();
  ampl = new Amplitude(this);     
  ampl.input(file);     
  colorMode(HSB,360,100,100);
  strokes = new ArrayList<Stroke>();
}      

void draw() {
  float v = ampl.analyze() *600; 
  
  stroke(v,81,81);
  translate(width/2,height/2);
  rotate(radians(x +=v));
  rectMode(CENTER);
  rect(0,0,v,v);
}
