class Correct {
  String[] correct;
  String joined;
  boolean yes;
  int part;
  int add;
  Correct() {
    part=0;
  }
  void update() {
    if (g1.pos()>-1) {
      yes = true;
      add = g1.pos();
      correct[add] = ""+k1.pressed();
      joined = join(correct, "");
    } else {
      yes = false;
      part++;
    }
    //for (int w=0; w<=w1.howlong(); w++) {

    //}
  }
  boolean inyes() {
    return yes;
  }
  int part() {
    return part;
  }
  String[] correct() {
    return correct;
  }
  String joined() {
    return joined;
  }
}