void fondo() {
   {
    image(miImagen, x1, 0, 640, 480);
    image(miImagen, x2, 0, 640, 480);
    x1 -= velocidad;
    x2 -= velocidad;
    if (x1 <= -width) {
      x1 = width;
    }
    if (x2 <= -width) {
      x2 = width;
   
    }
  }
}


  void boton() {
    fill(colorBoton);
    ellipse(posX, 400, ancho, ancho);
    if (dist(mouseX, mouseY, posX, 400) < ancho/2) {
      colorBoton = color(0, 0, 100);
    } else
      colorBoton = color(20, 100, 20);
    fill(255);
    text("PLAY", 270, 415 );
    textSize(50);
  }

  void pantalla0() {
    fondo();
    boton();
    image(miImagen2, 120, 100, 400, 100);
  }

  void pantalla1() {
    fondo();
    image(miImagen3, 150, 150, 560, 350);
    fill(255);
    textFont(miTexto);
    textSize(tamFont);
    text("La pelicula se desarrolla dentro de un universo cyberpunk, ubicado en un futuro proximo y relata las aventuras de la SECCION NUEVE en la busqueda de un misterioso pirata informatico, el Puppet Master.", posTx, 50, 580, 400);
    tamFont = tamFont + 0.1;
    if (tamFont >= 50) {
      tamFont = 50;
    }
  }

  void pantalla2() {
    fondo();
    image(miImagen4, posImg, 50, 267, 590);
    {
      if (posImg > 25)
        posImg -= 2;
    }
    textSize(40);
    text("En el transcurso del año 2029, el planeta se recupera de una tercera guerra mundial nuclear. El plano geopolitico se ha transformado sustancialmente y una de las superpotencias mas destacadas de esta nueva realidad es Japon", 270, 25, 300, 400);
  }

  void pantalla3() {
    fondo();
    if (alpha < 255) {
      alpha += 2;
    }
    if (contadorFrames >= 650) {

      textoY -= 2;
      img1Y += 2;
      img2Y += 2;
    }

    tint(255, alpha);

    //imagen pantalla3
    image(miImagen5, 10, img1Y, 350, 250);
    image(miImagen6, 370, img2Y, 300, 300);

    noTint();

    fill(255, alpha);
    textSize(36);
    text("Una nueva guerra fria emerge convirtiendo a la politica internacional en una lucha de intereses maquiavelicos, enfrentados a la delincuencia tecnologica y al terrorismo cibernetico, trayendo como consecuencia que los delitos electronicos sean un objetivo primordial para la seguridad internacional y para todos los paises.", 50, textoY, 600, 200);
  }

  void pantalla4() {
    fondo();
    if (alpha < 255) {
      alpha += 2;
    }

    if (contadorFrames >= 650) {

      texto2Y -= 2;
      img3Y += 2;
    }

    tint(255, alpha);

    image(miImagen7, 0, img3Y, 640, 360);
    noTint();

    textSize(44);
    text("La integracion del HOMBRE-MAQUINA ha sido posible gracias al avance tecnologico, y se inicia la lenta aparicion embrionaria de la posthumanidad.", 25, texto2Y, 600, 200);
  }

  void pantalla5() {
    fondo();
    if (contadorFrames > 50 && alpha1 < 255) {
      alpha1 += 2;
    }
    if (contadorFrames > 150 && alpha2 < 255) {
      alpha2 += 2;
    }
    if (contadorFrames > 250 && alpha3 < 255) {
      alpha3 += 2;
    }
    if (contadorFrames > 350 && alpha4 < 255) {
      alpha4 += 2;
    }

    tint(255, alpha1);
    image(miImagen9, 50, 240, 200, 200);

    tint(255, alpha2);
    image(miImagen10, 150, 240, 180, 420);

    tint(255, alpha3);
    image(miImagen11, 300, 240, 200, 400);

    tint(255, alpha4);
    image(miImagen12, 450, 240, 340, 320);

    noTint();
    textSize(36);
    text("Los implantes y aparatos prosteticos son empleados recurrentemente magnificando la potencialidad de los organos y extremidades naturales de las personas: ojos, oidos, brazos, piernas, corazon, etc. El personaje principal, MOTOKO KUSANAGUI, es una cyborg completa, a excepcion de su cerebro y su medula.", 30, 25, 550, 200);
  }

  void pantalla6() {
    fondo();
    image(miImagen13, 0, 170, 640, 200);


    fill(colorBoton);
    ellipse(posX, 400, ancho, ancho);
    if (dist(mouseX, mouseY, posX, 400) < ancho/2) {
      colorBoton = color(0, 0, 100);
    } else
      colorBoton = color(20, 100, 20);
    fill(255);
    text("REPLAY", 270, 415 );
    textSize(50);

    textSize(30);
    text("Este hecho es la causa por la que la pelicula recibe el nombre, ya que GHOST, la consciencia o espiritu del individuo original, es decir su alma, se encuentra dentro de esa estructura robotica o cuerpo artificial, que aunque es un simple instrumento de oscuros intereses, aun preserva su propia identidad o yo psicologico.", 25, 25, 600, 250);
  }

  void cambiarpantalla() {
    if (pantalla >= 1 && pantalla < 6) {
      contadorFrames++;
      if (contadorFrames >= duracionPantalla) {
        pantalla++;
        contadorFrames = 1;
        alpha= 0;
      }
    }
  }
  void reiniciarVariables() {

    tamFont = 1;

    posImg = 700;

    alpha = 0;

    textoY = 25;
    img1Y = 250;
    img2Y = 230;

    texto2Y = 25;
    img3Y = 240;

    alpha1 = 0;
    alpha2 = 0;
    alpha3 = 0;
    alpha4 = 0;
  }
