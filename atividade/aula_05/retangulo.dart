class Retangulo {
  double largura;
  double comprimento;
  double area;
  double cor;

  Retangulo(this.largura, this.comprimento, this.area, this.cor) {
    calcularArea();
  }

  void calcularArea() {
   area = largura * comprimento;
  }
}

void main() {
  Retangulo retangulo = Retangulo(5.0, 3.0, 0, 0); 
  print('A área do retângulo é: ${retangulo.area}');
}
