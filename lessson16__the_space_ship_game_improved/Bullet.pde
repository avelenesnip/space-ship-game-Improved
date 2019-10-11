class Bullet extends GameObject {

int age;  

  Bullet() {
    
    lives = 1;
    
    size = 15;

    location = new PVector (myShip.location.x, myShip.location.y);
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
    
    velocity.setMag(10);
  }


  void show() {

    strokeWeight(0);
    fill(255, 0, 0);

    ellipse (location.x, location.y, size, size);
  }


  void act() {
    super.act();
    
    age++;
    
  }


  boolean alive() {

    if (age < 100) {
      return true;
    } else {
      return false;
    }
  }
}
