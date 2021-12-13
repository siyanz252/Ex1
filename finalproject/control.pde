import xyscope.*;
XYscope xy;
void mouseDragged() {
  // add point based on width/height
  xy.line(mouseX, mouseY, pmouseX, pmouseY);
  
  if (strokes.size() > 0) {
    Stroke stroke = strokes.get(strokes.size()-1);
    stroke.points.add(new PVector(mouseX, mouseY));
    stroke.timestamp = millis();
  }

  marktime = millis();
}

void keyPressed() {
  if (keyCode == 8) { // DELETE
    xy.clearWaves();
  }
  switch (keyCode) 
  {  
    case 97:  
        S[1].play();
        break;
    case 98: 
        S[2].play();   
        break;
  }
}

void mousePressed() {
  Stroke stroke = new Stroke();
  strokes.add(stroke);
}

void mouseReleased() {
  //
}
