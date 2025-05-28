class Bike {
  int speed = 4;
  int direction1 = 4;
  int direction2 = 4;
  int yPedal1=630;
  int yPedal2=560;
  int x = 150;

  void display() {
    stroke(0);

    //background
    fill(#989898);
    strokeWeight(1);
    rect(0, 650, width, height);

    //backpedal
    strokeWeight(2);
    fill(60);
    rect(x+25, yPedal1, 30, 8);
    strokeWeight(4);
    line(x+40, yPedal1, x+40, 600);

    //wheels
    fill(50);
    circle(x+150-200, 600, 100);
    circle(x+150, 600, 100);

    fill(255);
    circle(x+150-200, 600, 80);
    circle(x+150, 600, 80);

    //red part of bike
    strokeWeight(2);
    fill(#FF4B4E);

    quad(x+155-210, 600, x+155-200, 600, x+155-135, 550, x+155-140, 540);
    quad(x+155-145, 545, x+155-145, 555, x+155-45, 540, x+155-45, 530);
    quad(x+155-120, 600, x+155-110, 600, x+155-150, 520, x+155-160, 520);
    quad(x+155-120, 600, x+155-110, 600, x+155-40, 540, x+155-40, 530);
    quad(x+155-205, 598, x+155-205, 603, x+155-115, 605, x+155-115, 595);
    quad(x+155-50, 510, x+155-55, 510, x+155-10, 600, x+155, 600);

    //bike handle
    fill(200);
    beginShape();
    vertex(x+105, 520);
    bezierVertex(x+85, 500, x+110, 490, x+120, 480);
    bezierVertex(x+110, 470, x+85, 460, x+75, 455);
    bezierVertex(x+85, 450, x+110, 455, x+125, 465);
    bezierVertex(x+130, 480, x+125, 490, x+115, 500);
    bezierVertex(x+100, 505, x+115, 520, x+105, 520);
    endShape();

    //grip handle and seat
    fill(100);
    ellipse(x+85, 455, 50, 20);
    ellipse(x, 520, 60, 20);

    //grey circles
    strokeWeight(4);
    fill(200);
    circle(x+150-200, 600, 10);
    circle(x+150, 600, 10);
    circle(x+150-110, 600, 20);

    //frontpedal
    strokeWeight(2);
    fill(60);
    circle(x+25, 600, 5);
    rect(x+25, yPedal2, 30, 8);
    strokeWeight(4);
    line(x+40, yPedal2+10, x+40, 600);
  }

  void animate() {
    //pedal movement

    if (yPedal1<=560) {
      if (speed > 0) {
        direction1 = speed/2;
      } else {
        direction1 = -speed/2;
      }
    }
    if (yPedal1>=630) {
      if (speed > 0) {
        direction1 = -speed/2;
      } else {
        direction1 = speed/2;
      }
    }

    if (yPedal2<=560) {
      if (speed > 0) {
        direction2 = speed/2;
      } else {
        direction2 = -speed/2;
      }
    }
    if (yPedal2>=630) {
      if (speed > 0) {
        direction2 = -speed/2;
      } else {
        direction2 = speed/2;
      }
    }

    //movement across screen
    yPedal1 = yPedal1 + direction1;
    yPedal2 = yPedal2 + direction2;

    x += speed;

    if (x > width+100) {
      x = -200;
    }
    if (x < -200) {
      x = width+100;
    }
  }

  void incSpeed() {
    speed += 2;
  }

  void decSpeed() {
    speed -= 2;
  }

  void resetSpeed() {
    speed = 4;
  }
}
