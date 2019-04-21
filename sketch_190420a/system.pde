abstract class System{
  abstract void run();
}  

abstract class Entity{
  // update property
  abstract void update();
  
  // draw to display
  abstract void draw();
  
  // check if the entity is dead.
  // if it's dead, it will removed from system.
  abstract boolean isDead();
  
  void run(){
    update();
    draw();
  }
}  
