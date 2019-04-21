class ParticleStack {
  final float theHeight;
  final PVector position;

  ParticleStack(float aHeight, PVector aPosition) {
    theHeight = aHeight;
    position = aPosition;
  }

  void draw() {
    fill(255);
    
    arc(
      position.x, 
      position.y, 
      // width of sinking cicle
      width * 1.2, 
      theHeight, -PI, 0
    );
  }
}  
