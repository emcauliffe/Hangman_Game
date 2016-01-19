class Done {
  Done() {
  }
  void update() {
    if (bletter0==true && bletter1==true && bletter2==true && bletter3==true && bletter4==true && bletter5==true && m1.lose()==false) {     //if all the letters are guessed and you haven't lost...
      fill(0);
      stroke(3);
      textSize(30);
      text("You Win!", 187, 366);                      //YOU WIN!!
      noLoop();
    }
    if (m1.lose()==true) {
      noLoop(); //but if you lose, game is done
    }
  }
}