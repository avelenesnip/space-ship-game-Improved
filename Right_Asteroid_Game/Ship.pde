class Ship extends GameObject {

  //1. Instance variables

  PVector direction;
  int cooldown;

  //2. Constructor(s)

  Ship() {

    lives = 3;

    cooldown = 50;

    location  = new PVector(width/2, height/2);
    velocity  = new PVector(0, 0);
    direction = new PVector(0, -0.1);
  }

  //3; Behaviour functions

  void show () {

    pushMatrix();

    translate (location.x, location.y);
    rotate (direction.heading());
    image (ship, 0, 0, 100, 100);

    popMatrix();
  }


  void act () {
    super.act(); 

    if (upkey)velocity.add(direction);
    if (downkey)velocity.sub(direction);
    if (leftkey) direction.rotate(-radians(2));
    if (rightkey) direction.rotate(radians(2));

    if (spacekey && cooldown > 50) {
      myGameObjects.add(new Bullet());
      cooldown = 0;
    }
    cooldown++;

    
  }
}
