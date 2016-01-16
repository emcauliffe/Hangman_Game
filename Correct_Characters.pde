class Correct {
  String correct;
  boolean yes;
  Correct() {
  }
  void update() {
    if (g1.pos()>-1) {
      yes = true;
    } else 
    yes = false;
  }
  boolean inyes() {
    return yes;
  }
}