
class Circulo {
  double raio;

  Circulo(this.raio);

  double calcularArea() {
    return 3.14159 * raio * raio;
  }

  void imprimirDetalhes() {
    print('Detalhes do círculo:');
    print('Raio: $raio');
    print('Área: ${calcularArea()}');
  }
}

class CirculoColorido extends Circulo {
  String corPreenchimento;

  CirculoColorido(double raio, this.corPreenchimento) : super(raio);

  @override
  void imprimirDetalhes() {
    super.imprimirDetalhes();
    print('Cor de preenchimento: $corPreenchimento');
  }
}

void main() {
  CirculoColorido circuloColorido = CirculoColorido(5.0, 'Vermelho');
  circuloColorido.imprimirDetalhes();
}