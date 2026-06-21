//video https://youtu.be/Dhp-ekWu3Kg


PImage miImagen;
boolean rotar = false;
int cantidad = 14;
float desplazamiento;

void setup() {
  background(255);
  size(800, 400);
  miImagen = loadImage ("23.png");
  ellipseMode( CENTER );
}

void draw() {
  background(255);

  fill(0);
  image(miImagen, 0, 0, 400, 400);

  float centroX = 400 + (cantidad - 1) * 28.5 / 2;
  float centroY = 15 + (cantidad - 1) * 28.5 / 2;

  pushMatrix();
  translate(600, 200);
  if (rotar) {
    rotate(map(mouseX, 0, 800, -PI/4, PI/4));
  }
  for (int i = 0; i < cantidad; i ++) {
    for (int j = 0; j < cantidad; j ++) {
      float desplazamiento= map(mouseX, 0, width, -cantidad, cantidad);

      float distancia = (i+j) - ((cantidad-1)+desplazamiento);
      if (distancia<0) {
        distancia = distancia *-1;
      }

      float tam =  calcularTam(distancia);


      dibujarCirculo((400 + i * 28.5) - centroX, (15+j*28.5)-centroY, tam);
    }
  }
  popMatrix();
}
void mousePressed() {
  rotar = !rotar;
}

void keyPressed() {
  rotar = false;
  desplazamiento = 0;
}
