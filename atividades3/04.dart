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
  Carro carro = Carro('Toyota', 'Corolla', 2022); // Criando uma instância de Carro com marca Toyota, modelo Corolla e ano 2022
  carro.imprimirDetalhes(); // Chamando o método para imprimir os detalhes do carro
}
