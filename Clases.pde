class Cielo {
  PImage ci;
  int py;
  Cielo() {
    py = -width*2;
    ci = loadImage("fondo.png");
  }
  void dibujarCielo() {
    image(ci, 0, py);
    mover();
  }
  void mover() {
    py = py<0 ? py : -height;
    py ++;
  }
}



class Barrilete {
  PImage ba;
  float px;
  int py;
  Cola co;
  Barrilete(float px, int py) {
    ba = loadImage("barrilete.png");
    this.px = px;
    this.py = py;
    co = new Cola();
  }
  void dibujarB() {
    image(ba, px, py);
    co.dibujarCola(px, py+130);
  }
  void volar(int tecla) {
    if (tecla== LEFT) {
      px -= 15;
    }
    if (tecla == RIGHT) {
      px += 15;
    }
  }
}



class Cola {
  PImage co;
  float px;
  int py;
  Cola() {
    co = loadImage("cola.png");
  }
  void dibujarCola(float x, int y) {
    this.px = x;
    this.py = y;
    image(co, x, y);
    translate(x, y);
  }
}



class Principal {
  Cielo fondo;
  Barrilete barrilete;
  Principal() {
    fondo = new Cielo();
    barrilete = new Barrilete(random (100, 700), height/2);
  }
  void dibujarTodo() {
    fondo.dibujarCielo();
    barrilete.dibujarB();
  }
  void volar(int presionada) {
    barrilete.volar(presionada);
  }
}
