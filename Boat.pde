class Boat {
  float dx = 2;
  float x = 100;


  void animate() {
    x += dx;
    if (x > width) {
      x = -550;
    }
    if (x < -550) {
      x = width;
    }
  }

  void display() {
    stroke(0);
    strokeWeight(4);

    fill(#F5F1AB);
    quad(x+100, 395, x+150, 300, x+340, 300, x+370, 350);
    line(x+270, 300, x+300, 370);

    fill(#D0EEF0);
    quad(x+130, 340, x+145, 310, x+175, 310, x+160, 340);
    quad(x+170, 340, x+185, 310, x+200, 310, x+200, 340);
    quad(x+220, 340, x+215, 310, x+265, 310, x+275, 340);
    quad(x+360, 340, x+345, 310, x+320, 310, x+335, 340);
    quad(x+325, 340, x+310, 310, x+285, 310, x+300, 340);

    fill(255);
    quad(x+135, 300, x+340, 300, x+335, 295, x+140, 295);

    beginShape();
    curveVertex(x+11, 395);
    curveVertex(x+11, 395);
    curveVertex(x+120, 390);
    curveVertex(x+350, 350);
    curveVertex(x+500, 340);
    curveVertex(x+500, 340);
    vertex(x+480, 380);
    curveVertex(x+480, 380);
    curveVertex(x+480, 380);
    curveVertex(x+350, 390);
    curveVertex(x+150, 415);
    curveVertex(x+18, 420);
    curveVertex(x+18, 420);
    vertex(x+18, 420);
    vertex(x+11, 395);
    endShape();
    noFill();

    fill(#F76E3C);
    beginShape();
    curveVertex(x+35, 480);
    curveVertex(x+35, 480);
    curveVertex(x+300, 480);
    curveVertex(x+440, 460);
    curveVertex(x+440, 400);
    vertex(x+420, 500);
    vertex(x+40, 500);
    vertex(x+35, 480);
    endShape();
    noFill();

    fill(#68CEF5);
    beginShape();
    curveVertex(x+18, 420);
    curveVertex(x+18, 420);
    curveVertex(x+150, 415);
    curveVertex(x+350, 390);
    curveVertex(x+480, 380);
    curveVertex(x+480, 380);
    vertex(x+480, 380);
    vertex(x+440, 460);
    curveVertex(x+440, 400);
    curveVertex(x+440, 460);
    curveVertex(x+300, 480);
    curveVertex(x+35, 480);
    curveVertex(x+35, 480);
    vertex(x+35, 480);
    vertex(x+18, 420);
    endShape();
    noFill();
  }

  void incSpeed() {
    dx += 2;
  }

  void decSpeed() {
    dx -= 2;
  }

  void resetSpeed() {
    dx = 2;
  }
}
