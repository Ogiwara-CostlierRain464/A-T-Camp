class Time{
  float hour;
  float minute;
  
  Time(float anHour, float aMinute){
    assert(0 <= anHour && anHour <= 12);
    assert(0 <= aMinute && aMinute <= 60);
    
    hour = anHour;
    minute = aMinute;
  }
  
  // second digit
  int hourSecondDigit(){
    if(hour >= 20){
      return 2;
    }
    if(hour >= 10){
      return 1;
    }
    return 0;
  }
  
  // first digit
  int hourFirstDigit(){
    return round(hour) % 10;
  }
  
  int minuteSecondDigit(){
    if(minute >= 50){
      return 5;
    }
    if(minute >= 40){
      return 4;
    }
    if(minute >= 30){
      return 3;
    }
    if(minute >= 20){
      return 2;
    }
    if(minute >= 10){
      return 1;
    }
    
    return 0;
  }
  
  int minuteFirstDigit(){
    return round(minute) % 10;
  }
  
  void step(){
    // plus 0.1 min
    if(minute >= 59){
      
      minute = 0;
      if(hour >= 12){
        hour = 0;
      }else{
        hour += 1;
      }  
    }else{
      minute += 0.1;
    }  
  }
}  
