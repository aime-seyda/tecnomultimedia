/*
Presentación: https://youtu.be/EJb6rVNLAI0
 Aimé Seyda
 legajo: 91541/8
 TP nº3 Ilusión Óptica
 Tecnología Multimedial 1
 */
int cant=8;
int c=0;
int d=255;
void setup() {
  size(800, 800);
}

void draw() {
  background(c, d, c);
  lineasDeFondo();
  circulo();
  if (c<255) {
    c++;
  } else {
    d--;
  }
}
void mousePressed() {
  c=0;
  d=255;
  frameCount=0;
}
