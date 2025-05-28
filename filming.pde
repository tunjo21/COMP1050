class Filming {
  int time = 0;
  int pausedtime = 0;
  boolean paused = false;

  void animate() {
    time = (millis()/1000)-pausedtime;
  }

  void setpaused(boolean pausedlocal) {
    paused = pausedlocal;
    if (paused) {
      pausedtime = (millis()/1000)-time;
    }
  }

  void display() {
    fill(255, 0, 0); // Red color for REC indicator background
    if (!paused) {
      circle(50, 50, 15); // Draw a rectangle as the background for REC indicator
      fill(#0A0A0A); // White color for time text
      textSize(20);
      textAlign(TOP, CENTER);
      String ltten = "";
      if (time%60 < 10) {
        ltten = "0";
      }
      text(time/60+":"+ltten+time%60, 65, 50); // Display time next to the red circle
    } else if (paused) {
      rect(50-7.5, 50-7.5, 15, 15); // Draw a rectangle as the background for REC indicator
      fill(#0A0A0A); // White color for REC text
      textSize(20);
      textAlign(TOP, CENTER);
      text("PAUSED", 65, 50); // Display "REC" on the red rectangle
    }
    strokeWeight(3);
    line(1250, 25, 1200, 25); // Adjusted line 1
    line(1250, 25, 1250, 75); // Adjusted line 2
    line(30, 25, 80, 25); // Adjusted line 3
    line(30, 25, 30, 75); // Adjusted line 4
    line(30, 690, 80, 690); // Adjusted line 5
    line(30, 690, 30, 635); // Adjusted line 6
    line(1200, 690, 1250, 690); // Adjusted line 7
    line(1250, 690, 1250, 635); // Adjusted line 8
  }
}
