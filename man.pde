class Man {
  
  boolean isgamelost;
  
  Man() {
    
    isgamelost=false;
    
  }
  
  void update() {
    if (c1.part>1) {//head
      strokeWeight(5);
      stroke(0);
      //fill(255);
      ellipse(276, 137, 50, 50);
    }
    
    if (c1.part()>2) {//body
      ellipse(276, 137, 50, 50);
      line(276, 163, 276, 263);
    }
    
    if (c1.part()>3) {//left arm
      ellipse(276, 137, 50, 50);
      line(276, 163, 276, 263);
      line(276, 185, 250, 209);
    }
    
    if (c1.part()>4) {//right arm
      ellipse(276, 137, 50, 50);
      line(276, 163, 276, 263);
      line(276, 185, 250, 209);
      line(276, 185, 302, 209);
    }
    
    if (c1.part()>5) {//left leg
      ellipse(276, 137, 50, 50);
      line(276, 163, 276, 263);
      line(276, 185, 250, 209);
      line(276, 185, 302, 209);
      line(276, 263, 250, 287);
    }
    
    if (c1.part()>6) {//right leg
      ellipse(276, 137, 50, 50);
      line(276, 163, 276, 263);
      line(276, 185, 250, 209);
      line(276, 185, 302, 209);
      line(276, 263, 250, 287);
      line(276, 263, 302, 287);
      fill(0);
      textSize(50);
      text("GAME OVER", 97, 364);
      isletter0correct=true;
      isletter1correct=true;
      isletter2correct=true;
      isletter3correct=true;          //set all letter variables to true so that the word that you failed to guess appears on screen so you can find out what word it is
      isletter4correct=true;
      isletter5correct=true;
      isgamelost=true;    //but you still lost, so I have to make it clear to the rest of the program
    }
  }
  
  boolean isgamelost() {
    return isgamelost;      // these are used to communicate with other classes, every time one is called it can return a variable in the coresponding class
  }
}