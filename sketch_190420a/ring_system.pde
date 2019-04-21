class RingSystem extends System{

  Ring ring = new Ring();
  
  void run(){
    
   if(isResetTick()){  
      reset();
    }
    
    ring.run();
  }
  
  void reset(){
    ring = new Ring();
  }
}

class Ring extends Entity{
  float counter = 0;
  
  
  boolean validate(){
    return true;
  }
  
  boolean isDead(){
    return false;
  }
  
  void draw(){
    noFill();
    stroke(255);
    
    strokeWeight(20);
    ellipse(width / 2, height / 2, abs(sin(counter) * 300), abs(sin(counter) * 300));
    
  }
  
  void update(){
    counter += 0.002;
  }
}
