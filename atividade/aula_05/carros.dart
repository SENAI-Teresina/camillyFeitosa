class Carro {
  String marca;
  String modelo;
  int ano;

  Carro(this.marca, this.modelo, this.ano);

  void imprimirDetalhes() {
    print('Detalhes do carro:');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
  }
}

void main() {
  Carro carro = Carro('Fiat', 'uno', 2023); 
  carro.imprimirDetalhes(); 
}