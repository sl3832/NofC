class Rect {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float lifespan;

  Rect(PVector loc, float m) {
    location = loc;
    mass = m;
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    lifespan = 255;
  }

  PVector display() {
     stroke(random(255),180, 180, lifespan);
    return location;

  }
  
    void update(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    lifespan -= 0.01;
    
  }
  
    void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);//mass*lifespan
    acceleration.add(f);
   acceleration.limit(0.1);
  }
  
  void run(){
    update();
    PVector f = new PVector(0, 0.01);
    applyForce(f);
  }
  
}
    

