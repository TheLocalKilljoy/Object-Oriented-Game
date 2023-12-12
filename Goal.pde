class Goal{ //creating a goal for the player to reach
  
  //variables determining the x and y of the goal
  int platX = width/2;
  int platY = 60;
  
  //draws the goal
  void drawGoal(){
    
    //setup mode and colour of goal
    rectMode(CENTER);
    noStroke();
    fill(20);
    
    //draws the goal and creates cyan outline at the front
    rect(platX,platY,40,40);
    triangle(180,40,180,80,120,80);
    triangle(220,40,220,80,280,80);
    strokeWeight(2);
    stroke(150,255,255);
    line(120,80,280,80);
  }
}
