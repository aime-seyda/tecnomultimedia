class Fondo {
  PImage fondo;
  Fondo() {
    fondo = loadImage("pasto.jpg");
  }
  void pintarFondo() {
    image(fondo, width/2, height/2);
  }
}
