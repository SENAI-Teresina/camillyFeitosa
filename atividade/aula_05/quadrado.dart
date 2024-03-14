class Retangulo {
  double ladoA;
  double ladoB;

  Retangulo(this.ladoA, this.ladoB);

  double calcularArea() {
    return ladoA * ladoB;
  }

  double calcularPerimetro() {
    return 2 * (ladoA + ladoB);
  }

  void exibirDetalhes() {
    print('Retângulo:');
    print('Lado A: $ladoA');
    print('Lado B: $ladoB');
    print('Área: ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
  }
}

class Quadrado extends Retangulo {
  Quadrado(double lado) : super(lado, lado);

  double calcularDiagonal() {
    return ladoA * (2.0);
  }

  void exibirDetalhes() {
    print('Quadrado:');
    print('Lado: $ladoA');
    print('Área: ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
    print('Diagonal: ${calcularDiagonal()}');
  }
}

void main() {

  var quadrado = Quadrado(5.0);

  quadrado.exibirDetalhes();
}