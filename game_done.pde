class Done {
  
  Done() {
  }
  
  void update() {
    
    if (bletter0==true && bletter1==true && bletter2==true && bletter3==true && bletter4==true && bletter5==true && m1.lose()==false) {     //if all the letters are guessed and you haven't lost...
      
      fill(0);
      stroke(3);
      
      textSize(50);
      text("You Win!", 143, 352);     //YOU WIN!!
      textSize(20);
      
      noLoop();
    }

    if (m1.lose()==true) {
      noLoop(); //but if you lose, game is done
    }
    
  }
}