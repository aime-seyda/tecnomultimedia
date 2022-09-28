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
