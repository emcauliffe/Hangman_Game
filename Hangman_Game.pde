Correct c1;
Guessed g1;
Word w1;
Key k1;
Man m1;                            //importing classes
Display d1;
Done do1;

boolean isgameon;

char letter0;
boolean isletter0correct;

char letter1;
boolean isletter1correct;

char letter2;
boolean isletter2correct; 
                                     //importing global variables
char letter3;                        //one char variable and one boolean variable for each letter
boolean isletter3correct;

char letter4;
boolean isletter4correct;

char letter5;
boolean isletter5correct;

void setup () {
  size(500, 500);
  frameRate(144);
  background(255);

  c1=new Correct();                    //load "correct" class
  g1=new Guessed();                    //load "guessed" class
  w1=new Word();                       //load "word" class
  k1=new Key();                        //load Keys_pressed class
  m1=new Man();                        // load man class
  d1=new Display();                    //load display class
  do1=new Done();                      //load done class

  isgameon=false;

  isletter0correct=false;
  isletter1correct=false;
  isletter2correct=false;              //set booleans to proper state on program launch
  isletter3correct=false;
  isletter4correct=false;
  isletter5correct=false;

  frameRate(144);              //support for 144hz monitors (non-overclocked)
}

void draw () {
  background(255);             //background to white
  if (isgameon==false) {
    fill(0);
    textSize(30);
    text("HANGMAN GAME", 125, 200);                  //spash screen at launch
    textSize(20);
    text("Press space", 200, 400);
  } else {
    stroke(0);
    strokeWeight(2);
    line(100, 300, 300, 300);//base
    line(150, 300, 150, 100);//stand                      //draw hangman stand
    line(150, 100, 275, 100);//overhang
    line(275, 100, 275, 110);//the "hook" that the hangman gets hanged on

    if (g1.pos()==0) {
      letter0=k1.pressed();           //if the first letter is correct, set boolean to true
      isletter0correct=true;
    }

    if (g1.pos()==1) {
      letter1=k1.pressed();            //same as above with 2nd letter
      isletter1correct=true;
    }

    if (g1.pos()==2) {
      letter2=k1.pressed();              //same with 3rd
      isletter2correct=true;
    }

    if (g1.pos()==3) {                                                                 //the beginning letter is 0 because strings start at 0.
      letter3=k1.pressed();                //same with 4th                            //according to the computer the first letter is 0th letter
      isletter3correct=true;
    }

    if (g1.pos()==4) {
      letter4=k1.pressed();                  //same with 5th
      isletter4correct=true;
    }

    if (g1.pos()==5) {
      letter5=k1.pressed();                //same with 6th
      isletter5correct=true;
    }

    w1.update();                    
    m1.update();                                //run updates on select classes
    d1.update();
    do1.update();
  }
}

void keyReleased () {
  if (isgameon==false) {
    if (key==' ') {                              //if the spash screen is on, the space key will start the game
      isgameon=true;
    }
  }

  if (isgameon==true) {
    k1.update();                                  //when the game is on, run the key class
  }
}