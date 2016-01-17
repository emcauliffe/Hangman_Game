class Key {
  String guessed;
  char pressed;
  Key() {
    guessed="";
  }
  void update() {
    if (gameon==false) {
      if (key==' ') {
        if (w1.howlong<=10) {
          gameon=true;
        } else {
          background(255);
          stroke(255, 0, 0);
          text("ERROR:WORD OVER 10 CHARACTERS", 100, 100);
          noLoop();
        }
      }
    } else {

      if (gameon==true) {
        guessed = guessed+key;
        pressed=key;
        g1.update();
        c1.update();
      }
    }
  }
  String guessed() {
    return guessed;
  }
  char pressed() {
    return pressed;
  }
}