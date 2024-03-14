class Celular {
  String marca;
  String modelo;
  String sistemaOperacional;

  Celular(this.marca, this.modelo, this.sistemaOperacional);

  void exibirDetalhes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Sistema Operacional: $sistemaOperacional');
  }
}

void main() {
  Celular meuCelular = Celular('Samsung', 'Galaxy S20', 'Android');
  meuCelular.exibirDetalhes();
}