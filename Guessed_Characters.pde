class Guessed {
  int position;
  Guessed() {
  }
  void update() {
    position= w1.input().indexOf(k1.pressed);
    println(k1.pressed(), "   ", k1.guessed(), "   ", position,"   ",c1.inyes());
  }
  int pos() {
    return position;
  }
}