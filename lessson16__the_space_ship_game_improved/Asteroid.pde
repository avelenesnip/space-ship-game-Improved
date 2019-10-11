class Asteroid extends GameObject {

  int i;



  Asteroid() {

    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector ( (random(1, -1)), random(-5, 5));
    lives = 3;

    size = 100;
  }



  Asteroid (int s, float x, float y) {

    location = new PVector (x, y);
    velocity = new PVector ( (random(1, -1)), random(-5, 5));
    lives = 3;

    size = s;
  }



  void show () {
    fill (150);

    ellipse (location.x, location.y, size, size);
  }

  void act () {
    super.act();

    int i = 0;
    while ( i < myGameObjects.size()) {
      GameObject myObject = myGameObjects.get(i);
      if (myObject instanceof Bullet) {
        if (dist(myObject.location.x, myObject.location.y, location.x, location.y) < size/2 + myObject.size/2) {

          lives = 0;

          if (size >= 45) {
            myGameObjects.add (new Asteroid(size/2, location.x, location.y));
            myGameObjects.add (new Asteroid(size/2, location.x, location.y));
          }
          myObject.lives = 0;
        }
      }
      i++;
    }
  }
}
