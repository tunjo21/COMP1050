Minister ministerOfDefence;
Bike bike;
Boat boat;
Ocean ocean;
Filming filming;
BoatWaves boatwaves;

boolean moving = true;
boolean update = false;
boolean shiftpressed = false;

void drawinstructions() {
  String instructions = """Instructions:\n
  The up (↑) and down (↓) arrow keys control the boat's speed.
  Hold shift while pressing the up (↑) and down (↓) arrow keys to control the Defense Minister's speed.\n
  'r' resets the boat's speed to default.
  Hold shift while pressing 'r' to reset the Defense Minister's speed to default.\n
  Space toggles the boat, bike and minister's movement and the timer on the camera.
  \nPress enter to continue.""";
  background(0);
  textAlign(CENTER, CENTER);
  textSize(24);
  text(instructions, width/2, height/2);
}

void setup() {
  size(1280, 720);
  bike = new Bike();
  ministerOfDefence = new Minister();
  boat = new Boat();
  ocean = new Ocean();
  filming = new Filming();
  boatwaves = new BoatWaves();
  drawinstructions();
}

void draw() {
  if (false) { // Change this to 'false' if you do not want to run the tests
    noLoop();
    testRunner();
    background(0, 255, 0);
    return;
  }

  if (!update) {
    return;
  }

  background(255);

  if (moving) {
    boat.animate();
    bike.animate();
    ministerOfDefence.animate();
    filming.animate();
    filming.setpaused(false);
  } else {
    filming.setpaused(true);
  }
  ocean.animate();
  ocean.display();
  boat.display();
  boatwaves.animate();
  boatwaves.display(boat.x);
  bike.display();
  ministerOfDefence.display();
  filming.display();
}

void handleKey(char keyc, boolean shift) {
  if (keyc == ' ') {
    moving = !moving;
  } else if (keyc == 'E' && !update) {
    update = true;
  } else if (!shift) {
    if (keyc == 'U') {
      boat.incSpeed();
    } else if (keyc == 'D') {
      boat.decSpeed();
    } else if (keyc == 'r') {
      boat.resetSpeed();
    }
  } else if (shift) {
    if (keyc == 'U') {
      bike.incSpeed();
      ministerOfDefence.incSpeed();
    } else if (keyc == 'D') {
      bike.decSpeed();
      ministerOfDefence.decSpeed();
    } else if (keyc == 'R') {
      bike.resetSpeed();
      ministerOfDefence.resetSpeed();
    }
  }
}

void keyPressed() {
  /*
  When spacebar is pressed,
   this controls the movement of the bike
   through whether the boolean moving is true or false.
   */
  char keyc = key;
  if (keyc != 'a' && keyc != 'r' && keyc != ' ') {
    if (keyCode == UP) {
      keyc = 'U';
    } else if (keyCode == DOWN) {
      keyc = 'D';
    } else if (keyCode == ENTER) {
      keyc = 'E';
    } else if (keyCode == SHIFT) {
      shiftpressed = true;
    }
  }
  handleKey(keyc, shiftpressed);
}

void keyReleased() {
  if (keyCode == SHIFT) {
    shiftpressed = false;
  }
}
