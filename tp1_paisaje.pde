PImage paisaje;

//
void setup(){
background(247,217,187);
size(800,400);
paisaje=loadImage("paisaje.jpg");
}
//
void draw(){
image(paisaje,0,0);
println( mouseX,mouseY);
//fondo
noStroke();
fill(#02829B);
rect(400,0,800,145);
//torre pincipal
fill(#F1FF5A);
rect(620,202,86,200);
stroke(1);
fill(#EAFA44);
rect(635,212,53,51);
noStroke();
fill(255);
circle(662,238,50);
fill(#F1FF5A);
rect(628,184,68,19);
//punta de la torre
fill(#3B3630);
triangle(629,184,666,120,696,184);
rect(645,145,40,15);
fill(#F1FF5A);
rect(647,117,36,29);
fill(#3B3630);
triangle(647,118,666,35,683,118);
fill(200);
rect(665,12,2,23);
//agujas del reloj
fill(0);
triangle(658,235,678,259,661,237);
triangle(658,235,641,237,661,237);
// edificio de la izquierda
fill(#F1FF5A);
rect(463,364,82,50);
rect(463,364,82,50);
fill(100);
rect(462,378,83,3);
fill(#F1FF5A);
rect(463,334,13,31);
rect(522,334,22,30);
rect(475,343,50,27);
//puntas
triangle(463,336,469,295,477,336);
triangle(473,347,481,308,488,347);
triangle(522,335,529,297,535,335);
triangle(533,334,539,306,544,334);
//hojas
fill(250,159,23);
ellipse(785,60,45,25);
ellipse(753,13,20,40);
ellipse(783,35,47,27);

}
