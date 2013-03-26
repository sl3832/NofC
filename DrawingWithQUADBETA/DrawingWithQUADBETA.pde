ArrayList <Stroke> strokes;

import codeanticode.protablet.*;

Tablet tablet;


void setup() {
  size(800, 600);
  background(255);
  smooth();
  strokes = new ArrayList<Stroke>();
  
   tablet = new Tablet(this);
}


void draw() {
  background(255);
  if (strokes != null) {
    if (mousePressed) {
      //  if (keyPressed) {
      //   if (key == 'c' || key == 'C') {
        strokeWeight(1 * tablet.getPressure());
      strokes.get(strokes.size()-1).addCircle(new PVector(mouseX, mouseY), random(0.001));
    }
    //   }
    // }

    for (Stroke s: strokes) { 
      s.display();
      s.run();
      s.checkEdges();
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

