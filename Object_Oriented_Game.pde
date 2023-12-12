//calling and naming the objects
Goal goal;
Player player;
Barrier barrier;
Wind wind[];
TitleScreen title;
WinScreen win;

//creating array list for the balloons
ArrayList<Balloons> balloons = new ArrayList<Balloons>();

//creating the switch statement
enum Screen {START, GAME, END}
Screen screen = Screen.START;

//declaring the variables for moving the player
boolean left = false;
boolean right = false;
boolean up = false;
boolean down = false;

//creating variables for the switch statement
boolean start;
boolean game;
boolean end;

void setup(){
  size(400,400); //setting the screen size
  
  wind = new Wind[100]; //creating wind particles
  for (int i=0; i<wind.length; i++){ //loops to spawn in all particles
    wind[i] = new Wind();}
    
  for (int i=0; i<50; i++){ //loops to spawn in all balloons
    balloons.add(new Balloons());}
  
  //creating the needed objects
  goal = new Goal(); //creating the goal
  player = new Player(); //creating the player
  barrier = new Barrier(); //creating the barriers
  title = new TitleScreen();
  win = new WinScreen();
  
  println("control with WASD"); //writing the controls for the player to use
}

void draw(){
  
  //calling the function to draw the background
  drawBG();
  
  //switch statement to switch between game states
  switch(screen){
    case START: //case for the title screen
    title.drawTitle(); //calls and draws the title screen
    start = true;
    break; 
    
    case GAME: //case for main game
    player.drawPlayer(); //draws the player
    player.movePlayer(); //moves the player
    goal.drawGoal(); //draws the goal
    barrier.drawBarrier(); //draws the barriers
    
    for (int i=0; i<wind.length; i++){ //loop to draw the wind
      wind[i].drawWind();
        for (int a=0; a<wind.length; a++){ //loop to respawn wind
          wind[i].update();
        }
    }
      
    game = true;//sets game as true
    break;
    
    case END: //case for the win screen
    background(10,25,50);
    
    for (Balloons b : balloons) {//spawns in the balloons
      b.drawB();}
    
    win.drawWin(); //draws the win screen text
      
    end = true;
    break;
  }
  
  useless(); //calls the function with no arguments or parameters  
}

//function to draw the background
void drawBG(){
  for( int i = 0; i <= height; i+=3){ //loop to create a gradient effect
    rectMode(CORNER); //setting mode so the gradient works right
    noStroke(); //removing stroke so there are no outlines
    fill(0,i/2,i/2); //setting the colour
    rect(0,i,width,3); //drawing the rectangles that will loop to the bottom
  }
}

//function to move to player
void keyPressed() {
  if(start == true){ //changes from title to game when pressed
    screen = Screen.GAME;
    start = false;
  }
  else if (key == 'w' || key == 'W') { //moves player up if w is pressed
    up=true;
  } 
  else if (key == 'a' || key == 'A') { //moves player left if a is pressed
    left=true;
  } 
  else if (key == 's' || key == 'S') { //moves player down if s is pressed
    down=true;
  } 
  else if (key == 'd' || key == 'D') { //moves player right if d is pressed
    right=true;
  }
  else if (end == true){ //changes from win to title when pressed
    screen = Screen.START;
    end = false;
  }
}
 
//stops player once they release a key they pressed
void keyReleased() {
  if (key == 'w' || key == 'W') {
    up=false;
  } else if (key == 'a' || key == 'A') {
    left=false;
  } else if (key == 's' || key == 'S') {
    down=false;
  } else if (key == 'd' || key == 'D') {
    right=false;
  }
}

void mousePressed(){ //despawns a balloon if pressed
  if (end == true){
    balloons.remove(1);
  }
}

//the needed function with no arguments or parameters
void useless() {
}
