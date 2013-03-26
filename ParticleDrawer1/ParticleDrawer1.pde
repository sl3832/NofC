// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

ParticleSystem ps;

//Using this ArrayList to save the vertexes that I'm drawing 
ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
  size(640,360);
  ps = new ParticleSystem(new PVector(random(0,width),0));

  
}

void draw() {
  //whenever mouse is pressed, add the vertex point to the arraylist
    if (mousePressed) {
    points.add(new PVector(mouseX,mouseY)); 
  }

  background(255);
  ps.addParticle();
  ps.run();
  
  
  stroke(0);
  noFill();
    beginShape();
  for (PVector v : points) {
    vertex(v.x, v.y);
  }
  endShape();
}
