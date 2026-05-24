PImage miImagen, miImagen2, miImagen3, miImagen4, miImagen5, miImagen6, miImagen7, miImagen8, miImagen9, miImagen10, miImagen11, miImagen12, miImagen13;
float x1 = 0;
float x2;
float velocidad = 1;
int posX = 320;
int posY = 450;
int ancho = 150;
int alto = 50;
color colorBoton = color(0, 0, 200);
int pantalla = 0;
PFont miTexto;
int posTx = 50;
float tamFont = 1;
int contadorFrames = 0;
int duracionPantalla = 800;
int posImg = 700;
int demoraImg = 0;
float alpha = 0;
int textoY = 25;
int img1Y = 250;
int img2Y = 230;
int texto2Y = 25;
int img3Y = 240;
int alpha1 = 0;
int alpha2 = 0;
int alpha3 = 0;
int alpha4 = 0;


void setup() {
  size(640, 480);
  miImagen = loadImage("fondogis.jpg");
  x2 = width;
  miImagen2 = loadImage("titulo.png");
  miImagen3 = loadImage("imagenpantalla1.png");
  miImagen4 = loadImage("imagenpantalla2.png");
  miImagen5 = loadImage("imagenpantalla3.png");
  miImagen6 = loadImage("imagen2pantalla3.png");
  miImagen7 = loadImage("imagenpantalla4.png");
  miImagen8 = loadImage("imagenpantalla5.png");
  miImagen9 = loadImage("imagen1pantalla5.png");
  miImagen10 = loadImage("imagen2pantalla5.png");
  miImagen11 = loadImage("imagen3pantalla5.png");
  miImagen12 = loadImage("imagen4pantalla5.png");
  miImagen13 = loadImage("imagenpantalla5.png");
  miTexto = loadFont("OXIDO-Eroded-48.vlw");
}


void draw() {
background(0);
  if (pantalla == 0) {
    pantalla0();
  }

  if (pantalla == 1) {
    pantalla1();
  }

  if (pantalla == 2) {
    pantalla2();
  }

  if (pantalla == 3) {
    pantalla3();
  }

  if (pantalla == 4) {
    pantalla4();
  }

  if (pantalla == 5) {
    pantalla5();
  }

  if (pantalla == 6) {
    pantalla6();
  }
  cambiarpantalla();
}


void mousePressed() {
  if (pantalla == 0 && dist(mouseX, mouseY, posX, 400) < ancho/2) {

    pantalla++;
  }
  if (pantalla == 6 && dist(mouseX, mouseY, 320, 400) < 75) {

    pantalla = 0;

    contadorFrames = 0;

  reiniciarVariables();
  }
}
