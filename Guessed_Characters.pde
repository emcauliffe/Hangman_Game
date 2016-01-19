class Guessed {
  
  int position;  //postion of key pressed in input string
  int i; //used in for loop
  
  Guessed() {
    position=0;
  }
  
  void update() {
    for (i=0; i<=w1.howlong(); i++) {//i increases each time until it reaches the length of the input string
      position= w1.input().indexOf(k1.pressed);    //check the input string for the key pressed and set position variable to the position of the key pressed in the string (if it is not there it will return -1)
    }
  }
  
  int pos() {
    return position;
  }
}