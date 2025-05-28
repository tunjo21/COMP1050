class Ocean {
  float angleOffset = 0.0;
  PImage img;
  float dx = TWO_PI/25.0;
  int base = 490;

  Ocean() {
    img = loadImage("background suii.png");
  }

  void animate() {
    angleOffset += 0.07;
  }

  void display() {
    // https://stackoverflow.com/a/2395483/22214283
    float angle = 0.0;
    float x, y = 0;
    imageMode(CENTER);
    image(img, 640, 300, 1280, 720);

    noStroke();
    fill(#53B0FA);
    beginShape();
    vertex(-4, base + 50);
    curveVertex(-4, base + sin(angle+angleOffset) * 5.0);
    for (int i = -4; i < width+5; i = i+4) {
      x = i;
      y = base + sin(angle+angleOffset) * 5.0;
      curveVertex(x, y);
      angle = angle + dx;
    }
    curveVertex(width+4, base + sin(angle+angleOffset) * 5.0);
    vertex(width+4, height);
    vertex(-4, height);
    endShape();
  }
}
