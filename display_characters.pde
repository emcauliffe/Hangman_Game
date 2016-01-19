class Display {
  
  Display() {
  }
  
  void update() {
    
    textSize(30);
    text(c1.wrong(), 11, 25);
    
    if (isletter0correct==true) {
      text(w1.input().charAt(0), (400/w1.howlong()*0)+75, 439);                //if char one has been guessed correctly, display it
    }
    
    if (isletter1correct==true) {
      text(w1.input().charAt(1), (400/w1.howlong()*1)+75, 439);                //same with char 2
    }
    
    if (isletter2correct==true) {
      text(w1.input().charAt(2), (400/w1.howlong()*2)+75, 439);                //3
    }
    
    if (isletter3correct==true) {
      text(w1.input().charAt(3), (400/w1.howlong()*3)+75, 439);                  //4
    }
    
    if (isletter4correct==true) {
      text(w1.input().charAt(4), (400/w1.howlong()*4)+75, 439);                    //5
    }
    
    if (isletter5correct==true) {
      text(w1.input().charAt(5), (400/w1.howlong()*5)+75, 439);                //6
    }
    
  }
}