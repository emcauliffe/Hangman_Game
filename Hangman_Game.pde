Correct c1;
Guessed g1;
Incorrect i1;
Word w1;
Key k1;
boolean gameon;

void setup () {
  size(500, 500);
  frameRate(144);
  background(255);
  c1=new Correct();//load "correct" class
  g1=new Guessed();//load "guessed" class
  i1=new Incorrect();//load "Incorrect" class
  w1=new Word();//load "word" class
  k1=new Key();//load Keys_pressed class
  gameon=false;
}

void draw () {
  background(255);
  if (gameon==false) {
    fill(0);
    textSize(30);
    text("HANGMAN GAME", 125, 200);
    textSize(20);
    text("Press space to start", 150, 400);
  } else {
    
  }
}