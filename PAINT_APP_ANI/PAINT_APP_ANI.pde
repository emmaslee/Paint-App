//Emma Lee
//March 7
//Paint App

//pallette of colors

color red   = color (259, 53, 54);
color orange = color (255, 159, 3);
color yellow = color (254, 255, 3);
color green = color (123, 211, 27);
color blue = color (78, 211, 242);
color purple = color (136, 0, 234);
color white = color (255, 255, 255);
color black = color (3, 3, 3);

//variables for color selection
color selectedColor;

void setup() {
  size(800, 600);
  background(white); 
  strokeWeight(1);
  stroke(selectedColor);
  selectedColor =  white;
} //setup end ==========================================

void draw() {

  fill(196, 196, 196);
  stroke(196, 196, 196);
  rect(0, 0, 130, 600);

  //buttons
  fill(red);
  circle(30, 30, 50);

  fill(orange);
  circle(90, 30, 50);

  fill(yellow);
  circle(30, 90, 50);

  fill(green);
  circle(90, 90, 50);

  fill(blue);
  circle(30, 150, 50);

  fill(purple);
  circle(90, 150, 50);

  fill(white);
  circle(30, 210, 50);

  fill(black);
  circle(90, 210, 50);
} // end of draw =============================================


void mouseReleased() {

  //red button
  if (dist(30, 30, mouseX, mouseY) < 25) {
    selectedColor = red;
  }  
  if (dist(90, 30, mouseX, mouseY) < 25) {
    selectedColor = orange;
  }
  if (dist(30, 90, mouseX, mouseY) < 25) {
    selectedColor = yellow;
  }
  if (dist(90, 90, mouseX, mouseY) < 25) {
    selectedColor = green;
  }
  if (dist(30, 150, mouseX, mouseY) < 25) {
    selectedColor = blue;
  }
  if (dist(90, 150, mouseX, mouseY) < 25) {
    selectedColor = purple;
  }
  if (dist(30, 210, mouseX, mouseY) < 25) {
    selectedColor = white;
  }
  if (dist(90, 210, mouseX, mouseY) < 25) {
    selectedColor = black;
  }
} // end mouseReleased ======================================

void mouseDragged() {
  stroke(selectedColor);
  line(pmouseX, pmouseY, mouseX, mouseY);
}
