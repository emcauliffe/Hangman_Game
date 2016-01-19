class Done {
  
  Done() {
  }
  
  void update() {
    
    if (isletter0correct==true && isletter1correct==true && isletter2correct==true && isletter3correct==true && isletter4correct==true && isletter5correct==true && m1.isgamelost()==false) {     //if all the letters are guessed and you haven't lost...
      
      fill(0);
      stroke(3);
      
      textSize(50);
      text("You Win!", 143, 352);     //YOU WIN!!
      textSize(20);
      
      noLoop();
    }

    if (m1.isgamelost()==true) {
      noLoop(); //but if you lose, game is done
    }
    
  }
}