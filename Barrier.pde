class Barrier{ //creating barriers in the game
  
  //function to draw the barriers
  void drawBarrier(){
    
    //setup mode and colour
    rectMode(CORNERS);
    noStroke();
    fill(20);
    
    //draw the black areas
    rect(0,140,140,400);
    rect(260,140,400,400);
    triangle(0,0,0,140,140,140);
    triangle(400,0,400,140,260,140);
    
    //setup the colour and size of lines
    strokeWeight(2);
    stroke(150,255,255);
    
    //draw the cyan lines on the edges
    line(140,140,140,400);
    line(260,140,260,400);
    line(0,0,140,140);
    line(400,0,260,140);
  }
}
