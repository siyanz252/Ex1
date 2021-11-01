class LetterGenerator {
  
  PShape a, b, c;
  ArrayList<Letter> letters;
  PVector position;
  color col;
  float offset = 150;
  
  
  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();
    col = getRandomColor();
    
    for (int i=0; i<input.length(); i++) {     
      char ch = input.charAt(i);
      
      float px = position.x + ((i+1) * offset);
      float py = position.y;
      
      switch(ch) {
        case 'a':
          letters.add(new Letter(a, px, py));
          break;
        case 'b':
          letters.add(new Letter(b, px, py));
          break;
        case 'c':
          letters.add(new Letter(c, px, py));
          break;
      }
    }
    
  }

  
  
  void initShapes() {
    a = createShape();
    a.beginShape();
    a.translate(170, 10);
    a.noStroke();
    a.fill(0,128,0);
    a.vertex(4, -3);
    a.fill(144,238,144);
    a.vertex(-175, 353);
    a.stroke(225);
    a.vertex(-43, 220);
    a.vertex(57, 219);
    a.vertex(177, 358);
    a.beginContour();
    a.vertex(-40,180);
    a.vertex(0, 60);
    a.vertex(40,180);
    a.endContour();
    a.endShape(CLOSE);
    
    b = createShape();
    b.beginShape();
    b.translate(50, 10);
    b.noStroke();
    b.fill(255,165,0);
    b.vertex(0.0, 0.0);
    b.fill(255,228,181);
    b.vertex(-11.149227, 313.036);
    b.vertex(202.40138, 230.70326);
    b.vertex(59.17667, 145.7976);
    b.vertex(204.97429, 24.871357);
    b.beginContour();
    b.vertex(40,120);
    b.vertex(40, 30);
    b.vertex(120, 50);
    b.endContour();
    b.beginContour();
    b.vertex(30,260);
    b.vertex(30, 180);
    b.vertex(110, 230);
    b.endContour();
    b.endShape(CLOSE);    
    
    c = createShape();
    c.beginShape();
    c.translate(220, 0);
    c.noStroke();
    c.fill(220,20,60);
    c.vertex(0.0, 0.0);
    c.fill(255,182,193);
    c.vertex(-177.53003, -7.718689);
    c.vertex(-168.9537, 282.16125);
    c.vertex(51.457947, 269.29675);
    c.vertex(-127.78732, 246.99829);
    c.vertex(-146.65524, 21.440826);
    c.endShape(CLOSE);
  }
  
  void update() {
    //
  }
  color getRandomColor() {
    return color( 1+ random(127), 1 + random(127), 1 + random(127));
  }
  void draw() {
    
    for (Letter letter : letters) {
      letter.run();
    }
  }
  
  void run() {
    update();
    draw();
  }

}
