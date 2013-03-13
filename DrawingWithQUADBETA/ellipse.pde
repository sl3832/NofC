class Ellipse extends Stroke {

  void display() {
    noFill();
    strokeWeight(3);
    stroke(250, 210, 78);
    beginShape();
    for (int i = 0; i<circles.size()-1; i++) {
      Circle c = circles.get(i);
      ellipse(c.location.x, c.location.y, 10, 10);
    }
    endShape();
  }
  
 }
