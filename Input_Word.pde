class Word {
  String[] Input;
  int length;
  int spaces;
  String inword;
  Word() {
    Input=loadStrings("Input/word.txt");// load the text that is to be encoded as an array;
    length=Input[0].length();
    spaces=(400/length);
    inword=Input[0];
  }
  void update() {
    line(50, 450, 450, 450);
    for (int i=1; i<length; i++) { 
      stroke(255);
      strokeWeight(4);
      line(((spaces*i)+50), 445, ((spaces*i)+50), 455);
    }
  }
  String input() {
    return inword;
  }
}