//salvador mallaina dominguez
//comision 2
//https://youtu.be/_8mDtSbwTHU

int cant;
int color1;
int color2;

PImage ilusion;
void setup() {
  color1=color(52, 26, 211);
  color2 = color(0, 1, 39);
  size(800, 400);
  cant = 10;
  ilusion = loadImage("ilusion op.jpeg");
}
void draw() {
  background(0);
  println(mouseX, mouseY);
  grilla(133);
  circulos(133);
   if (mouseDentroDelRectagulo(400, 266)) {
    color1 =color(200, 0, 0);
  } else  {
   colorDeOtraMitad();
  }

  image(ilusion, 0, 0);
}
void mousePressed() {
  color1=color(random(0, 255), random(0, 255), random(0, 255));
  color2=color(random(0, 255), random(0, 255), random(0, 255));
}
void keyPressed() {
  if (key == 'r') {
    color1 = color( 52, 26, 211);
    color2= color(0, 1, 39);
    mouseX = 0;
    mouseY =0;
  }
}
