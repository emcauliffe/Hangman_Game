class Guessed {
  int position;
  int position1;
  int i; //used in for loop
  String positions;
  String positions1;
  boolean yes;
  Guessed() {
    position=0;
    positions="";
    position1=0;
  }
  void update() {
    positions="";
    for (i=0; i<=w1.howlong(); i++) {
      position= w1.input().indexOf(k1.pressed);
      if (w1.input().indexOf(k1.pressed, (position+1))>-1) {
        position= w1.input().indexOf(k1.pressed, position+1);
        //if (position!=-1) {
        positions = positions +str(position)+ "," +str(position1);
      } else {
        positions=str(position);
      }
    }
  }
  //positions = positions + "," +position;
  //println(k1.pressed(), "   ", k1.guessed(), "   ", g1.poss(), "   ", c1.inyes(), "     ", g1.pos());
  int pos() {
    return position;
  }
  String poss() {
    return positions;
  }
}