// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Simple Particle System

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  //ArrayList<PVector> points = new ArrayList<PVector>();


  Particle(PVector l) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    location = l.get();
    lifespan = 255.0;

    //    points.add(new PVector(-10,-10));
    //    points.add(new PVector(10,-10));
    //    points.add(new PVector(10,10));
    //    points.add(new PVector(-10,10));
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }

  // Method to display, drawing shapes by vertex points
  void display() {
    stroke(0, lifespan);
    strokeWeight(2);
    fill(127, lifespan);
    //ellipse(location.x,location.y,12,12);

    pushMatrix();
    translate(location.x, location.y);
    beginShape();
    noFill();
    for (PVector v : points) {
      vertex(v.x, v.y);
    }
    endShape(CLOSE);
    popMatrix();
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } 
    else {
      return false;
    }
  }
}

