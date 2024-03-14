
abstract class FiguraGeometrica {

  double calcularArea();

  double calcularPerimetro();
}

class LosangoColorido implements FiguraGeometrica {
  double diagonalMaior;
  double diagonalMenor;
  String corPreenchimento;


  LosangoColorido(this.diagonalMaior, this.diagonalMenor, this.corPreenchimento);


  double calcularArea() {
    return (diagonalMaior * diagonalMenor) / 2;
  }

  double calcularPerimetro() {
    return 4 * (diagonalMaior + diagonalMenor) / 2;
  }

  void exibirDetalhes() {
    print('Losango com diagonais: $diagonalMaior e $diagonalMenor');
    print('Área do losango: ${calcularArea()}');
    print('Perímetro do losango: ${calcularPerimetro()}');
    print('Cor de preenchimento: $corPreenchimento');
  }
}

void main() {
  var losango = LosangoColorido(8, 6, 'Amarelo');
  losango.exibirDetalhes();
}
