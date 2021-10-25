PImage img,img2;
float x =100;
float y =100;
float s = 50;
float xsky;
float ysky;
float xhouse;
float yhouse;
float speed = 3;
float xhorse;
float yhorse;
int x1 = 400;

void setup(){
size(820,461,P2D);
noStroke();
img = loadImage("sky.jpg");
 xsky = 820;
 ysky = 300;
 
 img2 = loadImage("house02.jpg");
 xhouse = 50;
 yhouse = 100;
 
 
}

void draw(){
  background(100,149,237);
  image(img, 0, 0);
  fill(255,0,0);
  ellipse(100,100,100,100);
  
  
  fill(50,205,50);
  rect(0,350,800,200);
  fill(240,248,255);
  
  image(img2, 440,250);
  ellipse(x1, 150 ,100 ,100);
  ellipse(x1, 200 ,100 ,100);
  ellipse(x1-50, 200 ,100 ,100);
  ellipse(x1+50, 200 ,100 ,100);
  
  x1 = x1 + 1;
  if(x1 == 1000) x1 = -200;
  
  for (int i=0; i<3; i++){
    ellipse(x+(i * s),y, s, s);
  }
  x += speed;
  if(x>width || x<0){
     speed *= -1;
  }
  
  fill(255,0,0);
  ellipse(100,100,100,100);
  
    

  
}
