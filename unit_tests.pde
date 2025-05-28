void testRunner() {
  testToggleMoving01();
  testToggleMoving02();
  testKeyPressed03();
  testKeyPressed04();
  testKeyPressed05();
  testKeyPressed06();
  testKeyPressed07();
  testKeyPressed08();
  testKeyPressed09();
  testIncAngle10();
  testIncAngle11();
}

void testToggleMoving01() {
  setup();
  moving = true;
  handleKey(' ', false);

  assert (!moving):
  "Test testToggleMoving01 failed: expected moving to be false";
}

void testToggleMoving02() {
  setup();
  moving = false;
  handleKey(' ', false);

  assert (moving):
  "Test testToggleMoving02 failed: expected moving to be true";
}

void testKeyPressed03() {
  setup();
  boat.dx = 2;
  update = false;
  handleKey('E', false);

  assert (update):
  "Test testKeyPressed03 failed: expected update to be true";
}

void testKeyPressed04() {
  setup();
  boat.dx = 2;
  handleKey('U', false);

  assert (boat.dx == 2+2):
  "Test testKeyPressed04 failed: expected boat_dx to increase by 2";
}

void testKeyPressed05() {
  setup();
  boat.dx = 2;
  handleKey('D', false);

  assert (boat.dx == 2-2):
  "Test testKeyPressed05 failed: expected boat_dx to decrease by 2";
}

void testKeyPressed06() {
  setup();
  boat.dx = 1.0;
  handleKey('r', false);

  assert (boat.dx == 2):
  "Test testKeyPressed06 failed: expected boat_dx to be set to 2";
}

void testKeyPressed07() {
  setup();
  ministerOfDefence.speed = 2;
  bike.speed = 2;
  handleKey('U', true);

  assert (ministerOfDefence.speed == 4 && bike.speed == 4):
  "Test testKeyPressed07 failed: expected bike and defense minister speed to increase by 2";
}

void testKeyPressed08() {
  setup();
  ministerOfDefence.speed = 2;
  bike.speed = 2;
  handleKey('D', true);

  assert (ministerOfDefence.speed == 0 && bike.speed == 0):
  "Test testKeyPressed08 failed: expected bike and defence minister speed to decrease by 2";
}

void testKeyPressed09() {
  setup();
  ministerOfDefence.speed = 1;
  bike.speed = 1;
  handleKey('R', true);

  assert (ministerOfDefence.speed == 4 && bike.speed == 4):
  "Test testKeyPressed09 failed: expected bike and defense minister speed to be set to 2";
}

void testIncAngle10() {
  setup();
  ocean.animate();

  assert (ocean.angleOffset == 0.07):
  "Test testIncAngle10 failed: expected angle offset to be 0.07";
}

void testIncAngle11() {
  setup();
  boatwaves.animate();

  assert (boatwaves.angleOffset == 0.4):
  "Test testIncAngle11 failed: expected angle offset to be 0.4";
}
