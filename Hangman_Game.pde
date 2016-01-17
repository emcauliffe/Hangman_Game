Correct c1;
Guessed g1;
Word w1;
Key k1;
boolean gameon;

void setup () {
  size(500, 500);
  frameRate(144);
  background(255);
  c1=new Correct();//load "correct" class
  g1=new Guessed();//load "guessed" class
  w1=new Word();//load "word" class
  k1=new Key();//load Keys_pressed class
  gameon=false;
  frameRate(144);
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
    w1.update();
    if (c1.part>0) {//head
      strokeWeight(5);
      stroke(0);
      fill(255);
      ellipse(276, 137, 50, 50);
      if (c1.part>1) {//body
        line(276, 163, 276, 263);
        if (c1.part>2) {//left arm
          line(276, 185, 250, 209);
          if (c1.part>3) {//right arm
            line(276, 185, 302, 209);
            if (c1.part>4) {//left leg
              line(276, 263, 250, 287);
              if (c1.part>5) {//right leg
                line(276, 263, 302, 287);
                fill(0);
                textSize(50);
                text("GAME OVER", 97, 364);
                noLoop();
              }
            }
          }
        }
      }
    }
    //g1.update();
    //c1.update();
    //println(w1.input());
  }
}
void keyReleased () {
  k1.update();
  println(k1.pressed(), "   ", k1.guessed(), "   ", g1.poss(), "   ", c1.inyes(), "     ", g1.pos(),"     ", c1.part());
}