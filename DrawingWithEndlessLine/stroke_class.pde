class Stroke {

  ArrayList <Rect> rects;

  Stroke() {
    rects = new ArrayList<Rect>();
  }

  void displayRectangle() {
    noFill();
    beginShape();
    for (int i = 0; i<rects.size()-1; i++) {
      Rect r = rects.get(i);
      curveVertex(r.display().x, r.display().y);
    }
    endShape();
  }

  void addRectangle(PVector mouse, float m) {
    rects.add(new Rect(mouse, m));
  }
  
  void run(){
     for (int i = 0; i<rects.size()-1; i++) {
        rects.get(i).run();
    }
    
  }
}

