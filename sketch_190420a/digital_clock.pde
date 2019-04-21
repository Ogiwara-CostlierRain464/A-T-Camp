class DigitalClock{
  final Time time;
  final DigitalClockSettings settings;
  final PVector bottom;
  
  DigitalClock(Time aTime, DigitalClockSettings aSettings, PVector aBottom){
    time = aTime;
    settings = aSettings;
    bottom = aBottom;
  }
  
  void draw(){
    int hourSecond = time.hourSecondDigit();
    int hourFirst = time.hourFirstDigit();
    
    int minuteSecond = time.minuteSecondDigit();
    int minuteFirst = time.minuteFirstDigit();
    
    
    Segment one = new Segment(hourSecond, bottom, settings.stickLength);
    Segment two = new Segment(hourFirst, bottom.add(new PVector(80,0)), settings.stickLength);
    Segment three = new Segment(minuteSecond, bottom.add(new PVector(180,0)), settings.stickLength);
    Segment four = new Segment(minuteFirst, bottom.add(new PVector(260,0)), settings.stickLength);
    
    one.draw();
    two.draw();
    three.draw();
    four.draw();
  }
} 

// container
class DigitalClockSettings{
  final int stickLength;
 
   DigitalClockSettings(int aStickLenght){
     stickLength = aStickLenght;
   }
}  



// Number of Digital Clock.
class Segment {
  
  final int number;
  final PVector bottom;
  final int stickLenght;
  
  Segment(int aNumber, PVector aBottom, int aStickLenght){
    assert(0 <= aNumber && aNumber <= 9);
    number = aNumber;
    bottom = aBottom;
    stickLenght = aStickLenght;
  }  
  
  /// Numbering one to seven from (top, left)
  void draw(){
    Stick[] zero = { Stick.One, Stick.Two, Stick.Five, Stick.Seven, Stick.Six, Stick.Three };
    Stick[] one = { Stick.Three, Stick.Six};
    Stick[] two = { Stick.One, Stick.Three, Stick.Four, Stick.Five, Stick.Seven };
    Stick[] three = { Stick.One, Stick.Three, Stick.Four, Stick.Six, Stick.Seven };
    Stick[] four = { Stick.Two, Stick.Four, Stick.Three, Stick.Six };
    Stick[] five = { Stick.One, Stick.Two, Stick.Four, Stick.Six, Stick.Seven };
    Stick[] six = { Stick.One, Stick.Two, Stick.Four, Stick.Five, Stick.Six, Stick.Seven };
    Stick[] seven = { Stick.Two, Stick.One, Stick.Three, Stick.Six };
    Stick[] eight = { Stick.One, Stick.Two, Stick.Three,Stick.Four , Stick.Five, Stick.Six , Stick.Seven };
    Stick[] nine = { Stick.One, Stick.Two, Stick.Three,Stick.Four , Stick.Six };
    
    switch(number){
       case 0:
         drawSticks(zero);
       break;
       case 1:
         drawSticks(one);
       break;
       case 2:
         drawSticks(two);
       break;
       case 3:
         drawSticks(three);
       break;
       case 4:
         drawSticks(four);
       break;
       case 5:
         drawSticks(five);
       break;
       case 6:
         drawSticks(six);
       break;
       case 7:
         drawSticks(seven);
       break;
       case 8:
         drawSticks(eight);
       break;
       case 9:
         drawSticks(nine);
       break;
      
         
    }  
  } 
  
  void drawSticks(Stick[] sticks){
    for(Stick e : sticks){
      drawStick(e);
    }
  }  
  
  void drawStick(Stick stick){
    
   
    // green color
    stroke(color(0, 204, 0));
    
    switch(stick){
      case One: 
        line(bottom.x, bottom.y, bottom.x + stickLenght, bottom.y);
        break;
      case Two:
        line(bottom.x, bottom.y, bottom.x, bottom.y + stickLenght);
        break;
        
      case Three:
        line(bottom.x + stickLenght, bottom.y, bottom.x + stickLenght, bottom.y + stickLenght);
        break;
        
      case Four:
        line(bottom.x , bottom.y + stickLenght, bottom.x + stickLenght, bottom.y + stickLenght);
        break;
        
      case Five:
        line(bottom.x , bottom.y + stickLenght, bottom.x, bottom.y + stickLenght * 2);
        break;
        
      case Six:
        line(bottom.x + stickLenght, bottom.y + stickLenght, bottom.x + stickLenght, bottom.y + stickLenght * 2);
        break;
        
      case Seven:
        line(bottom.x , bottom.y + stickLenght * 2, bottom.x + stickLenght, bottom.y + stickLenght * 2);
        break;
    }  
  }  
}  

enum Stick{
  One, Two, Three, Four, Five, Six, Seven
}  
