ArrayList <Stroke> strokes;


void setup() {
  size(800, 600);
  background(255);
  smooth();
  strokes = new ArrayList<Stroke>();
}


void draw() {
 // background(255);
  if (strokes != null) {
    if (mousePressed) {
      //  if (keyPressed) {
      //   if (key == 'c' || key == 'C') {
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

