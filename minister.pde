class Minister {
  int lLeg = 630;
  int rLeg = 560;
  int direction1 = 4;
  int direction2 = 4;
  int x = -100;
  int y = 400;
  int speed = 4;
  PImage img;

  Minister() {
    img = loadImage("dm facing right.png");
  }

  void animate() {
    // Increment the character's horizontal position to simulate movement
    x += speed; // Speed of the character
    // Check if the character has moved beyond the screen width
    if (x > width-150) {
      // Reset character's position to create a loop effect
      x = -450;
    }
    if (x < -450) {
      x = width-150;
    }
    if (lLeg<=560) {
      if (speed > 0) {
        direction1 = speed/2;
      } else {
        direction1 = -speed/2;
      }
    }
    if (lLeg>=630) {
      if (speed > 0) {
        direction1 = -speed/2;
      } else {
        direction1 = speed/2;
      }
    }

    if (rLeg<=560) {
      if (speed > 0) {
        direction2 = speed/2;
      } else {
        direction2 = -speed/2;
      }
    }
    if (rLeg>=630) {
      if (speed > 0) {
        direction2 = -speed/2;
      } else {
        direction2 = speed/2;
      }
    }

    //movement of legs
    lLeg = lLeg + direction1;
    rLeg = rLeg + direction2;
  }

  void display() {
    // Draw left leg and shoe
    leftLeg(x + 275);
    leftShoe(x + 275);

    bike.display(); // allows the left leg to be behind the bike

    imageMode(CENTER);
    image(img, x + 333, y - 92, 400, 400);

    fill(#A7A2A2); // collar color
    strokeWeight(2);
    rect(x + 215, y - 68, 90, 16); // collar size

    fill(#5F5B5B); // body color
    rect(x + 215, y - 55, 90, 160, 8); // body

    fill(#5F5B5B); // arm color
    rect(x + 240, y - 55, 30, 110, 8); // right arm
    rect(x + 240, 428, 60, 30, 8); // right forearm

    fill(#F7D2AF); // color of hand
    ellipse(x + 315, 440, 40, 40); // right hand

    fill(#312E2E); // pant color
    rect(x + 215, 489, 90, 25, 8); // right thigh

    fill(#891207); // color of tie
    triangle(x + 305, y - 30, x + 285, y - 55, x + 305, y - 55); // tie

    fill(#0A0101); // button color
    ellipse(x + 305, y -5, 9, 20); // button 1

    // Draw right leg and shoe
    rightLeg(x + 275);
    rightShoe(x + 275);
  }

  void leftLeg(int x) {
    fill(#312E2E); // pant color
    rect(x, lLeg-115, 30, 105, 8); // leftleg
  }

  void leftShoe(int x) {
    fill(#9D4400); // color of shoe
    rect(x, lLeg-25, 40, 25); // left shoe
  }

  void rightLeg(int x) {
    fill(#312E2E); // pant color
    rect(x, rLeg-115, 30, 105, 8); // right leg
  }

  void rightShoe(int x) {
    fill(#9D4400); // color of shoe
    rect(x, rLeg-25, 40, 25); // right shoe
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
