//25:52

ArrayList<GameObject> myGameObjects;


PImage ship;

boolean upkey, leftkey, rightkey, downkey, spacekey;

Ship myShip;



void setup() {///////////////////////////////////////////////
  background(0);
  size (800, 800);

  ship = loadImage("ship.png");
  imageMode (CENTER);

  myShip = new Ship();

  myGameObjects = new ArrayList <GameObject>();

  myGameObjects.add(myShip);

  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  
  
}//////////////////////////////////////////////////////////

void draw() {//''''''''''''''''''''''''''''''''''''''''''''
  background(0);

  //myShip.show();
  //myShip.act();

  int i = 0;

  while (i<myGameObjects.size()) {

    GameObject myGameObject = myGameObjects.get(i);

    myGameObject.show();
    myGameObject.act();

    if (myGameObject.alive() == false) {
      myGameObjects.remove(i);
      i--;
    }

    i++;
  }
}//'''''''''''''''''''''''''''''''''''''''''''''''''''''''


void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode  == LEFT) leftkey = true;
  if (keyCode == DOWN) downkey = true;
  if (key == ' ') spacekey = true;
}

void keyReleased() {
  if (keyCode == UP)    upkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == DOWN)  downkey = false;
  if (key == ' ') spacekey = false;
}
