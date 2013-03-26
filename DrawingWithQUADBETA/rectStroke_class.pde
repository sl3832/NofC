class RectStroke extends Stroke {

  void display() {
    noFill();
    strokeWeight(30 * tablet.getPressure());
    //strokeWeight(3);
    stroke(229, 16, 80);
    beginShape(QUAD);
    for (int i = 0; i<circles.size()-1; i++) {
      Circle c = circles.get(i);
      vertex(c.location.x, c.location.y);
    }
    endShape();
  }


}

