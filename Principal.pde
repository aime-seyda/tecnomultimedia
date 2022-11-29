class Principal {
  Fondo fondo;
  Personaje jugador;
  Estado e;
  Pantallas p;
  int puntaje = 0;
  int tiempo;
  Fruta f [] = new Fruta[4];

  Principal() {
    fondo = new Fondo();
    jugador = new Personaje(width/2, height-260);
    e = new Estado(0);
    p = new Pantallas();
    for (int i=0; i<f.length; i++) {
      float algo = random(4);
      f[i] = new Fruta(algo, 50+i*width/4);
      imageMode(CENTER);
    }
  }
  void moverP(int presionada) {
    jugador.mover(presionada);
  }
  void estados() {
    if (puntaje<4 && tiempo>25 && tiempo<28) {
      e.estadoN =2;
    } else if (puntaje>=4 && tiempo<26) {
      e.estadoN =3;
    } else if (tiempo>28) {
      e.estadoN =4;
    }
    if (e.estadoN ==0) {
      p.inicio();
    } else if (e.estadoN ==1) {
      tiempo = frameCount/60;
      fondo.pintarFondo();
      jugador.dibujarP();
      for (int i=0; i<f.length; i++) {
        f[i].dibujar();
        float colision = dist(f[i].px, f[i].py, jugador.posx, jugador.posy-70);
        if (colision<jugador.tam/2) {
          puntaje++;
          f[i].py = 1000;
        }
      }
      fill(0);
      text("Frutas juntadas: "+puntaje, width/5, height-10);
      text("Tiempo: "+tiempo, width/1.5, height-10);
    } else if (e.estadoN ==2) {
      p.perdiste();
    } else if (e.estadoN ==3) {
      p.ganaste();
    } else if (e.estadoN ==4) {
      p.creditos();
    }
  }
  void reiniciar() {
    if (key=='r'||key=='R') {
      frameCount=0;
      e.estadoN =0;
      puntaje =0;
      jugador = new Personaje(width/2, height-260);
      for (int i=0; i<f.length; i++) {
        float algo = random(4);
        f[i] = new Fruta(algo, 50+i*width/4);
        imageMode(CENTER);
      }
    }
  }
  void mousePressed() {
    pasos.trigger();
    e.sumarEstado();
  }
}
