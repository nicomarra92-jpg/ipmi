PImage miImagen;

void setup() {
  size(800, 400);
  miImagen = loadImage("cabezadepapa.png");
  }
  
  void draw() {
    background(0);
    image(miImagen, 0, 0, 400, 400);
    
    //vestido//
    fill(#761805);
    triangle(486, 171, 407, 385, 609, 385);
    //pecho mujer//
    fill(#F7EDD7);
    beginShape();
    vertex(458, 127);
    vertex(520, 130);
    vertex(521, 158);
    vertex(521, 144);
    vertex(562, 206);
    vertex(455, 214);
    vertex(443, 190);
    vertex(408, 174);
    vertex(450, 140);
    endShape(CLOSE);
    
    //cara mujer//
    fill(#F7EDD7);
    beginShape();
    vertex(440, 71);
    vertex(495, 46);
    vertex(529, 102);
    vertex(502, 139);
    vertex(455, 125);
    endShape(CLOSE);
    
    //pelo mujer//
    fill(#AF421B);
    beginShape();
    vertex(432, 52);
    vertex(427, 67);
    vertex(432, 90);
    vertex(427, 116);
    vertex(450, 134);
    vertex(455, 110);
    vertex(447, 92);
    vertex(446, 60);
    endShape(CLOSE);
    ellipse(444, 137, 20, 40);
    
    beginShape();
    vertex(471, 25);
    vertex(499, 29);
    vertex(516, 56);
    vertex(540, 76);
    vertex(535, 104);
    vertex(515, 87);
    vertex(505, 65);
    vertex(483, 49);
    endShape(CLOSE);
    ellipse(530, 114, 20, 50);
    
    //gorromujer//
    fill(#3924B4);
    triangle(425, 81, 440, 19, 506, 38);
    fill(#D62923);
    ellipse(455, 40, 10, 10);
    fill(#773B2B);
    triangle(425, 81, 457, 43, 506, 38);
    
    //ropamujer//
    fill(#2B6244);
    triangle(515, 140, 540, 206, 558, 148);
    rect(456, 205, 130, 25);
    fill(#E8B67A);
    beginShape();
    vertex(410, 174);
    vertex(443, 190);
    vertex(466, 243);
    vertex(400, 243);
    endShape(CLOSE);
    
    //brazo mujer//
    fill(#A52107);
    rect(400, 243, 65, 80);
    triangle(400, 289, 550, 293, 400, 354);
    fill(#F7EDD7);
    ellipse(545, 305, 120, 40);
    
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
    
    
    textSize(30);
    text((400 + mouseX) + " - " + mouseY, mouseX, mouseY);
    
  }
  
