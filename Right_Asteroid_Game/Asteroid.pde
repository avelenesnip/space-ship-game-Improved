class Asteroid extends GameObject {

  int i;
  
  //int lives = 3;

  Asteroid() {

    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector ( (random(1, -1)), random(-5, 5));
    lives = 3;
  }


  void show () {
    fill (150);
    ellipse (location.x, location.y, 100, 100);
  }

  //void act () {
  //  super.act();


  //  while ( i < myGameObjects.size()) {
  //    GameObject myObj = myGameObjects.get(i);
  //    if (myObj instanceof Bullet) {
  //      if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < 100 ) {
  //        lives = 0;
  //      }
  //    }
  //    i++;
  //  }
  //}
}

//boolean alive() {

//  if (lives == 0){
//    return false;
//  }
  
//}
