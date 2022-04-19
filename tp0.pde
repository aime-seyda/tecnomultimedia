//Aimé Seyda 
//Tecnología Multimedial 1 Tp nº0 

int tam;
void setup() {
  size(600, 500);
  background(100);
  tam=100;
}

void draw() {
  //LATA
  strokeWeight(30);
  stroke(0);
  fill(0);
  rect (50, 50, 500, 300, 10);
  //COMPARTIMENTOS FILA 1
  strokeWeight(5);
  stroke(230);
  fill(200);
  rect(50, 50, tam, tam, 10);
  rect(150, 50, tam, tam, 10);
  rect(250, 50, tam, tam, 10);
  rect(350, 50, tam, tam, 10);
  rect(450, 50, tam, tam, 10);
  //COMPARTIMENTOS FILA 2
  rect(50, 150, tam, tam, 10);
  rect(150, 150, tam, tam, 10);
  rect(250, 150, tam, tam, 10);
  rect(350, 150, tam, tam, 10);
  rect(450, 150, tam, tam, 10);
  //COMPARTIMENTOS FILA 3
  rect(50, 250, tam, tam, 10);
  rect(150, 250, tam, tam, 10);
  rect(250, 250, tam, tam, 10);
  rect(350, 250, tam, tam, 10);
  rect(450, 250, tam, tam, 10);
  //ACUARELAS FILA 1
  strokeWeight(3);
  stroke(160);
  fill(57, 5, 0);
  circle(100, 100, tam);
  fill(201, 24, 8);
  circle(200, 100, tam);
  fill(106, 34, 155);
  circle(300, 100, tam);
  fill(222, 112, 38);
  circle(400, 100, tam);
  fill(222, 204, 0);
  circle(500, 100, tam);
  //ACUARELAS FILA 2
  fill(32, 144, 7);
  circle(100, 200, tam);
  fill(52, 170, 135);
  circle(200, 200, tam);
  fill(0, 36, 211);
  circle(300, 200, tam);
  fill(186, 51, 193);
  circle(400, 200, tam);
  fill(255, 252, 222);
  circle(500, 200, tam);
  //ACUARELAS FILA 3
  fill(175, 126, 51);
  circle(100, 300, tam);
  fill(163, 227, 27);
  circle(200, 300, tam);
  fill(93, 210, 255);
  circle(300, 300, tam);
  fill(149, 0, 0);
  circle(400, 300, tam);
  fill(20);
  circle(500, 300, tam);
  //PINCEL
  strokeWeight(7);
  stroke(147, 90, 16);
  fill(147, 90, 16);
  triangle(100, 450, 425, 427, 425, 453);
  strokeWeight(3);
  stroke(201, 24, 8);
  fill(201, 24, 8);
  triangle(459, 422, 459, 457, 510, 442);
  strokeWeight(5);
  stroke(165, 132, 90);
  fill(165, 132, 90);
  ellipse(450, 440, 60, 37);
}
