class Player{ //creating the player avatar
  
  //declaring variables for the player
  float size; //players size
  int playX; //players x location
  int playY; //players y location
  
  //constructor function setting up the basic parameters of the player
  Player(){
    size = 40; //setting the size to 40
    playX = 200; //setting beginning x location
    playY = 350; //setting beginning y location
  }
  
  //draws the player
  void drawPlayer(){
    
    //setup modes and colours
    rectMode(CENTER);
    strokeWeight(2);
    stroke(150,255,255);
    fill(20);
    
    //draw the player
    rect(playX,playY,size,size);
    rect(playX,playY,size/2,size/2);
  }
  
  //make the player move
  void movePlayer() {
    
    //keep the player on the screen and between the barriers
    playX = constrain(playX, 160, 240);
    playY = constrain(playY, 20, height-20);
    
    playY = playY + 3; //sends player down if not moving due to wind
    
    //moves the player
    if (up) {
      playY = playY - 4; 
    }
    if (down) {
      playY = playY + 8;
    }
    if (left) {
      playX = playX - 4;
    }
    if (right) {
      playX = playX + 4;
    }
    if (playY <= 80){ //changes to win screen if player reaches goal
      screen = Screen.END;
      game = false;
    }
  }
}
