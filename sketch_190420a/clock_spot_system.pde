import java.util.*;

class ClockSpotSystem extends System{
  List<AnalogClock> clocks = new ArrayList<AnalogClock>();
  
  void run(){
    addClockSlowly();
    
     
   if(isResetTick()){  
      reset();
    }
   
    for(AnalogClock clock : clocks){
      clock.run();
    }
  }
  
  void reset(){
    clocks = new ArrayList<AnalogClock>();
  }
  
  void addClockSlowly(){
    if(frameCount % 50 == 0){
      float x = random(0, 725);
      float y = random(0, 850);
      
      int hour = round(random(0,12));
      int minute = round(random(0,60));
      
      int radius = round(random(30,60));
    
      clocks.add(new AnalogClock(
        new PVector(x,y),
        new Time(hour,minute),
        radius
      ));
    }
  }
}
