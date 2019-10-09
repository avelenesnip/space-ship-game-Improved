class Bullet extends GameObject {

  boolean alive ;

  Bullet() {

    location = new PVector (myShip.location.x, myShip.location.y);


    velocity = new PVector (myShip.direction.x, myShip.direction.y);
    velocity.setMag(10);
  }


  void show() {

    strokeWeight(0);
    fill(255, 0, 0);

    ellipse (location.x, location.y, 10, 10);
  }


  void act() {


    location.add(velocity);


    if (location.y < -50) alive = false;
    if (location.y > height+50) alive = false;

    if (location.x < -50) alive = false;
    if (location.x > width+50) alive = false;
    
  }
}
