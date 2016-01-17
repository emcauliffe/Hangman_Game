class Correct {
  String correct;
  boolean yes;
  int part;
  Correct() {
    part=0;
  }
  void update() {
    if (g1.pos()>-1) {
      yes = true;
    } else {
      yes = false;
      part++;
    }
  }
  boolean inyes() {
    return yes;
  }
  int part() {
    return part;
  }
}