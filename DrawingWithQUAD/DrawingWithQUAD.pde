ArrayList <Stroke> strokes;


void setup() {
  size(800, 600);
  background(255);
  smooth();
  strokes = new ArrayList<Stroke>();
}


void draw() {
  background(255);
  if (strokes != null) {
    if (mousePressed) {
      //  if (keyPressed) {
      //   if (key == 'c' || key == 'C') {
      strokes.get(strokes.size()-1).addCircle(new PVector(mouseX, mouseY), random(0.001));
    }
    //   }
    // }

    for (Stroke s: strokes) { 
      s.display();
      s.run();
    }
  }
}

void mousePressed() {

  if (random(1) < 0.33) {
    strokes.add(new Stroke());
  } 
  else if (random(1)<0.33) {
    strokes.add(new RectStroke());
  }
  else {
    strokes.add(new Ellipse());
  }
}

