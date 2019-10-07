class Ship {

  //1. Instance variables

  int lives;
  PVector location;
  PVector velocity; 
  PVector direction;

  //2. Constructor(s)

  Ship() {

    lives = 3;

    location  = new PVector(width/2, height/2);
    velocity  = new PVector(0, 0);
    direction = new PVector(0, -1);
  }

  //3; Behaviour functions

  void show () {

    pushMatrix();

translate (location.x, location.y);
    image(ship, 0, 0,100,100);

    popMatrix();
  }


  void act () {
  }
}
