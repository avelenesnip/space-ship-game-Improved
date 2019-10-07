PImage ship;

Boolean upkey,leftkey,rightkey,downkey;

Ship myShip;

void setup(){
  
  size (800,800);
  
  ship = loadImage("ship.png");
  imageMode (CENTER);
  
  myShip = new Ship();
}

void draw(){
  
  myShip.show();
  myShip.act();
  
}


void keyPressed(){
  if (keyCode == UP) upkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode  == LEFT) leftkey = true;
  if (keyCode == DOWN) downkey = true;
  
}

void keyReleased(){
  if (keyCode == UP)    upkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == DOWN)  downkey = false;
}
