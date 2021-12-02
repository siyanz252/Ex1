void setup() {
  size(640, 360, FX2D);
  
  //setupCapture(0);
   setupMovie("People Walking.mp4");   
   //Video from: https://www.pexels.com/zh-cn/videos/
   
}

void draw() {  
  scale(1);
  background(0);
  
  if (videoImg != null) {
    if (openCV == null) {
      setupOpenCV(videoImg);
    } else {
      updateOpenCV(videoImg);
      image(videoImg, 0, 0);
    }
  }
  
  if (ps != null) {
    shape(ps);
  }
  surface.setTitle("" + frameRate);
}
