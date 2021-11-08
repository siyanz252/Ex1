float scaleAmp = 1000;
float scaleFreq = 1000;


void setup() {
  size(600, 400, P2D);  
  setupSound();
}

void draw() {
  background(210,180,140);
  fill(255,92,92);
  stroke(255,0,0);
  ellipse(150,100,100,100);
  ellipse(450,100,100,100);
  
  updateSound();
  
  println("amp: " + amp + " freq: " + freq);

  rectMode(CENTER);
  float fillValR = constrain(map(freq, 0, scaleFreq, 0, 203), 0, scaleFreq);
  float fillValG = constrain(map(freq, 0, scaleFreq, 0, 90), 0, scaleFreq);
  float fillValB = constrain(map(freq, 0, scaleFreq, 0, 193), 0, scaleFreq);
  fill(fillValR, fillValG, fillValB);
  rect(width/2, height - (amp * scaleAmp), 100, amp * scaleAmp);
}
