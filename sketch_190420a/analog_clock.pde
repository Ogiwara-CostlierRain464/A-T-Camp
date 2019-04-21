class AnalogClock extends Entity {
  final PVector bottom;
  Time time;

  int radius;
  int maxRadius;

  AnalogClock(PVector aBottom, Time aTime, int aRadius) {
    bottom = aBottom;
    time = aTime;

    maxRadius = aRadius;
    radius = 0;
  }

  boolean isDead() {
    return false;
  }

  void update() {
    time.step();
    
    if(radius <= maxRadius){
      radius++;
    }
  }

  void draw() {
    // bottom.x comes for center of circle

    // fixed length line

    circle(bottom.x, bottom.y, radius * 2);

    float hourNeedle = radius * 0.4;
    float minuteNeedle = radius * 0.8;

    // hour needle
    line( bottom.x, bottom.y, bottom.x + cos(30 * time.hour) * hourNeedle, bottom.y + sin(30 * time.hour) *  hourNeedle);

    // minute needle
    line(bottom.x, bottom.y, bottom.x + cos(radians(6 * time.minute)) * minuteNeedle, bottom.y + sin(radians(6 * time.minute)) * minuteNeedle);
    
    //line(bottom.x, bottom.y, bottom.x + cos(PI / 2) * minuteNeedle, bottom.y + sin(PI / 2) * minuteNeedle);
  }
}  
