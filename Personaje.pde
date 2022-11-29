class Personaje {
  PImage fig;
  float posx, posy;
  int tam = 100;
  Personaje(float posx, float posy) {
    fig = loadImage("personaje.png");
    this.posx = posx;
    this.posy = posy;
  }
  void dibujarP() {
    image(fig, posx, posy, tam, 260);
  }
  void mover(int tecla) {
    if (tecla == UP && posy >110) {
      posy -=3;
    }
    if (tecla == DOWN && posy<height-150) {
      posy+=3;
    }
    if (tecla == LEFT && posx>50) {
      posx-=3;
    }
    if (tecla == RIGHT && posx<width-50) {
      posx+=3;
    }
  }
}
