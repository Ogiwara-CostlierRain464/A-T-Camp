class StackSystem extends System {
  final int max;
  final PVector position;

  StackSystem(int aMax, PVector aPosiotion) {
    max = aMax;
    position = aPosiotion;
  }

  float counter = 0;
  
  void reset(){
    counter = 0;
  }

  void run() {

    if (counter <= max) {
      counter += 1;
    }
    
    if(isResetTick()){  
      reset();
    }


    ParticleStack stack = new ParticleStack(counter, position);
    stack.draw();
  }
}  
