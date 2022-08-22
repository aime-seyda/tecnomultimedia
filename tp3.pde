//AIMÉ SEYDA
PImage fig;
PImage imgs[];
float posY[];
float posX[];
float pos1;
float pos2;
float tam;
int cant=8;
int puntaje=0;

void setup() {
  size(900, 700);
  tam = 80;
  imageMode(CENTER);
  fig = loadImage("personaje.png");
  imgs = new PImage[cant];
  posX = new float[cant];
  posY = new float[cant];
  pos1 = width/2;
  pos2 = height-150;

  for (int i=0; i<cant; i++) {
    imgs[i] = loadImage("fruta" + i +".png");
    posX[i] = random(50, 800);
    posY[i] = random(50, 400);
  }
}

void draw() {
  background(255);
  println(puntaje);
  for (int i=0; i<cant; i++) {
    float distancia = dist(posX[i], posY[i], pos1, pos2);
    image(imgs[i], posX[i], posY[i], tam, tam);
    if (distancia<tam && mousePressed) {
      puntaje+=1;
    }
  }
  image(fig, pos1, pos2);
}

void keyPressed() {    
  if (keyCode == UP) {
    pos2 -=3;
  }
  if (keyCode == DOWN) {
    pos2+=3;
  }
  if (keyCode == LEFT) {
    pos1-=3;
  }
  if (keyCode == RIGHT) {
    pos1+=3;
  }
}
