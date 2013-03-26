class Stroke {

  ArrayList <Circle> circles;

  Stroke() {
    circles = new ArrayList<Circle>();
  }

  void display() {
    noFill();
       strokeWeight(30 * tablet.getPressure());
   // strokeWeight(2);
    stroke(36, 117, 170);
    beginShape();
    for (int i = 0; i<circles.size()-1; i++) {
      Circle c = circles.get(i);
      curveVertex(c.location.x, c.location.y);
    }
    endShape();
  }

  void addCircle(PVector mouse, float m) {
    circles.add(new Circle(mouse, m));
  }

  void run() {
    for (int i = 0; i<circles.size()-1; i++) {
      circles.get(i).run();
    }
  }

  void checkEdges() {
   
    for (int i = 0; i<circles.size()-1; i++) {
      Circle c = circles.get(i);
      if (c.location.x > width) {
        c.location.x = width-10;
      } 
      else if (c.location.x < 0) {
        c.location.x = 0;
      }

      if (c.location.y > height) {
        c.location.y = height-10;
      } 
      else if (c.location.y < 0) {
        c.location.y = 0;
      }
    }
  }
}

