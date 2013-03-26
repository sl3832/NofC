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
  PVector wind = new PVector(0, random(-0.1, 0.1));

  if (strokes != null) {
    if (mousePressed) {
      // if (keyPressed) {
      //    if (key == 'r' || key == 'R') {
      strokeWeight(30 * tablet.getPressure());
      strokes.get(strokes.size()-1).addRectangle(new PVector(mouseX, mouseY), random(0.001));
    }
    //    else{
    //      if (keyPressed) {
    //        if (key == 'f' || key == 'F') {
    //          strokes.applyForce(wind);
    //        }
    //      }
    //    }
    else {
      if (keyPressed) {
        if (key == 'b' || key == 'B') {
          background(255);
          strokes.get(strokes.size()-1).addRectangle(new PVector(mouseX, mouseY), random(0.001));
        }
        if (key == 'w' || key == 'W') {
          strokes.wind(new PVector(0,random(0.001)));
        }
      }
    }
    for (Stroke s: strokes) { 
      s.displayRectangle();
      s.run();
    }
  }
}

void mousePressed() {
  strokes.add(new Stroke());
}

//void keyReleased() {
//  boolean keypressed = false;
//  
//  if (keyPressed) {
//    if (key == 'b' || key == 'B') {
//      keypressed = true;
//   noLoop();
//    }else{
//      keypressed = false;
//      loop();
//    }
//  }
//}
