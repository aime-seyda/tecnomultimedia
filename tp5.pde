//Aimé Seyda
//legajo 91541/8
//comisión 1
//link del video: https://youtu.be/K1dOi2-BtPg

import ddf.minim.*;
Minim minim;
AudioSample pasos;
Principal p;
void setup() {
  size(900, 700);
  p = new Principal();
  minim = new Minim (this);
  pasos = minim.loadSample ("pasos.mp3", 373);
}

void draw() {
  p.estados();
}

void keyPressed() {
  p.moverP(keyCode);
  p.reiniciar();
}

void mousePressed() {
  p.mousePressed();
}
