Platform plat;
Player player;

int playX = 200;
int playY = 350;

int platX = 200;
int platY = 200;

boolean playerL;
boolean playerY;

void setup(){
  size(400,400);
  plat = new Platform();
  player = new Player();
}

void draw(){
  background(100);
  player.drawPlayer();
  plat.drawPlat();
}
