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

float sliderY;
float thickness;

PImage dog;
boolean dogOn; //true or false

void setup() {
  size(800, 600);
  background(white);
  strokeWeight(1);
  stroke(selectedColor);
  selectedColor =  white;

  sliderY = 305;
  thickness = 0;
  dog = loadImage("dog.png");
  dogOn = false;
} //setup end ==========================================

void draw() {


  thickness = map(sliderY, 260, 350, 0, 15);

  strokeWeight(1);
  //tool bar
  fill(72, 72, 72);
  stroke(196, 196, 196);
  rect(0, 0, 130, 600);

  //buttons
  if (dist(30, 30, mouseX, mouseY) < 25 ) {
    stroke(black);
  } else {
    stroke(white);
  }
  fill(red);
  circle(30, 30, 50);

  if (dist(90, 30, mouseX, mouseY) < 25 ) {
    stroke(black);
  } else {
    stroke(white);
  }
  fill(orange);
  circle(90, 30, 50);

  if (dist(30, 90, mouseX, mouseY) < 25 ) {
    stroke(black);
  } else {
    stroke(white);
  }
  fill(yellow);
  circle(30, 90, 50);

  if (dist(90, 90, mouseX, mouseY) < 25 ) {
    stroke(black);
  } else {
    stroke(white);
  }
  fill(green);
  circle(90, 90, 50);

  if (dist(30, 150, mouseX, mouseY) < 25 ) {
    stroke(black);
  } else {
    stroke(white);
  }
  fill(blue);
  circle(30, 150, 50);

  if (dist(90, 150, mouseX, mouseY) < 25 ) {
    stroke(black);
  } else {
    stroke(white);
  }
  fill(purple);
  circle(90, 150, 50);

  if (dist(30, 210, mouseX, mouseY) < 25 ) {
    stroke(black);
  } else {
    stroke(white);
  }
  fill(white);
  circle(30, 210, 50);

  if (dist(90, 210, mouseX, mouseY) < 25 ) {
    stroke(black);
  } else {
    stroke(white);
  }
  fill(black);
  circle(90, 210, 50);

  strokeWeight(thickness);

  //slider
  fill(black);
  stroke(black);
  line(60, 260, 60, 350);
  circle(60, sliderY, 20);

  //indicator
  fill(selectedColor);
  rect(30, 370, 70, 20);

  //dog button
  tactile(25, 410, 80, 80);
  dogOnOff();
  stroke(0);
  rect (25, 410, 80, 80);
  image(dog, 30, 415, 70, 70);


  //new button
  tactile(30, 505, 70, 20);
  stroke(0);
  rect(30, 505, 70, 20);
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

  controlSlider();

  //dog button
  if (mouseX > 30 && mouseX < 100 && mouseY > 415 && mouseY < 485) {
    dogOn = !dogOn;
  }
  if (dogOn == true && mouseX > 130) {
    image(dog, mouseX, mouseY, thickness*10, thickness*10);
  }
  //new button
  if (mouseX > 30 && mouseX < 100 && mouseY > 505 && mouseY < 535) {
    background(white);
  }
  
} //end of mousReleased


void mouseDragged() {
  if (mouseX > 130) {
    if (dogOn == false) {
      //squiggly line
      controlSlider();
      strokeWeight(thickness);
      stroke(selectedColor);
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else {
      //dog drawing
      image(dog, mouseX, mouseY, 80, 80);
    }
  }
}// end of

void controlSlider() {
  if (mouseY > 260  && mouseY < 350 && mouseX > 45 && mouseX < 75 ) {
    sliderY = mouseY;
  }
}  

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
}

void dogOnOff() {
  if (dogOn == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(255, 0, 0);
    strokeWeight(1);
  }
}
