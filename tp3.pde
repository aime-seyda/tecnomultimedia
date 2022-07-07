//AIMÉ SEYDA
int cant = 6;
int puntos = 0;               
int estado;
int tam =100;
float pos1 = width/2;
float pos2 = height/2;
float posx = random(50, 500);
float posy = random(300, 600);

void setup() {
  size(900, 600);
}

void draw() {
  background(0);
  personaje();
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

void personaje() {
  rectMode(CENTER);
  ellipse(pos1, pos2, tam/1.5, tam);
  for (int i=0; i<cant; i++) {
    rect(posx, posy, tam*2, tam);
    
  }
}
             
