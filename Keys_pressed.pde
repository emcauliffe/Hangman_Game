class Key {
  
  char pressed;    //character currently being pressed
  
  Key() {
  }
  void update() {
    
    if (isgameon==true) {
      pressed=key;                //if the game has started , the pressed char is set to the pressed key
      g1.update();
      c1.update();          //run guessed and correct characters classes
    }
    
  }
  
  char pressed() {
    return pressed;
  }
}