class Key {
  String guessed;
  char pressed;
  Key() {
    guessed="";
  }
  void update() {
    if (gameon==false) {
      if (key==' ') {
        gameon=true;
      }
    } else {
      if (gameon==true) {
        guessed = guessed+key;
        pressed=key;
      }
      //println(key);
      //println(guessed);
    }
  }
  String guessed() {
    return guessed;
  }
  char pressed(){
    return pressed;
  }
}