class Word {
  
  String[] Input;//txt file with word
  int howlong;//length of that word
  int spaces;// length of the space for each character (the black line under the character on screen)
  String input;//the input word as a string
  
  Word() {
    Input=loadStrings("Input/word.txt");// load the text that is to be encoded as an array;
    howlong=Input[0].length();//set variable to the length of the input string
    spaces=(400/howlong);//set spaces variable
    input=Input[0];//set input string to first line of input string array
  }
  
  void update() {
    line(50, 450, 450, 450);
    
    for (int i=1; i<=howlong; i++) { 
      stroke(255);
      strokeWeight(12);
      line(((spaces*i)+50), 445, ((spaces*i)+50), 455);                      //make a dash on screen for each character in the word by dividing a line with other lines that are white
    }
                                                                             //this gives the appearance of multiple lines
  }

  String input() {
    return input;
  }
  
  int howlong() {
    return howlong;
  }
  
}