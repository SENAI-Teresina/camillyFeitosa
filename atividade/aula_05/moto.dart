class Moto {
  String marca;
  String modelo;
  int cilindradas;

  Moto(this.marca, this.modelo, this.cilindradas);

  void imprimirDetalhes() {
    print('Detalhes da moto:');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Cilindradas: $cilindradas');
  }
}

void main() {
  Moto moto = Moto('Yamaha', 'pop', 8); 
  moto.imprimirDetalhes(); 
}