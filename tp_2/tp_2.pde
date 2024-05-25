//tp 2 salvador mallaina comision 2 
PImage Imagen1;
PImage Imagen2;
PImage Imagen3;
String texto ;
String texto2;
String texto3;
String texto4;
String texto5;
String texto6;
String texto7;
int pantalla;
int transparente;
int tam;
int esquinaX1 = 220;
int esquinaY1 =250;
int ancho = 200;
int alto = 100;
color colorines;
float x,y;

void setup(){
size (640,480);
texto = "overwacht es un shoter multijugador online\n desarrolado por BLIZARD";
texto2 = "pero,¿que diferencia a overwacht del resto?";
texto3 = "ellos los personajes ";
texto4 = "¡NO ESPEREN!";
texto5 = "hay tres tipos de heroes, \n daño,apoyo y tanques \n cada uno con habilidades unicas.\n la clave de un buen equipo \n es una buena distribucion de clases";
texto6 = "¿estas listo para comenzar a jugar? ";
texto7 = "si es asi parate en el boton";
Imagen1= loadImage("imagen 1.jpg");
Imagen2= loadImage("imagen 2.jpg");
Imagen3= loadImage("imagen 3.jpg");
pantalla = 0;
tam = 1;
transparente = 255;
colorines = color(0);
x =width - 50;
y = height - 250;
}
void draw(){
println(mouseX,mouseY);
println(frameCount/60);

//imagen uno
background(255);
image(Imagen1,0,0);  
fill(colorines);
 if(tam <30){
tam +=1;
pantalla =1;
}else {
colorines =color(252,82,3);}
textSize(tam);
text(texto,width-50,300);
textAlign(RIGHT,TOP);
//imagen 2
if(frameCount/60>=4){
background(0);
colorines= color(183,29,240,transparente);
text(texto2,width-50,50);
  transparente = transparente -1;
  fill(colorines);
image(Imagen2,170,200);
}
if(frameCount/60>=8){
background(255);
x = x -2;
image(Imagen3,x,y);
fill(0);
text(texto3,450,150);
}
if(frameCount/60 >=13){
text(texto4,500,300);
}
if(frameCount/60 >=16){
 background(0);
 y = y - 1;
 fill(251,255,54);
 text(texto5,525,y); 
} 
if(frameCount/60 >=25){
background(255);
fill(0);
text(texto6,550,50);
fill(3,228,255);
text(texto7,500,150);
 rect (esquinaX1, esquinaY1, ancho, alto);  
}

if(mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
frameCount =0;
tam = 1;
transparente = 255;
colorines = color(0);
x =width - 50;
y = height - 250;
}
}
//profe tuve problemas para usar el void Pressed en el boton, entonces decici solucionarlo con solo acercar el cursor a este 
// no se si esta bien pero es la forma que encontre de solucionarlo
