
abstract class FiguraGeometrica {
  double calcularArea();

  double calcularPerimetro();
}

class Trapezio implements FiguraGeometrica {
  double baseMaior;
  double baseMenor;
  double altura;
  String cor;

  Trapezio(this.baseMaior, this.baseMenor, this.altura, this.cor);

  double calcularArea() {
    return ((baseMaior + baseMenor) * altura) / 2;
  }

  double calcularPerimetro() {

    double ladoNaoParalelo1 = baseMaior > baseMenor ? baseMaior : baseMenor;
    double ladoNaoParalelo2 = altura;

    return baseMaior + baseMenor + 2 * (ladoNaoParalelo1 + ladoNaoParalelo2);
  }

  void exibirDetalhes() {
    print('Trapézio com bases: $baseMaior e $baseMenor');
    print('Altura do trapézio: $altura');
    print('Área do trapézio: ${calcularArea()}');
    print('Perímetro do trapézio: ${calcularPerimetro()}');
    print('Cor do trapézio: $cor');
  }
}

void main() {
  var trapezio = Trapezio(10, 6, 4, 'Azul');
  trapezio.exibirDetalhes();
}
