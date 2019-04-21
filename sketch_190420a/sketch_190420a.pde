ParticleSystem ps;
StackSystem stack;

RingSystem ring;

ClockSpotSystem clock;


void setup(){
  background(0);
  
  
  ps = new ParticleSystem(new PVector(width * 0.5 , -10));
  stack = new StackSystem(600, new PVector(width * 0.5 , height));
  
  ring = new RingSystem();
  
  clock = new ClockSpotSystem();
}

void settings(){
  
  //fullScreen();
  size(725, 850);
  
}
 
void draw(){
  background(0);
  
 // ps.run();
 // stack.run();
  
  //ring.run();
  

   clock.run();
  
  //filter(BLUR, 1);
}  
