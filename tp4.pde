//Aimé Seyda
//legajo 91541/8
//comisión 1
//link del video explicativo https://youtu.be/WRAwNnqRQDM

Principal p;
void setup(){
size(800,600);
p = new Principal();
}

void draw(){
p.dibujarTodo();
}

void keyPressed(){
p.volar(keyCode);
}
