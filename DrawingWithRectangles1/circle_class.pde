class Rectangle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Rectangle(PVector loc, float m) {
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    location = loc;
    mass = m;
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);

       acceleration.mult(0);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  
  void run(){
    update();
    PVector f = new PVector(0, 0.0001);
    applyForce(f);
  }
}
