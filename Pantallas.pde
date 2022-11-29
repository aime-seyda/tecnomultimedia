class Pantallas {
  String inicio;
  String fin;
  PImage ganaste;
  PImage perdiste;
  Pantallas() {
    inicio = "¡HOLA GRANJERA! \n ¿Estás lista para una nueva misión? \n Debes recoger todas las frutas que veas antes de que el contador llegue a 30.\n Muevete con las flechas de tu teclado\n BUENA SUERTE :) \n\n\n\n Haz click para comenzar";
    fin =" Creado por: Aimé Seyda \n Cátedra: Tecnología Multimedial 1 \n Facultad de Artes de la Universidad Nacional de La Plata";
    ganaste = loadImage("ganaste.jpg");
    perdiste =loadImage("perdiste.jpg");
  }

  void inicio() {
    fill(115, 1, 1);
    textAlign(CENTER);
    textSize(23);
    background(71, 211, 40);
    text(inicio, width/2, height/4);
  }
  void ganaste() {
    image(ganaste, width/2, height/2);
  }
  void perdiste() {
    image(perdiste, width/2, height/2);
  }
  void creditos() {
    fill(115, 1, 1);
    background(71, 211, 40);
    textAlign(LEFT);
    textSize(20);
    text(fin, 50, 50);
    text("Para reiniciar presione la tecla r", width/2, height-50);
    textAlign(CENTER);
    textSize(100);
    text("FIN", width/2, height/2);
  }
}
