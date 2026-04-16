PImage miImagen;

void setup() {
  size(800, 400);
  miImagen = loadImage("cabezadepapa.png");
  }
  
  void draw() {
    background(0);
    image(miImagen, 0, 0, 400, 400);
    //plato//
    fill(150);
    ellipse(600, 260, 350, 70);
    fill(200);
    ellipse(600, 260, 200, 40);
   //cabeza//
    fill(#DDD6B5);
    ellipse(600, 174, 120, 150);
    fill(#773B2B);
    
    //mano//
    fill(#D6C2AB);
    ellipse(615, 70, 120, 40);
    fill(0);
    ellipse(593, 80, 20, 10);
    //pelo//
    fill(#773B2B);
    triangle(596, 81, 552, 126, 640, 117);
    rect(625, 100, 30, 60);
    rect(650, 100, 50, 120);
    //brazo//
    fill(#D6C2AB);
    beginShape();
    vertex(650, 55);
    vertex(720, 85);
    vertex(720, 150);
    vertex(640, 85);
    endShape(CLOSE);
    //mesa//
    fill(#954141);
    rect(400, 378, 400, 20);
    //cara mujer//
    fill(#F7EDD7);
    beginShape();
    vertex(440, 71);
    vertex(495, 46);
    vertex(529, 102);
    vertex(502, 139);
    vertex(455, 125);
    endShape(CLOSE);
    fill(#3924B4);
    triangle(425, 81, 440, 19, 506, 38);
    fill(#D62923);
    ellipse(455, 40, 10, 10);
    
    textSize(30);
    text((400 + mouseX) + " - " + mouseY, mouseX, mouseY);
    
  }
  
