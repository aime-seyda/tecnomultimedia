class Fruta {
  PImage ifruta[];
  float num, px, py;
  Fruta(float num, float px) {
    this.num = num;
    this.px = px;
    py = random(height/3);
    ifruta = new PImage [4];
    for (int i=0; i<4; i++) {
      if (num<1) {
        ifruta[i] = loadImage("fruta0.png");
      } else if (num>1 && num<2) {
        ifruta[i] = loadImage("fruta1.png");
      } else if (num>2 && num<3) {
        ifruta[i] = loadImage("fruta2.png");
      } else {
        ifruta[i] = loadImage("fruta3.png");
      }
    }
  }
  void dibujar() {
    image(ifruta[int(num)], px, py);
  }
}
