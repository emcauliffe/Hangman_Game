class Correct {
  
  String wrong; //string of characters pressed that are not in the 
  boolean ispressedcorrect; //is key pressed in the input word
  int part; //#of body parts of the hanging man
  
  Correct() {
    part=0;
    wrong="Wrong: ";
  }
  
  void update() {
    if (g1.pos()>-1) {
      ispressedcorrect = true;              //if the key pressed is in the string, set the boolean to true
    } else {
      ispressedcorrect = false;             //if not set to false
      wrong = wrong+ k1.pressed();      //add to the wrong string
      part++;              //and add another body part
    }
  }
  
  boolean ispressedcorrect() {
    return ispressedcorrect;
  }
  
  int part() {
    return part;
  }
  
  String wrong() {
    return wrong;
  }
}