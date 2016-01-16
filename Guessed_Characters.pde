class Guessed {
  int position;
  int position1;
  int i; //used in for loop
  String positions;
  Guessed() {
    position=0;
    positions="";
  }
  void update() {
    positions="";
    for (i=0; i<=w1.howlong; i++) {
      position= w1.input().indexOf(k1.pressed, position+1);
      if (position>-1) {
        positions = positions +position;
      }
    }
    //positions = positions + "," +position;
    println(k1.pressed(), "   ", k1.guessed(), "   ", positions, "   ", c1.inyes(), "     ",position);
  }
  int pos() {
    return position;
  }
  String poss() {
    return positions;
  }
}