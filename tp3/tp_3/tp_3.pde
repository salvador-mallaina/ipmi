//salvador mallaina dominguez 
//comision 2
//https://youtu.be/bBRuNjUg2Ks
//profe con el video tuve el problema de que no se por que parece que va con lag o se escucha trabado. no se si sera por mi compu
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

  image(ilusion, 0, 0);
}
void mousePressed() {
  color1= color(random(0, 255), random(0, 255), random(0, 255));
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
