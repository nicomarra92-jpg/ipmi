




void dibujarCirculo(float x, float y, float tam) {
  ellipse(x, y, tam, tam);
}


float calcularTam(float distancia) {
  return map(distancia, 0, cantidad - 1, 25, 5);
}
