class Guessed {
  int position;
  int position1;
  int i; //used in for loop
  int j;
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
      positions=str(position);
      if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
        position= w1.input().indexOf(k1.pressed, position+1);
        positions =positions +str(position);
        if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
          position= w1.input().indexOf(k1.pressed, position+1);
          positions =positions +str(position);
          if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
            position= w1.input().indexOf(k1.pressed, position+1);
            positions =positions +str(position);
            if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
              position= w1.input().indexOf(k1.pressed, position+1);
              positions =positions +str(position);
              if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
                position= w1.input().indexOf(k1.pressed, position+1);
                positions =positions  +str(position);
                if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
                  position= w1.input().indexOf(k1.pressed, position+1);
                  positions =positions  +str(position);
                  if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
                    position= w1.input().indexOf(k1.pressed, position+1);
                    positions =positions +str(position);
                    if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
                      position= w1.input().indexOf(k1.pressed, position+1);
                      positions =positions +str(position);
                      if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
                        position= w1.input().indexOf(k1.pressed, position+1);
                        positions =positions +str(position);
                        if (w1.input().indexOf(k1.pressed, (position+1))!=-1) {
                          position= w1.input().indexOf(k1.pressed, position+1);
                          positions =positions +str(position);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      } else {
        positions=str(position);
      }
    }
  }
  int pos() {
    return position;
  }
  String poss() {
    return positions;
  }
}