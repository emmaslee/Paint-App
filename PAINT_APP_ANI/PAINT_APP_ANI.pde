//Emma Lee
//March 7
//Paint App

//pallette of colors
color clay  = color (59, 53, 54);
color red   = color (59, 53, 54);
color orange = color (255, 159, 3);
color yellow = color (254, 255, 3);
color green = color (123, 211, 27);
color blue = color (78, 211, 242);
color purple = color (136, 0, 234);
color white = color (255, 255, 255);
color black = color (3, 3, 3);
int   sliderY = 300;

color currentColor;

int mode = DRAWING;

void setup() {
  size(800, 600);
  fill(white);
