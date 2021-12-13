import processing.sound.*;
SoundFile file;
Amplitude ampl;     
float x;

void setup() {
  size(666, 666);
  background(234);

  file = new SoundFile(this, "sound.mp3");  
  file.play();
  ampl = new Amplitude(this);     
  ampl.input(file);     
  colorMode(HSB,360,100,100);
}      

void draw() {
  float v = ampl.analyze() *600; 
  
  stroke(v,81,81);
  translate(width/2,height/2);
  rotate(radians(x +=v));
  rectMode(CENTER);
  rect(0,0,v,v);
}
