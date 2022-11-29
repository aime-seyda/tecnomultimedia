class Estado {
  int estadoN;
  int estadoNM;


  Estado(int estadoN) {
    this.estadoN = estadoN;
    this.estadoNM = 5;
  }
  void cambiarEstado(int estadoN) {
    this.estadoN = estadoN;
  }
  void sumarEstado() {
    if (this.estadoN < this.estadoNM) {
      this.estadoN++;
    }
  }
}
