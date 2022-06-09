void lineasDeFondo() {
  strokeWeight(3);
  for (int a=width; a>mouseX; a-=cant) {
    line(a, 0, a, height);
  }
  for (int b=height; b>mouseY; b-=cant) {
    line(0, b, height, b);
  }
}

void circulo() {
  strokeWeight(0);
  for (float b=width/1.5; b>0; b-=cant) {
    float relleno = map(b, width, 0, 240, 20);
    fill(0, relleno/2, relleno);
    ellipse(width/2, height/2, b, b);
  }
}
