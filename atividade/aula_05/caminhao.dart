
abstract class VeiculoTerrestre {
  void exibirDetalhes();
}

class Caminhao implements VeiculoTerrestre {
  String marca;
  String modelo;
  int anoFabricacao;
  double capacidadeCarga; 
  String tipoCombustivel;

  Caminhao(this.marca, this.modelo, this.anoFabricacao, this.capacidadeCarga, this.tipoCombustivel);

  void exibirDetalhes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de Fabricação: $anoFabricacao');
    print('Capacidade de Carga: $capacidadeCarga toneladas');
    print('Tipo de Combustível: $tipoCombustivel');
  }
}

void main() {
  Caminhao meuCaminhao = Caminhao('Volvo', 'FH 460', 2022, 30, 'Diesel');
  meuCaminhao.exibirDetalhes();
}