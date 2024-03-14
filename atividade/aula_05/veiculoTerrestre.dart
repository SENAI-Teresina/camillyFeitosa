abstract class VeiculoTerrestre {
  String marca;
  String modelo;
  int anoFabricacao;

  VeiculoTerrestre(this.marca, this.modelo, this.anoFabricacao);

  void exibirDetalhes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de Fabricação: $anoFabricacao');
  }
}

class Carro extends VeiculoTerrestre {
  Carro(String marca, String modelo, int anoFabricacao)
      : super(marca, modelo, anoFabricacao);
}

void main() {
  Carro carro = Carro('Toyota', 'Corolla', 2022);
  carro.exibirDetalhes();
}