class Word {
  String[] Input;
  int howlong;
  int spaces;
  String inword;
  Word() {
    Input=loadStrings("Input/word.txt");// load the text that is to be encoded as an array;
    howlong=Input[0].length();
    spaces=(400/howlong);
    inword=Input[0];
  }
  void update() {
    line(50, 450, 450, 450);
    for (int i=1; i<howlong; i++) { 
      stroke(255);
      strokeWeight(4);
      line(((spaces*i)+50), 445, ((spaces*i)+50), 455);
    }
  }
  String input() {
    return inword;
  }
  int howlong() {
    return howlong;
  }
}