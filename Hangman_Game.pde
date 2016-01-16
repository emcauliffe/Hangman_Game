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
    text("Press space", 200, 400);
  } else {
    stroke(0);
    strokeWeight(2);
    line(100, 300, 300, 300);
    line(150, 300, 150, 100);
    line(150, 100, 275, 100);
    line(275, 100, 275, 110);
    //w1.update();
    //g1.update();
    //c1.update();
    //println(w1.input());
  }
}
void keyReleased () {
  k1.update();
  w1.update();
  g1.update();
  c1.update();
}