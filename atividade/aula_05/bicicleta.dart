class Bicicleta {
  String marca;
  String modelo;
  int marchas;

  Bicicleta(this.marca, this.modelo, this.marchas);

  void imprimirDetalhes() {
    print('Detalhes do carro:');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Numero de marchas: $marchas');
  }
}

void main() {
  Bicicleta bicicleta = Bicicleta('Houston', 'Aro17', 2); 
  bicicleta.imprimirDetalhes(); 
}