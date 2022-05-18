//Aimé Seyda
//tp1 Créditos 
//Tecnología Multimedial 1

int segundos;
float opacidad;
float px;
float pyTexto1;
float pyTexto2;
float pyImagen;
String actor1a;
String actor1b;
String actor2a;
String actor2b;
String actriza;
String actrizb;
String guion1a;
String guion1b;
String guion2a;
String guion2b;
String directora;
String directorb;
String reinicio;
PImage portada;
PImage pantalla2;
PImage pantalla3;
PImage pantalla4;
PImage pantalla5;
PImage pantalla6;
PImage pantalla7;
PImage pantalla8;
PFont persona;
PFont nombre; 


void setup() {
  size(700, 600);
  opacidad = 0;
  px = width/2;
  pyTexto1 = height/5+500;
  pyTexto2 = height/3+500;
  pyImagen = height/1.5+500;
  actor1a = "CON LA ACTUACIÓN DE RAMI MALEK COMO";
  actor1b = "FREDDIE MERCURY";
  actor2a = "TAMBIÉN DE GWILYM LEE, BEN HARDY \n Y JOSEPH MAZZELO COMO";
  actor2b = "BRIAN MAY, ROGER TAYLOR \n Y JOHN DECON";
  actriza = "Y LA DE LUCY BOYTON COMO";
  actrizb = "MARY AUSTIN";
  guion1a = "GUIONADA POR";
  guion1b = "ANTHONY McCARTEN";
  guion2a = "TAMBIEN GUIONADA POR";
  guion2b = "PETER MORGAN";
  directora = "Y DIRIGIDA POR";
  directorb = "BRYAN SINGER";
  reinicio = "Haga clic en el boton para reiniciar la presentación.";
  portada = loadImage("pantalla1.png");
  pantalla2 = loadImage("pantalla2.png");
  pantalla3 = loadImage("pantalla3.png");
  pantalla4 = loadImage("pantalla4.png");
  pantalla5 = loadImage("pantalla5.png");
  pantalla6 = loadImage ("pantalla6.png");
  pantalla7 = loadImage ("pantalla7.png");
  pantalla8 = loadImage ("reinicio.png");
  persona = loadFont("persona.vlw");
  nombre = loadFont("Freddie.vlw");
}

void draw() {
  segundos=frameCount/60;
  background(33, 0, 31);
  //PANTALLA Nº1 (TITULO)
  if (frameCount>0 && segundos<6) {
    image (portada, 0, 0, width, height);
    fill(33, 0, 31, opacidad++);
    rect(0, 0, width, height);
    //PANTALLA Nº2 (ACTOR PRINCIPAL)
  } else if (segundos>4 && segundos<24) {
    textAlign(CENTER);
    fill(246, 186, 14);
    textFont(persona);
    textSize(25);
    text(actor1a, px, pyTexto1--); 
    textFont(nombre);
    textSize(35);
    text(actor1b, px, pyTexto2--);
    imageMode(CENTER);
    image(pantalla2, px, pyImagen--);
    //PANTALLA Nº3 (ACTORES SECUNDARIOS)
  } else if (segundos>24 && segundos<44) {
    textAlign(CENTER);
    fill(246, 186, 14);
    textFont(persona);
    textSize(25);
    text(actor2a, px, pyTexto1++); 
    textFont(nombre);
    textSize(35);
    text(actor2b, px, pyTexto2++);
    imageMode(CENTER);
    image(pantalla3, px, pyImagen++);
    //PANTALLA Nº4 (ACTRIZ SECUNDARIA)
  } else if (segundos>44 && segundos<64) {
    textAlign(CENTER);
    fill(246, 186, 14);
    textFont(persona);
    textSize(25);
    text(actriza, px, pyTexto1--); 
    textFont(nombre);
    textSize(35);
    text(actrizb, px, pyTexto2--);
    imageMode(CENTER);
    image(pantalla4, px, pyImagen--);
    //PANTALLA 5 (GUIONISTA 1)
  } else if (segundos>64 && segundos<84) {
    textAlign(CENTER);
    fill(246, 186, 14);
    textFont(persona);
    textSize(25);
    text(guion1a, px, pyTexto1++); 
    textFont(nombre);
    textSize(35);
    text(guion1b, px, pyTexto2++);
    imageMode(CENTER);
    image(pantalla5, px, pyImagen++);
    //PANTALLA 6 (GUIONISTA 2)
  } else if (segundos>84 && segundos<104) {
    textAlign(CENTER);
    fill(246, 186, 14);
    textFont(persona);
    textSize(25);
    text(guion2a, px, pyTexto1--); 
    textFont(nombre);
    textSize(35);
    text(guion2b, px, pyTexto2--);
    imageMode(CENTER);
    image(pantalla6, px, pyImagen--);
    //PANTALLA 7 (DIRECTOR)
  } else if (segundos>104 && segundos<124) {
    textAlign(CENTER);
    fill(246, 186, 14);
    textFont(persona);
    textSize(25);
    text(directora, px, pyTexto1++); 
    textFont(nombre);
    textSize(35);
    text(directorb, px, pyTexto2++);
    imageMode(CENTER);
    image(pantalla7, px, pyImagen++);
    //PANTALLA 8 (REINICIO)
  } else if (segundos>124 && segundos<140) {
    fill(random(200), random(200), random(200));
    rectMode(CENTER);
    rect(width/2, height/4, 200, 100);
    image (pantalla8, width/2, height/4);
    fill(255);
    textSize(18);
    text(reinicio, width/2, height/2);
  }
}

void mouseClicked() {
  if (mouseX>250 && mouseY<450 && mouseY>100 && mouseY<200) {
    frameCount = 0;
    opacidad = 0;
    pyTexto1 = height/5+500;
    pyTexto2 = height/3+500;
    pyImagen = height/1.5+500;
  }
}



//PANTALLA 7 (REINICIO)
