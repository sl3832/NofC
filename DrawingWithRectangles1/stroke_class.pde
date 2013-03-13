class Stroke {
float mass;

  ArrayList <Rectangle> rectangles;

  Stroke(float m) {
    mass = m;
   rectangles = new ArrayList<Rectangle>();
  }

  void display() {
    noFill();
    strokeWeight(2);
    stroke(36, 117, 170);
    beginShape();
    for (int i = 0; i<rectangles.size()-1; i++) {
      Rectangle r = rectangles.get(i);
     
      rect(r.location.x, r.location.y,mass*10,mass*10);
    }
    endShape();
  }

  void addRectangle(PVector mouse, float m) {
    rectangles.add(new Rectangle(mouse, m));
  }

  void run() {
    for (int i = 0; i<rectangles.size()-1; i++) {
      rectangles.get(i).run();
    }
  }

  void checkEdges() {
   
    for (int i = 0; i<rectangles.size()-1; i++) {
      Rectangle r = rectangles.get(i);
      if (r.location.x > width) {
        r.location.x = width-10;
      } 
      else if (r.location.x < 0) {
        r.location.x = 0;
      }

      if (r.location.y > height) {
        r.location.y = height-10;
      } 
      else if (r.location.y < 0) {
        r.location.y = 0;
      }
    }
  }
}

