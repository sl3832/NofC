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
  // background(255);
  if (strokes != null) {
    if (mousePressed) {
      //  if (keyPressed) {
      //   if (key == 'c' || key == 'C') {  
        strokeWeight(30 * tablet.getPressure());
      strokes.get(strokes.size()-1).addRectangle(new PVector(mouseX, mouseY), random(0.001));
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

  strokes.add(new Stroke(random(0.8)));
}

