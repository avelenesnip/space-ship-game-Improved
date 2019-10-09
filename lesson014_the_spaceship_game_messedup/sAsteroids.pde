//class Asteroids extends GameObject {
 
  
//  int x;
  
//  int y;
  
//  Asteroids() {
    
//    x = random (0,800);
//    y = random (0,800);

//    location = new PVector (x, y);


//    velocity = new PVector (x, y);
//    velocity.setMag(10);
    
//  }


//  void show() {

//    strokeWeight(0);
//    fill(255);

//    ellipse (location.x, location.y, lives+50, live*50);
//  }


//  void act() {

    
//    super.act();
    
//    int i = 0;
    
//    while ( i < myGameObjects.size()){
//    GameObjects myObj = myGameObjects.get(i);
//    if (myObj instanceof Bullet) {
//      if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < 87.5 ){
//        live = 0;
//      }
//      i++;
    

//    location.add(velocity);


//    //if (location.y < -50) location.y = height + 50;
//    //if (location.y > height+50) location.y =  -50;

//    //if (location.x < -50) location.x = width + 50;
//    //if (location.x > width+50) location.x =  -50;
//  }
//}
