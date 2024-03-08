class Retangulo {
  double largura;
  double altura;
  double area;

  Retangulo(this.largura, this.altura, this.area) {
    calcularArea();
  }

  void calcularArea() {
   area = largura * altura;
  }
}

void main() {
  Retangulo retangulo = Retangulo(5.0, 3.0, 0); // Criando uma instância de Retangulo com largura 5.0 e altura 3.0
  print('A área do retângulo é: ${retangulo.area}'); // Imprimindo a área calculada
}
