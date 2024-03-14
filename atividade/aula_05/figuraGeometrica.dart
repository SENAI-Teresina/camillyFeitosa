
abstract class FiguraGeometrica {
  double calcularArea();

  double calcularPerimetro();
}

class Quadrado implements FiguraGeometrica {
  double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }

  @override
  double calcularPerimetro() {
    return 4 * lado;
  }
}

class Circulo implements FiguraGeometrica {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() {
    return 3.14 * raio * raio;
  }

  @override
  double calcularPerimetro() {
    return 2 * 3.14 * raio;
  }
}

void main() {
  var quadrado = Quadrado(5);
  print('Área do quadrado: ${quadrado.calcularArea()}');
  print('Perímetro do quadrado: ${quadrado.calcularPerimetro()}');

  var circulo = Circulo(3);
  print('Área do círculo: ${circulo.calcularArea()}');
  print('Perímetro do círculo: ${circulo.calcularPerimetro()}');
}
